; ModuleID = 'fs/file_table.c'
source_filename = "fs/file_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backing_file_real_path: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad backing_file_real_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_max_files: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad get_max_files ; .previous"
module asm ".section\09\22.initcall5.init..kmod_file_table__358_153_init_fs_stat_sysctls\22, \22a\22\09\09"
module asm "__initcall__kmod_file_table__358_153_init_fs_stat_sysctls5:\09\09\09"
module asm ".long\09__initstub__kmod_file_table__358_153_init_fs_stat_sysctls5 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_alloc_file_pseudo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad alloc_file_pseudo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_flush_delayed_fput: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad flush_delayed_fput ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fput: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad fput ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___fput_sync: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __fput_sync ; .previous"

%struct.files_stat_struct = type { i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [16 x i8] }
%struct.anon.28 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.29 }
%union.anon.29 = type { i64 }
%struct.backing_file = type { %struct.file, %struct.path }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.anon.17 = type { i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.23, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.24, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.25, ptr, %struct.address_space, %struct.list_head, %union.anon.26, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.23 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.24 = type { %struct.callback_head }
%union.anon.25 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.26 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.18 }
%struct.kernel_cap_t = type { i64 }
%union.anon.18 = type { %struct.callback_head }

@__UNIQUE_ID___addressable_backing_file_real_path356 = internal global ptr @backing_file_real_path, section ".discard.addressable", align 8, !dbg !0
@files_stat = internal global %struct.files_stat_struct { i64 0, i64 0, i64 8192 }, align 8, !dbg !5644
@__UNIQUE_ID___addressable_get_max_files357 = internal global ptr @get_max_files, section ".discard.addressable", align 8, !dbg !5592
@__UNIQUE_ID___addressable___initstub__kmod_file_table__358_153_init_fs_stat_sysctls5359 = internal global ptr @__initstub__kmod_file_table__358_153_init_fs_stat_sysctls5, section ".discard.addressable", align 8, !dbg !5594
@alloc_empty_file.old_max = internal global i64 0, align 8, !dbg !5596
@nr_files = internal global %struct.percpu_counter zeroinitializer, section ".data..cacheline_aligned", align 64, !dbg !5642
@filp_cachep = internal global ptr null, section ".data..read_mostly", align 8, !dbg !5640
@.str = private unnamed_addr constant [35 x i8] c"\016VFS: file-max limit %lu reached\0A\00", align 1, !dbg !5607
@alloc_file_pseudo.anon_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_dname, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !5612
@__UNIQUE_ID___addressable_alloc_file_pseudo360 = internal global ptr @alloc_file_pseudo, section ".discard.addressable", align 8, !dbg !5626
@__UNIQUE_ID___addressable_flush_delayed_fput361 = internal global ptr @flush_delayed_fput, section ".discard.addressable", align 8, !dbg !5628
@delayed_fput_list = internal global %struct.llist_head zeroinitializer, align 8, !dbg !5690
@delayed_fput_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @delayed_fput_work, i64 8), ptr getelementptr (i8, ptr @delayed_fput_work, i64 8) }, ptr @delayed_fput }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 8, !dbg !5692
@__UNIQUE_ID___addressable_fput362 = internal global ptr @fput, section ".discard.addressable", align 8, !dbg !5630
@__UNIQUE_ID___addressable___fput_sync363 = internal global ptr @__fput_sync, section ".discard.addressable", align 8, !dbg !5632
@.str.1 = private unnamed_addr constant [5 x i8] c"filp\00", align 1, !dbg !5634
@files_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5637
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1, !dbg !5651
@fs_stat_sysctls = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr @files_stat, i32 24, i16 292, i32 0, ptr @proc_nr_files, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @files_stat, i64 16), i32 8, i16 420, i32 0, ptr @proc_doulongvec_minmax, ptr null, ptr @sysctl_long_vals, ptr getelementptr (i8, ptr @sysctl_long_vals, i64 16) }, %struct.ctl_table { ptr @.str.7, ptr @sysctl_nr_open, i32 4, i16 420, i32 0, ptr @proc_douintvec_minmax, ptr null, ptr @sysctl_nr_open_min, ptr @sysctl_nr_open_max }, %struct.ctl_table zeroinitializer], align 16, !dbg !5670
@.str.3 = private unnamed_addr constant [16 x i8] c"fs_stat_sysctls\00", align 1, !dbg !5654
@.str.4 = private unnamed_addr constant [15 x i8] c"fs/binfmt_misc\00", align 1, !dbg !5656
@.str.5 = private unnamed_addr constant [8 x i8] c"file-nr\00", align 1, !dbg !5661
@.str.6 = private unnamed_addr constant [9 x i8] c"file-max\00", align 1, !dbg !5663
@sysctl_long_vals = external dso_local constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"nr_open\00", align 1, !dbg !5668
@sysctl_nr_open = external dso_local global i32, align 4
@sysctl_nr_open_min = external dso_local global i32, align 4
@sysctl_nr_open_max = external dso_local global i32, align 4
@init_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5673
@.str.8 = private unnamed_addr constant [15 x i8] c"&f->f_pos_lock\00", align 1, !dbg !5683
@percpu_counter_batch = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5685
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@system_wq = external dso_local global ptr, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5694
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"include/linux/fs.h\00", align 1, !dbg !5698
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 16
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_backing_file_real_path356, ptr @__UNIQUE_ID___addressable_get_max_files357, ptr @__UNIQUE_ID___addressable___initstub__kmod_file_table__358_153_init_fs_stat_sysctls5359, ptr @__UNIQUE_ID___addressable_alloc_file_pseudo360, ptr @__UNIQUE_ID___addressable_flush_delayed_fput361, ptr @__UNIQUE_ID___addressable_fput362, ptr @__UNIQUE_ID___addressable___fput_sync363, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @backing_file_real_path(ptr noundef %f) #0 align 16 !dbg !5712 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5718
  %call = call ptr @backing_file(ptr noundef %0) #17, !dbg !5719
  %real_path = getelementptr inbounds %struct.backing_file, ptr %call, i32 0, i32 1, !dbg !5720
  ret ptr %real_path, !dbg !5721
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @backing_file(ptr noundef %f) #2 align 16 !dbg !5722 {
entry:
  %f.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5726, metadata !DIExpression()), !dbg !5729
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5727, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5730
  store ptr %0, ptr %__mptr, align 8, !dbg !5730
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5730
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5730
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5731
  %2 = load ptr, ptr %tmp, align 8, !dbg !5730
  ret ptr %2, !dbg !5732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @get_max_files() #0 align 16 !dbg !5733 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 8, !dbg !5736
  ret i64 %0, !dbg !5737
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_file_table__358_153_init_fs_stat_sysctls5() #3 section ".init.text" align 16 !dbg !5738 {
entry:
  %call = call i32 @init_fs_stat_sysctls() #19, !dbg !5739
  ret i32 %call, !dbg !5739
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_fs_stat_sysctls() #3 section ".init.text" align 16 !dbg !5740 {
entry:
  %hdr = alloca ptr, align 8
  call void @__register_sysctl_init(ptr noundef @.str.2, ptr noundef @fs_stat_sysctls, ptr noundef @.str.3, i64 noundef 4) #17, !dbg !5745
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #18, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !5742, metadata !DIExpression()), !dbg !5747
  %call = call ptr @register_sysctl_mount_point(ptr noundef @.str.4) #17, !dbg !5748
  store ptr %call, ptr %hdr, align 8, !dbg !5749
  %0 = load ptr, ptr %hdr, align 8, !dbg !5750
  call void @kmemleak_not_leak(ptr noundef %0) #17, !dbg !5751
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #18, !dbg !5752
  ret i32 0, !dbg !5753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_empty_file(i32 noundef %flags, ptr noundef %cred) #0 align 16 !dbg !5598 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %cred.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5602, metadata !DIExpression()), !dbg !5754
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !5603, metadata !DIExpression()), !dbg !5755
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %f, metadata !5604, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5605, metadata !DIExpression()), !dbg !5759
  %call = call i64 @get_nr_files() #17, !dbg !5760
  %0 = load i64, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 8, !dbg !5762
  %cmp = icmp uge i64 %call, %0, !dbg !5763
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !5764

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @capable(i32 noundef 21) #17, !dbg !5765
  br i1 %call1, label %if.end5, label %if.then, !dbg !5766

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i64 @percpu_counter_sum_positive(ptr noundef @nr_files) #17, !dbg !5767
  %1 = load i64, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 8, !dbg !5770
  %cmp3 = icmp uge i64 %call2, %1, !dbg !5771
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5772

if.then4:                                         ; preds = %if.then
  br label %over, !dbg !5773

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !5774

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %2 = load ptr, ptr @filp_cachep, align 8, !dbg !5775
  %call6 = call ptr @kmem_cache_zalloc(ptr noundef %2, i32 noundef 3264) #17, !dbg !5776
  store ptr %call6, ptr %f, align 8, !dbg !5777
  %3 = load ptr, ptr %f, align 8, !dbg !5778
  %tobool = icmp ne ptr %3, null, !dbg !5778
  %lnot = xor i1 %tobool, true, !dbg !5778
  %lnot7 = xor i1 %lnot, true, !dbg !5778
  %lnot8 = xor i1 %lnot7, true, !dbg !5778
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5778
  %conv = sext i32 %lnot.ext to i64, !dbg !5778
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5778
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5778
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5780

if.then10:                                        ; preds = %if.end5
  %call11 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5781
  store ptr %call11, ptr %retval, align 8, !dbg !5782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5782

if.end12:                                         ; preds = %if.end5
  %4 = load ptr, ptr %f, align 8, !dbg !5783
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5784
  %6 = load ptr, ptr %cred.addr, align 8, !dbg !5785
  %call13 = call i32 @init_file(ptr noundef %4, i32 noundef %5, ptr noundef %6) #17, !dbg !5786
  store i32 %call13, ptr %error, align 4, !dbg !5787
  %7 = load i32, ptr %error, align 4, !dbg !5788
  %tobool14 = icmp ne i32 %7, 0, !dbg !5788
  %lnot15 = xor i1 %tobool14, true, !dbg !5788
  %lnot17 = xor i1 %lnot15, true, !dbg !5788
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5788
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !5788
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !5788
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !5788
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !5790

if.then22:                                        ; preds = %if.end12
  %8 = load ptr, ptr @filp_cachep, align 8, !dbg !5791
  %9 = load ptr, ptr %f, align 8, !dbg !5793
  call void @kmem_cache_free(ptr noundef %8, ptr noundef %9) #17, !dbg !5794
  %10 = load i32, ptr %error, align 4, !dbg !5795
  %conv23 = sext i32 %10 to i64, !dbg !5795
  %call24 = call ptr @ERR_PTR(i64 noundef %conv23) #17, !dbg !5796
  store ptr %call24, ptr %retval, align 8, !dbg !5797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5797

if.end25:                                         ; preds = %if.end12
  call void @percpu_counter_inc(ptr noundef @nr_files) #17, !dbg !5798
  %11 = load ptr, ptr %f, align 8, !dbg !5799
  store ptr %11, ptr %retval, align 8, !dbg !5800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

over:                                             ; preds = %if.then4
  call void @llvm.dbg.label(metadata !5606), !dbg !5801
  %call26 = call i64 @get_nr_files() #17, !dbg !5802
  %12 = load i64, ptr @alloc_empty_file.old_max, align 8, !dbg !5804
  %cmp27 = icmp sgt i64 %call26, %12, !dbg !5805
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !5806

if.then29:                                        ; preds = %over
  br label %do.body, !dbg !5807

do.body:                                          ; preds = %if.then29
  br label %do.cond, !dbg !5810

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5810

do.end:                                           ; preds = %do.cond
  %call30 = call i64 @get_max_files() #17, !dbg !5807
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %call30) #19, !dbg !5807
  store i32 %call31, ptr %tmp, align 4, !dbg !5810
  %13 = load i32, ptr %tmp, align 4, !dbg !5807
  %call32 = call i64 @get_nr_files() #17, !dbg !5812
  store i64 %call32, ptr @alloc_empty_file.old_max, align 8, !dbg !5813
  br label %if.end33, !dbg !5814

if.end33:                                         ; preds = %do.end, %over
  %call34 = call ptr @ERR_PTR(i64 noundef -23) #17, !dbg !5815
  store ptr %call34, ptr %retval, align 8, !dbg !5816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5816

cleanup:                                          ; preds = %if.end33, %if.end25, %if.then22, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !5817
  %14 = load ptr, ptr %retval, align 8, !dbg !5817
  ret ptr %14, !dbg !5817
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_nr_files() #0 align 16 !dbg !5818 {
entry:
  %call = call i64 @percpu_counter_read_positive(ptr noundef @nr_files) #17, !dbg !5821
  ret i64 %call, !dbg !5822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5823 dso_local zeroext i1 @capable(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_sum_positive(ptr noundef %fbc) #2 align 16 !dbg !5826 {
entry:
  %fbc.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !5834
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5832, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !5836
  %call = call i64 @__percpu_counter_sum(ptr noundef %0) #17, !dbg !5837
  store i64 %call, ptr %ret, align 8, !dbg !5835
  %1 = load i64, ptr %ret, align 8, !dbg !5838
  %cmp = icmp slt i64 %1, 0, !dbg !5839
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5838

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5838

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !dbg !5840
  br label %cond.end, !dbg !5838

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %2, %cond.false ], !dbg !5838
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !5841
  ret i64 %cond, !dbg !5842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #2 align 16 !dbg !5843 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  %0 = load ptr, ptr %k.addr, align 8, !dbg !5851
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5852
  %or = or i32 %1, 256, !dbg !5853
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #17, !dbg !5854
  ret ptr %call, !dbg !5855
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !5856 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = load i64, ptr %error.addr, align 8, !dbg !5863
  %1 = inttoptr i64 %0 to ptr, !dbg !5864
  ret ptr %1, !dbg !5865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @init_file(ptr noundef %f, i32 noundef %flags, ptr noundef %cred) #0 align 16 !dbg !5675 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %cred.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.rwlock_t, align 4
  %.compoundliteral9 = alloca %struct.spinlock, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5679, metadata !DIExpression()), !dbg !5866
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5680, metadata !DIExpression()), !dbg !5867
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !5681, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5682, metadata !DIExpression()), !dbg !5870
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !5871
  %call = call ptr @get_cred(ptr noundef %0) #17, !dbg !5872
  %1 = load ptr, ptr %f.addr, align 8, !dbg !5873
  %f_cred = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8, !dbg !5874
  store ptr %call, ptr %f_cred, align 8, !dbg !5875
  %2 = load ptr, ptr %f.addr, align 8, !dbg !5876
  %call1 = call i32 @security_file_alloc(ptr noundef %2) #17, !dbg !5877
  store i32 %call1, ptr %error, align 4, !dbg !5878
  %3 = load i32, ptr %error, align 4, !dbg !5879
  %tobool = icmp ne i32 %3, 0, !dbg !5879
  %lnot = xor i1 %tobool, true, !dbg !5879
  %lnot2 = xor i1 %lnot, true, !dbg !5879
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5879
  %conv = sext i32 %lnot.ext to i64, !dbg !5879
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5879
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5879
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5881

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %f.addr, align 8, !dbg !5882
  %f_cred4 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8, !dbg !5884
  %5 = load ptr, ptr %f_cred4, align 8, !dbg !5884
  call void @put_cred(ptr noundef %5) #17, !dbg !5885
  %6 = load i32, ptr %error, align 4, !dbg !5886
  store i32 %6, ptr %retval, align 4, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %f.addr, align 8, !dbg !5888
  %f_count = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3, !dbg !5889
  call void @atomic_long_set(ptr noundef %f_count, i64 noundef 1) #17, !dbg !5890
  br label %do.body, !dbg !5891

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %f.addr, align 8, !dbg !5892
  %f_owner = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 7, !dbg !5892
  %lock = getelementptr inbounds %struct.fown_struct, ptr %f_owner, i32 0, i32 0, !dbg !5892
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5892
  %9 = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 0, !dbg !5892
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !5892
  store i32 0, ptr %counter, align 4, !dbg !5892
  %wait_lock = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 1, !dbg !5892
  %10 = getelementptr inbounds %struct.qspinlock, ptr %wait_lock, i32 0, i32 0, !dbg !5892
  %counter5 = getelementptr inbounds %struct.atomic_t, ptr %10, i32 0, i32 0, !dbg !5892
  store i32 0, ptr %counter5, align 4, !dbg !5892
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 8, i1 false), !dbg !5892
  br label %do.cond, !dbg !5892

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5892

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5894

do.body6:                                         ; preds = %do.end
  %11 = load ptr, ptr %f.addr, align 8, !dbg !5895
  %f_lock = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1, !dbg !5895
  %call7 = call ptr @spinlock_check(ptr noundef %f_lock) #17, !dbg !5895
  %12 = load ptr, ptr %f.addr, align 8, !dbg !5895
  %f_lock8 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 1, !dbg !5895
  %13 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral9, i32 0, i32 0, !dbg !5895
  %raw_lock10 = getelementptr inbounds %struct.raw_spinlock, ptr %13, i32 0, i32 0, !dbg !5895
  %14 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock10, i32 0, i32 0, !dbg !5895
  %counter11 = getelementptr inbounds %struct.atomic_t, ptr %14, i32 0, i32 0, !dbg !5895
  store i32 0, ptr %counter11, align 4, !dbg !5895
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f_lock8, ptr align 4 %.compoundliteral9, i64 4, i1 false), !dbg !5895
  br label %do.cond12, !dbg !5895

do.cond12:                                        ; preds = %do.body6
  br label %do.end13, !dbg !5895

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5897

do.body14:                                        ; preds = %do.end13
  %15 = load ptr, ptr %f.addr, align 8, !dbg !5898
  %f_pos_lock = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 4, !dbg !5898
  call void @__mutex_init(ptr noundef %f_pos_lock, ptr noundef @.str.8, ptr noundef @init_file.__key) #17, !dbg !5898
  br label %do.cond15, !dbg !5898

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5898

do.end16:                                         ; preds = %do.cond15
  %16 = load i32, ptr %flags.addr, align 4, !dbg !5900
  %17 = load ptr, ptr %f.addr, align 8, !dbg !5901
  %f_flags = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 6, !dbg !5902
  store i32 %16, ptr %f_flags, align 8, !dbg !5903
  %18 = load i32, ptr %flags.addr, align 4, !dbg !5904
  %add = add i32 %18, 1, !dbg !5904
  %and = and i32 %add, 3, !dbg !5904
  %19 = load i32, ptr %flags.addr, align 4, !dbg !5904
  %and17 = and i32 %19, 67108864, !dbg !5904
  %or = or i32 %and, %and17, !dbg !5904
  %20 = load ptr, ptr %f.addr, align 8, !dbg !5905
  %f_mode = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2, !dbg !5906
  store i32 %or, ptr %f_mode, align 4, !dbg !5907
  store i32 0, ptr %retval, align 4, !dbg !5908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5908

cleanup:                                          ; preds = %do.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !5909
  %21 = load i32, ptr %retval, align 4, !dbg !5909
  ret i32 %21, !dbg !5909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5910 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_inc(ptr noundef %fbc) #2 align 16 !dbg !5913 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !5919
  call void @percpu_counter_add(ptr noundef %0, i64 noundef 1) #17, !dbg !5920
  ret void, !dbg !5921
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5922 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_empty_file_noaccount(i32 noundef %flags, ptr noundef %cred) #0 align 16 !dbg !5926 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %cred.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5928, metadata !DIExpression()), !dbg !5932
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !5929, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %f, metadata !5930, metadata !DIExpression()), !dbg !5935
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5931, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr @filp_cachep, align 8, !dbg !5938
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 3264) #17, !dbg !5939
  store ptr %call, ptr %f, align 8, !dbg !5940
  %1 = load ptr, ptr %f, align 8, !dbg !5941
  %tobool = icmp ne ptr %1, null, !dbg !5941
  %lnot = xor i1 %tobool, true, !dbg !5941
  %lnot1 = xor i1 %lnot, true, !dbg !5941
  %lnot2 = xor i1 %lnot1, true, !dbg !5941
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5941
  %conv = sext i32 %lnot.ext to i64, !dbg !5941
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5941
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5941
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5943

if.then:                                          ; preds = %entry
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5944
  store ptr %call4, ptr %retval, align 8, !dbg !5945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5945

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %f, align 8, !dbg !5946
  %3 = load i32, ptr %flags.addr, align 4, !dbg !5947
  %4 = load ptr, ptr %cred.addr, align 8, !dbg !5948
  %call5 = call i32 @init_file(ptr noundef %2, i32 noundef %3, ptr noundef %4) #17, !dbg !5949
  store i32 %call5, ptr %error, align 4, !dbg !5950
  %5 = load i32, ptr %error, align 4, !dbg !5951
  %tobool6 = icmp ne i32 %5, 0, !dbg !5951
  %lnot7 = xor i1 %tobool6, true, !dbg !5951
  %lnot9 = xor i1 %lnot7, true, !dbg !5951
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5951
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5951
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !5951
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !5951
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5953

if.then14:                                        ; preds = %if.end
  %6 = load ptr, ptr @filp_cachep, align 8, !dbg !5954
  %7 = load ptr, ptr %f, align 8, !dbg !5956
  call void @kmem_cache_free(ptr noundef %6, ptr noundef %7) #17, !dbg !5957
  %8 = load i32, ptr %error, align 4, !dbg !5958
  %conv15 = sext i32 %8 to i64, !dbg !5958
  %call16 = call ptr @ERR_PTR(i64 noundef %conv15) #17, !dbg !5959
  store ptr %call16, ptr %retval, align 8, !dbg !5960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

if.end17:                                         ; preds = %if.end
  %9 = load ptr, ptr %f, align 8, !dbg !5961
  %f_mode = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2, !dbg !5962
  %10 = load i32, ptr %f_mode, align 4, !dbg !5963
  %or = or i32 %10, 536870912, !dbg !5963
  store i32 %or, ptr %f_mode, align 4, !dbg !5963
  %11 = load ptr, ptr %f, align 8, !dbg !5964
  store ptr %11, ptr %retval, align 8, !dbg !5965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !5966
  %12 = load ptr, ptr %retval, align 8, !dbg !5966
  ret ptr %12, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_empty_backing_file(i32 noundef %flags, ptr noundef %cred) #0 align 16 !dbg !5967 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %cred.addr = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5969, metadata !DIExpression()), !dbg !5973
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #18, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !5971, metadata !DIExpression()), !dbg !5976
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5972, metadata !DIExpression()), !dbg !5978
  %call = call noalias ptr @kzalloc(i64 noundef 248, i32 noundef 3264) #20, !dbg !5979
  store ptr %call, ptr %ff, align 8, !dbg !5980
  %0 = load ptr, ptr %ff, align 8, !dbg !5981
  %tobool = icmp ne ptr %0, null, !dbg !5981
  %lnot = xor i1 %tobool, true, !dbg !5981
  %lnot1 = xor i1 %lnot, true, !dbg !5981
  %lnot2 = xor i1 %lnot1, true, !dbg !5981
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5981
  %conv = sext i32 %lnot.ext to i64, !dbg !5981
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5981
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5981
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5983

if.then:                                          ; preds = %entry
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5984
  store ptr %call4, ptr %retval, align 8, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5985

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ff, align 8, !dbg !5986
  %file = getelementptr inbounds %struct.backing_file, ptr %1, i32 0, i32 0, !dbg !5987
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5988
  %3 = load ptr, ptr %cred.addr, align 8, !dbg !5989
  %call5 = call i32 @init_file(ptr noundef %file, i32 noundef %2, ptr noundef %3) #17, !dbg !5990
  store i32 %call5, ptr %error, align 4, !dbg !5991
  %4 = load i32, ptr %error, align 4, !dbg !5992
  %tobool6 = icmp ne i32 %4, 0, !dbg !5992
  %lnot7 = xor i1 %tobool6, true, !dbg !5992
  %lnot9 = xor i1 %lnot7, true, !dbg !5992
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5992
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5992
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !5992
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !5992
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5994

if.then14:                                        ; preds = %if.end
  %5 = load ptr, ptr %ff, align 8, !dbg !5995
  call void @kfree(ptr noundef %5) #17, !dbg !5997
  %6 = load i32, ptr %error, align 4, !dbg !5998
  %conv15 = sext i32 %6 to i64, !dbg !5998
  %call16 = call ptr @ERR_PTR(i64 noundef %conv15) #17, !dbg !5999
  store ptr %call16, ptr %retval, align 8, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6000

if.end17:                                         ; preds = %if.end
  %7 = load ptr, ptr %ff, align 8, !dbg !6001
  %file18 = getelementptr inbounds %struct.backing_file, ptr %7, i32 0, i32 0, !dbg !6002
  %f_mode = getelementptr inbounds %struct.file, ptr %file18, i32 0, i32 2, !dbg !6003
  %8 = load i32, ptr %f_mode, align 4, !dbg !6004
  %or = or i32 %8, 570425344, !dbg !6004
  store i32 %or, ptr %f_mode, align 4, !dbg !6004
  %9 = load ptr, ptr %ff, align 8, !dbg !6005
  %file19 = getelementptr inbounds %struct.backing_file, ptr %9, i32 0, i32 0, !dbg !6006
  store ptr %file19, ptr %retval, align 8, !dbg !6007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6007

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !6008
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #18, !dbg !6008
  %10 = load ptr, ptr %retval, align 8, !dbg !6008
  ret ptr %10, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6009 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6013, metadata !DIExpression()), !dbg !6015
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6014, metadata !DIExpression()), !dbg !6016
  %0 = load i64, ptr %size.addr, align 8, !dbg !6017
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6018
  %or = or i32 %1, 256, !dbg !6019
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !6020
  ret ptr %call, !dbg !6021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6022 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_file_pseudo(ptr noundef %inode, ptr noundef %mnt, ptr noundef %name, i32 noundef %flags, ptr noundef %fops) #0 align 16 !dbg !5614 {
entry:
  %retval = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fops.addr = alloca ptr, align 8
  %this = alloca %struct.qstr, align 8
  %path = alloca %struct.path, align 8
  %file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5618, metadata !DIExpression()), !dbg !6025
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5619, metadata !DIExpression()), !dbg !6026
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5620, metadata !DIExpression()), !dbg !6027
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5621, metadata !DIExpression()), !dbg !6028
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5622, metadata !DIExpression()), !dbg !6029
  call void @llvm.lifetime.start.p0(i64 16, ptr %this) #18, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %this, metadata !5623, metadata !DIExpression()), !dbg !6031
  %0 = getelementptr inbounds %struct.qstr, ptr %this, i32 0, i32 0, !dbg !6032
  %hash = getelementptr inbounds %struct.anon.17, ptr %0, i32 0, i32 0, !dbg !6032
  store i32 0, ptr %hash, align 8, !dbg !6032
  %len = getelementptr inbounds %struct.anon.17, ptr %0, i32 0, i32 1, !dbg !6032
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6032
  %call = call i64 @strlen(ptr noundef %1) #17, !dbg !6032
  %conv = trunc i64 %call to i32, !dbg !6032
  store i32 %conv, ptr %len, align 4, !dbg !6032
  %name1 = getelementptr inbounds %struct.qstr, ptr %this, i32 0, i32 1, !dbg !6032
  %2 = load ptr, ptr %name.addr, align 8, !dbg !6032
  store ptr %2, ptr %name1, align 8, !dbg !6032
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #18, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5624, metadata !DIExpression()), !dbg !6034
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #18, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5625, metadata !DIExpression()), !dbg !6036
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !6037
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 1, !dbg !6038
  %4 = load ptr, ptr %mnt_sb, align 8, !dbg !6038
  %call2 = call ptr @d_alloc_pseudo(ptr noundef %4, ptr noundef %this) #17, !dbg !6039
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6040
  store ptr %call2, ptr %dentry, align 8, !dbg !6041
  %dentry3 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6042
  %5 = load ptr, ptr %dentry3, align 8, !dbg !6042
  %tobool = icmp ne ptr %5, null, !dbg !6044
  br i1 %tobool, label %if.end, label %if.then, !dbg !6045

if.then:                                          ; preds = %entry
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !6046
  store ptr %call4, ptr %retval, align 8, !dbg !6047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6047

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !6048
  %mnt_sb5 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1, !dbg !6050
  %7 = load ptr, ptr %mnt_sb5, align 8, !dbg !6050
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 40, !dbg !6051
  %8 = load ptr, ptr %s_d_op, align 16, !dbg !6051
  %tobool6 = icmp ne ptr %8, null, !dbg !6048
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !6052

if.then7:                                         ; preds = %if.end
  %dentry8 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6053
  %9 = load ptr, ptr %dentry8, align 8, !dbg !6053
  call void @d_set_d_op(ptr noundef %9, ptr noundef @alloc_file_pseudo.anon_ops) #17, !dbg !6054
  br label %if.end9, !dbg !6054

if.end9:                                          ; preds = %if.then7, %if.end
  %10 = load ptr, ptr %mnt.addr, align 8, !dbg !6055
  %call10 = call ptr @mntget(ptr noundef %10) #17, !dbg !6056
  %mnt11 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !6057
  store ptr %call10, ptr %mnt11, align 8, !dbg !6058
  %dentry12 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6059
  %11 = load ptr, ptr %dentry12, align 8, !dbg !6059
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !6060
  call void @d_instantiate(ptr noundef %11, ptr noundef %12) #17, !dbg !6061
  %13 = load i32, ptr %flags.addr, align 4, !dbg !6062
  %14 = load ptr, ptr %fops.addr, align 8, !dbg !6063
  %call13 = call ptr @alloc_file(ptr noundef %path, i32 noundef %13, ptr noundef %14) #17, !dbg !6064
  store ptr %call13, ptr %file, align 8, !dbg !6065
  %15 = load ptr, ptr %file, align 8, !dbg !6066
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %15) #17, !dbg !6068
  br i1 %call14, label %if.then15, label %if.end16, !dbg !6069

if.then15:                                        ; preds = %if.end9
  %16 = load ptr, ptr %inode.addr, align 8, !dbg !6070
  call void @ihold(ptr noundef %16) #17, !dbg !6072
  call void @path_put(ptr noundef %path) #17, !dbg !6073
  br label %if.end16, !dbg !6074

if.end16:                                         ; preds = %if.then15, %if.end9
  %17 = load ptr, ptr %file, align 8, !dbg !6075
  store ptr %17, ptr %retval, align 8, !dbg !6076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6076

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #18, !dbg !6077
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #18, !dbg !6077
  call void @llvm.lifetime.end.p0(i64 16, ptr %this) #18, !dbg !6077
  %18 = load ptr, ptr %retval, align 8, !dbg !6077
  ret ptr %18, !dbg !6077
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_dname(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6078 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6082 dso_local ptr @d_alloc_pseudo(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local void @d_set_d_op(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6089 dso_local ptr @mntget(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6092 dso_local void @d_instantiate(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_file(ptr noundef %path, i32 noundef %flags, ptr noundef %fop) #0 align 16 !dbg !6093 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fop.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6097, metadata !DIExpression()), !dbg !6101
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6098, metadata !DIExpression()), !dbg !6102
  store ptr %fop, ptr %fop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fop.addr, metadata !6099, metadata !DIExpression()), !dbg !6103
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #18, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6100, metadata !DIExpression()), !dbg !6105
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6106
  br label %do.body, !dbg !6107

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6109

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6109

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !6107
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6107
  %1 = load ptr, ptr %cred, align 32, !dbg !6107
  store ptr %1, ptr %tmp, align 8, !dbg !6109
  %2 = load ptr, ptr %tmp, align 8, !dbg !6107
  %call1 = call ptr @alloc_empty_file(i32 noundef %0, ptr noundef %2) #17, !dbg !6111
  store ptr %call1, ptr %file, align 8, !dbg !6112
  %3 = load ptr, ptr %file, align 8, !dbg !6113
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !6115
  br i1 %call2, label %if.then, label %if.end, !dbg !6116

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %file, align 8, !dbg !6117
  store ptr %4, ptr %retval, align 8, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6118

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %file, align 8, !dbg !6119
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10, !dbg !6120
  %6 = load ptr, ptr %path.addr, align 8, !dbg !6121
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f_path, ptr align 8 %6, i64 16, i1 false), !dbg !6122
  %7 = load ptr, ptr %path.addr, align 8, !dbg !6123
  %dentry = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1, !dbg !6124
  %8 = load ptr, ptr %dentry, align 8, !dbg !6124
  %d_inode = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5, !dbg !6125
  %9 = load ptr, ptr %d_inode, align 8, !dbg !6125
  %10 = load ptr, ptr %file, align 8, !dbg !6126
  %f_inode = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 11, !dbg !6127
  store ptr %9, ptr %f_inode, align 8, !dbg !6128
  %11 = load ptr, ptr %path.addr, align 8, !dbg !6129
  %dentry3 = getelementptr inbounds %struct.path, ptr %11, i32 0, i32 1, !dbg !6130
  %12 = load ptr, ptr %dentry3, align 8, !dbg !6130
  %d_inode4 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5, !dbg !6131
  %13 = load ptr, ptr %d_inode4, align 8, !dbg !6131
  %i_mapping = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 10, !dbg !6132
  %14 = load ptr, ptr %i_mapping, align 8, !dbg !6132
  %15 = load ptr, ptr %file, align 8, !dbg !6133
  %f_mapping = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 17, !dbg !6134
  store ptr %14, ptr %f_mapping, align 8, !dbg !6135
  %16 = load ptr, ptr %file, align 8, !dbg !6136
  %f_mapping5 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 17, !dbg !6137
  %17 = load ptr, ptr %f_mapping5, align 8, !dbg !6137
  %call6 = call i32 @filemap_sample_wb_err(ptr noundef %17) #17, !dbg !6138
  %18 = load ptr, ptr %file, align 8, !dbg !6139
  %f_wb_err = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 18, !dbg !6140
  store i32 %call6, ptr %f_wb_err, align 8, !dbg !6141
  %19 = load ptr, ptr %file, align 8, !dbg !6142
  %call7 = call i32 @file_sample_sb_err(ptr noundef %19) #17, !dbg !6143
  %20 = load ptr, ptr %file, align 8, !dbg !6144
  %f_sb_err = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 19, !dbg !6145
  store i32 %call7, ptr %f_sb_err, align 4, !dbg !6146
  %21 = load ptr, ptr %fop.addr, align 8, !dbg !6147
  %llseek = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 1, !dbg !6149
  %22 = load ptr, ptr %llseek, align 8, !dbg !6149
  %tobool = icmp ne ptr %22, null, !dbg !6147
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !6150

if.then8:                                         ; preds = %if.end
  %23 = load ptr, ptr %file, align 8, !dbg !6151
  %f_mode = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 2, !dbg !6152
  %24 = load i32, ptr %f_mode, align 4, !dbg !6153
  %or = or i32 %24, 4, !dbg !6153
  store i32 %or, ptr %f_mode, align 4, !dbg !6153
  br label %if.end9, !dbg !6151

if.end9:                                          ; preds = %if.then8, %if.end
  %25 = load ptr, ptr %file, align 8, !dbg !6154
  %f_mode10 = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2, !dbg !6156
  %26 = load i32, ptr %f_mode10, align 4, !dbg !6156
  %and = and i32 %26, 1, !dbg !6157
  %tobool11 = icmp ne i32 %and, 0, !dbg !6157
  br i1 %tobool11, label %land.lhs.true, label %if.end19, !dbg !6158

land.lhs.true:                                    ; preds = %if.end9
  %27 = load ptr, ptr %fop.addr, align 8, !dbg !6159
  %read = getelementptr inbounds %struct.file_operations, ptr %27, i32 0, i32 2, !dbg !6159
  %28 = load ptr, ptr %read, align 8, !dbg !6159
  %tobool12 = icmp ne ptr %28, null, !dbg !6159
  br i1 %tobool12, label %lor.end, label %lor.rhs, !dbg !6159

lor.rhs:                                          ; preds = %land.lhs.true
  %29 = load ptr, ptr %fop.addr, align 8, !dbg !6159
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %29, i32 0, i32 4, !dbg !6159
  %30 = load ptr, ptr %read_iter, align 8, !dbg !6159
  %tobool13 = icmp ne ptr %30, null, !dbg !6159
  br label %lor.end, !dbg !6159

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %31 = phi i1 [ true, %land.lhs.true ], [ %tobool13, %lor.rhs ]
  %lnot = xor i1 %31, true, !dbg !6159
  %lnot14 = xor i1 %lnot, true, !dbg !6159
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6159
  %conv = sext i32 %lnot.ext to i64, !dbg !6159
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6159
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6159
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !6160

if.then16:                                        ; preds = %lor.end
  %32 = load ptr, ptr %file, align 8, !dbg !6161
  %f_mode17 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 2, !dbg !6162
  %33 = load i32, ptr %f_mode17, align 4, !dbg !6163
  %or18 = or i32 %33, 131072, !dbg !6163
  store i32 %or18, ptr %f_mode17, align 4, !dbg !6163
  br label %if.end19, !dbg !6161

if.end19:                                         ; preds = %if.then16, %lor.end, %if.end9
  %34 = load ptr, ptr %file, align 8, !dbg !6164
  %f_mode20 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 2, !dbg !6166
  %35 = load i32, ptr %f_mode20, align 4, !dbg !6166
  %and21 = and i32 %35, 2, !dbg !6167
  %tobool22 = icmp ne i32 %and21, 0, !dbg !6167
  br i1 %tobool22, label %land.lhs.true23, label %if.end38, !dbg !6168

land.lhs.true23:                                  ; preds = %if.end19
  %36 = load ptr, ptr %fop.addr, align 8, !dbg !6169
  %write = getelementptr inbounds %struct.file_operations, ptr %36, i32 0, i32 3, !dbg !6169
  %37 = load ptr, ptr %write, align 8, !dbg !6169
  %tobool24 = icmp ne ptr %37, null, !dbg !6169
  br i1 %tobool24, label %lor.end27, label %lor.rhs25, !dbg !6169

lor.rhs25:                                        ; preds = %land.lhs.true23
  %38 = load ptr, ptr %fop.addr, align 8, !dbg !6169
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %38, i32 0, i32 5, !dbg !6169
  %39 = load ptr, ptr %write_iter, align 8, !dbg !6169
  %tobool26 = icmp ne ptr %39, null, !dbg !6169
  br label %lor.end27, !dbg !6169

lor.end27:                                        ; preds = %lor.rhs25, %land.lhs.true23
  %40 = phi i1 [ true, %land.lhs.true23 ], [ %tobool26, %lor.rhs25 ]
  %lnot28 = xor i1 %40, true, !dbg !6169
  %lnot30 = xor i1 %lnot28, true, !dbg !6169
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6169
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !6169
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 1), !dbg !6169
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !6169
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !6170

if.then35:                                        ; preds = %lor.end27
  %41 = load ptr, ptr %file, align 8, !dbg !6171
  %f_mode36 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 2, !dbg !6172
  %42 = load i32, ptr %f_mode36, align 4, !dbg !6173
  %or37 = or i32 %42, 262144, !dbg !6173
  store i32 %or37, ptr %f_mode36, align 4, !dbg !6173
  br label %if.end38, !dbg !6171

if.end38:                                         ; preds = %if.then35, %lor.end27, %if.end19
  %43 = load ptr, ptr %file, align 8, !dbg !6174
  %call39 = call i32 @iocb_flags(ptr noundef %43) #17, !dbg !6175
  %44 = load ptr, ptr %file, align 8, !dbg !6176
  %45 = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 0, !dbg !6177
  store i32 %call39, ptr %45, align 8, !dbg !6178
  %46 = load ptr, ptr %file, align 8, !dbg !6179
  %f_mode40 = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 2, !dbg !6180
  %47 = load i32, ptr %f_mode40, align 4, !dbg !6181
  %or41 = or i32 %47, 524288, !dbg !6181
  store i32 %or41, ptr %f_mode40, align 4, !dbg !6181
  %48 = load ptr, ptr %fop.addr, align 8, !dbg !6182
  %49 = load ptr, ptr %file, align 8, !dbg !6183
  %f_op = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 12, !dbg !6184
  store ptr %48, ptr %f_op, align 8, !dbg !6185
  %50 = load ptr, ptr %file, align 8, !dbg !6186
  %f_mode42 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 2, !dbg !6188
  %51 = load i32, ptr %f_mode42, align 4, !dbg !6188
  %and43 = and i32 %51, 3, !dbg !6189
  %cmp = icmp eq i32 %and43, 1, !dbg !6190
  br i1 %cmp, label %if.then45, label %if.end48, !dbg !6191

if.then45:                                        ; preds = %if.end38
  %52 = load ptr, ptr %path.addr, align 8, !dbg !6192
  %dentry46 = getelementptr inbounds %struct.path, ptr %52, i32 0, i32 1, !dbg !6193
  %53 = load ptr, ptr %dentry46, align 8, !dbg !6193
  %d_inode47 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 5, !dbg !6194
  %54 = load ptr, ptr %d_inode47, align 8, !dbg !6194
  call void @i_readcount_inc(ptr noundef %54) #17, !dbg !6195
  br label %if.end48, !dbg !6195

if.end48:                                         ; preds = %if.then45, %if.end38
  %55 = load ptr, ptr %file, align 8, !dbg !6196
  store ptr %55, ptr %retval, align 8, !dbg !6197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6197

cleanup:                                          ; preds = %if.end48, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #18, !dbg !6198
  %56 = load ptr, ptr %retval, align 8, !dbg !6198
  ret ptr %56, !dbg !6198
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #2 align 16 !dbg !6199 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6205
  %1 = ptrtoint ptr %0 to i64, !dbg !6205
  %2 = inttoptr i64 %1 to ptr, !dbg !6205
  %3 = ptrtoint ptr %2 to i64, !dbg !6205
  %cmp = icmp uge i64 %3, -4095, !dbg !6205
  %lnot = xor i1 %cmp, true, !dbg !6205
  %lnot1 = xor i1 %lnot, true, !dbg !6205
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6205
  %conv = sext i32 %lnot.ext to i64, !dbg !6205
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6205
  %tobool = icmp ne i64 %expval, 0, !dbg !6205
  ret i1 %tobool, !dbg !6206
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local void @ihold(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6208 dso_local void @path_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_file_clone(ptr noundef %base, i32 noundef %flags, ptr noundef %fops) #0 align 16 !dbg !6211 {
entry:
  %base.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fops.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6215, metadata !DIExpression()), !dbg !6219
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6216, metadata !DIExpression()), !dbg !6220
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !6217, metadata !DIExpression()), !dbg !6221
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6218, metadata !DIExpression()), !dbg !6223
  %0 = load ptr, ptr %base.addr, align 8, !dbg !6224
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !6225
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6226
  %2 = load ptr, ptr %fops.addr, align 8, !dbg !6227
  %call = call ptr @alloc_file(ptr noundef %f_path, i32 noundef %1, ptr noundef %2) #17, !dbg !6228
  store ptr %call, ptr %f, align 8, !dbg !6223
  %3 = load ptr, ptr %f, align 8, !dbg !6229
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !6231
  br i1 %call1, label %if.end, label %if.then, !dbg !6232

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %f, align 8, !dbg !6233
  %f_path2 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 10, !dbg !6235
  call void @path_get(ptr noundef %f_path2) #17, !dbg !6236
  %5 = load ptr, ptr %base.addr, align 8, !dbg !6237
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17, !dbg !6238
  %6 = load ptr, ptr %f_mapping, align 8, !dbg !6238
  %7 = load ptr, ptr %f, align 8, !dbg !6239
  %f_mapping3 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 17, !dbg !6240
  store ptr %6, ptr %f_mapping3, align 8, !dbg !6241
  br label %if.end, !dbg !6242

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %f, align 8, !dbg !6243
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !6244
  ret ptr %8, !dbg !6245
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6246 dso_local void @path_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @flush_delayed_fput() #0 align 16 !dbg !6247 {
entry:
  call void @delayed_fput(ptr noundef null) #17, !dbg !6248
  ret void, !dbg !6249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayed_fput(ptr noundef %unused) #0 align 16 !dbg !6250 {
entry:
  %unused.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %f = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !6252, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %node, metadata !6253, metadata !DIExpression()), !dbg !6264
  %call = call ptr @llist_del_all(ptr noundef @delayed_fput_list) #17, !dbg !6265
  store ptr %call, ptr %node, align 8, !dbg !6264
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6254, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #18, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6255, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6256, metadata !DIExpression()), !dbg !6269
  %0 = load ptr, ptr %node, align 8, !dbg !6269
  store ptr %0, ptr %__mptr, align 8, !dbg !6269
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6269
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6269
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6270
  %2 = load ptr, ptr %tmp, align 8, !dbg !6269
  store ptr %2, ptr %f, align 8, !dbg !6270
  br label %for.cond, !dbg !6270

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %f, align 8, !dbg !6271
  %4 = ptrtoint ptr %3 to i64, !dbg !6271
  %add = add i64 %4, 0, !dbg !6271
  %cmp = icmp ne i64 %add, 0, !dbg !6271
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6271

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6259, metadata !DIExpression()), !dbg !6272
  %5 = load ptr, ptr %f, align 8, !dbg !6272
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 0, !dbg !6272
  %next = getelementptr inbounds %struct.llist_node, ptr %6, i32 0, i32 0, !dbg !6272
  %7 = load ptr, ptr %next, align 8, !dbg !6272
  store ptr %7, ptr %__mptr1, align 8, !dbg !6272
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !6272
  %add.ptr3 = getelementptr i8, ptr %8, i64 0, !dbg !6272
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !6271
  %9 = load ptr, ptr %tmp2, align 8, !dbg !6272
  store ptr %9, ptr %t, align 8, !dbg !6271
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !6273
  br i1 %10, label %for.body, label %for.end, !dbg !6270

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %f, align 8, !dbg !6274
  call void @__fput(ptr noundef %11) #17, !dbg !6275
  br label %for.inc, !dbg !6275

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %t, align 8, !dbg !6271
  store ptr %12, ptr %f, align 8, !dbg !6271
  br label %for.cond, !dbg !6271, !llvm.loop !6276

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #18, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !6280
  ret void, !dbg !6280
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fput(ptr noundef %file) #0 align 16 !dbg !6281 {
entry:
  %file.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6283, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6288
  %f_count = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3, !dbg !6289
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %f_count) #17, !dbg !6290
  br i1 %call, label %if.then, label %if.end18, !dbg !6291

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #18, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %task, metadata !6284, metadata !DIExpression()), !dbg !6293
  %call1 = call ptr @get_current() #17, !dbg !6294
  store ptr %call1, ptr %task, align 8, !dbg !6293
  %call2 = call i32 @preempt_count() #17, !dbg !6295
  %conv = sext i32 %call2 to i64, !dbg !6295
  %and = and i64 %conv, 16776960, !dbg !6295
  %tobool = icmp ne i64 %and, 0, !dbg !6295
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6295

land.rhs:                                         ; preds = %if.then
  %1 = load ptr, ptr %task, align 8, !dbg !6295
  %flags = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4, !dbg !6295
  %2 = load i32, ptr %flags, align 4, !dbg !6295
  %and3 = and i32 %2, 2097152, !dbg !6295
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6295
  %lnot = xor i1 %tobool4, true, !dbg !6295
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %3 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ], !dbg !6297
  %lnot5 = xor i1 %3, true, !dbg !6295
  %lnot6 = xor i1 %lnot5, true, !dbg !6295
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6295
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6295
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !6295
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6295
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !6298

if.then9:                                         ; preds = %land.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6299
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 0, !dbg !6301
  call void @init_task_work(ptr noundef %5, ptr noundef @____fput) #17, !dbg !6302
  %6 = load ptr, ptr %task, align 8, !dbg !6303
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6305
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 0, !dbg !6306
  %call10 = call i32 @task_work_add(ptr noundef %6, ptr noundef %8, i32 noundef 1) #17, !dbg !6307
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6307
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !6308

if.then12:                                        ; preds = %if.then9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6309

if.end:                                           ; preds = %if.then9
  br label %if.end13, !dbg !6310

if.end13:                                         ; preds = %if.end, %land.end
  %9 = load ptr, ptr %file.addr, align 8, !dbg !6311
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 0, !dbg !6313
  %call14 = call zeroext i1 @llist_add(ptr noundef %10, ptr noundef @delayed_fput_list) #17, !dbg !6314
  br i1 %call14, label %if.then15, label %if.end17, !dbg !6315

if.then15:                                        ; preds = %if.end13
  %call16 = call zeroext i1 @schedule_delayed_work(ptr noundef @delayed_fput_work, i64 noundef 1) #17, !dbg !6316
  br label %if.end17, !dbg !6316

if.end17:                                         ; preds = %if.then15, %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6317
  br label %cleanup, !dbg !6317

cleanup:                                          ; preds = %if.end17, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #18, !dbg !6317
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end18
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18, !dbg !6318

if.end18:                                         ; preds = %cleanup, %cleanup.cont, %entry
  ret void, !dbg !6319

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_dec_and_test(ptr noundef %v) #9 align 16 !dbg !6320 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  br label %do.body, !dbg !6327

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6328

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6330
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !6331
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6332
  %call = call zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %1) #17, !dbg !6333
  ret i1 %call, !dbg !6334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !6335 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6340, metadata !DIExpression()), !dbg !6346
  br label %do.body, !dbg !6346

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6342, metadata !DIExpression()), !dbg !6347
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6347
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6346
  br label %do.cond, !dbg !6347

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6347

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6344, metadata !DIExpression()), !dbg !6348
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !6348, !srcloc !6349
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6348
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6348
  %3 = inttoptr i64 %2 to ptr, !dbg !6348
  store ptr %3, ptr %tmp, align 8, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !6346
  %4 = load ptr, ptr %tmp, align 8, !dbg !6348
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6346
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6346
  store ptr %5, ptr %tmp1, align 8, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !6350
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6346
  ret ptr %6, !dbg !6351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #9 align 16 !dbg !6352 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6355, metadata !DIExpression()), !dbg !6357
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.28, ptr @pcpu_hot, i32 0, i32 1)) #22, !dbg !6357, !srcloc !6358
  store i32 %0, ptr %pfo_val__, align 4, !dbg !6357
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !6357
  %conv = zext i32 %1 to i64, !dbg !6357
  %conv1 = trunc i64 %conv to i32, !dbg !6357
  store i32 %conv1, ptr %tmp, align 4, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !6359
  %2 = load i32, ptr %tmp, align 4, !dbg !6357
  %and = and i32 %2, 2147483647, !dbg !6360
  ret i32 %and, !dbg !6361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_task_work(ptr noundef %twork, ptr noundef %func) #2 align 16 !dbg !6362 {
entry:
  %twork.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %twork, ptr %twork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %twork.addr, metadata !6367, metadata !DIExpression()), !dbg !6369
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6368, metadata !DIExpression()), !dbg !6370
  %0 = load ptr, ptr %func.addr, align 8, !dbg !6371
  %1 = load ptr, ptr %twork.addr, align 8, !dbg !6372
  %func1 = getelementptr inbounds %struct.callback_head, ptr %1, i32 0, i32 1, !dbg !6373
  store ptr %0, ptr %func1, align 8, !dbg !6374
  ret void, !dbg !6375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @____fput(ptr noundef %work) #0 align 16 !dbg !6376 {
entry:
  %work.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6378, metadata !DIExpression()), !dbg !6381
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6379, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6382
  store ptr %0, ptr %__mptr, align 8, !dbg !6382
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6382
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6382
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6383
  %2 = load ptr, ptr %tmp, align 8, !dbg !6382
  call void @__fput(ptr noundef %2) #17, !dbg !6384
  ret void, !dbg !6385
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6386 dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_add(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !6389 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6394, metadata !DIExpression()), !dbg !6396
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6395, metadata !DIExpression()), !dbg !6397
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6398
  %1 = load ptr, ptr %new.addr, align 8, !dbg !6399
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6400
  %call = call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6401
  ret i1 %call, !dbg !6402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #2 align 16 !dbg !6403 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  %0 = load ptr, ptr @system_wq, align 8, !dbg !6412
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !6413
  %2 = load i64, ptr %delay.addr, align 8, !dbg !6414
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #17, !dbg !6415
  ret i1 %call, !dbg !6416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__fput_sync(ptr noundef %file) #0 align 16 !dbg !6417 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6421
  %f_count = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3, !dbg !6423
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %f_count) #17, !dbg !6424
  br i1 %call, label %if.then, label %if.end, !dbg !6425

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6426
  call void @__fput(ptr noundef %1) #17, !dbg !6427
  br label %if.end, !dbg !6427

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__fput(ptr noundef %file) #0 align 16 !dbg !6429 {
entry:
  %file.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6431, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #18, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !6432, metadata !DIExpression()), !dbg !6439
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6440
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !6441
  %dentry1 = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !6442
  %1 = load ptr, ptr %dentry1, align 8, !dbg !6442
  store ptr %1, ptr %dentry, align 8, !dbg !6439
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #18, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !6433, metadata !DIExpression()), !dbg !6444
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6445
  %f_path2 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10, !dbg !6446
  %mnt3 = getelementptr inbounds %struct.path, ptr %f_path2, i32 0, i32 0, !dbg !6447
  %3 = load ptr, ptr %mnt3, align 8, !dbg !6447
  store ptr %3, ptr %mnt, align 8, !dbg !6444
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6434, metadata !DIExpression()), !dbg !6449
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6450
  %f_inode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 11, !dbg !6451
  %5 = load ptr, ptr %f_inode, align 8, !dbg !6451
  store ptr %5, ptr %inode, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #18, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !6435, metadata !DIExpression()), !dbg !6453
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6454
  %f_mode = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2, !dbg !6455
  %7 = load i32, ptr %f_mode, align 4, !dbg !6455
  store i32 %7, ptr %mode, align 4, !dbg !6453
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6456
  %f_mode4 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2, !dbg !6456
  %9 = load i32, ptr %f_mode4, align 4, !dbg !6456
  %and = and i32 %9, 524288, !dbg !6456
  %tobool = icmp ne i32 %and, 0, !dbg !6456
  %lnot = xor i1 %tobool, true, !dbg !6456
  %lnot5 = xor i1 %lnot, true, !dbg !6456
  %lnot6 = xor i1 %lnot5, true, !dbg !6456
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6456
  %conv = sext i32 %lnot.ext to i64, !dbg !6456
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6456
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6456
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6458

if.then:                                          ; preds = %entry
  br label %out, !dbg !6459

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6460

do.body:                                          ; preds = %if.end
  call void @might_resched() #17, !dbg !6461
  br label %do.cond, !dbg !6461

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6461

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %file.addr, align 8, !dbg !6463
  call void @fsnotify_close(ptr noundef %10) #17, !dbg !6464
  %11 = load ptr, ptr %file.addr, align 8, !dbg !6465
  call void @eventpoll_release(ptr noundef %11) #17, !dbg !6466
  %12 = load ptr, ptr %file.addr, align 8, !dbg !6467
  call void @locks_remove_file(ptr noundef %12) #17, !dbg !6468
  %13 = load ptr, ptr %file.addr, align 8, !dbg !6469
  call void @ima_file_free(ptr noundef %13) #17, !dbg !6470
  %14 = load ptr, ptr %file.addr, align 8, !dbg !6471
  %f_flags = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 6, !dbg !6471
  %15 = load i32, ptr %f_flags, align 8, !dbg !6471
  %and8 = and i32 %15, 8192, !dbg !6471
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6471
  %lnot10 = xor i1 %tobool9, true, !dbg !6471
  %lnot12 = xor i1 %lnot10, true, !dbg !6471
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6471
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !6471
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !6471
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !6471
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !6473

if.then17:                                        ; preds = %do.end
  %16 = load ptr, ptr %file.addr, align 8, !dbg !6474
  %f_op = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 12, !dbg !6477
  %17 = load ptr, ptr %f_op, align 8, !dbg !6477
  %fasync = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 17, !dbg !6478
  %18 = load ptr, ptr %fasync, align 8, !dbg !6478
  %tobool18 = icmp ne ptr %18, null, !dbg !6474
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !6479

if.then19:                                        ; preds = %if.then17
  %19 = load ptr, ptr %file.addr, align 8, !dbg !6480
  %f_op20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 12, !dbg !6481
  %20 = load ptr, ptr %f_op20, align 8, !dbg !6481
  %fasync21 = getelementptr inbounds %struct.file_operations, ptr %20, i32 0, i32 17, !dbg !6482
  %21 = load ptr, ptr %fasync21, align 8, !dbg !6482
  %22 = load ptr, ptr %file.addr, align 8, !dbg !6483
  %call = call i32 %21(i32 noundef -1, ptr noundef %22, i32 noundef 0) #17, !dbg !6480
  br label %if.end22, !dbg !6480

if.end22:                                         ; preds = %if.then19, %if.then17
  br label %if.end23, !dbg !6484

if.end23:                                         ; preds = %if.end22, %do.end
  %23 = load ptr, ptr %file.addr, align 8, !dbg !6485
  %f_op24 = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 12, !dbg !6487
  %24 = load ptr, ptr %f_op24, align 8, !dbg !6487
  %release = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 15, !dbg !6488
  %25 = load ptr, ptr %release, align 8, !dbg !6488
  %tobool25 = icmp ne ptr %25, null, !dbg !6485
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !6489

if.then26:                                        ; preds = %if.end23
  %26 = load ptr, ptr %file.addr, align 8, !dbg !6490
  %f_op27 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 12, !dbg !6491
  %27 = load ptr, ptr %f_op27, align 8, !dbg !6491
  %release28 = getelementptr inbounds %struct.file_operations, ptr %27, i32 0, i32 15, !dbg !6492
  %28 = load ptr, ptr %release28, align 8, !dbg !6492
  %29 = load ptr, ptr %inode, align 8, !dbg !6493
  %30 = load ptr, ptr %file.addr, align 8, !dbg !6494
  %call29 = call i32 %28(ptr noundef %29, ptr noundef %30) #17, !dbg !6490
  br label %if.end30, !dbg !6490

if.end30:                                         ; preds = %if.then26, %if.end23
  %31 = load ptr, ptr %inode, align 8, !dbg !6495
  %i_mode = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 0, !dbg !6495
  %32 = load i16, ptr %i_mode, align 8, !dbg !6495
  %conv31 = zext i16 %32 to i32, !dbg !6495
  %and32 = and i32 %conv31, 61440, !dbg !6495
  %cmp = icmp eq i32 %and32, 8192, !dbg !6495
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !6495

land.lhs.true:                                    ; preds = %if.end30
  %33 = load ptr, ptr %inode, align 8, !dbg !6495
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 43, !dbg !6495
  %35 = load ptr, ptr %34, align 8, !dbg !6495
  %cmp34 = icmp ne ptr %35, null, !dbg !6495
  br i1 %cmp34, label %land.rhs, label %land.end, !dbg !6495

land.rhs:                                         ; preds = %land.lhs.true
  %36 = load i32, ptr %mode, align 4, !dbg !6495
  %and36 = and i32 %36, 16384, !dbg !6495
  %tobool37 = icmp ne i32 %and36, 0, !dbg !6495
  %lnot38 = xor i1 %tobool37, true, !dbg !6495
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end30
  %37 = phi i1 [ false, %land.lhs.true ], [ false, %if.end30 ], [ %lnot38, %land.rhs ], !dbg !6497
  %lnot40 = xor i1 %37, true, !dbg !6495
  %lnot42 = xor i1 %lnot40, true, !dbg !6495
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !6495
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !6495
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !6495
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !6495
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6498

if.then47:                                        ; preds = %land.end
  %38 = load ptr, ptr %inode, align 8, !dbg !6499
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 43, !dbg !6501
  %40 = load ptr, ptr %39, align 8, !dbg !6501
  call void @cdev_put(ptr noundef %40) #17, !dbg !6502
  br label %if.end48, !dbg !6503

if.end48:                                         ; preds = %if.then47, %land.end
  br label %do.body49, !dbg !6504

do.body49:                                        ; preds = %if.end48
  %41 = load ptr, ptr %file.addr, align 8, !dbg !6505
  %f_op50 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 12, !dbg !6505
  %42 = load ptr, ptr %f_op50, align 8, !dbg !6505
  %tobool51 = icmp ne ptr %42, null, !dbg !6505
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !6508

if.then52:                                        ; preds = %do.body49
  %43 = load ptr, ptr %file.addr, align 8, !dbg !6505
  %f_op53 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 12, !dbg !6505
  %44 = load ptr, ptr %f_op53, align 8, !dbg !6505
  %owner = getelementptr inbounds %struct.file_operations, ptr %44, i32 0, i32 0, !dbg !6505
  %45 = load ptr, ptr %owner, align 8, !dbg !6505
  call void @module_put(ptr noundef %45) #17, !dbg !6505
  br label %if.end54, !dbg !6505

if.end54:                                         ; preds = %if.then52, %do.body49
  br label %do.cond55, !dbg !6508

do.cond55:                                        ; preds = %if.end54
  br label %do.end56, !dbg !6508

do.end56:                                         ; preds = %do.cond55
  %46 = load ptr, ptr %file.addr, align 8, !dbg !6509
  %f_owner = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 7, !dbg !6510
  %pid = getelementptr inbounds %struct.fown_struct, ptr %f_owner, i32 0, i32 1, !dbg !6511
  %47 = load ptr, ptr %pid, align 8, !dbg !6511
  call void @put_pid(ptr noundef %47) #17, !dbg !6512
  %48 = load ptr, ptr %file.addr, align 8, !dbg !6513
  call void @put_file_access(ptr noundef %48) #17, !dbg !6514
  %49 = load ptr, ptr %dentry, align 8, !dbg !6515
  call void @dput(ptr noundef %49) #17, !dbg !6516
  %50 = load i32, ptr %mode, align 4, !dbg !6517
  %and57 = and i32 %50, 268435456, !dbg !6517
  %tobool58 = icmp ne i32 %and57, 0, !dbg !6517
  %lnot59 = xor i1 %tobool58, true, !dbg !6517
  %lnot61 = xor i1 %lnot59, true, !dbg !6517
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6517
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !6517
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !6517
  %tobool65 = icmp ne i64 %expval64, 0, !dbg !6517
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !6519

if.then66:                                        ; preds = %do.end56
  %51 = load ptr, ptr %mnt, align 8, !dbg !6520
  call void @dissolve_on_fput(ptr noundef %51) #17, !dbg !6521
  br label %if.end67, !dbg !6521

if.end67:                                         ; preds = %if.then66, %do.end56
  %52 = load ptr, ptr %mnt, align 8, !dbg !6522
  call void @mntput(ptr noundef %52) #17, !dbg !6523
  br label %out, !dbg !6523

out:                                              ; preds = %if.end67, %if.then
  call void @llvm.dbg.label(metadata !6436), !dbg !6524
  %53 = load ptr, ptr %file.addr, align 8, !dbg !6525
  call void @file_free(ptr noundef %53) #17, !dbg !6526
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #18, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #18, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #18, !dbg !6527
  ret void, !dbg !6527
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @files_init() #3 section ".init.text" align 16 !dbg !5639 {
entry:
  %tmp = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 232, i32 noundef 0, i32 noundef 270336, ptr noundef null) #17, !dbg !6528
  store ptr %call, ptr @filp_cachep, align 8, !dbg !6529
  %call1 = call i32 @__percpu_counter_init_many(ptr noundef @nr_files, i64 noundef 0, i32 noundef 3264, i32 noundef 1, ptr noundef @files_init.__key) #17, !dbg !6530
  store i32 %call1, ptr %tmp, align 4, !dbg !6530
  %0 = load i32, ptr %tmp, align 4, !dbg !6530
  ret void, !dbg !6532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6533 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6536 dso_local i32 @__percpu_counter_init_many(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @files_maxfiles_init() #3 section ".init.text" align 16 !dbg !6540 {
entry:
  %n = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %memreserve = alloca i64, align 8
  %__UNIQUE_ID___x364 = alloca i64, align 8
  %__UNIQUE_ID___y365 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x366 = alloca i64, align 8
  %__UNIQUE_ID___y367 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #18, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6542, metadata !DIExpression()), !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #18, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !6543, metadata !DIExpression()), !dbg !6554
  %call = call i64 @totalram_pages() #17, !dbg !6555
  store i64 %call, ptr %nr_pages, align 8, !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %memreserve) #18, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %memreserve, metadata !6544, metadata !DIExpression()), !dbg !6557
  %0 = load i64, ptr %nr_pages, align 8, !dbg !6558
  %call1 = call i64 @global_zone_page_state(i32 noundef 0) #17, !dbg !6559
  %sub = sub i64 %0, %call1, !dbg !6560
  %mul = mul i64 %sub, 3, !dbg !6561
  %div = udiv i64 %mul, 2, !dbg !6562
  store i64 %div, ptr %memreserve, align 8, !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x364) #18, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x364, metadata !6545, metadata !DIExpression()), !dbg !6563
  %1 = load i64, ptr %memreserve, align 8, !dbg !6563
  store i64 %1, ptr %__UNIQUE_ID___x364, align 8, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y365) #18, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y365, metadata !6547, metadata !DIExpression()), !dbg !6563
  %2 = load i64, ptr %nr_pages, align 8, !dbg !6563
  %sub2 = sub i64 %2, 1, !dbg !6563
  store i64 %sub2, ptr %__UNIQUE_ID___y365, align 8, !dbg !6563
  %3 = load i64, ptr %__UNIQUE_ID___x364, align 8, !dbg !6563
  %4 = load i64, ptr %__UNIQUE_ID___y365, align 8, !dbg !6563
  %cmp = icmp ult i64 %3, %4, !dbg !6563
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6563

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___x364, align 8, !dbg !6563
  br label %cond.end, !dbg !6563

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___y365, align 8, !dbg !6563
  br label %cond.end, !dbg !6563

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !6563
  store i64 %cond, ptr %tmp, align 8, !dbg !6563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y365) #18, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x364) #18, !dbg !6564
  %7 = load i64, ptr %tmp, align 8, !dbg !6563
  store i64 %7, ptr %memreserve, align 8, !dbg !6565
  %8 = load i64, ptr %nr_pages, align 8, !dbg !6566
  %9 = load i64, ptr %memreserve, align 8, !dbg !6567
  %sub3 = sub i64 %8, %9, !dbg !6568
  %mul4 = mul i64 %sub3, 4, !dbg !6569
  %div5 = udiv i64 %mul4, 10, !dbg !6570
  store i64 %div5, ptr %n, align 8, !dbg !6571
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x366) #18, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x366, metadata !6548, metadata !DIExpression()), !dbg !6572
  %10 = load i64, ptr %n, align 8, !dbg !6572
  store i64 %10, ptr %__UNIQUE_ID___x366, align 8, !dbg !6572
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y367) #18, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y367, metadata !6550, metadata !DIExpression()), !dbg !6572
  store i64 8192, ptr %__UNIQUE_ID___y367, align 8, !dbg !6572
  %11 = load i64, ptr %__UNIQUE_ID___x366, align 8, !dbg !6572
  %12 = load i64, ptr %__UNIQUE_ID___y367, align 8, !dbg !6572
  %cmp7 = icmp ugt i64 %11, %12, !dbg !6572
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !6572

cond.true8:                                       ; preds = %cond.end
  %13 = load i64, ptr %__UNIQUE_ID___x366, align 8, !dbg !6572
  br label %cond.end10, !dbg !6572

cond.false9:                                      ; preds = %cond.end
  %14 = load i64, ptr %__UNIQUE_ID___y367, align 8, !dbg !6572
  br label %cond.end10, !dbg !6572

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i64 [ %13, %cond.true8 ], [ %14, %cond.false9 ], !dbg !6572
  store i64 %cond11, ptr %tmp6, align 8, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y367) #18, !dbg !6573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x366) #18, !dbg !6573
  %15 = load i64, ptr %tmp6, align 8, !dbg !6572
  store i64 %15, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %memreserve) #18, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #18, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #18, !dbg !6575
  ret void, !dbg !6575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalram_pages() #2 align 16 !dbg !6576 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @_totalram_pages) #17, !dbg !6577
  ret i64 %call, !dbg !6578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @global_zone_page_state(i32 noundef %item) #2 align 16 !dbg !6579 {
entry:
  %item.addr = alloca i32, align 4
  %x = alloca i64, align 8
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !6584, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #18, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6585, metadata !DIExpression()), !dbg !6588
  %0 = load i32, ptr %item.addr, align 4, !dbg !6589
  %idxprom = zext i32 %0 to i64, !dbg !6590
  %arrayidx = getelementptr [10 x %struct.atomic64_t], ptr @vm_zone_stat, i64 0, i64 %idxprom, !dbg !6590
  %call = call i64 @atomic_long_read(ptr noundef %arrayidx) #17, !dbg !6591
  store i64 %call, ptr %x, align 8, !dbg !6588
  %1 = load i64, ptr %x, align 8, !dbg !6592
  %cmp = icmp slt i64 %1, 0, !dbg !6594
  br i1 %cmp, label %if.then, label %if.end, !dbg !6595

if.then:                                          ; preds = %entry
  store i64 0, ptr %x, align 8, !dbg !6596
  br label %if.end, !dbg !6597

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %x, align 8, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #18, !dbg !6599
  ret i64 %2, !dbg !6600
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6601 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6604 dso_local ptr @register_sysctl_mount_point(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_not_leak(ptr noundef %ptr) #2 align 16 !dbg !6607 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6610, metadata !DIExpression()), !dbg !6611
  ret void, !dbg !6612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_nr_files(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !6613 {
entry:
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !6615, metadata !DIExpression()), !dbg !6620
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6616, metadata !DIExpression()), !dbg !6621
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6617, metadata !DIExpression()), !dbg !6622
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !6618, metadata !DIExpression()), !dbg !6623
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6619, metadata !DIExpression()), !dbg !6624
  %call = call i64 @get_nr_files() #17, !dbg !6625
  store i64 %call, ptr @files_stat, align 8, !dbg !6626
  %0 = load ptr, ptr %table.addr, align 8, !dbg !6627
  %1 = load i32, ptr %write.addr, align 4, !dbg !6628
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !6629
  %3 = load ptr, ptr %lenp.addr, align 8, !dbg !6630
  %4 = load ptr, ptr %ppos.addr, align 8, !dbg !6631
  %call1 = call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !dbg !6632
  ret i32 %call1, !dbg !6633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6634 dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_read_positive(ptr noundef %fbc) #2 align 16 !dbg !6635 {
entry:
  %retval = alloca i64, align 8
  %fbc.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !6637, metadata !DIExpression()), !dbg !6639
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6638, metadata !DIExpression()), !dbg !6641
  br label %do.body, !dbg !6642

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6644

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !6642
  %count = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1, !dbg !6642
  %1 = load volatile i64, ptr %count, align 8, !dbg !6642
  store i64 %1, ptr %tmp, align 8, !dbg !6644
  %2 = load i64, ptr %tmp, align 8, !dbg !6642
  store i64 %2, ptr %ret, align 8, !dbg !6641
  %3 = load i64, ptr %ret, align 8, !dbg !6646
  %cmp = icmp sge i64 %3, 0, !dbg !6648
  br i1 %cmp, label %if.then, label %if.end, !dbg !6649

if.then:                                          ; preds = %do.end
  %4 = load i64, ptr %ret, align 8, !dbg !6650
  store i64 %4, ptr %retval, align 8, !dbg !6651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6651

if.end:                                           ; preds = %do.end
  store i64 0, ptr %retval, align 8, !dbg !6652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6652

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6653
  %5 = load i64, ptr %retval, align 8, !dbg !6653
  ret i64 %5, !dbg !6653
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6654 dso_local i64 @__percpu_counter_sum(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6655 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cred(ptr noundef %cred) #2 align 16 !dbg !6656 {
entry:
  %retval = alloca ptr, align 8
  %cred.addr = alloca ptr, align 8
  %nonconst_cred = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonconst_cred) #18, !dbg !6663
  call void @llvm.dbg.declare(metadata ptr %nonconst_cred, metadata !6661, metadata !DIExpression()), !dbg !6664
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !6665
  store ptr %0, ptr %nonconst_cred, align 8, !dbg !6664
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !6666
  %tobool = icmp ne ptr %1, null, !dbg !6666
  br i1 %tobool, label %if.end, label %if.then, !dbg !6668

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred.addr, align 8, !dbg !6669
  store ptr %2, ptr %retval, align 8, !dbg !6670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6670

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nonconst_cred, align 8, !dbg !6671
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25, !dbg !6672
  store i32 0, ptr %4, align 8, !dbg !6673
  %5 = load ptr, ptr %nonconst_cred, align 8, !dbg !6674
  %call = call ptr @get_new_cred(ptr noundef %5) #17, !dbg !6675
  store ptr %call, ptr %retval, align 8, !dbg !6676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6676

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonconst_cred) #18, !dbg !6677
  %6 = load ptr, ptr %retval, align 8, !dbg !6677
  ret ptr %6, !dbg !6677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6678 dso_local i32 @security_file_alloc(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_cred(ptr noundef %_cred) #2 align 16 !dbg !6682 {
entry:
  %_cred.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  store ptr %_cred, ptr %_cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cred.addr, metadata !6686, metadata !DIExpression()), !dbg !6688
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #18, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6687, metadata !DIExpression()), !dbg !6690
  %0 = load ptr, ptr %_cred.addr, align 8, !dbg !6691
  store ptr %0, ptr %cred, align 8, !dbg !6690
  %1 = load ptr, ptr %cred, align 8, !dbg !6692
  %tobool = icmp ne ptr %1, null, !dbg !6692
  br i1 %tobool, label %if.then, label %if.end2, !dbg !6694

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cred, align 8, !dbg !6695
  %usage = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 0, !dbg !6698
  %call = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %usage) #17, !dbg !6699
  br i1 %call, label %if.then1, label %if.end, !dbg !6700

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %cred, align 8, !dbg !6701
  call void @__put_cred(ptr noundef %3) #17, !dbg !6702
  br label %if.end, !dbg !6702

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !6703

if.end2:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #18, !dbg !6704
  ret void, !dbg !6704
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #9 align 16 !dbg !6705 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6709, metadata !DIExpression()), !dbg !6711
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6713
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #17, !dbg !6714
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6715
  %2 = load i64, ptr %i.addr, align 8, !dbg !6716
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #17, !dbg !6717
  ret void, !dbg !6718
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #9 align 16 !dbg !6719 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6727
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6728
  ret ptr %1, !dbg !6729
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6730 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_new_cred(ptr noundef %cred) #2 align 16 !dbg !6734 {
entry:
  %cred.addr = alloca ptr, align 8
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  %0 = load ptr, ptr %cred.addr, align 8, !dbg !6740
  %usage = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 0, !dbg !6741
  call void @atomic_long_inc(ptr noundef %usage) #17, !dbg !6742
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !6743
  ret ptr %1, !dbg !6744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #9 align 16 !dbg !6745 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6749, metadata !DIExpression()), !dbg !6750
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6751
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !6752
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6753
  call void @raw_atomic_long_inc(ptr noundef %1) #17, !dbg !6754
  ret void, !dbg !6755
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6756 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6764, metadata !DIExpression()), !dbg !6766
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6765, metadata !DIExpression()), !dbg !6767
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6768
  %1 = load i64, ptr %size.addr, align 8, !dbg !6769
  %conv = trunc i64 %1 to i32, !dbg !6769
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6770
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6771
  %3 = load i64, ptr %size.addr, align 8, !dbg !6771
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6771
  ret void, !dbg !6772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #9 align 16 !dbg !6773 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6777
  call void @raw_atomic64_inc(ptr noundef %0) #17, !dbg !6778
  ret void, !dbg !6779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !6780 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6785, metadata !DIExpression()), !dbg !6787
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6786, metadata !DIExpression()), !dbg !6788
  ret i1 true, !dbg !6789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !6790 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6795, metadata !DIExpression()), !dbg !6798
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6796, metadata !DIExpression()), !dbg !6799
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6797, metadata !DIExpression()), !dbg !6800
  ret void, !dbg !6801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #9 align 16 !dbg !6802 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6808, metadata !DIExpression()), !dbg !6809
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6810
  call void @arch_atomic64_inc(ptr noundef %0) #17, !dbg !6811
  ret void, !dbg !6812
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #9 align 16 !dbg !6813 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6816, metadata !DIExpression()), !dbg !6817
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6818
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6819
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6820
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !6821
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #18, !dbg !6822, !srcloc !6823
  ret void, !dbg !6824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6825 dso_local void @__put_cred(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6828 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6830, metadata !DIExpression()), !dbg !6832
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6834
  %1 = load i64, ptr %size.addr, align 8, !dbg !6835
  %conv = trunc i64 %1 to i32, !dbg !6835
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6836
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6837
  %3 = load i64, ptr %size.addr, align 8, !dbg !6837
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6837
  ret void, !dbg !6838
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #9 align 16 !dbg !6839 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6842, metadata !DIExpression()), !dbg !6844
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6845
  %1 = load i64, ptr %i.addr, align 8, !dbg !6846
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #17, !dbg !6847
  ret void, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #9 align 16 !dbg !6849 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6853, metadata !DIExpression()), !dbg !6855
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6854, metadata !DIExpression()), !dbg !6856
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6857
  %1 = load i64, ptr %i.addr, align 8, !dbg !6858
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #17, !dbg !6859
  ret void, !dbg !6860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #9 align 16 !dbg !6861 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6863, metadata !DIExpression()), !dbg !6865
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6864, metadata !DIExpression()), !dbg !6866
  br label %do.body, !dbg !6867

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !6868
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6868
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !6868
  store volatile i64 %0, ptr %counter, align 8, !dbg !6868
  br label %do.end, !dbg !6868

do.end:                                           ; preds = %do.body
  ret void, !dbg !6870
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_add(ptr noundef %fbc, i64 noundef %amount) #2 align 16 !dbg !6871 {
entry:
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !6875, metadata !DIExpression()), !dbg !6877
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !6876, metadata !DIExpression()), !dbg !6878
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !6879
  %1 = load i64, ptr %amount.addr, align 8, !dbg !6880
  %2 = load i32, ptr @percpu_counter_batch, align 4, !dbg !6881
  call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %1, i32 noundef %2) #17, !dbg !6882
  ret void, !dbg !6883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6884 dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6887 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6889, metadata !DIExpression()), !dbg !6894
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6890, metadata !DIExpression()), !dbg !6895
  %0 = load i64, ptr %size.addr, align 8, !dbg !6896
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6897
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6898

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6899
  %tobool = icmp ne i64 %2, 0, !dbg !6899
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6900

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6891, metadata !DIExpression()), !dbg !6902
  %3 = load i64, ptr %size.addr, align 8, !dbg !6903
  %cmp = icmp ugt i64 %3, 8192, !dbg !6905
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6906

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6907
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6908
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6909
  store ptr %call, ptr %retval, align 8, !dbg !6910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6910

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6911
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6911
  store i32 %call2, ptr %index, align 4, !dbg !6912
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6913
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6914
  %9 = ptrtoint ptr %8 to i64, !dbg !6914
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6915
  %idxprom = zext i32 %call3 to i64, !dbg !6916
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6916
  %10 = load i32, ptr %index, align 4, !dbg !6917
  %idxprom4 = zext i32 %10 to i64, !dbg !6916
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6916
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6916
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6918
  %13 = load i64, ptr %size.addr, align 8, !dbg !6919
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !6920
  store ptr %call6, ptr %retval, align 8, !dbg !6921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6921

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6922
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6923
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6924
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6925
  store ptr %call8, ptr %retval, align 8, !dbg !6926
  br label %return, !dbg !6926

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6927
  ret ptr %16, !dbg !6927
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6928 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !6929 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6933, metadata !DIExpression()), !dbg !6935
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  %0 = load i64, ptr %size.addr, align 8, !dbg !6937
  %tobool = icmp ne i64 %0, 0, !dbg !6937
  br i1 %tobool, label %if.end, label %if.then, !dbg !6939

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6940
  br label %return, !dbg !6940

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6941
  %cmp = icmp ule i64 %1, 8, !dbg !6943
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6944

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6945
  br label %return, !dbg !6945

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6946
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6948
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6949

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6950
  %cmp4 = icmp ule i64 %3, 96, !dbg !6951
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6952

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6953
  br label %return, !dbg !6953

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6954
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6956
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6957

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6958
  %cmp9 = icmp ule i64 %5, 192, !dbg !6959
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6960

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6961
  br label %return, !dbg !6961

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6962
  %cmp12 = icmp ule i64 %6, 8, !dbg !6964
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6965

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6967
  %cmp15 = icmp ule i64 %7, 16, !dbg !6969
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6970

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6971
  br label %return, !dbg !6971

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6972
  %cmp18 = icmp ule i64 %8, 32, !dbg !6974
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6975

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6976
  br label %return, !dbg !6976

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6977
  %cmp21 = icmp ule i64 %9, 64, !dbg !6979
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6980

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6981
  br label %return, !dbg !6981

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6982
  %cmp24 = icmp ule i64 %10, 128, !dbg !6984
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6985

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6986
  br label %return, !dbg !6986

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6987
  %cmp27 = icmp ule i64 %11, 256, !dbg !6989
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6990

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6991
  br label %return, !dbg !6991

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6992
  %cmp30 = icmp ule i64 %12, 512, !dbg !6994
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6995

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6996
  br label %return, !dbg !6996

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6997
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6999
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7000

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7001
  br label %return, !dbg !7001

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7002
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7004
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7005

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7006
  br label %return, !dbg !7006

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7007
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7009
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7010

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7011
  br label %return, !dbg !7011

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7012
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7014
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7015

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7016
  br label %return, !dbg !7016

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7017
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7019
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7020

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7021
  br label %return, !dbg !7021

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7022
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7024
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7025

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7026
  br label %return, !dbg !7026

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7027
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7029
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7030

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7031
  br label %return, !dbg !7031

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7032
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7034
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7035

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7036
  br label %return, !dbg !7036

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7037
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7039
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7040

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7041
  br label %return, !dbg !7041

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7042
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7044
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7045

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7046
  br label %return, !dbg !7046

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7047
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7049
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7050

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7051
  br label %return, !dbg !7051

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7052
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7054
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7055

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7056
  br label %return, !dbg !7056

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7057, !range !7059, !noundef !788
  %tobool69 = trunc i8 %25 to i1, !dbg !7057
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7060

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7061

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #24, !dbg !7062, !srcloc !7065
  unreachable, !dbg !7062

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7066

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7067

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7068

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7070

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7068

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #18, !dbg !7072, !srcloc !7074
  br label %do.end75, !dbg !7072

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7068

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7075
  br label %return, !dbg !7075

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7076
  ret i32 %26, !dbg !7076
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7077 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !7080 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7084, metadata !DIExpression()), !dbg !7086
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7085, metadata !DIExpression()), !dbg !7087
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7088
  %and = and i32 %0, 17, !dbg !7088
  %cmp = icmp eq i32 %and, 0, !dbg !7088
  %lnot = xor i1 %cmp, true, !dbg !7088
  %lnot1 = xor i1 %lnot, true, !dbg !7088
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7088
  %conv = sext i32 %lnot.ext to i64, !dbg !7088
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7088
  %tobool = icmp ne i64 %expval, 0, !dbg !7088
  br i1 %tobool, label %if.then, label %if.end, !dbg !7090

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7091
  br label %return, !dbg !7091

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7092
  %and2 = and i32 %1, 1, !dbg !7094
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7094
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7095

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7096
  br label %return, !dbg !7096

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7097
  br label %return, !dbg !7097

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7099
  ret i32 %2, !dbg !7099
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7100 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7101 dso_local void @__compiletime_assert_117() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @filemap_sample_wb_err(ptr noundef %mapping) #2 align 16 !dbg !7102 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7106, metadata !DIExpression()), !dbg !7107
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7108
  %wb_err = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 11, !dbg !7109
  %call = call i32 @errseq_sample(ptr noundef %wb_err) #17, !dbg !7110
  ret i32 %call, !dbg !7111
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @file_sample_sb_err(ptr noundef %file) #2 align 16 !dbg !7112 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7116, metadata !DIExpression()), !dbg !7117
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7118
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !7119
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !7120
  %1 = load ptr, ptr %dentry, align 8, !dbg !7120
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !7121
  %2 = load ptr, ptr %d_sb, align 8, !dbg !7121
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 45, !dbg !7122
  %call = call i32 @errseq_sample(ptr noundef %s_wb_err) #17, !dbg !7123
  ret i32 %call, !dbg !7124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iocb_flags(ptr noundef %file) #2 align 16 !dbg !7125 {
entry:
  %file.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7127, metadata !DIExpression()), !dbg !7129
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #18, !dbg !7130
  call void @llvm.dbg.declare(metadata ptr %res, metadata !7128, metadata !DIExpression()), !dbg !7131
  store i32 0, ptr %res, align 4, !dbg !7131
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7132
  %f_flags = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6, !dbg !7134
  %1 = load i32, ptr %f_flags, align 8, !dbg !7134
  %and = and i32 %1, 1024, !dbg !7135
  %tobool = icmp ne i32 %and, 0, !dbg !7135
  br i1 %tobool, label %if.then, label %if.end, !dbg !7136

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %res, align 4, !dbg !7137
  %or = or i32 %2, 16, !dbg !7137
  store i32 %or, ptr %res, align 4, !dbg !7137
  br label %if.end, !dbg !7138

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !7139
  %f_flags1 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6, !dbg !7141
  %4 = load i32, ptr %f_flags1, align 8, !dbg !7141
  %and2 = and i32 %4, 16384, !dbg !7142
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7142
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !7143

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %res, align 4, !dbg !7144
  %or5 = or i32 %5, 131072, !dbg !7144
  store i32 %or5, ptr %res, align 4, !dbg !7144
  br label %if.end6, !dbg !7145

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %file.addr, align 8, !dbg !7146
  %f_flags7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 6, !dbg !7148
  %7 = load i32, ptr %f_flags7, align 8, !dbg !7148
  %and8 = and i32 %7, 4096, !dbg !7149
  %tobool9 = icmp ne i32 %and8, 0, !dbg !7149
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !7150

if.then10:                                        ; preds = %if.end6
  %8 = load i32, ptr %res, align 4, !dbg !7151
  %or11 = or i32 %8, 2, !dbg !7151
  store i32 %or11, ptr %res, align 4, !dbg !7151
  br label %if.end12, !dbg !7152

if.end12:                                         ; preds = %if.then10, %if.end6
  %9 = load ptr, ptr %file.addr, align 8, !dbg !7153
  %f_flags13 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 6, !dbg !7155
  %10 = load i32, ptr %f_flags13, align 8, !dbg !7155
  %and14 = and i32 %10, 1048576, !dbg !7156
  %tobool15 = icmp ne i32 %and14, 0, !dbg !7156
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !7157

if.then16:                                        ; preds = %if.end12
  %11 = load i32, ptr %res, align 4, !dbg !7158
  %or17 = or i32 %11, 4, !dbg !7158
  store i32 %or17, ptr %res, align 4, !dbg !7158
  br label %if.end18, !dbg !7159

if.end18:                                         ; preds = %if.then16, %if.end12
  %12 = load i32, ptr %res, align 4, !dbg !7160
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #18, !dbg !7161
  ret i32 %12, !dbg !7162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_readcount_inc(ptr noundef %inode) #2 align 16 !dbg !7163 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7165, metadata !DIExpression()), !dbg !7166
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7167
  %i_readcount = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 38, !dbg !7168
  call void @atomic_inc(ptr noundef %i_readcount) #17, !dbg !7169
  ret void, !dbg !7170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7171 dso_local i32 @errseq_sample(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #9 align 16 !dbg !7175 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7180, metadata !DIExpression()), !dbg !7181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7182
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !7183
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7184
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !7185
  ret void, !dbg !7186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #9 align 16 !dbg !7187 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7189, metadata !DIExpression()), !dbg !7190
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7191
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !7192
  ret void, !dbg !7193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #9 align 16 !dbg !7194 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7197, metadata !DIExpression()), !dbg !7198
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7199
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7200
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #18, !dbg !7201, !srcloc !7202
  ret void, !dbg !7203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @llist_del_all(ptr noundef %head) #2 align 16 !dbg !7204 {
entry:
  %head.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7208, metadata !DIExpression()), !dbg !7214
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #18, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !7209, metadata !DIExpression()), !dbg !7215
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7215
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !7215
  store ptr %first, ptr %__ai_ptr, align 8, !dbg !7215
  br label %do.body, !dbg !7215

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7216

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7216

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !7215
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #17, !dbg !7215
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #18, !dbg !7218
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7212, metadata !DIExpression()), !dbg !7218
  store ptr null, ptr %__ret, align 8, !dbg !7218
  %2 = load ptr, ptr %__ret, align 8, !dbg !7218
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !7218
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #18, !dbg !7218, !srcloc !7219
  store ptr %4, ptr %__ret, align 8, !dbg !7218
  %5 = load ptr, ptr %__ret, align 8, !dbg !7218
  store ptr %5, ptr %tmp1, align 8, !dbg !7218
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #18, !dbg !7215
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7218
  store ptr %6, ptr %tmp, align 8, !dbg !7215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #18, !dbg !7220
  %7 = load ptr, ptr %tmp, align 8, !dbg !7215
  ret ptr %7, !dbg !7221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %v) #9 align 16 !dbg !7222 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7224, metadata !DIExpression()), !dbg !7225
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7226
  %call = call zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %0) #17, !dbg !7227
  ret i1 %call, !dbg !7228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %v) #9 align 16 !dbg !7229 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7233, metadata !DIExpression()), !dbg !7234
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7235
  %call = call zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %0) #17, !dbg !7236
  ret i1 %call, !dbg !7237
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %v) #9 align 16 !dbg !7238 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7240, metadata !DIExpression()), !dbg !7243
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !7244
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7241, metadata !DIExpression()), !dbg !7244
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7244
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7244
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter) #18, !dbg !7244, !srcloc !7245
  %2 = icmp ult i8 %1, 2, !dbg !7244
  call void @llvm.assume(i1 %2), !dbg !7244
  store i8 %1, ptr %c, align 1, !dbg !7244
  %3 = load i8, ptr %c, align 1, !dbg !7244, !range !7059, !noundef !788
  %tobool = trunc i8 %3 to i1, !dbg !7244
  %frombool = zext i1 %tobool to i8, !dbg !7244
  store i8 %frombool, ptr %tmp, align 1, !dbg !7244
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !7246
  %4 = load i8, ptr %tmp, align 1, !dbg !7244, !range !7059, !noundef !788
  %tobool1 = trunc i8 %4 to i1, !dbg !7244
  ret i1 %tobool1, !dbg !7247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7248 dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #2 align 16 !dbg !7251 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !7255, metadata !DIExpression()), !dbg !7258
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !7256, metadata !DIExpression()), !dbg !7259
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !7257, metadata !DIExpression()), !dbg !7260
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !7261
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !7262
  %2 = load i64, ptr %delay.addr, align 8, !dbg !7263
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #17, !dbg !7264
  ret i1 %call, !dbg !7265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7266 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #9 align 16 !dbg !5696 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !7269
  %0 = load ptr, ptr %tmp, align 8, !dbg !7269
  %call = call i32 %0() #17, !dbg !7271
  ret void, !dbg !7272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_close(ptr noundef %file) #2 align 16 !dbg !7273 {
entry:
  %file.addr = alloca ptr, align 8
  %mask = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7276, metadata !DIExpression()), !dbg !7278
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #18, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7277, metadata !DIExpression()), !dbg !7280
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7281
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !7282
  %1 = load i32, ptr %f_mode, align 4, !dbg !7282
  %and = and i32 %1, 2, !dbg !7283
  %tobool = icmp ne i32 %and, 0, !dbg !7284
  %2 = zext i1 %tobool to i64, !dbg !7284
  %cond = select i1 %tobool, i32 8, i32 16, !dbg !7284
  store i32 %cond, ptr %mask, align 4, !dbg !7280
  %3 = load ptr, ptr %file.addr, align 8, !dbg !7285
  %4 = load i32, ptr %mask, align 4, !dbg !7286
  %call = call i32 @fsnotify_file(ptr noundef %3, i32 noundef %4) #17, !dbg !7287
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #18, !dbg !7288
  ret void, !dbg !7288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @eventpoll_release(ptr noundef %file) #2 align 16 !dbg !7289 {
entry:
  %file.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7292, metadata !DIExpression()), !dbg !7293
  br label %do.body, !dbg !7294

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7297

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7294
  %f_ep = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16, !dbg !7294
  %1 = load volatile ptr, ptr %f_ep, align 8, !dbg !7294
  store ptr %1, ptr %tmp, align 8, !dbg !7297
  %2 = load ptr, ptr %tmp, align 8, !dbg !7294
  %tobool = icmp ne ptr %2, null, !dbg !7299
  %lnot = xor i1 %tobool, true, !dbg !7299
  %lnot1 = xor i1 %lnot, true, !dbg !7299
  %lnot2 = xor i1 %lnot1, true, !dbg !7299
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7299
  %conv = sext i32 %lnot.ext to i64, !dbg !7299
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7299
  %tobool3 = icmp ne i64 %expval, 0, !dbg !7299
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7300

if.then:                                          ; preds = %do.end
  br label %return, !dbg !7301

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %file.addr, align 8, !dbg !7302
  call void @eventpoll_release_file(ptr noundef %3) #17, !dbg !7303
  br label %return, !dbg !7304

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7305 dso_local void @locks_remove_file(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ima_file_free(ptr noundef %file) #2 align 16 !dbg !7306 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  ret void, !dbg !7311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7312 dso_local void @cdev_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7315 dso_local void @module_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7316 dso_local void @put_pid(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_file_access(ptr noundef %file) #2 align 16 !dbg !7319 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7321, metadata !DIExpression()), !dbg !7322
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7323
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !7325
  %1 = load i32, ptr %f_mode, align 4, !dbg !7325
  %and = and i32 %1, 3, !dbg !7326
  %cmp = icmp eq i32 %and, 1, !dbg !7327
  br i1 %cmp, label %if.then, label %if.else, !dbg !7328

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !7329
  %f_inode = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 11, !dbg !7331
  %3 = load ptr, ptr %f_inode, align 8, !dbg !7331
  call void @i_readcount_dec(ptr noundef %3) #17, !dbg !7332
  br label %if.end5, !dbg !7333

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %file.addr, align 8, !dbg !7334
  %f_mode1 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2, !dbg !7336
  %5 = load i32, ptr %f_mode1, align 4, !dbg !7336
  %and2 = and i32 %5, 65536, !dbg !7337
  %tobool = icmp ne i32 %and2, 0, !dbg !7337
  br i1 %tobool, label %if.then3, label %if.end, !dbg !7338

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %file.addr, align 8, !dbg !7339
  %f_inode4 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 11, !dbg !7341
  %7 = load ptr, ptr %f_inode4, align 8, !dbg !7341
  call void @put_write_access(ptr noundef %7) #17, !dbg !7342
  %8 = load ptr, ptr %file.addr, align 8, !dbg !7343
  %f_path = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10, !dbg !7344
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !7345
  %9 = load ptr, ptr %mnt, align 8, !dbg !7345
  call void @__mnt_drop_write(ptr noundef %9) #17, !dbg !7346
  br label %if.end, !dbg !7347

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !7348
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7349 dso_local void @dput(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7350 dso_local void @dissolve_on_fput(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7353 dso_local void @mntput(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @file_free(ptr noundef %f) #2 align 16 !dbg !7354 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !7356, metadata !DIExpression()), !dbg !7357
  %0 = load ptr, ptr %f.addr, align 8, !dbg !7358
  call void @security_file_free(ptr noundef %0) #17, !dbg !7359
  %1 = load ptr, ptr %f.addr, align 8, !dbg !7360
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2, !dbg !7360
  %2 = load i32, ptr %f_mode, align 4, !dbg !7360
  %and = and i32 %2, 33554432, !dbg !7360
  %tobool = icmp ne i32 %and, 0, !dbg !7360
  %lnot = xor i1 %tobool, true, !dbg !7360
  %lnot1 = xor i1 %lnot, true, !dbg !7360
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7360
  %conv = sext i32 %lnot.ext to i64, !dbg !7360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7360
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7360
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7362

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !7363
  %call = call ptr @backing_file_real_path(ptr noundef %3) #17, !dbg !7364
  call void @path_put(ptr noundef %call) #17, !dbg !7365
  br label %if.end, !dbg !7365

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %f.addr, align 8, !dbg !7366
  %f_mode3 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2, !dbg !7366
  %5 = load i32, ptr %f_mode3, align 4, !dbg !7366
  %and4 = and i32 %5, 536870912, !dbg !7366
  %tobool5 = icmp ne i32 %and4, 0, !dbg !7366
  %lnot6 = xor i1 %tobool5, true, !dbg !7366
  %lnot8 = xor i1 %lnot6, true, !dbg !7366
  %lnot10 = xor i1 %lnot8, true, !dbg !7366
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !7366
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !7366
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 1), !dbg !7366
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !7366
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !7368

if.then15:                                        ; preds = %if.end
  call void @percpu_counter_dec(ptr noundef @nr_files) #17, !dbg !7369
  br label %if.end16, !dbg !7369

if.end16:                                         ; preds = %if.then15, %if.end
  %6 = load ptr, ptr %f.addr, align 8, !dbg !7370
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 0, !dbg !7371
  call void @call_rcu(ptr noundef %7, ptr noundef @file_free_rcu) #17, !dbg !7372
  ret void, !dbg !7373
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_file(ptr noundef %file, i32 noundef %mask) #2 align 16 !dbg !7374 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7378, metadata !DIExpression()), !dbg !7381
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7379, metadata !DIExpression()), !dbg !7382
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #18, !dbg !7383
  call void @llvm.dbg.declare(metadata ptr %path, metadata !7380, metadata !DIExpression()), !dbg !7384
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7385
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !7387
  %1 = load i32, ptr %f_mode, align 4, !dbg !7387
  %and = and i32 %1, 67125248, !dbg !7388
  %tobool = icmp ne i32 %and, 0, !dbg !7388
  br i1 %tobool, label %if.then, label %if.end, !dbg !7389

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7390

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !7391
  %call = call ptr @file_real_path(ptr noundef %2) #17, !dbg !7392
  store ptr %call, ptr %path, align 8, !dbg !7393
  %3 = load ptr, ptr %path, align 8, !dbg !7394
  %dentry = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1, !dbg !7395
  %4 = load ptr, ptr %dentry, align 8, !dbg !7395
  %5 = load i32, ptr %mask.addr, align 4, !dbg !7396
  %6 = load ptr, ptr %path, align 8, !dbg !7397
  %call1 = call i32 @fsnotify_parent(ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef 1) #17, !dbg !7398
  store i32 %call1, ptr %retval, align 4, !dbg !7399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7399

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #18, !dbg !7400
  %7 = load i32, ptr %retval, align 4, !dbg !7400
  ret i32 %7, !dbg !7400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_real_path(ptr noundef %f) #2 align 16 !dbg !7401 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !7405, metadata !DIExpression()), !dbg !7406
  %0 = load ptr, ptr %f.addr, align 8, !dbg !7407
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !7407
  %1 = load i32, ptr %f_mode, align 4, !dbg !7407
  %and = and i32 %1, 33554432, !dbg !7407
  %tobool = icmp ne i32 %and, 0, !dbg !7407
  %lnot = xor i1 %tobool, true, !dbg !7407
  %lnot1 = xor i1 %lnot, true, !dbg !7407
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7407
  %conv = sext i32 %lnot.ext to i64, !dbg !7407
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7407
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7407
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7409

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %f.addr, align 8, !dbg !7410
  %call = call ptr @backing_file_real_path(ptr noundef %2) #17, !dbg !7411
  store ptr %call, ptr %retval, align 8, !dbg !7412
  br label %return, !dbg !7412

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !7413
  %f_path = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 10, !dbg !7414
  store ptr %f_path, ptr %retval, align 8, !dbg !7415
  br label %return, !dbg !7415

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !7416
  ret ptr %4, !dbg !7416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_parent(ptr noundef %dentry, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type) #2 align 16 !dbg !7417 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7421, metadata !DIExpression()), !dbg !7427
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7422, metadata !DIExpression()), !dbg !7428
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7423, metadata !DIExpression()), !dbg !7429
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !7424, metadata !DIExpression()), !dbg !7430
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #18, !dbg !7431
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !7425, metadata !DIExpression()), !dbg !7432
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7433
  %call = call ptr @d_inode(ptr noundef %0) #17, !dbg !7434
  store ptr %call, ptr %inode, align 8, !dbg !7432
  %1 = load ptr, ptr %inode, align 8, !dbg !7435
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !7437
  %2 = load ptr, ptr %i_sb, align 8, !dbg !7437
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 43, !dbg !7438
  %call1 = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !7439
  %cmp = icmp eq i64 %call1, 0, !dbg !7440
  br i1 %cmp, label %if.then, label %if.end, !dbg !7441

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7442

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !7443
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !7443
  %4 = load i16, ptr %i_mode, align 8, !dbg !7443
  %conv = zext i16 %4 to i32, !dbg !7443
  %and = and i32 %conv, 61440, !dbg !7443
  %cmp2 = icmp eq i32 %and, 16384, !dbg !7443
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !7445

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !7446
  %or = or i32 %5, 1073741824, !dbg !7446
  store i32 %or, ptr %mask.addr, align 4, !dbg !7446
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !7448
  %d_flags = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 0, !dbg !7450
  %7 = load i32, ptr %d_flags, align 8, !dbg !7450
  %and5 = and i32 %7, 16384, !dbg !7451
  %tobool = icmp ne i32 %and5, 0, !dbg !7451
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !7452

if.then6:                                         ; preds = %if.then4
  br label %notify_child, !dbg !7453

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !7454

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !7455
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !7455
  %d_parent = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3, !dbg !7455
  %10 = load ptr, ptr %d_parent, align 8, !dbg !7455
  %cmp9 = icmp eq ptr %8, %10, !dbg !7455
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !7457

if.then11:                                        ; preds = %if.end8
  br label %notify_child, !dbg !7458

if.end12:                                         ; preds = %if.end8
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !7459
  %12 = load i32, ptr %mask.addr, align 4, !dbg !7460
  %13 = load ptr, ptr %data.addr, align 8, !dbg !7461
  %14 = load i32, ptr %data_type.addr, align 4, !dbg !7462
  %call13 = call i32 @__fsnotify_parent(ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14) #17, !dbg !7463
  store i32 %call13, ptr %retval, align 4, !dbg !7464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7464

notify_child:                                     ; preds = %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !7426), !dbg !7465
  %15 = load i32, ptr %mask.addr, align 4, !dbg !7466
  %16 = load ptr, ptr %data.addr, align 8, !dbg !7467
  %17 = load i32, ptr %data_type.addr, align 4, !dbg !7468
  %18 = load ptr, ptr %inode, align 8, !dbg !7469
  %call14 = call i32 @fsnotify(i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef null, ptr noundef null, ptr noundef %18, i32 noundef 0) #17, !dbg !7470
  store i32 %call14, ptr %retval, align 4, !dbg !7471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7471

cleanup:                                          ; preds = %notify_child, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #18, !dbg !7472
  %19 = load i32, ptr %retval, align 4, !dbg !7472
  ret i32 %19, !dbg !7472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #2 align 16 !dbg !7473 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7477, metadata !DIExpression()), !dbg !7478
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7479
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !7480
  %1 = load ptr, ptr %d_inode, align 8, !dbg !7480
  ret ptr %1, !dbg !7481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #9 align 16 !dbg !7482 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7488, metadata !DIExpression()), !dbg !7489
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7490
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !7491
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7492
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !7493
  ret i64 %call, !dbg !7494
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7495 dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7496 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7499 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7501, metadata !DIExpression()), !dbg !7503
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7502, metadata !DIExpression()), !dbg !7504
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7505
  %1 = load i64, ptr %size.addr, align 8, !dbg !7506
  %conv = trunc i64 %1 to i32, !dbg !7506
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7507
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7508
  %3 = load i64, ptr %size.addr, align 8, !dbg !7508
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7508
  ret void, !dbg !7509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #9 align 16 !dbg !7510 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7512, metadata !DIExpression()), !dbg !7513
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7514
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !7515
  ret i64 %call, !dbg !7516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !7517 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7519, metadata !DIExpression()), !dbg !7521
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7520, metadata !DIExpression()), !dbg !7522
  ret i1 true, !dbg !7523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #9 align 16 !dbg !7524 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7530, metadata !DIExpression()), !dbg !7531
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7532
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !7533
  ret i64 %call, !dbg !7534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #9 align 16 !dbg !7535 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7537, metadata !DIExpression()), !dbg !7538
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7539
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7539
  %1 = load volatile i64, ptr %counter, align 8, !dbg !7539
  ret i64 %1, !dbg !7540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7541 dso_local void @eventpoll_release_file(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_readcount_dec(ptr noundef %inode) #2 align 16 !dbg !7542 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7544, metadata !DIExpression()), !dbg !7545
  br label %do.body, !dbg !7546

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7547
  %i_readcount = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 38, !dbg !7547
  %call = call i32 @atomic_dec_return(ptr noundef %i_readcount) #17, !dbg !7547
  %cmp = icmp slt i32 %call, 0, !dbg !7547
  %lnot = xor i1 %cmp, true, !dbg !7547
  %lnot1 = xor i1 %lnot, true, !dbg !7547
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7547
  %conv = sext i32 %lnot.ext to i64, !dbg !7547
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7547
  %tobool = icmp ne i64 %expval, 0, !dbg !7547
  br i1 %tobool, label %if.then, label %if.end, !dbg !7550

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !7547

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !7551

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !7553

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !7551

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 2817, i32 0, i64 12) #18, !dbg !7555, !srcloc !7557
  br label %do.end5, !dbg !7555

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !7551

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !7551

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !7550

do.end7:                                          ; preds = %if.end
  ret void, !dbg !7558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_write_access(ptr noundef %inode) #2 align 16 !dbg !7559 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7561, metadata !DIExpression()), !dbg !7562
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7563
  %i_writecount = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 37, !dbg !7564
  call void @atomic_dec(ptr noundef %i_writecount) #17, !dbg !7565
  ret void, !dbg !7566
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7567 dso_local void @__mnt_drop_write(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_dec_return(ptr noundef %v) #9 align 16 !dbg !7568 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7572, metadata !DIExpression()), !dbg !7573
  br label %do.body, !dbg !7574

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7575

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7577
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !7578
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7579
  %call = call i32 @raw_atomic_dec_return(ptr noundef %1) #17, !dbg !7580
  ret i32 %call, !dbg !7581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_dec_return(ptr noundef %v) #9 align 16 !dbg !7582 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7584, metadata !DIExpression()), !dbg !7585
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7586
  %call = call i32 @raw_atomic_sub_return(i32 noundef 1, ptr noundef %0) #17, !dbg !7587
  ret i32 %call, !dbg !7588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !7589 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7593, metadata !DIExpression()), !dbg !7595
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7594, metadata !DIExpression()), !dbg !7596
  %0 = load i32, ptr %i.addr, align 4, !dbg !7597
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7598
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #17, !dbg !7599
  ret i32 %call, !dbg !7600
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !7601 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7603, metadata !DIExpression()), !dbg !7605
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7604, metadata !DIExpression()), !dbg !7606
  %0 = load i32, ptr %i.addr, align 4, !dbg !7607
  %sub = sub i32 0, %0, !dbg !7608
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7609
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #17, !dbg !7610
  ret i32 %call, !dbg !7611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !7612 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7614, metadata !DIExpression()), !dbg !7618
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7615, metadata !DIExpression()), !dbg !7619
  %0 = load i32, ptr %i.addr, align 4, !dbg !7620
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !7621
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7616, metadata !DIExpression()), !dbg !7621
  %1 = load i32, ptr %i.addr, align 4, !dbg !7621
  store i32 %1, ptr %__ret, align 4, !dbg !7621
  %2 = load i32, ptr %__ret, align 4, !dbg !7621
  %3 = load ptr, ptr %v.addr, align 8, !dbg !7621
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !7621
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #18, !dbg !7621, !srcloc !7622
  store i32 %4, ptr %__ret, align 4, !dbg !7621
  %5 = load i32, ptr %__ret, align 4, !dbg !7621
  store i32 %5, ptr %tmp, align 4, !dbg !7621
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !7623
  %6 = load i32, ptr %tmp, align 4, !dbg !7621
  %add = add i32 %0, %6, !dbg !7624
  ret i32 %add, !dbg !7625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #9 align 16 !dbg !7626 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7628, metadata !DIExpression()), !dbg !7629
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7630
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !7631
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7632
  call void @raw_atomic_dec(ptr noundef %1) #17, !dbg !7633
  ret void, !dbg !7634
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #9 align 16 !dbg !7635 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7637, metadata !DIExpression()), !dbg !7638
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7639
  call void @arch_atomic_dec(ptr noundef %0) #17, !dbg !7640
  ret void, !dbg !7641
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #9 align 16 !dbg !7642 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7644, metadata !DIExpression()), !dbg !7645
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7646
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7647
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #18, !dbg !7648, !srcloc !7649
  ret void, !dbg !7650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7651 dso_local void @security_file_free(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_dec(ptr noundef %fbc) #2 align 16 !dbg !7652 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !7654, metadata !DIExpression()), !dbg !7655
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !7656
  call void @percpu_counter_add(ptr noundef %0, i64 noundef -1) #17, !dbg !7657
  ret void, !dbg !7658
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7659 dso_local void @call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @file_free_rcu(ptr noundef %head) #0 align 16 !dbg !7664 {
entry:
  %head.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7666, metadata !DIExpression()), !dbg !7670
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #18, !dbg !7671
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7667, metadata !DIExpression()), !dbg !7672
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7673
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7668, metadata !DIExpression()), !dbg !7673
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7673
  store ptr %0, ptr %__mptr, align 8, !dbg !7673
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7673
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7673
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7674
  %2 = load ptr, ptr %tmp, align 8, !dbg !7673
  store ptr %2, ptr %f, align 8, !dbg !7672
  %3 = load ptr, ptr %f, align 8, !dbg !7675
  %f_cred = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 8, !dbg !7676
  %4 = load ptr, ptr %f_cred, align 8, !dbg !7676
  call void @put_cred(ptr noundef %4) #17, !dbg !7677
  %5 = load ptr, ptr %f, align 8, !dbg !7678
  %f_mode = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2, !dbg !7678
  %6 = load i32, ptr %f_mode, align 4, !dbg !7678
  %and = and i32 %6, 33554432, !dbg !7678
  %tobool = icmp ne i32 %and, 0, !dbg !7678
  %lnot = xor i1 %tobool, true, !dbg !7678
  %lnot1 = xor i1 %lnot, true, !dbg !7678
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7678
  %conv = sext i32 %lnot.ext to i64, !dbg !7678
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7678
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7678
  br i1 %tobool2, label %if.then, label %if.else, !dbg !7680

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %f, align 8, !dbg !7681
  %call = call ptr @backing_file(ptr noundef %7) #17, !dbg !7682
  call void @kfree(ptr noundef %call) #17, !dbg !7683
  br label %if.end, !dbg !7683

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr @filp_cachep, align 8, !dbg !7684
  %9 = load ptr, ptr %f, align 8, !dbg !7685
  call void @kmem_cache_free(ptr noundef %8, ptr noundef %9) #17, !dbg !7686
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #18, !dbg !7687
  ret void, !dbg !7687
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { nounwind memory(read) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710}
!llvm.ident = !{!5711}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backing_file_real_path356", scope: !2, file: !3, line: 62, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.file_table.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/file_table\22 -D KBUILD_BASENAME=\22file_table\22 -D KBUILD_MODNAME=\22file_table\22 -D __KBUILD_MODNAME=kmod_file_table -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/file_table.ll fs/file_table.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !327, globals: !5591, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/file_table.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee1b330fdf388296697f97a65532e67e")
!4 = !{!5, !11, !107, !113, !129, !134, !141, !147, !154, !159, !165, !177, !183, !190, !198, !205, !214, !219, !224, !230, !238, !245, !253, !263, !278, !283, !293, !319}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !114, line: 1325, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!116 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!117 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!118 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!119 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!120 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!121 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!122 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!123 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!124 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!125 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!126 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!127 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!128 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !130, line: 32, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!133 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !135, line: 15, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!139 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !142, line: 26, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!145 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!146 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !148, line: 312, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!149 = !{!150, !151, !152, !153}
!150 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!151 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!152 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!153 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !155, line: 2052, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!158 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !160, line: 54, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "USRQUOTA", value: 0)
!163 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!164 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !166, line: 44, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176}
!168 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!169 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!170 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!171 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!172 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!173 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!174 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!175 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!176 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !178, line: 45, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!181 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!182 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !184, line: 487, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!187 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!188 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!189 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !191, line: 620, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!192 = !{!193, !194, !195, !196, !197}
!193 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!194 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!195 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!196 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!197 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !191, line: 597, baseType: !22, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!201 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!202 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!203 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!204 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !184, line: 547, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213}
!207 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!208 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!209 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!210 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!211 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!212 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!213 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !184, line: 564, baseType: !7, size: 32, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!218 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !184, line: 577, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!223 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !184, line: 503, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229}
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!228 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!229 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !231, line: 68, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!234 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!235 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!236 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!237 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !239, line: 51, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!242 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!243 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!244 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !246, line: 9, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!249 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!250 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!251 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!252 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "task_work_notify_mode", file: !254, line: 16, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/task_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebc04ad3d34f218a70d101adf88369f")
!255 = !{!256, !257, !258, !259, !260, !261, !262}
!256 = !DIEnumerator(name: "TWA_NONE", value: 0)
!257 = !DIEnumerator(name: "TWA_RESUME", value: 1)
!258 = !DIEnumerator(name: "TWA_SIGNAL", value: 2)
!259 = !DIEnumerator(name: "TWA_SIGNAL_NO_IPI", value: 3)
!260 = !DIEnumerator(name: "TWA_NMI_CURRENT", value: 4)
!261 = !DIEnumerator(name: "TWA_FLAGS", value: 65280)
!262 = !DIEnumerator(name: "TWAF_NO_ALLOC", value: 256)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_stat_item", file: !264, line: 134, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!266 = !DIEnumerator(name: "NR_FREE_PAGES", value: 0)
!267 = !DIEnumerator(name: "NR_ZONE_LRU_BASE", value: 1)
!268 = !DIEnumerator(name: "NR_ZONE_INACTIVE_ANON", value: 1)
!269 = !DIEnumerator(name: "NR_ZONE_ACTIVE_ANON", value: 2)
!270 = !DIEnumerator(name: "NR_ZONE_INACTIVE_FILE", value: 3)
!271 = !DIEnumerator(name: "NR_ZONE_ACTIVE_FILE", value: 4)
!272 = !DIEnumerator(name: "NR_ZONE_UNEVICTABLE", value: 5)
!273 = !DIEnumerator(name: "NR_ZONE_WRITE_PENDING", value: 6)
!274 = !DIEnumerator(name: "NR_MLOCK", value: 7)
!275 = !DIEnumerator(name: "NR_BOUNCE", value: 8)
!276 = !DIEnumerator(name: "NR_FREE_CMA_PAGES", value: 9)
!277 = !DIEnumerator(name: "NR_VM_ZONE_STAT_ITEMS", value: 10)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 10, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!280 = !{!281, !282}
!281 = !DIEnumerator(name: "false", value: 0)
!282 = !DIEnumerator(name: "true", value: 1)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !284, line: 364, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!285 = !{!286, !287, !288, !289, !290, !291, !292}
!286 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!287 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!288 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!289 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!290 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!291 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!292 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !294, line: 30, baseType: !7, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!296 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!297 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!298 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!299 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!300 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!301 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!302 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!303 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!304 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!305 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!306 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!307 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!308 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!309 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!310 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!311 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!312 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!313 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!314 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!315 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!316 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!317 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!318 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !320, line: 286, baseType: !7, size: 32, elements: !321)
!320 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!321 = !{!322, !323, !324, !325, !326}
!322 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!323 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!324 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!325 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!326 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!327 = !{!20, !328, !329, !330, !39, !331, !22, !5578, !5581, !5582, !1355, !5584, !795, !5586, !5587, !462, !5588}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !25, line: 155, baseType: !7)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_file", file: !3, line: 48, size: 1984, elements: !333)
!333 = !{!334, !5577}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !332, file: !3, line: 49, baseType: !335, size: 1856, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !155, line: 994, size: 1856, align: 64, elements: !336)
!336 = !{!337, !356, !357, !358, !367, !380, !381, !382, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5574, !5575, !5576}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !155, line: 995, baseType: !338, size: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !155, line: 995, size: 128, elements: !339)
!339 = !{!340, !346, !355}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !338, file: !155, line: 996, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !342, line: 60, size: 64, elements: !343)
!342 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !342, line: 61, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !338, file: !155, line: 997, baseType: !347, size: 128, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !348)
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !25, line: 233, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !347, file: !25, line: 234, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !350}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !338, file: !155, line: 998, baseType: !7, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !335, file: !155, line: 1005, baseType: !59, size: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !335, file: !155, line: 1006, baseType: !329, size: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !335, file: !155, line: 1007, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !360, line: 13, baseType: !361)
!360 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !362, file: !25, line: 180, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !335, file: !155, line: 1008, baseType: !368, size: 256, offset: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !369, line: 66, size: 256, elements: !370)
!369 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!370 = !{!371, !372, !374, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !368, file: !369, line: 67, baseType: !359, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !368, file: !369, line: 68, baseType: !373, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !368, file: !369, line: 70, baseType: !375, size: 32, offset: 96)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !376, line: 15, size: 32, elements: !377)
!376 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !376, line: 20, baseType: !49, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !368, file: !369, line: 72, baseType: !97, size: 128, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !335, file: !155, line: 1009, baseType: !41, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !335, file: !155, line: 1010, baseType: !7, size: 32, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !335, file: !155, line: 1011, baseType: !383, size: 256, offset: 640)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !155, line: 948, size: 256, elements: !384)
!384 = !{!385, !408, !5560, !5561, !5562, !5563}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !155, line: 949, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !387, line: 34, baseType: !388)
!387 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 25, size: 64, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !388, file: !387, line: 26, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !392, line: 27, baseType: !393)
!392 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !392, line: 13, size: 64, elements: !394)
!394 = !{!395, !407}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !392, line: 14, baseType: !396, size: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !392, line: 14, size: 32, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !396, file: !392, line: 15, baseType: !49, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !392, line: 16, baseType: !400, size: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !392, line: 16, size: 32, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !400, file: !392, line: 18, baseType: !83, size: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !400, file: !392, line: 19, baseType: !404, size: 24, offset: 8)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 3)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !392, line: 26, baseType: !71, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !383, file: !155, line: 950, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !246, line: 59, size: 768, elements: !411)
!411 = !{!412, !418, !419, !420, !433, !434, !435, !436}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !246, line: 61, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !414, line: 113, baseType: !415)
!414 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !414, line: 111, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !415, file: !414, line: 112, baseType: !49, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !410, file: !246, line: 62, baseType: !7, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !410, file: !246, line: 63, baseType: !59, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !410, file: !246, line: 65, baseType: !421, size: 256, offset: 128)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !431)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !422, file: !25, line: 195, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !25, line: 199, baseType: !425, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !426, file: !25, line: 199, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!431 = !{!432}
!432 = !DISubrange(count: 4)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !410, file: !246, line: 66, baseType: !422, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !410, file: !246, line: 68, baseType: !54, size: 192, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !410, file: !246, line: 69, baseType: !347, size: 128, align: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !410, file: !246, line: 70, baseType: !437, offset: 768)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !1218)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !246, line: 54, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !438, file: !246, line: 55, baseType: !22, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !438, file: !246, line: 56, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !444, line: 26, size: 1152, elements: !445)
!444 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!445 = !{!446, !459, !460, !461, !5546, !5550, !5551, !5552, !5555, !5556, !5557, !5558, !5559}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !443, file: !444, line: 27, baseType: !447, size: 192)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !448, line: 19, size: 192, elements: !449)
!448 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!449 = !{!450, !457, !458}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !447, file: !448, line: 20, baseType: !451, size: 128)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !452, line: 296, size: 128, elements: !453)
!452 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!453 = !{!454, !455, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !451, file: !452, line: 297, baseType: !59, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !451, file: !452, line: 299, baseType: !328, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !451, file: !452, line: 300, baseType: !20, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !447, file: !448, line: 21, baseType: !7, size: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !447, file: !448, line: 22, baseType: !7, size: 32, offset: 160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !443, file: !444, line: 28, baseType: !347, size: 128, align: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !443, file: !444, line: 29, baseType: !7, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !443, file: !444, line: 30, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !464, line: 746, size: 58368, elements: !465)
!464 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!465 = !{!466, !476, !477, !478, !479, !480, !481, !482, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !558, !569, !669, !673, !676, !707, !708, !709, !710, !721, !723, !724, !725, !726, !727, !728, !739, !740, !743, !744, !745, !746, !747, !748, !749, !750, !757, !758, !765, !766, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1299, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1314, !1315, !1316, !1317, !1319, !1320, !1321, !1322, !1323, !1324, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1348, !1354, !1424, !1425, !1426, !1427, !1431, !1434, !1441, !1446, !1449, !1479, !1482, !4744, !4942, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4980, !4981, !4982, !4991, !4999, !5000, !5001, !5002, !5003, !5008, !5009, !5010, !5013, !5014, !5017, !5020, !5025, !5032, !5035, !5036, !5122, !5123, !5124, !5125, !5126, !5132, !5133, !5134, !5135, !5136, !5137, !5140, !5154, !5155, !5158, !5159, !5160, !5163, !5164, !5165, !5166, !5167, !5168, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5200, !5201, !5207, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5289, !5291, !5292, !5293, !5294, !5295, !5296, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5325, !5326, !5327}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !463, file: !464, line: 752, baseType: !467, size: 192)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !468, line: 56, size: 192, elements: !469)
!468 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!469 = !{!470, !471, !472, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !468, line: 57, baseType: !39, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !467, file: !468, line: 58, baseType: !39, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !467, file: !468, line: 59, baseType: !473, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !467, file: !468, line: 61, baseType: !473, size: 32, offset: 160)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !463, file: !464, line: 754, baseType: !7, size: 32, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !463, file: !464, line: 767, baseType: !20, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !463, file: !464, line: 768, baseType: !413, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !464, line: 770, baseType: !7, size: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !463, file: !464, line: 771, baseType: !7, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !463, file: !464, line: 774, baseType: !22, size: 32, offset: 416)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !463, file: !464, line: 775, baseType: !483, size: 128, offset: 448)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !484, line: 58, size: 128, elements: !485)
!484 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!485 = !{!486, !487, !492, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !483, file: !484, line: 59, baseType: !341, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !484, line: 60, baseType: !488, size: 32, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !484, line: 60, size: 32, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !488, file: !484, line: 61, baseType: !7, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !488, file: !484, line: 62, baseType: !49, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !483, file: !484, line: 65, baseType: !93, size: 16, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !483, file: !484, line: 65, baseType: !93, size: 16, offset: 112)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !463, file: !464, line: 776, baseType: !7, size: 32, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !463, file: !464, line: 777, baseType: !39, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !463, file: !464, line: 778, baseType: !462, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !463, file: !464, line: 787, baseType: !22, size: 32, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !463, file: !464, line: 788, baseType: !22, size: 32, offset: 800)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !463, file: !464, line: 790, baseType: !22, size: 32, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !463, file: !464, line: 792, baseType: !22, size: 32, offset: 864)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !463, file: !464, line: 793, baseType: !22, size: 32, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !463, file: !464, line: 794, baseType: !22, size: 32, offset: 928)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !463, file: !464, line: 795, baseType: !7, size: 32, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !463, file: !464, line: 797, baseType: !505, size: 2048, offset: 1024)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !464, line: 551, size: 2048, elements: !506)
!506 = !{!507, !512, !520, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !537, !540, !541, !542}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !505, file: !464, line: 553, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !464, line: 411, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !508, file: !464, line: 412, baseType: !39, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !508, file: !464, line: 413, baseType: !473, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !505, file: !464, line: 554, baseType: !513, size: 192, align: 64, offset: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !514, line: 5, size: 192, align: 64, elements: !515)
!514 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!515 = !{!516, !517, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !513, file: !514, line: 6, baseType: !39, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !513, file: !514, line: 7, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !513, file: !514, line: 8, baseType: !518, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !505, file: !464, line: 555, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !523)
!523 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !505, file: !464, line: 556, baseType: !521, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !505, file: !464, line: 558, baseType: !97, size: 128, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !505, file: !464, line: 559, baseType: !7, size: 32, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !505, file: !464, line: 561, baseType: !521, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !505, file: !464, line: 562, baseType: !521, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !505, file: !464, line: 563, baseType: !521, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !505, file: !464, line: 564, baseType: !521, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !505, file: !464, line: 565, baseType: !365, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !505, file: !464, line: 566, baseType: !521, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !505, file: !464, line: 568, baseType: !521, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !505, file: !464, line: 571, baseType: !22, size: 32, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !505, file: !464, line: 572, baseType: !536, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !505, file: !464, line: 574, baseType: !538, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !464, line: 49, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !505, file: !464, line: 576, baseType: !538, size: 64, offset: 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !505, file: !464, line: 578, baseType: !39, size: 64, offset: 1344)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !505, file: !464, line: 588, baseType: !543, size: 512, align: 512, offset: 1536)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !464, line: 497, size: 512, align: 512, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !543, file: !464, line: 498, baseType: !521, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !543, file: !464, line: 499, baseType: !521, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !543, file: !464, line: 500, baseType: !521, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !543, file: !464, line: 501, baseType: !473, size: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !543, file: !464, line: 502, baseType: !473, size: 32, offset: 224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !543, file: !464, line: 503, baseType: !39, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !543, file: !464, line: 504, baseType: !39, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !543, file: !464, line: 505, baseType: !39, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !543, file: !464, line: 506, baseType: !554, size: 64, align: 64, offset: 448)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !464, line: 445, size: 64, align: 64, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !554, file: !464, line: 446, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !554, file: !464, line: 447, baseType: !7, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !463, file: !464, line: 798, baseType: !559, size: 384, offset: 3072)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !464, line: 592, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !559, file: !464, line: 593, baseType: !97, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !559, file: !464, line: 594, baseType: !39, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !559, file: !464, line: 595, baseType: !39, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !559, file: !464, line: 596, baseType: !7, size: 32, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !559, file: !464, line: 597, baseType: !26, size: 16, offset: 288)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !559, file: !464, line: 598, baseType: !26, size: 16, offset: 304)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !559, file: !464, line: 600, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !463, file: !464, line: 799, baseType: !570, size: 1792, offset: 3456)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !464, line: 610, size: 1792, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !666, !667}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !570, file: !464, line: 611, baseType: !513, size: 192, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !570, file: !464, line: 618, baseType: !521, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !570, file: !464, line: 619, baseType: !521, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !570, file: !464, line: 620, baseType: !521, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !570, file: !464, line: 621, baseType: !521, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !570, file: !464, line: 622, baseType: !521, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !570, file: !464, line: 629, baseType: !365, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !570, file: !464, line: 630, baseType: !521, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !464, line: 631, baseType: !7, size: 32, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !570, file: !464, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !570, file: !464, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !570, file: !464, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !570, file: !464, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !570, file: !464, line: 662, baseType: !586, size: 512, offset: 704)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !587)
!587 = !{!588, !596, !597, !602, !662, !663, !664, !665}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !6, line: 119, baseType: !589, size: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !590, line: 9, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !590, line: 10, baseType: !513, size: 192, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !589, file: !590, line: 11, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !595, line: 29, baseType: !365)
!595 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !586, file: !6, line: 120, baseType: !594, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !586, file: !6, line: 121, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!5, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !586, file: !6, line: 122, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !605)
!605 = !{!606, !631, !632, !635, !645, !646, !657, !661}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !604, file: !6, line: 160, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !6, line: 216, baseType: !373, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !608, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !608, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !608, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !608, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !608, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !608, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !608, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !608, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !608, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !608, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !608, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !608, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !608, file: !6, line: 235, baseType: !594, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !608, file: !6, line: 236, baseType: !601, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !608, file: !6, line: 237, baseType: !594, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !608, file: !6, line: 238, baseType: !601, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !608, file: !6, line: 239, baseType: !628, size: 4096, align: 512, offset: 512)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 4096, align: 512, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 8)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !604, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !604, file: !6, line: 162, baseType: !633, size: 32, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !604, file: !6, line: 163, baseType: !636, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !637, line: 274, baseType: !638)
!637 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !637, line: 274, size: 32, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !638, file: !637, line: 274, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !637, line: 69, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !637, line: 64, size: 32, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !642, file: !637, line: 65, baseType: !7, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !604, file: !6, line: 164, baseType: !601, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !604, file: !6, line: 165, baseType: !647, size: 128, offset: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !590, line: 14, size: 128, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !647, file: !590, line: 15, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !514, line: 26, size: 128, elements: !651)
!651 = !{!652, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !650, file: !514, line: 27, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !514, line: 12, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !653, file: !514, line: 13, baseType: !518, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !650, file: !514, line: 28, baseType: !518, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !604, file: !6, line: 166, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!594}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !604, file: !6, line: 167, baseType: !594, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !586, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !586, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !586, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !586, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !570, file: !464, line: 671, baseType: !586, size: 512, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !570, file: !464, line: 679, baseType: !668, size: 64, offset: 1728)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !463, file: !464, line: 800, baseType: !670, size: 64, offset: 5248)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !464, line: 800, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !463, file: !464, line: 809, baseType: !674, size: 64, offset: 5312)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !464, line: 70, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !463, file: !464, line: 825, baseType: !677, size: 2048, align: 512, offset: 5632)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !464, line: 509, size: 2048, align: 512, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !677, file: !464, line: 511, baseType: !521, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !677, file: !464, line: 512, baseType: !521, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !677, file: !464, line: 513, baseType: !521, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !677, file: !464, line: 514, baseType: !521, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !677, file: !464, line: 515, baseType: !521, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !677, file: !464, line: 516, baseType: !521, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !677, file: !464, line: 518, baseType: !521, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !677, file: !464, line: 519, baseType: !521, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !677, file: !464, line: 520, baseType: !365, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !677, file: !464, line: 522, baseType: !521, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !677, file: !464, line: 523, baseType: !521, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !677, file: !464, line: 524, baseType: !365, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !677, file: !464, line: 526, baseType: !365, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !677, file: !464, line: 527, baseType: !521, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !677, file: !464, line: 529, baseType: !521, size: 64, offset: 896)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !677, file: !464, line: 530, baseType: !521, size: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !677, file: !464, line: 531, baseType: !521, size: 64, offset: 1024)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !677, file: !464, line: 532, baseType: !521, size: 64, offset: 1088)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !677, file: !464, line: 533, baseType: !521, size: 64, offset: 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !677, file: !464, line: 535, baseType: !521, size: 64, offset: 1216)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !677, file: !464, line: 536, baseType: !521, size: 64, offset: 1280)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !677, file: !464, line: 537, baseType: !521, size: 64, offset: 1344)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !677, file: !464, line: 538, baseType: !521, size: 64, offset: 1408)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !677, file: !464, line: 539, baseType: !521, size: 64, offset: 1472)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !677, file: !464, line: 540, baseType: !521, size: 64, offset: 1536)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !677, file: !464, line: 541, baseType: !521, size: 64, offset: 1600)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !677, file: !464, line: 542, baseType: !521, size: 64, offset: 1664)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !677, file: !464, line: 543, baseType: !521, size: 64, offset: 1728)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !463, file: !464, line: 833, baseType: !7, size: 32, offset: 7680)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !463, file: !464, line: 836, baseType: !7, size: 32, offset: 7712)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !463, file: !464, line: 837, baseType: !22, size: 32, offset: 7744)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !463, file: !464, line: 838, baseType: !711, size: 64, offset: 7808)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !714, line: 19, baseType: !715)
!714 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !714, line: 19, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !715, file: !714, line: 19, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 1)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !463, file: !464, line: 839, baseType: !722, size: 64, offset: 7872)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !463, file: !464, line: 840, baseType: !713, size: 64, offset: 7936)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !463, file: !464, line: 841, baseType: !20, size: 64, offset: 8000)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !463, file: !464, line: 843, baseType: !26, size: 16, offset: 8064)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !463, file: !464, line: 845, baseType: !26, size: 16, offset: 8080)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !463, file: !464, line: 848, baseType: !22, size: 32, offset: 8096)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !463, file: !464, line: 849, baseType: !729, size: 32, offset: 8128)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !464, line: 718, size: 32, elements: !730)
!730 = !{!731, !738}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !729, file: !464, line: 724, baseType: !732, size: 32)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !464, line: 719, size: 32, elements: !733)
!733 = !{!734, !735, !736, !737}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !732, file: !464, line: 720, baseType: !83, size: 8)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !732, file: !464, line: 721, baseType: !83, size: 8, offset: 8)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !732, file: !464, line: 722, baseType: !83, size: 8, offset: 16)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !732, file: !464, line: 723, baseType: !83, size: 8, offset: 24)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !729, file: !464, line: 725, baseType: !473, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !463, file: !464, line: 850, baseType: !97, size: 128, offset: 8192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !463, file: !464, line: 851, baseType: !741, size: 64, offset: 8320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !464, line: 60, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !463, file: !464, line: 855, baseType: !39, size: 64, offset: 8384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !463, file: !464, line: 856, baseType: !83, size: 8, offset: 8448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !463, file: !464, line: 857, baseType: !83, size: 8, offset: 8456)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !463, file: !464, line: 858, baseType: !22, size: 32, offset: 8480)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !463, file: !464, line: 859, baseType: !97, size: 128, offset: 8512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !463, file: !464, line: 860, baseType: !22, size: 32, offset: 8640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !463, file: !464, line: 861, baseType: !97, size: 128, offset: 8704)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !463, file: !464, line: 873, baseType: !751, size: 256, offset: 8832)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !464, line: 376, size: 256, elements: !752)
!752 = !{!753, !754, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !751, file: !464, line: 381, baseType: !39, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !751, file: !464, line: 384, baseType: !523, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !751, file: !464, line: 389, baseType: !523, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !751, file: !464, line: 392, baseType: !523, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !463, file: !464, line: 875, baseType: !97, size: 128, offset: 9088)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !463, file: !464, line: 877, baseType: !759, size: 320, offset: 9216)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !760, line: 86, size: 320, elements: !761)
!760 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !759, file: !760, line: 87, baseType: !22, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !759, file: !760, line: 88, baseType: !97, size: 128, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !759, file: !760, line: 89, baseType: !97, size: 128, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !463, file: !464, line: 878, baseType: !513, size: 192, align: 64, offset: 9536)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !463, file: !464, line: 881, baseType: !767, size: 64, offset: 9728)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !114, line: 733, size: 10240, elements: !769)
!769 = !{!770, !1216}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !114, line: 734, baseType: !771, size: 10240)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !114, line: 734, size: 10240, elements: !772)
!772 = !{!773, !777, !791, !796, !797, !798, !799, !800, !801, !810, !811, !812, !818, !819, !820, !821, !822, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !859, !871, !874, !923, !924, !925, !928, !1202, !1203, !1206, !1207, !1208, !1214, !1215}
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !114, line: 739, baseType: !774, size: 512, align: 512)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !114, line: 739, size: 512, align: 512, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !774, file: !114, line: 747, baseType: !49, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !771, file: !114, line: 750, baseType: !778, size: 128, offset: 512)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !779, line: 218, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!780 = !{!781, !789, !790}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 219, baseType: !782, size: 32)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 219, size: 32, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !782, file: !779, line: 220, baseType: !59, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !782, file: !779, line: 221, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !779, line: 197, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 197, elements: !788)
!788 = !{}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !778, file: !779, line: 223, baseType: !7, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !778, file: !779, line: 224, baseType: !20, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !771, file: !114, line: 752, baseType: !792, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!39, !795, !39, !39, !39, !39}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !771, file: !114, line: 756, baseType: !39, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !771, file: !114, line: 757, baseType: !39, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !771, file: !114, line: 760, baseType: !39, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !771, file: !114, line: 761, baseType: !39, size: 64, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !771, file: !114, line: 763, baseType: !39, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !771, file: !114, line: 764, baseType: !802, size: 64, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !804, line: 299, baseType: !805)
!804 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 299, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !805, file: !804, line: 299, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !809, line: 18, baseType: !39)
!809 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !771, file: !114, line: 773, baseType: !49, size: 32, offset: 1088)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !771, file: !114, line: 785, baseType: !49, size: 32, offset: 1120)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !771, file: !114, line: 795, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !114, line: 726, size: 128, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !814, file: !114, line: 727, baseType: !521, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !814, file: !114, line: 728, baseType: !22, size: 32, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !771, file: !114, line: 801, baseType: !39, size: 64, offset: 1216)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !771, file: !114, line: 804, baseType: !359, size: 64, offset: 1280)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !771, file: !114, line: 806, baseType: !22, size: 32, offset: 1344)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !771, file: !114, line: 808, baseType: !59, size: 32, offset: 1376)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !771, file: !114, line: 823, baseType: !823, size: 320, offset: 1408)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !824, line: 48, size: 320, elements: !825)
!824 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!825 = !{!826, !827, !828, !829, !830}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !824, line: 49, baseType: !359, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !823, file: !824, line: 55, baseType: !359, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !823, file: !824, line: 57, baseType: !375, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !823, file: !824, line: 59, baseType: !373, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !823, file: !824, line: 60, baseType: !97, size: 128, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !771, file: !114, line: 825, baseType: !97, size: 128, offset: 1728)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !771, file: !114, line: 845, baseType: !22, size: 32, offset: 1856)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !771, file: !114, line: 849, baseType: !39, size: 64, offset: 1920)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !771, file: !114, line: 850, baseType: !39, size: 64, offset: 1984)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !771, file: !114, line: 852, baseType: !39, size: 64, offset: 2048)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !771, file: !114, line: 853, baseType: !39, size: 64, offset: 2112)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !771, file: !114, line: 854, baseType: !361, size: 64, offset: 2176)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !771, file: !114, line: 855, baseType: !39, size: 64, offset: 2240)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !771, file: !114, line: 856, baseType: !39, size: 64, offset: 2304)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !771, file: !114, line: 857, baseType: !39, size: 64, offset: 2368)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !771, file: !114, line: 858, baseType: !39, size: 64, offset: 2432)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !771, file: !114, line: 865, baseType: !641, size: 32, offset: 2496)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !771, file: !114, line: 867, baseType: !59, size: 32, offset: 2528)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !771, file: !114, line: 869, baseType: !39, size: 64, offset: 2560)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !771, file: !114, line: 869, baseType: !39, size: 64, offset: 2624)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !771, file: !114, line: 869, baseType: !39, size: 64, offset: 2688)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !771, file: !114, line: 869, baseType: !39, size: 64, offset: 2752)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !771, file: !114, line: 870, baseType: !39, size: 64, offset: 2816)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !771, file: !114, line: 870, baseType: !39, size: 64, offset: 2880)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !771, file: !114, line: 870, baseType: !39, size: 64, offset: 2944)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !771, file: !114, line: 871, baseType: !39, size: 64, offset: 3008)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !771, file: !114, line: 871, baseType: !39, size: 64, offset: 3072)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !771, file: !114, line: 871, baseType: !39, size: 64, offset: 3136)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !771, file: !114, line: 871, baseType: !39, size: 64, offset: 3200)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !771, file: !114, line: 873, baseType: !856, size: 3328, offset: 3264)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 52)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !771, file: !114, line: 875, baseType: !860, size: 1280, offset: 6592)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 1280, elements: !431)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !862, line: 22, size: 320, elements: !863)
!862 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !861, file: !862, line: 23, baseType: !373, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !861, file: !862, line: 24, baseType: !365, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !861, file: !862, line: 26, baseType: !97, size: 128, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !861, file: !862, line: 28, baseType: !868, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !771, file: !114, line: 877, baseType: !872, size: 64, offset: 7872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !114, line: 877, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !771, file: !114, line: 880, baseType: !875, size: 1088, offset: 7936)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !876, line: 72, baseType: !877)
!876 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 23, size: 1088, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !886, !887, !888, !889, !917, !918, !919}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !877, file: !876, line: 28, baseType: !521, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !877, file: !876, line: 38, baseType: !361, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !877, file: !876, line: 40, baseType: !39, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !877, file: !876, line: 43, baseType: !823, size: 320, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !877, file: !876, line: 44, baseType: !884, size: 64, offset: 512)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !876, line: 44, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !876, line: 48, baseType: !39, size: 64, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !876, line: 59, baseType: !368, size: 256, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !877, file: !876, line: 60, baseType: !20, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !877, file: !876, line: 61, baseType: !890, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !893, line: 13, size: 1216, elements: !894)
!893 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!894 = !{!895, !896, !897, !898, !899, !900, !901, !904, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !893, line: 14, baseType: !20, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !892, file: !893, line: 15, baseType: !39, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !892, file: !893, line: 17, baseType: !39, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !892, file: !893, line: 17, baseType: !39, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !892, file: !893, line: 18, baseType: !39, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !892, file: !893, line: 18, baseType: !39, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !892, file: !893, line: 19, baseType: !902, size: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !892, file: !893, line: 21, baseType: !905, size: 64, offset: 448)
!905 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !892, file: !893, line: 23, baseType: !905, size: 64, offset: 512)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !892, file: !893, line: 24, baseType: !905, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !892, file: !893, line: 25, baseType: !905, size: 64, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !892, file: !893, line: 26, baseType: !905, size: 64, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !892, file: !893, line: 27, baseType: !905, size: 64, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !892, file: !893, line: 28, baseType: !905, size: 64, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !892, file: !893, line: 29, baseType: !905, size: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !892, file: !893, line: 30, baseType: !905, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !892, file: !893, line: 31, baseType: !905, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !892, file: !893, line: 32, baseType: !905, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !892, file: !893, line: 33, baseType: !905, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !877, file: !876, line: 63, baseType: !49, size: 32, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !877, file: !876, line: 69, baseType: !93, size: 16, offset: 1056)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !877, file: !876, line: 70, baseType: !920, size: 16, offset: 1072)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !922)
!922 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !114, line: 882, baseType: !39, size: 64, offset: 9024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !771, file: !114, line: 885, baseType: !59, size: 32, offset: 9088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !771, file: !114, line: 886, baseType: !926, size: 64, offset: 9152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !114, line: 732, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !771, file: !114, line: 901, baseType: !929, size: 64, offset: 9216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !931, line: 68, size: 4800, elements: !932)
!931 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!932 = !{!933, !955, !956, !957, !958, !959, !967, !974, !985, !986, !989, !990, !1101, !1102, !1113, !1183, !1184, !1198, !1200}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !930, file: !931, line: 69, baseType: !934, size: 576)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !931, line: 23, size: 576, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !934, file: !931, line: 24, baseType: !473, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !931, line: 25, baseType: !938, size: 512, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !931, line: 25, size: 512, elements: !939)
!939 = !{!940, !949}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !938, file: !931, line: 26, baseType: !941, size: 480)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 480, elements: !947)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !931, line: 17, size: 96, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !942, file: !931, line: 18, baseType: !473, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !942, file: !931, line: 19, baseType: !473, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !942, file: !931, line: 20, baseType: !473, size: 32, offset: 64)
!947 = !{!948}
!948 = !DISubrange(count: 5)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !931, line: 27, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !931, line: 27, size: 128, elements: !951)
!951 = !{!952, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !950, file: !931, line: 28, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !950, file: !931, line: 29, baseType: !953, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !930, file: !931, line: 70, baseType: !934, size: 576, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !930, file: !931, line: 71, baseType: !934, size: 576, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !930, file: !931, line: 72, baseType: !929, size: 64, offset: 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !930, file: !931, line: 73, baseType: !22, size: 32, offset: 1792)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !930, file: !931, line: 74, baseType: !960, size: 32, offset: 1824)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !961, line: 23, baseType: !962)
!961 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !961, line: 21, size: 32, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !962, file: !961, line: 22, baseType: !965, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !930, file: !931, line: 75, baseType: !968, size: 32, offset: 1856)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !961, line: 28, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !961, line: 26, size: 32, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !969, file: !961, line: 27, baseType: !972, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !930, file: !931, line: 76, baseType: !975, size: 192, offset: 1920)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !976, line: 9, size: 192, elements: !977)
!976 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!977 = !{!978, !979, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !975, file: !976, line: 10, baseType: !359, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !975, file: !976, line: 11, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !976, line: 7, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !975, file: !976, line: 12, baseType: !7, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !975, file: !976, line: 13, baseType: !413, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !931, line: 77, baseType: !39, size: 64, offset: 2112)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !930, file: !931, line: 80, baseType: !987, size: 8, offset: 2176)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !988)
!988 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !930, file: !931, line: 88, baseType: !97, size: 128, offset: 2240)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !930, file: !931, line: 89, baseType: !991, size: 64, offset: 2368)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !993, line: 195, size: 1728, elements: !994)
!993 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!994 = !{!995, !996, !999, !1004, !1005, !1008, !1009, !1016, !1017, !1018, !1019, !1022, !1023, !1024, !1025, !1026, !1065, !1086}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !992, file: !993, line: 196, baseType: !413, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !992, file: !993, line: 197, baseType: !997, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !993, line: 28, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !869)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 198, baseType: !1000, size: 192, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 198, size: 192, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1000, file: !993, line: 199, baseType: !97, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1000, file: !993, line: 200, baseType: !513, size: 192, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !992, file: !993, line: 205, baseType: !823, size: 320, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !992, file: !993, line: 206, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !993, line: 206, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !992, file: !993, line: 207, baseType: !20, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 208, baseType: !1010, size: 64, offset: 704)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 208, size: 64, elements: !1011)
!1011 = !{!1012, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1010, file: !993, line: 209, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1014, line: 8, baseType: !366)
!1014 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1010, file: !993, line: 210, baseType: !1013, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !992, file: !993, line: 212, baseType: !1013, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !993, line: 213, baseType: !960, size: 32, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !992, file: !993, line: 214, baseType: !968, size: 32, offset: 864)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !992, file: !993, line: 215, baseType: !1020, size: 32, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !993, line: 31, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !473)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !992, file: !993, line: 216, baseType: !26, size: 16, offset: 928)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !992, file: !993, line: 217, baseType: !26, size: 16, offset: 944)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !992, file: !993, line: 221, baseType: !922, size: 16, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !993, line: 228, baseType: !39, size: 64, offset: 1024)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 245, baseType: !1027, size: 320, offset: 1088)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 245, size: 320, elements: !1028)
!1028 = !{!1029, !1056}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1027, file: !993, line: 246, baseType: !1030, size: 320)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !993, line: 114, size: 320, elements: !1031)
!1031 = !{!1032, !1033, !1045, !1048, !1055}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1030, file: !993, line: 116, baseType: !39, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !993, line: 117, baseType: !1034, size: 64, offset: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1030, file: !993, line: 117, size: 64, elements: !1035)
!1035 = !{!1036, !1044}
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !993, line: 118, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !993, line: 118, size: 64, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1037, file: !993, line: 120, baseType: !93, size: 16)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1037, file: !993, line: 121, baseType: !1041, size: 48, offset: 16)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 6)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1034, file: !993, line: 127, baseType: !39, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1030, file: !993, line: 129, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !993, line: 102, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1030, file: !993, line: 130, baseType: !1049, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !993, line: 108, size: 192, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1050, file: !993, line: 109, baseType: !347, size: 128, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1050, file: !993, line: 110, baseType: !413, size: 32, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1050, file: !993, line: 111, baseType: !987, size: 8, offset: 160)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1030, file: !993, line: 131, baseType: !16, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !993, line: 247, baseType: !1057, size: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !993, line: 247, size: 320, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1057, file: !993, line: 248, baseType: !39, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1057, file: !993, line: 249, baseType: !39, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1057, file: !993, line: 250, baseType: !1046, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1057, file: !993, line: 251, baseType: !1049, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1057, file: !993, line: 252, baseType: !1064, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 260, baseType: !1066, size: 256, offset: 1408)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 260, size: 256, elements: !1067)
!1067 = !{!1068, !1074}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1066, file: !993, line: 261, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !993, line: 134, size: 256, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1069, file: !993, line: 135, baseType: !20, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1069, file: !993, line: 136, baseType: !1073, size: 256)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !431)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !993, line: 262, baseType: !1075, size: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1066, file: !993, line: 262, size: 256, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1075, file: !993, line: 264, baseType: !97, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1075, file: !993, line: 265, baseType: !1079, size: 128, offset: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1080, line: 22, size: 128, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1081 = !{!1082, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1079, file: !1080, line: 23, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1080, line: 23, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1079, file: !1080, line: 24, baseType: !39, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !992, file: !993, line: 280, baseType: !1087, size: 64, offset: 1664)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !993, line: 176, size: 192, elements: !1089)
!1089 = !{!1090, !1099, !1100}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1088, file: !993, line: 177, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !993, line: 171, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!22, !991, !1095, !1097, !991}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1088, file: !993, line: 178, baseType: !991, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1088, file: !993, line: 179, baseType: !1046, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !930, file: !931, line: 90, baseType: !823, size: 320, offset: 2432)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !930, file: !931, line: 97, baseType: !1103, size: 256, offset: 2752)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !294, line: 98, size: 256, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1103, file: !294, line: 99, baseType: !359, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1103, file: !294, line: 100, baseType: !97, size: 128, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1103, file: !294, line: 101, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !294, line: 21, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !930, file: !931, line: 99, baseType: !1114, size: 768, offset: 3008)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !1115)
!1115 = !{!1116, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1114, file: !12, line: 200, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!22, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1114, file: !12, line: 201, baseType: !1122, size: 704, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !1123)
!1123 = !{!1124, !1182}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1122, file: !12, line: 195, baseType: !1125, size: 640)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !1126)
!1126 = !{!1127, !1139, !1151, !1152, !1172, !1173, !1175, !1181}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !12, line: 174, baseType: !1128, size: 192)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !12, line: 174, size: 192, elements: !1129)
!1129 = !{!1130, !1138}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !12, line: 175, baseType: !1131, size: 192)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !12, line: 175, size: 192, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1131, file: !12, line: 176, baseType: !33, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1131, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1131, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1131, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1128, file: !12, line: 182, baseType: !347, size: 128, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1125, file: !12, line: 184, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1142, line: 26, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1141, file: !1142, line: 27, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1141, file: !1142, line: 28, baseType: !1146, size: 192, offset: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1147, line: 43, size: 192, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1147, line: 44, baseType: !373, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1146, file: !1147, line: 45, baseType: !97, size: 128, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1125, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1125, file: !12, line: 186, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1155)
!1155 = !{!1156, !1157, !1161, !1168}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1154, file: !12, line: 205, baseType: !1114, size: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1154, file: !12, line: 206, baseType: !1158, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1120, !1153}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1154, file: !12, line: 207, baseType: !1162, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1154, file: !12, line: 209, baseType: !1169, size: 64, offset: 896)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!22, !1165, !33}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1125, file: !12, line: 187, baseType: !1120, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1125, file: !12, line: 188, baseType: !1174, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1125, file: !12, line: 189, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !12, line: 158, baseType: !513, size: 192, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1177, file: !12, line: 159, baseType: !1165, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1125, file: !12, line: 190, baseType: !422, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1122, file: !12, line: 196, baseType: !653, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !930, file: !931, line: 100, baseType: !1165, size: 64, offset: 3776)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !930, file: !931, line: 102, baseType: !1185, size: 64, offset: 3840)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !931, line: 107, size: 1152, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1196}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1186, file: !931, line: 108, baseType: !426, size: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1186, file: !931, line: 109, baseType: !929, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1186, file: !931, line: 110, baseType: !960, size: 32, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1186, file: !931, line: 111, baseType: !49, size: 32, offset: 224)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1186, file: !931, line: 112, baseType: !1193, size: 640, offset: 256)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 640, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 10)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1186, file: !931, line: 113, baseType: !1197, size: 256, offset: 896)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !431)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !930, file: !931, line: 103, baseType: !1199, size: 640, offset: 3904)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 640, elements: !1194)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !930, file: !931, line: 104, baseType: !1201, size: 256, offset: 4544)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, elements: !431)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !771, file: !114, line: 904, baseType: !795, size: 64, offset: 9280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !771, file: !114, line: 906, baseType: !1204, size: 64, offset: 9344)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !114, line: 906, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !771, file: !114, line: 930, baseType: !49, size: 32, offset: 9408)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !771, file: !114, line: 933, baseType: !49, size: 32, offset: 9440)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !771, file: !114, line: 935, baseType: !1209, size: 64, offset: 9472)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !239, line: 103, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1209, file: !239, line: 104, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !239, line: 101, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !771, file: !114, line: 940, baseType: !359, size: 64, offset: 9536)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !771, file: !114, line: 942, baseType: !1103, size: 256, offset: 9600)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !768, file: !114, line: 986, baseType: !1217, offset: 10240)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: -1)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !463, file: !464, line: 882, baseType: !767, size: 64, offset: 9792)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !463, file: !464, line: 884, baseType: !22, size: 32, offset: 9856)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !463, file: !464, line: 885, baseType: !22, size: 32, offset: 9888)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !463, file: !464, line: 886, baseType: !22, size: 32, offset: 9920)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !463, file: !464, line: 888, baseType: !22, size: 32, offset: 9952)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !463, file: !464, line: 890, baseType: !39, size: 64, offset: 9984)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !463, file: !464, line: 893, baseType: !7, size: 32, offset: 10048)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !463, file: !464, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !463, file: !464, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !463, file: !464, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !463, file: !464, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !463, file: !464, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !463, file: !464, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !463, file: !464, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !463, file: !464, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !463, file: !464, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !463, file: !464, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !463, file: !464, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !463, file: !464, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !463, file: !464, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !463, file: !464, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !463, file: !464, line: 969, baseType: !39, size: 64, offset: 10176)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !463, file: !464, line: 971, baseType: !1243, size: 448, offset: 10240)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !1244)
!1244 = !{!1245, !1246, !1251}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1243, file: !108, line: 26, baseType: !39, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1243, file: !108, line: 27, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!905, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !108, line: 28, baseType: !1252, size: 320, offset: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !108, line: 28, size: 320, elements: !1253)
!1253 = !{!1254, !1264, !1289}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1252, file: !108, line: 37, baseType: !1255, size: 320)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !108, line: 30, size: 320, elements: !1256)
!1256 = !{!1257, !1259, !1260, !1261, !1262, !1263}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1255, file: !108, line: 31, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1255, file: !108, line: 32, baseType: !473, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !108, line: 33, baseType: !473, size: 32, offset: 96)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1255, file: !108, line: 34, baseType: !473, size: 32, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1255, file: !108, line: 35, baseType: !521, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1255, file: !108, line: 36, baseType: !1258, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1252, file: !108, line: 47, baseType: !1265, size: 192)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !108, line: 39, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1288}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1265, file: !108, line: 40, baseType: !633, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1265, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !108, line: 42, baseType: !1270, size: 64, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !108, line: 42, size: 64, elements: !1271)
!1271 = !{!1272, !1280}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1270, file: !108, line: 43, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1275, line: 7, size: 128, elements: !1276)
!1275 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1276 = !{!1277, !1279}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1274, file: !1275, line: 8, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1274, file: !1275, line: 9, baseType: !43, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1270, file: !108, line: 44, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1283, line: 7, size: 64, elements: !1284)
!1283 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1284 = !{!1285, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1282, file: !1283, line: 8, baseType: !1286, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1283, line: 5, baseType: !869)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1282, file: !1283, line: 9, baseType: !869, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1265, file: !108, line: 46, baseType: !521, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1252, file: !108, line: 55, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !108, line: 49, size: 256, elements: !1291)
!1291 = !{!1292, !1295, !1296, !1297, !1298}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1290, file: !108, line: 50, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !108, line: 14, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1290, file: !108, line: 51, baseType: !22, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1290, file: !108, line: 52, baseType: !22, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1290, file: !108, line: 53, baseType: !39, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1290, file: !108, line: 54, baseType: !39, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !463, file: !464, line: 973, baseType: !1300, size: 32, offset: 10688)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !463, file: !464, line: 974, baseType: !1300, size: 32, offset: 10720)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !463, file: !464, line: 978, baseType: !39, size: 64, offset: 10752)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !463, file: !464, line: 987, baseType: !462, size: 64, offset: 10816)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !463, file: !464, line: 990, baseType: !462, size: 64, offset: 10880)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !463, file: !464, line: 995, baseType: !97, size: 128, offset: 10944)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !463, file: !464, line: 996, baseType: !97, size: 128, offset: 11072)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !463, file: !464, line: 997, baseType: !462, size: 64, offset: 11200)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !463, file: !464, line: 1005, baseType: !97, size: 128, offset: 11264)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !463, file: !464, line: 1006, baseType: !97, size: 128, offset: 11392)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !463, file: !464, line: 1009, baseType: !409, size: 64, offset: 11520)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !463, file: !464, line: 1010, baseType: !1313, size: 512, offset: 11584)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 512, elements: !431)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !463, file: !464, line: 1011, baseType: !97, size: 128, offset: 12096)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !463, file: !464, line: 1012, baseType: !97, size: 128, offset: 12224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !463, file: !464, line: 1014, baseType: !1140, size: 64, offset: 12352)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !463, file: !464, line: 1017, baseType: !1318, size: 64, offset: 12416)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !463, file: !464, line: 1020, baseType: !1318, size: 64, offset: 12480)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !463, file: !464, line: 1023, baseType: !20, size: 64, offset: 12544)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !463, file: !464, line: 1025, baseType: !521, size: 64, offset: 12608)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !463, file: !464, line: 1026, baseType: !521, size: 64, offset: 12672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !463, file: !464, line: 1031, baseType: !521, size: 64, offset: 12736)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !463, file: !464, line: 1032, baseType: !1325, size: 192, offset: 12800)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !464, line: 324, size: 192, elements: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1325, file: !464, line: 326, baseType: !521, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1325, file: !464, line: 327, baseType: !521, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !464, line: 328, baseType: !373, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !463, file: !464, line: 1041, baseType: !39, size: 64, offset: 12992)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !463, file: !464, line: 1042, baseType: !39, size: 64, offset: 13056)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !463, file: !464, line: 1045, baseType: !521, size: 64, offset: 13120)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !463, file: !464, line: 1048, baseType: !521, size: 64, offset: 13184)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !463, file: !464, line: 1051, baseType: !39, size: 64, offset: 13248)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !463, file: !464, line: 1052, baseType: !39, size: 64, offset: 13312)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !463, file: !464, line: 1055, baseType: !1337, size: 640, offset: 13376)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1338, line: 132, size: 640, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1339 = !{!1340, !1346, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1337, file: !1338, line: 133, baseType: !1341, size: 576)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 576, elements: !405)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1338, line: 117, size: 192, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1342, file: !1338, line: 118, baseType: !521, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1342, file: !1338, line: 119, baseType: !647, size: 128, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1337, file: !1338, line: 134, baseType: !7, size: 32, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1337, file: !1338, line: 135, baseType: !7, size: 32, offset: 608)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !463, file: !464, line: 1058, baseType: !1349, size: 448, offset: 14016)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1338, line: 144, size: 448, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1349, file: !1338, line: 145, baseType: !347, size: 128, align: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1349, file: !1338, line: 146, baseType: !368, size: 256, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1349, file: !1338, line: 147, baseType: !7, size: 32, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !463, file: !464, line: 1064, baseType: !1355, size: 64, offset: 14464)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1358, line: 110, size: 1472, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1409, !1410, !1411, !1419}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 111, baseType: !359, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 112, baseType: !960, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 113, baseType: !968, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1357, file: !1358, line: 114, baseType: !960, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1357, file: !1358, line: 115, baseType: !968, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1357, file: !1358, line: 116, baseType: !960, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1357, file: !1358, line: 117, baseType: !968, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1357, file: !1358, line: 118, baseType: !960, size: 32, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1357, file: !1358, line: 119, baseType: !968, size: 32, offset: 288)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1357, file: !1358, line: 120, baseType: !7, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1357, file: !1358, line: 121, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1372, line: 24, baseType: !1373)
!1372 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 24, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1373, file: !1372, line: 24, baseType: !521, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1357, file: !1358, line: 122, baseType: !1371, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1357, file: !1358, line: 123, baseType: !1371, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1357, file: !1358, line: 124, baseType: !1371, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1357, file: !1358, line: 125, baseType: !1371, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1357, file: !1358, line: 127, baseType: !87, size: 8, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1357, file: !1358, line: 129, baseType: !991, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1357, file: !1358, line: 130, baseType: !991, size: 64, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1357, file: !1358, line: 131, baseType: !991, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1357, file: !1358, line: 132, baseType: !991, size: 64, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 135, baseType: !20, size: 64, offset: 1024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 137, baseType: !1387, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1389, line: 14, size: 1088, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1388, file: !1389, line: 15, baseType: !413, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1388, file: !1389, line: 17, baseType: !861, size: 320, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1388, file: !1389, line: 19, baseType: !39, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1388, file: !1389, line: 20, baseType: !359, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1388, file: !1389, line: 23, baseType: !426, size: 128, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1388, file: !1389, line: 24, baseType: !960, size: 32, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1388, file: !1389, line: 29, baseType: !359, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1388, file: !1389, line: 36, baseType: !1399, size: 320, offset: 768)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1400, line: 15, size: 320, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !1400, line: 16, baseType: !373, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1399, file: !1400, line: 18, baseType: !22, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1399, file: !1400, line: 19, baseType: !22, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1399, file: !1400, line: 20, baseType: !22, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1399, file: !1400, line: 21, baseType: !22, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1399, file: !1400, line: 22, baseType: !39, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !1400, line: 23, baseType: !39, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1357, file: !1358, line: 138, baseType: !929, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1357, file: !1358, line: 139, baseType: !1185, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1357, file: !1358, line: 140, baseType: !1412, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1358, line: 25, size: 64, elements: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1413, file: !1358, line: 26, baseType: !49, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1413, file: !1358, line: 27, baseType: !22, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1413, file: !1358, line: 28, baseType: !1418, offset: 64)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, elements: !1218)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 142, baseType: !1420, size: 128, offset: 1344)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 142, size: 128, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1420, file: !1358, line: 143, baseType: !22, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1420, file: !1358, line: 144, baseType: !347, size: 128, align: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !463, file: !464, line: 1067, baseType: !1355, size: 64, offset: 14528)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !463, file: !464, line: 1070, baseType: !1355, size: 64, offset: 14592)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !463, file: !464, line: 1074, baseType: !991, size: 64, offset: 14656)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !463, file: !464, line: 1084, baseType: !1428, size: 128, offset: 14720)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !463, file: !464, line: 1086, baseType: !1432, size: 64, offset: 14848)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !464, line: 55, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !463, file: !464, line: 1089, baseType: !1435, size: 64, offset: 14912)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1436, line: 12, size: 64, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1435, file: !1436, line: 13, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1436, line: 8, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !463, file: !464, line: 1090, baseType: !1442, size: 128, offset: 14976)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1443, line: 13, size: 128, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1442, file: !1443, line: 14, baseType: !97, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !463, file: !464, line: 1097, baseType: !1447, size: 64, offset: 15104)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !464, line: 50, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !463, file: !464, line: 1100, baseType: !1450, size: 64, offset: 15168)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1452, line: 48, size: 5632, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!1453 = !{!1454, !1455, !1456, !1457, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1451, file: !1452, line: 52, baseType: !49, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !1451, file: !1452, line: 53, baseType: !987, size: 8, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !1451, file: !1452, line: 54, baseType: !54, size: 192, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !1451, file: !1452, line: 56, baseType: !1458, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !1452, line: 26, size: 448, elements: !1460)
!1460 = !{!1461, !1462, !1464, !1466, !1467, !1468}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !1459, file: !1452, line: 27, baseType: !7, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1459, file: !1452, line: 28, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !1459, file: !1452, line: 29, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !1459, file: !1452, line: 30, baseType: !1465, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !1459, file: !1452, line: 31, baseType: !1465, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1459, file: !1452, line: 32, baseType: !347, size: 128, align: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !1451, file: !1452, line: 57, baseType: !1459, size: 448, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !1451, file: !1452, line: 61, baseType: !59, size: 32, align: 512, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !1451, file: !1452, line: 62, baseType: !7, size: 32, offset: 1056)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !1451, file: !1452, line: 63, baseType: !718, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !1451, file: !1452, line: 64, baseType: !718, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !1451, file: !1452, line: 65, baseType: !718, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !1451, file: !1452, line: 66, baseType: !1476, size: 4096, offset: 1280)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 4096, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !463, file: !464, line: 1103, baseType: !1480, size: 64, offset: 15232)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !464, line: 53, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !463, file: !464, line: 1107, baseType: !1483, size: 64, offset: 15296)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1485, line: 31, size: 576, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1486 = !{!1487, !1488, !1491, !1494, !1497, !1498, !1501, !1504, !1505}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1484, file: !1485, line: 32, baseType: !413, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1484, file: !1485, line: 33, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1485, line: 9, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1484, file: !1485, line: 34, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1485, line: 10, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1484, file: !1485, line: 35, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1485, line: 8, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1484, file: !1485, line: 36, baseType: !442, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1484, file: !1485, line: 37, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !993, line: 34, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1484, file: !1485, line: 38, baseType: !1502, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1485, line: 38, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1484, file: !1485, line: 39, baseType: !1502, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1484, file: !1485, line: 40, baseType: !1506, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1508, line: 771, size: 384, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1509 = !{!1510, !1511, !1512, !1513}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1507, file: !1508, line: 772, baseType: !975, size: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1507, file: !1508, line: 773, baseType: !929, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1507, file: !1508, line: 774, baseType: !1185, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1507, file: !1508, line: 775, baseType: !1514, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1516, line: 209, size: 4736, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1517 = !{!1518, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1515, file: !1516, line: 215, baseType: !1519, size: 896)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 896, elements: !4553)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1516, line: 152, size: 1600, elements: !1522)
!1522 = !{!1523, !4604, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4722}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1521, file: !1516, line: 154, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1516, line: 389, size: 7872, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !4516, !4522, !4523, !4527, !4528, !4529, !4530, !4531, !4532, !4550, !4551, !4555, !4556, !4557, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4591, !4594, !4595, !4602}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1525, file: !1516, line: 391, baseType: !1521, size: 1600)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1525, file: !1516, line: 393, baseType: !39, size: 64, offset: 1600)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1525, file: !1516, line: 401, baseType: !22, size: 32, offset: 1664)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1525, file: !1516, line: 404, baseType: !22, size: 32, offset: 1696)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1525, file: !1516, line: 417, baseType: !22, size: 32, offset: 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1525, file: !1516, line: 418, baseType: !22, size: 32, offset: 1760)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1525, file: !1516, line: 419, baseType: !22, size: 32, offset: 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1525, file: !1516, line: 432, baseType: !22, size: 32, offset: 1824)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1525, file: !1516, line: 433, baseType: !22, size: 32, offset: 1856)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1525, file: !1516, line: 434, baseType: !22, size: 32, offset: 1888)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1525, file: !1516, line: 436, baseType: !22, size: 32, offset: 1920)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1525, file: !1516, line: 439, baseType: !7, size: 32, offset: 1952)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1525, file: !1516, line: 441, baseType: !1540, size: 64, offset: 1984)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1542, line: 190, size: 1152, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !4508, !4509, !4510, !4511, !4512, !4515}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1541, file: !1542, line: 191, baseType: !49, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1541, file: !1542, line: 192, baseType: !49, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1541, file: !1542, line: 202, baseType: !1540, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1541, file: !1542, line: 203, baseType: !16, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1541, file: !1542, line: 205, baseType: !513, size: 192, align: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1541, file: !1542, line: 207, baseType: !902, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1541, file: !1542, line: 208, baseType: !7, size: 32, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 209, baseType: !1552, size: 256, offset: 512)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 209, size: 256, elements: !1553)
!1553 = !{!1554, !1563, !1567}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1552, file: !1542, line: 210, baseType: !1555, size: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1542, line: 153, size: 256, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1562}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1555, file: !1542, line: 154, baseType: !39, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1555, file: !1542, line: 156, baseType: !653, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1555, file: !1542, line: 162, baseType: !1560, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1542, line: 162, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1555, file: !1542, line: 167, baseType: !39, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1552, file: !1542, line: 211, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1542, line: 170, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1564, file: !1542, line: 171, baseType: !1540, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1552, file: !1542, line: 212, baseType: !1568, size: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1542, line: 174, size: 256, elements: !1569)
!1569 = !{!1570, !4503, !4506, !4507}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1568, file: !1542, line: 175, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1542, line: 271, size: 768, elements: !1574)
!1574 = !{!1575, !4480, !4484, !4485, !4486, !4487, !4488, !4492, !4493, !4494, !4495, !4499}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1573, file: !1542, line: 276, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!22, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1542, line: 251, size: 1216, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1580, file: !1542, line: 253, baseType: !1540, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1580, file: !1542, line: 254, baseType: !795, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1580, file: !1542, line: 255, baseType: !1585, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1587, line: 17, size: 960, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1618, !1619, !1622}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1586, file: !1587, line: 18, baseType: !1064, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1586, file: !1587, line: 19, baseType: !35, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1586, file: !1587, line: 20, baseType: !35, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1586, file: !1587, line: 21, baseType: !35, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1586, file: !1587, line: 22, baseType: !35, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1586, file: !1587, line: 23, baseType: !41, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1586, file: !1587, line: 24, baseType: !41, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1586, file: !1587, line: 25, baseType: !368, size: 256, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1586, file: !1587, line: 26, baseType: !1598, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1587, line: 32, size: 256, elements: !1601)
!1601 = !{!1602, !1606, !1610, !1614}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1600, file: !1587, line: 33, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!20, !1585, !40}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1600, file: !1587, line: 34, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1585, !20}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1600, file: !1587, line: 35, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!20, !1585, !20, !40}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1600, file: !1587, line: 36, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!22, !1585, !20}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1586, file: !1587, line: 27, baseType: !22, size: 32, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1586, file: !1587, line: 28, baseType: !1620, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1586, file: !1587, line: 29, baseType: !20, size: 64, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1580, file: !1542, line: 256, baseType: !20, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1580, file: !1542, line: 259, baseType: !368, size: 256, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1580, file: !1542, line: 260, baseType: !368, size: 256, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1580, file: !1542, line: 261, baseType: !22, size: 32, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1580, file: !1542, line: 262, baseType: !97, size: 128, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1580, file: !1542, line: 263, baseType: !1064, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1580, file: !1542, line: 265, baseType: !35, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1580, file: !1542, line: 266, baseType: !987, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1580, file: !1542, line: 267, baseType: !987, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1580, file: !1542, line: 268, baseType: !1633, size: 64, offset: 1152)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1636, line: 563, size: 1024, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1637 = !{!1638, !1694, !1695, !1699, !1703, !1707, !4446, !4450, !4454, !4458, !4459, !4460, !4464, !4468, !4472, !4476}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1635, file: !1636, line: 564, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !114, line: 625, size: 1344, elements: !1644)
!1644 = !{!1645, !1654, !1655, !1661, !1668, !1669, !1674, !1675, !1680, !1681, !1684, !1685, !1686, !1687, !1688, !1689, !1692}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !114, line: 628, baseType: !1646, size: 128)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !114, line: 628, size: 128, elements: !1647)
!1647 = !{!1648, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !114, line: 629, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !114, line: 629, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1649, file: !114, line: 631, baseType: !39, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1649, file: !114, line: 632, baseType: !39, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1646, file: !114, line: 635, baseType: !347, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1643, file: !114, line: 639, baseType: !767, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1643, file: !114, line: 640, baseType: !1656, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !804, line: 297, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !804, line: 297, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1657, file: !804, line: 297, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !809, line: 19, baseType: !39)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !114, line: 646, baseType: !1662, size: 64, offset: 256)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !114, line: 646, size: 64, elements: !1663)
!1663 = !{!1664, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1662, file: !114, line: 647, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !114, line: 542, baseType: !39)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1662, file: !114, line: 648, baseType: !1666, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1643, file: !114, line: 666, baseType: !22, size: 32, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1643, file: !114, line: 667, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !114, line: 579, size: 320, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !114, line: 580, baseType: !823, size: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1643, file: !114, line: 670, baseType: !987, size: 8, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1643, file: !114, line: 681, baseType: !1676, size: 256, offset: 512)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !114, line: 678, size: 256, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1676, file: !114, line: 679, baseType: !513, size: 192, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1676, file: !114, line: 680, baseType: !39, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1643, file: !114, line: 689, baseType: !97, size: 128, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1643, file: !114, line: 691, baseType: !1682, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !114, line: 691, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1643, file: !114, line: 694, baseType: !1633, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1643, file: !114, line: 697, baseType: !39, size: 64, offset: 1024)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1643, file: !114, line: 699, baseType: !795, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1643, file: !114, line: 700, baseType: !20, size: 64, offset: 1152)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1643, file: !114, line: 711, baseType: !359, size: 64, offset: 1216)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1643, file: !114, line: 717, baseType: !1690, size: 64, offset: 1280)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !114, line: 717, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1643, file: !114, line: 722, baseType: !1693, offset: 1344)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !114, line: 570, elements: !788)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1635, file: !1636, line: 569, baseType: !1639, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1635, file: !1636, line: 571, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!22, !1642, !39}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1635, file: !1636, line: 572, baseType: !1700, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!22, !1642}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1635, file: !1636, line: 578, baseType: !1704, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!22, !1642, !39, !39, !39}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1635, file: !1636, line: 580, baseType: !1708, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !114, line: 1184, baseType: !7)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1636, line: 512, size: 896, elements: !1714)
!1714 = !{!1715, !1723, !1724, !1731, !1738, !1748, !4439, !4440, !4442, !4444}
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1636, line: 513, baseType: !1716, size: 320)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !1636, line: 513, size: 320, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1716, file: !1636, line: 514, baseType: !1642, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1716, file: !1636, line: 515, baseType: !328, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1716, file: !1636, line: 516, baseType: !39, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1716, file: !1636, line: 517, baseType: !39, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1716, file: !1636, line: 518, baseType: !39, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1713, file: !1636, line: 520, baseType: !113, size: 32, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1713, file: !1636, line: 522, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !809, line: 22, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 22, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1727, file: !809, line: 22, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !809, line: 15, baseType: !39)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1713, file: !1636, line: 524, baseType: !1732, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !804, line: 372, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 372, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1734, file: !804, line: 372, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !809, line: 16, baseType: !39)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1636, line: 527, baseType: !1739, size: 64, offset: 512)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !1636, line: 527, size: 64, elements: !1740)
!1740 = !{!1741, !1747}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1739, file: !1636, line: 528, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !809, line: 21, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 21, size: 64, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1743, file: !809, line: 21, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !809, line: 14, baseType: !39)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1739, file: !1636, line: 529, baseType: !1726, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1713, file: !1636, line: 534, baseType: !1749, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !114, line: 74, size: 512, align: 128, elements: !1751)
!1751 = !{!1752, !1753, !4433, !4438}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1750, file: !114, line: 75, baseType: !39, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !114, line: 83, baseType: !1754, size: 320, offset: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !114, line: 83, size: 320, elements: !1755)
!1755 = !{!1756, !4359, !4373, !4377, !4432}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !114, line: 84, baseType: !1757, size: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !114, line: 84, size: 320, elements: !1758)
!1758 = !{!1759, !1770, !4353, !4358}
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !114, line: 90, baseType: !1760, size: 128)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !114, line: 90, size: 128, elements: !1761)
!1761 = !{!1762, !1763, !1768, !1769}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1760, file: !114, line: 91, baseType: !97, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !114, line: 94, baseType: !1764, size: 128)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !114, line: 94, size: 128, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1764, file: !114, line: 96, baseType: !20, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1764, file: !114, line: 98, baseType: !7, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1760, file: !114, line: 102, baseType: !97, size: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1760, file: !114, line: 103, baseType: !97, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1757, file: !114, line: 106, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !155, line: 472, size: 1536, align: 64, elements: !1773)
!1773 = !{!1774, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4347, !4348, !4349, !4350, !4351, !4352}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1772, file: !155, line: 473, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !155, line: 641, size: 4800, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1787, !1788, !3694, !3695, !3696, !3697, !3698, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !4139, !4147, !4148, !4149, !4166, !4167, !4168, !4169}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1776, file: !155, line: 642, baseType: !24, size: 16)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1776, file: !155, line: 643, baseType: !26, size: 16, offset: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1776, file: !155, line: 644, baseType: !960, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1776, file: !155, line: 645, baseType: !97, size: 128, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1776, file: !155, line: 646, baseType: !968, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1776, file: !155, line: 647, baseType: !7, size: 32, offset: 224)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1776, file: !155, line: 650, baseType: !1785, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !155, line: 607, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1776, file: !155, line: 651, baseType: !1785, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1776, file: !155, line: 654, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !155, line: 1966, size: 2048, align: 512, elements: !1792)
!1792 = !{!1793, !3528, !3538, !3542, !3546, !3550, !3554, !3558, !3562, !3566, !3570, !3571, !3575, !3579, !3616, !3645, !3649, !3655, !3659, !3663, !3667, !3671, !3675, !3681, !3685}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1791, file: !155, line: 1967, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1797, !1775, !1797, !7}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1799, line: 82, size: 1536, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1800 = !{!1801, !1802, !1807, !1815, !1816, !1831, !1832, !1836, !1849, !3511, !3512, !3513, !3514, !3520, !3521, !3522}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1798, file: !1799, line: 84, baseType: !7, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1798, file: !1799, line: 85, baseType: !1803, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !637, line: 275, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !637, line: 275, size: 32, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1804, file: !637, line: 275, baseType: !641, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1798, file: !1799, line: 86, baseType: !1808, size: 128, offset: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1809, line: 38, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1810 = !{!1811, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1808, file: !1809, line: 39, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1808, file: !1809, line: 39, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1798, file: !1799, line: 87, baseType: !1797, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1798, file: !1799, line: 88, baseType: !1817, size: 128, offset: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1799, line: 49, size: 128, elements: !1818)
!1818 = !{!1819, !1828}
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !1799, line: 50, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !1799, line: 50, size: 64, elements: !1821)
!1821 = !{!1822, !1827}
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1799, line: 51, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1799, line: 51, size: 64, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1823, file: !1799, line: 52, baseType: !473, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1823, file: !1799, line: 52, baseType: !473, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1820, file: !1799, line: 54, baseType: !521, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1817, file: !1799, line: 56, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1798, file: !1799, line: 89, baseType: !1775, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1798, file: !1799, line: 91, baseType: !1833, size: 256, offset: 448)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1798, file: !1799, line: 94, baseType: !1837, size: 64, offset: 704)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1838, line: 25, size: 64, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 26, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 26, size: 64, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1841, file: !1838, line: 28, baseType: !522, size: 64, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1838, line: 30, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1838, line: 30, size: 64, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1845, file: !1838, line: 31, baseType: !59, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1845, file: !1838, line: 32, baseType: !22, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1798, file: !1799, line: 95, baseType: !1850, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1799, line: 128, size: 1024, align: 512, elements: !1853)
!1853 = !{!1854, !1858, !1859, !1866, !1872, !1876, !1880, !1884, !1885, !1889, !1893, !3501, !3505}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1852, file: !1799, line: 129, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!22, !1797, !7}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1852, file: !1799, line: 130, baseType: !1855, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1852, file: !1799, line: 131, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!22, !1863, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1852, file: !1799, line: 132, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!22, !1863, !7, !16, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1852, file: !1799, line: 134, baseType: !1873, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!22, !1863}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1852, file: !1799, line: 135, baseType: !1877, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!22, !1797}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1852, file: !1799, line: 136, baseType: !1881, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1797}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1852, file: !1799, line: 137, baseType: !1881, size: 64, offset: 448)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1852, file: !1799, line: 138, baseType: !1886, size: 64, offset: 512)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1797, !1775}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1852, file: !1799, line: 139, baseType: !1890, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1064, !1797, !1064, !22}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1852, file: !1799, line: 140, baseType: !1894, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897, !3500}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1899, line: 70, size: 256, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1900 = !{!1901, !1902, !3496, !3497}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1898, file: !1899, line: 71, baseType: !1797, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1898, file: !1899, line: 72, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !155, line: 1190, size: 10752, elements: !1905)
!1905 = !{!1906, !1907, !1910, !1911, !1912, !1913, !2478, !2630, !2670, !2760, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2777, !2781, !2782, !3276, !3279, !3337, !3340, !3341, !3342, !3383, !3409, !3410, !3411, !3412, !3413, !3414, !3435, !3437, !3444, !3445, !3446, !3447, !3448, !3463, !3464, !3465, !3466, !3469, !3470, !3471, !3472, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1904, file: !155, line: 1191, baseType: !97, size: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1904, file: !155, line: 1192, baseType: !1908, size: 32, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !473)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1904, file: !155, line: 1193, baseType: !87, size: 8, offset: 160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1904, file: !155, line: 1194, baseType: !39, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1904, file: !155, line: 1195, baseType: !41, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1904, file: !155, line: 1196, baseType: !1914, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !155, line: 2366, size: 576, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1925, !1929, !1933, !1937, !2466, !2467, !2468, !2470, !2471, !2472, !2474, !2475, !2476, !2477}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1915, file: !155, line: 2367, baseType: !16, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1915, file: !155, line: 2368, baseType: !22, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1915, file: !155, line: 2376, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!22, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1899, line: 21, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1915, file: !155, line: 2377, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !155, line: 75, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1915, file: !155, line: 2378, baseType: !1930, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1797, !1914, !22, !16, !20}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1915, file: !155, line: 2380, baseType: !1934, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1903}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1915, file: !155, line: 2381, baseType: !1938, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !148, line: 402, size: 9216, align: 512, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1947, !2125, !2151, !2152, !2153, !2154, !2158, !2161, !2162, !2163, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2231, !2235, !2255, !2272, !2273, !2274, !2275, !2284, !2307, !2308, !2311, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2325, !2326, !2425, !2433, !2434, !2435, !2437, !2441, !2442, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2459, !2460, !2461, !2465}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1939, file: !148, line: 403, baseType: !147, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1939, file: !148, line: 406, baseType: !97, size: 128, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1939, file: !148, line: 409, baseType: !1944, size: 448, offset: 192)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1945)
!1945 = !{!1946}
!1946 = !DISubrange(count: 56)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1939, file: !148, line: 417, baseType: !1948, size: 768, offset: 640)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !148, line: 45, size: 768, elements: !1949)
!1949 = !{!1950, !2119, !2120, !2121, !2124}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1948, file: !148, line: 46, baseType: !1951, size: 512)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1952, line: 64, size: 512, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1953 = !{!1954, !1955, !1956, !1958, !2000, !2108, !2109, !2114, !2115, !2116, !2117, !2118}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1951, file: !1952, line: 65, baseType: !16, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1951, file: !1952, line: 66, baseType: !97, size: 128, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1951, file: !1952, line: 67, baseType: !1957, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1951, file: !1952, line: 68, baseType: !1959, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1952, line: 168, size: 768, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1960, file: !1952, line: 169, baseType: !97, size: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1960, file: !1952, line: 170, baseType: !59, size: 32, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1960, file: !1952, line: 171, baseType: !1951, size: 512, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1960, file: !1952, line: 172, baseType: !1966, size: 64, offset: 704)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1952, line: 133, size: 192, elements: !1969)
!1969 = !{!1970, !1977, !1982}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1968, file: !1952, line: 134, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!22, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1968, file: !1952, line: 135, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!16, !1975}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1968, file: !1952, line: 136, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!22, !1975, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1952, line: 125, size: 20736, elements: !1989)
!1989 = !{!1990, !1992, !1994, !1995, !1999}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1988, file: !1952, line: 126, baseType: !1991, size: 192)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 192, elements: !405)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1988, file: !1952, line: 127, baseType: !1993, size: 4096, offset: 192)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 4096, elements: !1477)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1988, file: !1952, line: 128, baseType: !22, size: 32, offset: 4288)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1988, file: !1952, line: 129, baseType: !1996, size: 16384, offset: 4320)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1997)
!1997 = !{!1998}
!1998 = !DISubrange(count: 2048)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1988, file: !1952, line: 130, baseType: !22, size: 32, offset: 20704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1951, file: !1952, line: 69, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1952, line: 116, size: 384, elements: !2004)
!2004 = !{!2005, !2009, !2031, !2069, !2100, !2104}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2003, file: !1952, line: 117, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1957}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2003, file: !1952, line: 118, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2013, line: 254, size: 128, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2014 = !{!2015, !2027}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2012, file: !2013, line: 255, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !1957, !2022, !1064}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !905)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2013, line: 30, size: 128, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2023, file: !2013, line: 31, baseType: !16, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2023, file: !2013, line: 32, baseType: !24, size: 16, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2012, file: !2013, line: 256, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!2019, !1957, !2022, !16, !35}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2003, file: !1952, line: 119, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2013, line: 84, size: 320, elements: !2036)
!2036 = !{!2037, !2038, !2042, !2065, !2067}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2035, file: !2013, line: 85, baseType: !16, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2035, file: !2013, line: 86, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!24, !1957, !2022, !22}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2035, file: !2013, line: 88, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!24, !1957, !2046, !22}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2013, line: 175, size: 512, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052, !2056, !2060, !2061}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2047, file: !2013, line: 176, baseType: !2023, size: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2047, file: !2013, line: 177, baseType: !35, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2047, file: !2013, line: 178, baseType: !20, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2047, file: !2013, line: 179, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!1771}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2047, file: !2013, line: 180, baseType: !2057, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!2019, !795, !1957, !2046, !1064, !41, !35}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2047, file: !2013, line: 182, baseType: !2057, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2047, file: !2013, line: 184, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!22, !795, !1957, !2046, !1642}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2035, file: !2013, line: 90, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2035, file: !2013, line: 91, baseType: !2068, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2003, file: !1952, line: 120, baseType: !2070, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2073, !1975}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !142, line: 39, size: 384, elements: !2076)
!2076 = !{!2077, !2078, !2082, !2086, !2092, !2096}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2075, file: !142, line: 40, baseType: !141, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2075, file: !142, line: 41, baseType: !2079, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!987}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2075, file: !142, line: 42, baseType: !2083, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!20}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2075, file: !142, line: 43, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!902, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !142, line: 19, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2075, file: !142, line: 44, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!902}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2075, file: !142, line: 45, baseType: !2097, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !20}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2003, file: !1952, line: 121, baseType: !2101, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!902, !1975}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2003, file: !1952, line: 122, baseType: !2105, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !1975, !1166, !1167}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1951, file: !1952, line: 70, baseType: !1540, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1951, file: !1952, line: 71, baseType: !2110, size: 32, offset: 448)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2111, line: 19, size: 32, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2112 = !{!2113}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2110, file: !2111, line: 20, baseType: !413, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1951, file: !1952, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1951, file: !1952, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1951, file: !1952, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1951, file: !1952, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1951, file: !1952, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1948, file: !148, line: 47, baseType: !1938, size: 64, offset: 512)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1948, file: !148, line: 48, baseType: !1957, size: 64, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1948, file: !148, line: 49, baseType: !2122, size: 64, offset: 640)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !148, line: 49, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1948, file: !148, line: 50, baseType: !1140, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1939, file: !148, line: 418, baseType: !2126, size: 64, offset: 1408)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !148, line: 53, size: 448, elements: !2128)
!2128 = !{!2129, !2130, !2135, !2139, !2143, !2147}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2127, file: !148, line: 54, baseType: !2023, size: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2127, file: !148, line: 55, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2019, !2126, !2134, !1064}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2127, file: !148, line: 57, baseType: !2136, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!2019, !2126, !2134, !16, !35}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2127, file: !148, line: 59, baseType: !2140, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !1938, !16}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2127, file: !148, line: 60, baseType: !2144, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!22, !1938}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2127, file: !148, line: 61, baseType: !2148, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !1938}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1939, file: !148, line: 419, baseType: !16, size: 64, offset: 1472)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1939, file: !148, line: 420, baseType: !16, size: 64, offset: 1536)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1939, file: !148, line: 421, baseType: !1957, size: 64, offset: 1600)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1939, file: !148, line: 424, baseType: !2155, size: 64, offset: 1664)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2157)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !148, line: 424, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1939, file: !148, line: 425, baseType: !2159, size: 64, offset: 1728)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1939, file: !148, line: 426, baseType: !7, size: 32, offset: 1792)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1939, file: !148, line: 435, baseType: !368, size: 256, offset: 1856)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1939, file: !148, line: 437, baseType: !2164, size: 64, offset: 2112)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2166, line: 69, size: 320, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2167 = !{!2168, !2169, !2170, !2187, !2189, !2193, !2194}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !2166, line: 70, baseType: !16, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2165, file: !2166, line: 71, baseType: !1938, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2165, file: !2166, line: 72, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2166, line: 47, size: 256, elements: !2174)
!2174 = !{!2175, !2176, !2182, !2186}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2166, line: 49, baseType: !7, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2173, file: !2166, line: 51, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!22, !16, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2173, file: !2166, line: 53, baseType: !2183, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!22, !1064, !2180}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2173, file: !2166, line: 55, baseType: !2097, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2165, file: !2166, line: 73, baseType: !2188, size: 16, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2165, file: !2166, line: 74, baseType: !2190, size: 8, offset: 208)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2191)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2192)
!2192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !2166, line: 75, baseType: !83, size: 8, offset: 216)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !2166, line: 76, baseType: !2195, size: 64, offset: 256)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !2166, line: 76, size: 64, elements: !2196)
!2196 = !{!2197, !2198, !2205}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2195, file: !2166, line: 77, baseType: !20, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2195, file: !2166, line: 78, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2166, line: 86, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2201, file: !2166, line: 87, baseType: !7, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2201, file: !2166, line: 88, baseType: !1064, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2195, file: !2166, line: 79, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2166, line: 92, size: 256, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2214, !2215}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2208, file: !2166, line: 94, baseType: !7, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2208, file: !2166, line: 95, baseType: !7, size: 32, offset: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2208, file: !2166, line: 96, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2208, file: !2166, line: 97, baseType: !2171, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2208, file: !2166, line: 98, baseType: !20, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1939, file: !148, line: 438, baseType: !7, size: 32, offset: 2176)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1939, file: !148, line: 441, baseType: !7, size: 32, offset: 2208)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1939, file: !148, line: 442, baseType: !2155, size: 64, offset: 2240)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1939, file: !148, line: 443, baseType: !2159, size: 64, offset: 2304)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1939, file: !148, line: 444, baseType: !987, size: 8, offset: 2368)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1939, file: !148, line: 451, baseType: !987, size: 8, offset: 2376)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1939, file: !148, line: 454, baseType: !7, size: 32, offset: 2400)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1939, file: !148, line: 455, baseType: !2224, size: 64, offset: 2432)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2226, line: 23, size: 96, elements: !2227)
!2226 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2225, file: !2226, line: 24, baseType: !22, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2225, file: !2226, line: 24, baseType: !22, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2225, file: !2226, line: 24, baseType: !22, size: 32, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1939, file: !148, line: 458, baseType: !2232, size: 64, offset: 2496)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!22}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1939, file: !148, line: 460, baseType: !2236, size: 4032, align: 512, offset: 2560)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2237, size: 4032, elements: !2253)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !148, line: 362, size: 576, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2237, file: !148, line: 363, baseType: !20, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2237, file: !148, line: 364, baseType: !7, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2237, file: !148, line: 367, baseType: !2242, size: 448, offset: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !148, line: 319, size: 448, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2242, file: !148, line: 320, baseType: !1938, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2242, file: !148, line: 321, baseType: !2246, size: 384, offset: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2247, line: 40, size: 384, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2248 = !{!2249}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2246, file: !2247, line: 41, baseType: !2250, size: 384, align: 64)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 384, align: 64, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: 2)
!2253 = !{!2254}
!2254 = !DISubrange(count: 7)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1939, file: !148, line: 463, baseType: !2256, size: 192, offset: 6592)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2257, line: 8, size: 192, elements: !2258)
!2257 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2256, file: !2257, line: 10, baseType: !7, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2256, file: !2257, line: 11, baseType: !1318, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2256, file: !2257, line: 12, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2264, line: 59, size: 48, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2263, file: !2264, line: 60, baseType: !920, size: 16)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2263, file: !2264, line: 61, baseType: !920, size: 16, offset: 16)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2263, file: !2264, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2263, file: !2264, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2263, file: !2264, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2263, file: !2264, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1939, file: !148, line: 465, baseType: !39, size: 64, offset: 6784)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1939, file: !148, line: 469, baseType: !7, size: 32, offset: 6848)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1939, file: !148, line: 470, baseType: !97, size: 128, offset: 6912)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1939, file: !148, line: 471, baseType: !2276, size: 64, offset: 7040)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2278, line: 33, size: 96, elements: !2279)
!2278 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2277, file: !2278, line: 37, baseType: !22, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2277, file: !2278, line: 43, baseType: !22, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2277, file: !2278, line: 45, baseType: !26, size: 16, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !2278, line: 47, baseType: !26, size: 16, offset: 80)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1939, file: !148, line: 476, baseType: !2285, size: 64, offset: 7104)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !148, line: 378, size: 256, elements: !2287)
!2287 = !{!2288, !2304, !2305, !2306}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2286, file: !148, line: 379, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2291, line: 204, baseType: !2292)
!2291 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2291, line: 197, size: 192, elements: !2293)
!2293 = !{!2294, !2296, !2297, !2298, !2300, !2302}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2292, file: !2291, line: 198, baseType: !2295, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2291, line: 21, baseType: !474)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2292, file: !2291, line: 199, baseType: !87, size: 8, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2292, file: !2291, line: 200, baseType: !87, size: 8, offset: 40)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2292, file: !2291, line: 201, baseType: !2299, size: 16, offset: 48)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2291, line: 17, baseType: !94)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2292, file: !2291, line: 202, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2291, line: 16, baseType: !522)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2292, file: !2291, line: 203, baseType: !2303, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2291, line: 22, baseType: !522)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2286, file: !148, line: 380, baseType: !7, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2286, file: !148, line: 381, baseType: !1064, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2286, file: !148, line: 382, baseType: !1064, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1939, file: !148, line: 477, baseType: !2286, size: 256, offset: 7168)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1939, file: !148, line: 480, baseType: !2309, size: 64, offset: 7424)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !148, line: 480, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1939, file: !148, line: 483, baseType: !2312, size: 64, offset: 7488)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !148, line: 483, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1939, file: !148, line: 488, baseType: !1064, size: 64, offset: 7552)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1939, file: !148, line: 492, baseType: !20, size: 64, offset: 7616)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1939, file: !148, line: 493, baseType: !7, size: 32, offset: 7680)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1939, file: !148, line: 495, baseType: !20, size: 64, offset: 7744)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1939, file: !148, line: 496, baseType: !7, size: 32, offset: 7808)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1939, file: !148, line: 499, baseType: !7, size: 32, offset: 7840)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1939, file: !148, line: 500, baseType: !2321, size: 64, offset: 7872)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2323, line: 45, baseType: !2324)
!2323 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1939, file: !148, line: 503, baseType: !7, size: 32, offset: 7936)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1939, file: !148, line: 504, baseType: !2327, size: 64, offset: 8000)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2330, line: 96, size: 192, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2331 = !{!2332, !2333, !2386, !2389}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2329, file: !2330, line: 97, baseType: !7, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2329, file: !2330, line: 98, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2330, line: 24, size: 3072, elements: !2336)
!2336 = !{!2337, !2339, !2340, !2341, !2342, !2355, !2356, !2357, !2358, !2370, !2371, !2372, !2383, !2384, !2385}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2335, file: !2330, line: 26, baseType: !2338, size: 128)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 128, elements: !2251)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2335, file: !2330, line: 27, baseType: !2338, size: 128, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2335, file: !2330, line: 28, baseType: !22, size: 32, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2335, file: !2330, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2335, file: !2330, line: 32, baseType: !2343, size: 960, offset: 576)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2344, line: 206, size: 960, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2345 = !{!2346, !2347, !2350, !2352, !2353, !2354}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2343, file: !2344, line: 207, baseType: !350, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2343, file: !2344, line: 208, baseType: !2348, size: 256, offset: 64)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2349, size: 256, elements: !431)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2343, file: !2344, line: 209, baseType: !2351, size: 256, offset: 320)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !431)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2343, file: !2344, line: 213, baseType: !905, size: 64, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2343, file: !2344, line: 215, baseType: !1201, size: 256, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !2344, line: 216, baseType: !83, size: 8, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2335, file: !2330, line: 33, baseType: !39, size: 64, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2335, file: !2330, line: 34, baseType: !39, size: 64, offset: 1600)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2335, file: !2330, line: 35, baseType: !987, size: 8, offset: 1664)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2335, file: !2330, line: 36, baseType: !2359, size: 320, offset: 1728)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2360, line: 11, size: 320, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2361 = !{!2362, !2363, !2364, !2369}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2359, file: !2360, line: 16, baseType: !426, size: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2359, file: !2360, line: 17, baseType: !39, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2359, file: !2360, line: 18, baseType: !2365, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2359, file: !2360, line: 19, baseType: !473, size: 32, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2335, file: !2330, line: 37, baseType: !1103, size: 256, offset: 2048)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2335, file: !2330, line: 38, baseType: !347, size: 128, align: 64, offset: 2304)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2335, file: !2330, line: 39, baseType: !2373, size: 64, offset: 2432)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2330, line: 49, size: 768, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2374, file: !2330, line: 50, baseType: !59, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2374, file: !2330, line: 51, baseType: !2351, size: 256, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2374, file: !2330, line: 53, baseType: !2351, size: 256, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2374, file: !2330, line: 54, baseType: !39, size: 64, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2374, file: !2330, line: 55, baseType: !2373, size: 64, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2374, file: !2330, line: 56, baseType: !22, size: 32, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2374, file: !2330, line: 57, baseType: !22, size: 32, offset: 736)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2335, file: !2330, line: 40, baseType: !39, size: 64, offset: 2496)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2335, file: !2330, line: 42, baseType: !22, size: 32, offset: 2560)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2335, file: !2330, line: 43, baseType: !2328, size: 64, offset: 2624)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2329, file: !2330, line: 99, baseType: !2387, offset: 128)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2388, line: 211, elements: !788)
!2388 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2329, file: !2330, line: 100, baseType: !2390, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2330, line: 63, size: 3008, elements: !2392)
!2392 = !{!2393, !2394, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2424}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2391, file: !2330, line: 64, baseType: !2373, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2391, file: !2330, line: 65, baseType: !2395, size: 192, offset: 64)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2373, size: 192, elements: !405)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2391, file: !2330, line: 67, baseType: !22, size: 32, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2391, file: !2330, line: 68, baseType: !368, size: 256, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2391, file: !2330, line: 69, baseType: !59, size: 32, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2391, file: !2330, line: 70, baseType: !368, size: 256, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2391, file: !2330, line: 71, baseType: !39, size: 64, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2391, file: !2330, line: 72, baseType: !39, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2391, file: !2330, line: 73, baseType: !39, size: 64, offset: 1024)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2391, file: !2330, line: 74, baseType: !39, size: 64, offset: 1088)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2391, file: !2330, line: 75, baseType: !39, size: 64, offset: 1152)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2391, file: !2330, line: 76, baseType: !39, size: 64, offset: 1216)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2391, file: !2330, line: 77, baseType: !39, size: 64, offset: 1280)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2391, file: !2330, line: 78, baseType: !39, size: 64, offset: 1344)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2391, file: !2330, line: 79, baseType: !987, size: 8, offset: 1408)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2391, file: !2330, line: 80, baseType: !39, size: 64, offset: 1472)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2391, file: !2330, line: 81, baseType: !368, size: 256, offset: 1536)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2391, file: !2330, line: 82, baseType: !1141, size: 256, offset: 1792)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2391, file: !2330, line: 84, baseType: !49, size: 32, offset: 2048)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2391, file: !2330, line: 87, baseType: !39, size: 64, offset: 2112)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2391, file: !2330, line: 88, baseType: !39, size: 64, offset: 2176)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2391, file: !2330, line: 89, baseType: !2416, size: 704, offset: 2240)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !294, line: 111, size: 704, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2423}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2416, file: !294, line: 112, baseType: !1103, size: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2416, file: !294, line: 113, baseType: !2359, size: 320, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2416, file: !294, line: 116, baseType: !2421, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !294, line: 18, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2416, file: !294, line: 117, baseType: !22, size: 32, offset: 640)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2391, file: !2330, line: 90, baseType: !2328, size: 64, offset: 2944)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1939, file: !148, line: 515, baseType: !2426, size: 64, offset: 8064)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2428, line: 117, size: 128, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2427, file: !2428, line: 118, baseType: !869, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2427, file: !2428, line: 119, baseType: !869, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2427, file: !2428, line: 120, baseType: !905, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1939, file: !148, line: 516, baseType: !7, size: 32, offset: 8128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1939, file: !148, line: 519, baseType: !7, size: 32, offset: 8160)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1939, file: !148, line: 520, baseType: !2436, size: 64, offset: 8192)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1939, file: !148, line: 523, baseType: !2438, size: 64, offset: 8256)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !148, line: 523, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1939, file: !148, line: 524, baseType: !7, size: 32, offset: 8320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1939, file: !148, line: 525, baseType: !2443, size: 64, offset: 8384)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !148, line: 525, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1939, file: !148, line: 526, baseType: !7, size: 32, offset: 8448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1939, file: !148, line: 533, baseType: !20, size: 64, offset: 8512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1939, file: !148, line: 534, baseType: !7, size: 32, offset: 8576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1939, file: !148, line: 535, baseType: !1465, size: 64, offset: 8640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1939, file: !148, line: 536, baseType: !7, size: 32, offset: 8704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1939, file: !148, line: 539, baseType: !22, size: 32, offset: 8736)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1939, file: !148, line: 540, baseType: !2453, size: 64, offset: 8768)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2455, line: 32, size: 64, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2454, file: !2455, line: 33, baseType: !869, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2454, file: !2455, line: 34, baseType: !869, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1939, file: !148, line: 563, baseType: !97, size: 128, offset: 8832)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1939, file: !148, line: 565, baseType: !97, size: 128, offset: 8960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1939, file: !148, line: 568, baseType: !2462, size: 64, offset: 9088)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1939, file: !148, line: 570, baseType: !49, size: 32, offset: 9152)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1915, file: !155, line: 2382, baseType: !1914, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1915, file: !155, line: 2383, baseType: !422, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1915, file: !155, line: 2385, baseType: !2469, offset: 576)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2388, line: 206, elements: !788)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1915, file: !155, line: 2386, baseType: !2469, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1915, file: !155, line: 2387, baseType: !2469, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1915, file: !155, line: 2388, baseType: !2473, offset: 576)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, elements: !405)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1915, file: !155, line: 2390, baseType: !2469, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1915, file: !155, line: 2391, baseType: !2469, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1915, file: !155, line: 2392, baseType: !2469, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1915, file: !155, line: 2393, baseType: !2469, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1904, file: !155, line: 1197, baseType: !2479, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !155, line: 2057, size: 1664, elements: !2482)
!2482 = !{!2483, !2487, !2491, !2492, !2496, !2520, !2524, !2525, !2526, !2530, !2534, !2538, !2539, !2540, !2546, !2550, !2551, !2555, !2556, !2557, !2558, !2562, !2566, !2613, !2628, !2629}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2481, file: !155, line: 2058, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!1775, !1903}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2481, file: !155, line: 2059, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !1775}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2481, file: !155, line: 2060, baseType: !2488, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2481, file: !155, line: 2062, baseType: !2493, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !1775, !22}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2481, file: !155, line: 2063, baseType: !2497, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!22, !1775, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !130, line: 42, size: 384, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2501, file: !130, line: 43, baseType: !905, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2501, file: !130, line: 45, baseType: !905, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2501, file: !130, line: 52, baseType: !41, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2501, file: !130, line: 53, baseType: !41, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2501, file: !130, line: 55, baseType: !129, size: 32, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2501, file: !130, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2501, file: !130, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2501, file: !130, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2501, file: !130, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2501, file: !130, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2501, file: !130, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2501, file: !130, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2501, file: !130, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2501, file: !130, line: 78, baseType: !2517, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !130, line: 78, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2481, file: !155, line: 2064, baseType: !2521, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!22, !1775}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2481, file: !155, line: 2065, baseType: !2488, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2481, file: !155, line: 2066, baseType: !1934, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2481, file: !155, line: 2067, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!22, !1903, !22}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2481, file: !155, line: 2068, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!22, !1903, !154}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2481, file: !155, line: 2069, baseType: !2535, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!22, !1903}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2481, file: !155, line: 2070, baseType: !2531, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2481, file: !155, line: 2071, baseType: !2535, size: 64, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2481, file: !155, line: 2072, baseType: !2541, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!22, !1797, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !155, line: 62, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2481, file: !155, line: 2073, baseType: !2547, size: 64, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!22, !1903, !1318, !1064}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2481, file: !155, line: 2074, baseType: !1934, size: 64, offset: 960)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2481, file: !155, line: 2076, baseType: !2552, size: 64, offset: 1024)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!22, !1585, !1797}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2481, file: !155, line: 2077, baseType: !2552, size: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2481, file: !155, line: 2078, baseType: !2552, size: 64, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2481, file: !155, line: 2079, baseType: !2552, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2481, file: !155, line: 2081, baseType: !2559, size: 64, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!2019, !1903, !22, !1064, !35, !41}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2481, file: !155, line: 2082, baseType: !2563, size: 64, offset: 1344)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2019, !1903, !22, !16, !35, !41}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2481, file: !155, line: 2083, baseType: !2567, size: 64, offset: 1408)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !1775}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !160, line: 296, size: 1664, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2598, !2599, !2600}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2572, file: !160, line: 297, baseType: !426, size: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2572, file: !160, line: 298, baseType: !97, size: 128, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2572, file: !160, line: 299, baseType: !97, size: 128, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2572, file: !160, line: 300, baseType: !97, size: 128, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2572, file: !160, line: 301, baseType: !368, size: 256, offset: 512)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2572, file: !160, line: 302, baseType: !59, size: 32, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2572, file: !160, line: 303, baseType: !49, size: 32, offset: 800)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2572, file: !160, line: 304, baseType: !1903, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2572, file: !160, line: 305, baseType: !2583, size: 64, offset: 896)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !160, line: 68, size: 64, elements: !2584)
!2584 = !{!2585, !2597}
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !160, line: 69, baseType: !2586, size: 32)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !160, line: 69, size: 32, elements: !2587)
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2586, file: !160, line: 70, baseType: !960, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2586, file: !160, line: 71, baseType: !968, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2586, file: !160, line: 72, baseType: !2591, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2592, line: 24, baseType: !2593)
!2592 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2592, line: 22, size: 32, elements: !2594)
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2593, file: !2592, line: 23, baseType: !2596, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2592, line: 20, baseType: !966)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2583, file: !160, line: 74, baseType: !159, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2572, file: !160, line: 306, baseType: !41, size: 64, offset: 960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2572, file: !160, line: 307, baseType: !39, size: 64, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2572, file: !160, line: 308, baseType: !2601, size: 576, offset: 1088)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !160, line: 205, size: 576, elements: !2602)
!2602 = !{!2603, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2601, file: !160, line: 206, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !160, line: 66, baseType: !43)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2601, file: !160, line: 207, baseType: !2604, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2601, file: !160, line: 208, baseType: !2604, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2601, file: !160, line: 209, baseType: !2604, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2601, file: !160, line: 210, baseType: !2604, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2601, file: !160, line: 211, baseType: !2604, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2601, file: !160, line: 212, baseType: !2604, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2601, file: !160, line: 213, baseType: !1013, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2601, file: !160, line: 214, baseType: !1013, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2481, file: !155, line: 2085, baseType: !2614, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!905, !1903, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2619, line: 15, size: 256, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2620 = !{!2621, !2622, !2623, !2624, !2625}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2618, file: !2619, line: 16, baseType: !328, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2618, file: !2619, line: 19, baseType: !22, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2618, file: !2619, line: 26, baseType: !39, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2618, file: !2619, line: 33, baseType: !39, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2618, file: !2619, line: 36, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !114, line: 33, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2481, file: !155, line: 2087, baseType: !2614, size: 64, offset: 1536)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2481, file: !155, line: 2089, baseType: !1934, size: 64, offset: 1600)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1904, file: !155, line: 1198, baseType: !2631, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !160, line: 324, size: 704, elements: !2634)
!2634 = !{!2635, !2639, !2643, !2647, !2648, !2649, !2650, !2651, !2656, !2661, !2665}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2633, file: !160, line: 325, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!22, !2571}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2633, file: !160, line: 326, baseType: !2640, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2571, !1903, !22}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2633, file: !160, line: 327, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2571}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2633, file: !160, line: 328, baseType: !2636, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2633, file: !160, line: 329, baseType: !2636, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2633, file: !160, line: 330, baseType: !2636, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2633, file: !160, line: 331, baseType: !2527, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2633, file: !160, line: 334, baseType: !2652, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!2655, !1775}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2633, file: !160, line: 335, baseType: !2657, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!22, !1775, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2633, file: !160, line: 337, baseType: !2662, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!22, !1775, !2655}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2633, file: !160, line: 339, baseType: !2666, size: 64, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!22, !1903, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1904, file: !155, line: 1199, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !160, line: 430, size: 704, elements: !2674)
!2674 = !{!2675, !2686, !2687, !2691, !2692, !2693, !2708, !2731, !2735, !2736, !2759}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2673, file: !160, line: 431, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!22, !1903, !22, !22, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2682, line: 8, size: 128, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2681, file: !2682, line: 9, baseType: !1897, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2681, file: !2682, line: 10, baseType: !1797, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2673, file: !160, line: 432, baseType: !2527, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2673, file: !160, line: 433, baseType: !2688, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!22, !1903, !7}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2673, file: !160, line: 434, baseType: !2688, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2673, file: !160, line: 435, baseType: !2527, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2673, file: !160, line: 436, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!22, !1903, !22, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !160, line: 417, size: 256, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2698, file: !160, line: 418, baseType: !22, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2698, file: !160, line: 419, baseType: !7, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2698, file: !160, line: 420, baseType: !7, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2698, file: !160, line: 422, baseType: !7, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2698, file: !160, line: 423, baseType: !7, size: 32, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2698, file: !160, line: 424, baseType: !7, size: 32, offset: 160)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2698, file: !160, line: 425, baseType: !7, size: 32, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2698, file: !160, line: 426, baseType: !7, size: 32, offset: 224)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2673, file: !160, line: 437, baseType: !2709, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!22, !1903, !2583, !2712}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !160, line: 345, size: 960, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2713, file: !160, line: 346, baseType: !22, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2713, file: !160, line: 347, baseType: !521, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2713, file: !160, line: 348, baseType: !521, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2713, file: !160, line: 349, baseType: !521, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2713, file: !160, line: 350, baseType: !521, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2713, file: !160, line: 351, baseType: !521, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2713, file: !160, line: 352, baseType: !521, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2713, file: !160, line: 353, baseType: !365, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2713, file: !160, line: 355, baseType: !365, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2713, file: !160, line: 356, baseType: !22, size: 32, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2713, file: !160, line: 357, baseType: !22, size: 32, offset: 608)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2713, file: !160, line: 358, baseType: !521, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2713, file: !160, line: 359, baseType: !521, size: 64, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2713, file: !160, line: 360, baseType: !521, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2713, file: !160, line: 361, baseType: !365, size: 64, offset: 832)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2713, file: !160, line: 362, baseType: !22, size: 32, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2673, file: !160, line: 438, baseType: !2732, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!22, !1903, !2669, !2712}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2673, file: !160, line: 440, baseType: !2709, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2673, file: !160, line: 441, baseType: !2737, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!22, !1903, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !160, line: 411, size: 1408, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2741, file: !160, line: 412, baseType: !7, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2741, file: !160, line: 413, baseType: !2745, size: 1344, offset: 64)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2746, size: 1344, elements: !405)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !160, line: 397, size: 448, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2758}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !160, line: 398, baseType: !7, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2746, file: !160, line: 399, baseType: !7, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2746, file: !160, line: 401, baseType: !7, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2746, file: !160, line: 402, baseType: !7, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2746, file: !160, line: 403, baseType: !7, size: 32, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2746, file: !160, line: 404, baseType: !7, size: 32, offset: 160)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2746, file: !160, line: 405, baseType: !7, size: 32, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2746, file: !160, line: 406, baseType: !523, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2746, file: !160, line: 407, baseType: !2757, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !521)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2746, file: !160, line: 408, baseType: !2757, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2673, file: !160, line: 442, baseType: !2688, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1904, file: !155, line: 1200, baseType: !2761, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2763)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !155, line: 54, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1904, file: !155, line: 1201, baseType: !39, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1904, file: !155, line: 1202, baseType: !39, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1904, file: !155, line: 1203, baseType: !39, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1904, file: !155, line: 1204, baseType: !1797, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1904, file: !155, line: 1205, baseType: !823, size: 320, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1904, file: !155, line: 1206, baseType: !22, size: 32, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1904, file: !155, line: 1207, baseType: !49, size: 32, offset: 1248)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1904, file: !155, line: 1209, baseType: !20, size: 64, offset: 1280)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1904, file: !155, line: 1211, baseType: !2773, size: 64, offset: 1344)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !155, line: 1211, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1904, file: !155, line: 1223, baseType: !2778, size: 64, offset: 1408)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1809, line: 34, size: 64, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2778, file: !1809, line: 35, baseType: !1812, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1904, file: !155, line: 1224, baseType: !97, size: 128, offset: 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1904, file: !155, line: 1225, baseType: !2783, size: 64, offset: 1600)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2785, line: 40, size: 7424, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2786 = !{!2787, !2789, !2790, !2793, !2797, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2824, !2825}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2784, file: !2785, line: 41, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !521)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2784, file: !2785, line: 42, baseType: !2788, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2784, file: !2785, line: 43, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !464, line: 1453, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2784, file: !2785, line: 44, baseType: !2794, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2796, line: 74, flags: DIFlagFwdDecl)
!2796 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2784, file: !2785, line: 45, baseType: !2798, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2785, line: 45, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2784, file: !2785, line: 46, baseType: !39, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2784, file: !2785, line: 47, baseType: !987, size: 8, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2784, file: !2785, line: 48, baseType: !83, size: 8, offset: 392)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2784, file: !2785, line: 49, baseType: !987, size: 8, offset: 400)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2784, file: !2785, line: 50, baseType: !987, size: 8, offset: 408)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2784, file: !2785, line: 51, baseType: !1908, size: 32, offset: 416)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2784, file: !2785, line: 52, baseType: !49, size: 32, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2784, file: !2785, line: 53, baseType: !59, size: 32, offset: 480)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2784, file: !2785, line: 54, baseType: !1775, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2784, file: !2785, line: 55, baseType: !20, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2784, file: !2785, line: 56, baseType: !20, size: 64, offset: 640)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2784, file: !2785, line: 57, baseType: !2812, size: 64, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2814)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2785, line: 57, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2784, file: !2785, line: 58, baseType: !368, size: 256, offset: 768)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2784, file: !2785, line: 60, baseType: !22, size: 32, offset: 1024)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2784, file: !2785, line: 61, baseType: !22, size: 32, offset: 1056)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2784, file: !2785, line: 62, baseType: !1957, size: 64, offset: 1088)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2784, file: !2785, line: 65, baseType: !368, size: 256, offset: 1152)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2784, file: !2785, line: 66, baseType: !1903, size: 64, offset: 1408)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2784, file: !2785, line: 68, baseType: !2822, size: 64, offset: 1472)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2785, line: 68, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2784, file: !2785, line: 72, baseType: !987, size: 8, offset: 1536)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2784, file: !2785, line: 77, baseType: !2826, size: 5824, offset: 1600)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !184, line: 705, size: 5824, elements: !2827)
!2827 = !{!2828, !2829, !2831, !2834, !2835, !2888, !2958, !2959, !2960, !2961, !2962, !2969, !3061, !3074, !3084, !3088, !3090, !3091, !3092, !3096, !3103, !3104, !3107, !3110, !3114, !3218, !3219, !3220, !3221, !3222, !3223, !3253, !3254, !3255, !3258, !3261, !3270, !3271, !3272, !3273, !3274, !3275}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2826, file: !184, line: 706, baseType: !1951, size: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2826, file: !184, line: 707, baseType: !2830, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2826, file: !184, line: 709, baseType: !2832, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !184, line: 37, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2826, file: !184, line: 711, baseType: !16, size: 64, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2826, file: !184, line: 712, baseType: !2836, size: 64, offset: 704)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !184, line: 89, size: 384, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2848, !2853, !2857}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2838, file: !184, line: 90, baseType: !16, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2838, file: !184, line: 91, baseType: !2032, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2838, file: !184, line: 92, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!22, !2846, !1987}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2826)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2838, file: !184, line: 93, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!1064, !2846, !2852, !1166, !1167}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2838, file: !184, line: 95, baseType: !2854, size: 64, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2830}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2838, file: !184, line: 97, baseType: !2858, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !191, line: 286, size: 1472, elements: !2861)
!2861 = !{!2862, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2860, file: !191, line: 287, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!22, !2830}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2860, file: !191, line: 288, baseType: !2854, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2860, file: !191, line: 289, baseType: !2863, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2860, file: !191, line: 290, baseType: !2863, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2860, file: !191, line: 291, baseType: !2863, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2860, file: !191, line: 292, baseType: !2863, size: 64, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2860, file: !191, line: 293, baseType: !2863, size: 64, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2860, file: !191, line: 294, baseType: !2863, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2860, file: !191, line: 295, baseType: !2863, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2860, file: !191, line: 296, baseType: !2863, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2860, file: !191, line: 297, baseType: !2863, size: 64, offset: 640)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2860, file: !191, line: 298, baseType: !2863, size: 64, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2860, file: !191, line: 299, baseType: !2863, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2860, file: !191, line: 300, baseType: !2863, size: 64, offset: 832)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2860, file: !191, line: 301, baseType: !2863, size: 64, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2860, file: !191, line: 302, baseType: !2863, size: 64, offset: 960)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2860, file: !191, line: 303, baseType: !2863, size: 64, offset: 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2860, file: !191, line: 304, baseType: !2863, size: 64, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2860, file: !191, line: 305, baseType: !2863, size: 64, offset: 1152)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2860, file: !191, line: 306, baseType: !2863, size: 64, offset: 1216)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2860, file: !191, line: 307, baseType: !2863, size: 64, offset: 1280)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2860, file: !191, line: 308, baseType: !2863, size: 64, offset: 1344)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2860, file: !191, line: 309, baseType: !2863, size: 64, offset: 1408)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2826, file: !184, line: 714, baseType: !2889, size: 64, offset: 768)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2892, line: 80, size: 1344, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2957}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2891, file: !2892, line: 81, baseType: !16, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2891, file: !2892, line: 82, baseType: !16, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2891, file: !2892, line: 83, baseType: !2032, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2891, file: !2892, line: 84, baseType: !2032, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2891, file: !2892, line: 85, baseType: !2032, size: 64, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2891, file: !2892, line: 87, baseType: !2900, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!22, !2830, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !178, line: 96, size: 1152, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2916, !2920, !2921, !2922, !2923, !2924, !2932, !2933, !2934, !2935, !2936, !2937}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2904, file: !178, line: 97, baseType: !16, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2904, file: !178, line: 98, baseType: !2889, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2904, file: !178, line: 100, baseType: !1938, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2904, file: !178, line: 101, baseType: !16, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2904, file: !178, line: 103, baseType: !987, size: 8, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2904, file: !178, line: 104, baseType: !177, size: 32, offset: 288)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2904, file: !178, line: 106, baseType: !2913, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2915)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !178, line: 106, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2904, file: !178, line: 107, baseType: !2917, size: 64, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2919)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !178, line: 107, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2904, file: !178, line: 109, baseType: !2863, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2904, file: !178, line: 110, baseType: !2854, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2904, file: !178, line: 111, baseType: !2863, size: 64, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2904, file: !178, line: 112, baseType: !2854, size: 64, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2904, file: !178, line: 113, baseType: !2925, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!22, !2830, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !191, line: 60, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !191, line: 58, size: 32, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2929, file: !191, line: 59, baseType: !22, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2904, file: !178, line: 114, baseType: !2863, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2904, file: !178, line: 115, baseType: !2032, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2904, file: !178, line: 116, baseType: !2032, size: 64, offset: 896)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2904, file: !178, line: 118, baseType: !2858, size: 64, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2904, file: !178, line: 119, baseType: !2854, size: 64, offset: 1024)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2904, file: !178, line: 121, baseType: !2938, size: 64, offset: 1088)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !178, line: 121, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2891, file: !2892, line: 88, baseType: !2843, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2891, file: !2892, line: 89, baseType: !2863, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2891, file: !2892, line: 90, baseType: !2854, size: 64, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2891, file: !2892, line: 91, baseType: !2854, size: 64, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2891, file: !2892, line: 92, baseType: !2854, size: 64, offset: 640)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2891, file: !2892, line: 94, baseType: !2863, size: 64, offset: 704)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2891, file: !2892, line: 95, baseType: !2863, size: 64, offset: 768)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2891, file: !2892, line: 97, baseType: !2925, size: 64, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2891, file: !2892, line: 98, baseType: !2863, size: 64, offset: 896)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2891, file: !2892, line: 100, baseType: !2863, size: 64, offset: 960)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2891, file: !2892, line: 102, baseType: !2863, size: 64, offset: 1024)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2891, file: !2892, line: 103, baseType: !2854, size: 64, offset: 1088)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2891, file: !2892, line: 105, baseType: !2858, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2891, file: !2892, line: 107, baseType: !2954, size: 64, offset: 1216)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2892, line: 107, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2891, file: !2892, line: 109, baseType: !987, size: 8, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2826, file: !184, line: 715, baseType: !2903, size: 64, offset: 832)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2826, file: !184, line: 717, baseType: !20, size: 64, offset: 896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2826, file: !184, line: 719, baseType: !20, size: 64, offset: 960)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2826, file: !184, line: 721, baseType: !368, size: 256, offset: 1024)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2826, file: !184, line: 725, baseType: !2963, size: 448, offset: 1280)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !184, line: 517, size: 448, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2963, file: !184, line: 518, baseType: !97, size: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2963, file: !184, line: 519, baseType: !97, size: 128, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2963, file: !184, line: 520, baseType: !97, size: 128, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2963, file: !184, line: 521, baseType: !183, size: 32, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2826, file: !184, line: 726, baseType: !2970, size: 2496, offset: 1728)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !191, line: 663, size: 2496, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3054, !3058}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2970, file: !191, line: 664, baseType: !2928, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2970, file: !191, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2970, file: !191, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2970, file: !191, line: 667, baseType: !987, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2970, file: !191, line: 668, baseType: !987, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2970, file: !191, line: 669, baseType: !987, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2970, file: !191, line: 670, baseType: !987, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2970, file: !191, line: 671, baseType: !987, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2970, file: !191, line: 672, baseType: !987, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2970, file: !191, line: 673, baseType: !987, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2970, file: !191, line: 674, baseType: !987, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2970, file: !191, line: 675, baseType: !473, size: 32, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2970, file: !191, line: 676, baseType: !59, size: 32, offset: 96)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2970, file: !191, line: 678, baseType: !97, size: 128, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2970, file: !191, line: 679, baseType: !1141, size: 256, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2970, file: !191, line: 680, baseType: !2988, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2990, line: 43, size: 1536, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2989, file: !2990, line: 44, baseType: !16, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2989, file: !2990, line: 45, baseType: !22, size: 32, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2989, file: !2990, line: 46, baseType: !97, size: 128, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2989, file: !2990, line: 47, baseType: !59, size: 32, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2989, file: !2990, line: 48, baseType: !2997, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !191, line: 629, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2989, file: !2990, line: 49, baseType: !2359, size: 320, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2989, file: !2990, line: 50, baseType: !39, size: 64, offset: 704)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2989, file: !2990, line: 51, baseType: !594, size: 64, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2989, file: !2990, line: 52, baseType: !594, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2989, file: !2990, line: 53, baseType: !594, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2989, file: !2990, line: 54, baseType: !594, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2989, file: !2990, line: 55, baseType: !594, size: 64, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2989, file: !2990, line: 56, baseType: !39, size: 64, offset: 1088)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2989, file: !2990, line: 57, baseType: !39, size: 64, offset: 1152)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2989, file: !2990, line: 58, baseType: !39, size: 64, offset: 1216)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2989, file: !2990, line: 59, baseType: !39, size: 64, offset: 1280)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2989, file: !2990, line: 60, baseType: !39, size: 64, offset: 1344)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2989, file: !2990, line: 61, baseType: !2830, size: 64, offset: 1408)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2989, file: !2990, line: 62, baseType: !987, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2989, file: !2990, line: 63, baseType: !987, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2970, file: !191, line: 681, baseType: !987, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2970, file: !191, line: 682, baseType: !987, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2970, file: !191, line: 683, baseType: !987, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2970, file: !191, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2970, file: !191, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2970, file: !191, line: 690, baseType: !586, size: 512, offset: 640)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2970, file: !191, line: 691, baseType: !521, size: 64, offset: 1152)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2970, file: !191, line: 692, baseType: !1103, size: 256, offset: 1216)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2970, file: !191, line: 693, baseType: !54, size: 192, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2970, file: !191, line: 694, baseType: !2997, size: 64, offset: 1664)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2970, file: !191, line: 695, baseType: !49, size: 32, offset: 1728)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2970, file: !191, line: 696, baseType: !49, size: 32, offset: 1760)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2970, file: !191, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2970, file: !191, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2970, file: !191, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2970, file: !191, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2970, file: !191, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2970, file: !191, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2970, file: !191, line: 703, baseType: !987, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2970, file: !191, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2970, file: !191, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2970, file: !191, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2970, file: !191, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2970, file: !191, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2970, file: !191, line: 709, baseType: !7, size: 32, offset: 1824)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2970, file: !191, line: 710, baseType: !190, size: 32, offset: 1856)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2970, file: !191, line: 711, baseType: !198, size: 32, offset: 1888)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2970, file: !191, line: 712, baseType: !198, size: 32, offset: 1920)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2970, file: !191, line: 713, baseType: !22, size: 32, offset: 1952)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2970, file: !191, line: 714, baseType: !22, size: 32, offset: 1984)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2970, file: !191, line: 715, baseType: !521, size: 64, offset: 2048)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2970, file: !191, line: 716, baseType: !521, size: 64, offset: 2112)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2970, file: !191, line: 717, baseType: !521, size: 64, offset: 2176)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2970, file: !191, line: 718, baseType: !521, size: 64, offset: 2240)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2970, file: !191, line: 720, baseType: !3049, size: 64, offset: 2304)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !191, line: 632, size: 64, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3050, file: !191, line: 633, baseType: !59, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3050, file: !191, line: 634, baseType: !7, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2970, file: !191, line: 721, baseType: !3055, size: 64, offset: 2368)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2830, !869}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2970, file: !191, line: 722, baseType: !3059, size: 64, offset: 2432)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !191, line: 722, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2826, file: !184, line: 727, baseType: !3062, size: 64, offset: 4224)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !191, line: 742, size: 1792, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3071, !3072, !3073}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3063, file: !191, line: 743, baseType: !2860, size: 1472)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3063, file: !191, line: 744, baseType: !2863, size: 64, offset: 1472)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3063, file: !191, line: 745, baseType: !3068, size: 64, offset: 1536)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !2830, !987}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3063, file: !191, line: 746, baseType: !2863, size: 64, offset: 1600)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3063, file: !191, line: 747, baseType: !2854, size: 64, offset: 1664)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3063, file: !191, line: 748, baseType: !2854, size: 64, offset: 1728)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2826, file: !184, line: 736, baseType: !3075, size: 128, offset: 4288)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !184, line: 529, size: 128, elements: !3076)
!3076 = !{!3077, !3081}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3075, file: !184, line: 531, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3080, line: 13, flags: DIFlagFwdDecl)
!3080 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3075, file: !184, line: 532, baseType: !3082, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !184, line: 49, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2826, file: !184, line: 738, baseType: !3085, size: 64, offset: 4416)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3087)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !184, line: 738, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2826, file: !184, line: 740, baseType: !3089, size: 64, offset: 4480)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2826, file: !184, line: 741, baseType: !521, size: 64, offset: 4544)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2826, file: !184, line: 746, baseType: !521, size: 64, offset: 4608)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2826, file: !184, line: 747, baseType: !3093, size: 64, offset: 4672)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !184, line: 747, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2826, file: !184, line: 749, baseType: !3097, size: 64, offset: 4736)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !184, line: 428, size: 128, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3098, file: !184, line: 433, baseType: !7, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3098, file: !184, line: 434, baseType: !7, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3098, file: !184, line: 435, baseType: !39, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2826, file: !184, line: 751, baseType: !97, size: 128, offset: 4800)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2826, file: !184, line: 762, baseType: !3105, size: 64, offset: 4928)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !184, line: 762, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2826, file: !184, line: 770, baseType: !3108, offset: 4992)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3109, line: 5, elements: !788)
!3109 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2826, file: !184, line: 772, baseType: !3111, size: 64, offset: 4992)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3113, line: 18, flags: DIFlagFwdDecl)
!3113 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2826, file: !184, line: 773, baseType: !3115, size: 64, offset: 5056)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3117, line: 41, size: 512, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3118 = !{!3119, !3120, !3214, !3215, !3216, !3217}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3116, file: !3117, line: 42, baseType: !3115, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3116, file: !3117, line: 43, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3117, line: 125, size: 1408, elements: !3124)
!3124 = !{!3125, !3129, !3133, !3139, !3143, !3144, !3149, !3153, !3157, !3161, !3165, !3166, !3170, !3174, !3178, !3189, !3190, !3191, !3192, !3202, !3206, !3210}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3123, file: !3117, line: 126, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!3115, !3115}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3123, file: !3117, line: 127, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !3115}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3123, file: !3117, line: 128, baseType: !3134, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!987, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3123, file: !3117, line: 129, baseType: !3140, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!902, !3137, !2846}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3123, file: !3117, line: 131, baseType: !3134, size: 64, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3123, file: !3117, line: 133, baseType: !3145, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !3137}
!3148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3117, line: 132, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3123, file: !3117, line: 134, baseType: !3150, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!987, !3137, !16}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3123, file: !3117, line: 136, baseType: !3154, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!22, !3137, !16, !7, !20, !35}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3123, file: !3117, line: 141, baseType: !3158, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!22, !3137, !16, !2436, !35}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3123, file: !3117, line: 144, baseType: !3162, size: 64, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!16, !3137}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3123, file: !3117, line: 145, baseType: !3162, size: 64, offset: 640)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3123, file: !3117, line: 146, baseType: !3167, size: 64, offset: 704)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!3115, !3137}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3123, file: !3117, line: 148, baseType: !3171, size: 64, offset: 768)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!3115, !3137, !3115}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3123, file: !3117, line: 151, baseType: !3175, size: 64, offset: 832)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!3115, !3137, !16}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3123, file: !3117, line: 153, baseType: !3179, size: 64, offset: 896)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!22, !3137, !16, !16, !7, !7, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3117, line: 94, size: 640, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3183, file: !3117, line: 95, baseType: !3115, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3183, file: !3117, line: 96, baseType: !7, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3183, file: !3117, line: 97, baseType: !3188, size: 512, offset: 128)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 512, elements: !629)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3123, file: !3117, line: 158, baseType: !3171, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3123, file: !3117, line: 161, baseType: !3167, size: 64, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3123, file: !3117, line: 163, baseType: !3126, size: 64, offset: 1088)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3123, file: !3117, line: 164, baseType: !3193, size: 64, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!22, !3137, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3117, line: 73, size: 128, elements: !3198)
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3197, file: !3117, line: 74, baseType: !7, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3197, file: !3117, line: 75, baseType: !7, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3197, file: !3117, line: 76, baseType: !3137, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3123, file: !3117, line: 166, baseType: !3203, size: 64, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!20, !3115, !22}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3123, file: !3117, line: 167, baseType: !3207, size: 64, offset: 1280)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!22, !3137, !7}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3123, file: !3117, line: 168, baseType: !3211, size: 64, offset: 1344)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!22, !3115}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3116, file: !3117, line: 44, baseType: !2830, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3116, file: !3117, line: 45, baseType: !97, size: 128, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3116, file: !3117, line: 46, baseType: !97, size: 128, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3116, file: !3117, line: 47, baseType: !83, size: 8, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2826, file: !184, line: 776, baseType: !22, size: 32, offset: 5120)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2826, file: !184, line: 778, baseType: !1908, size: 32, offset: 5152)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2826, file: !184, line: 779, baseType: !473, size: 32, offset: 5184)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2826, file: !184, line: 781, baseType: !59, size: 32, offset: 5216)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2826, file: !184, line: 782, baseType: !97, size: 128, offset: 5248)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2826, file: !184, line: 784, baseType: !3224, size: 64, offset: 5376)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3226)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3227, line: 52, size: 768, elements: !3228)
!3227 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3237, !3241, !3242, !3243, !3244, !3248, !3252}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3226, file: !3227, line: 53, baseType: !16, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3226, file: !3227, line: 55, baseType: !2032, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3226, file: !3227, line: 56, baseType: !2032, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3226, file: !3227, line: 58, baseType: !2843, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3226, file: !3227, line: 59, baseType: !3234, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!1064, !2846, !2852}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3226, file: !3227, line: 61, baseType: !3238, size: 64, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3224}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3226, file: !3227, line: 62, baseType: !2854, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3226, file: !3227, line: 64, baseType: !2863, size: 64, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3226, file: !3227, line: 66, baseType: !2073, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3226, file: !3227, line: 67, baseType: !3245, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!902, !2846}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3226, file: !3227, line: 69, baseType: !3249, size: 64, offset: 640)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !2846, !1166, !1167}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3226, file: !3227, line: 71, baseType: !2858, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2826, file: !184, line: 785, baseType: !2032, size: 64, offset: 5440)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2826, file: !184, line: 787, baseType: !2854, size: 64, offset: 5504)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2826, file: !184, line: 788, baseType: !3256, size: 64, offset: 5568)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !184, line: 46, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2826, file: !184, line: 789, baseType: !3259, size: 64, offset: 5632)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !184, line: 48, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2826, file: !184, line: 791, baseType: !3262, size: 64, offset: 5696)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !184, line: 597, size: 128, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3263, file: !184, line: 598, baseType: !205, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3263, file: !184, line: 599, baseType: !214, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3263, file: !184, line: 600, baseType: !219, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3263, file: !184, line: 601, baseType: !987, size: 8, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3263, file: !184, line: 602, baseType: !987, size: 8, offset: 104)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2826, file: !184, line: 793, baseType: !224, size: 32, offset: 5760)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2826, file: !184, line: 795, baseType: !987, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2826, file: !184, line: 796, baseType: !987, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2826, file: !184, line: 797, baseType: !987, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2826, file: !184, line: 798, baseType: !987, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2826, file: !184, line: 799, baseType: !987, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1904, file: !155, line: 1226, baseType: !3277, size: 64, offset: 1664)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !155, line: 1226, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1904, file: !155, line: 1227, baseType: !3280, size: 64, offset: 1728)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !166, line: 163, size: 6848, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3329, !3330, !3331, !3332, !3334, !3335, !3336}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3281, file: !166, line: 164, baseType: !521, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3281, file: !166, line: 165, baseType: !513, size: 192, align: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3281, file: !166, line: 166, baseType: !97, size: 128, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3281, file: !166, line: 167, baseType: !39, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3281, file: !166, line: 168, baseType: !39, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3281, file: !166, line: 170, baseType: !2110, size: 32, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3281, file: !166, line: 171, baseType: !7, size: 32, offset: 544)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3281, file: !166, line: 172, baseType: !7, size: 32, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3281, file: !166, line: 173, baseType: !7, size: 32, offset: 608)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3281, file: !166, line: 173, baseType: !7, size: 32, offset: 640)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3281, file: !166, line: 179, baseType: !359, size: 64, offset: 704)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3281, file: !166, line: 184, baseType: !39, size: 64, offset: 768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3281, file: !166, line: 186, baseType: !3296, size: 4672, offset: 832)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !166, line: 105, size: 4672, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3296, file: !166, line: 106, baseType: !3280, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3296, file: !166, line: 108, baseType: !39, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3296, file: !166, line: 109, baseType: !39, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3296, file: !166, line: 111, baseType: !97, size: 128, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3296, file: !166, line: 112, baseType: !97, size: 128, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3296, file: !166, line: 113, baseType: !97, size: 128, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3296, file: !166, line: 114, baseType: !97, size: 128, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3296, file: !166, line: 115, baseType: !59, size: 32, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3296, file: !166, line: 117, baseType: !49, size: 32, offset: 736)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3296, file: !166, line: 118, baseType: !860, size: 1280, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3296, file: !166, line: 120, baseType: !39, size: 64, offset: 2048)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3296, file: !166, line: 121, baseType: !39, size: 64, offset: 2112)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3296, file: !166, line: 122, baseType: !39, size: 64, offset: 2176)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3296, file: !166, line: 123, baseType: !39, size: 64, offset: 2240)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3296, file: !166, line: 124, baseType: !39, size: 64, offset: 2304)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3296, file: !166, line: 132, baseType: !39, size: 64, offset: 2368)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3296, file: !166, line: 133, baseType: !39, size: 64, offset: 2432)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3296, file: !166, line: 135, baseType: !3316, size: 384, offset: 2496)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3317, line: 76, size: 384, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3316, file: !3317, line: 78, baseType: !861, size: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3316, file: !3317, line: 80, baseType: !7, size: 32, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !3317, line: 81, baseType: !373, size: 32, offset: 352)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3296, file: !166, line: 136, baseType: !22, size: 32, offset: 2880)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3296, file: !166, line: 137, baseType: !165, size: 32, offset: 2912)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3296, file: !166, line: 139, baseType: !59, size: 32, offset: 2944)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3296, file: !166, line: 140, baseType: !97, size: 128, offset: 3008)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3296, file: !166, line: 141, baseType: !2416, size: 704, offset: 3136)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3296, file: !166, line: 142, baseType: !2416, size: 704, offset: 3840)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3296, file: !166, line: 144, baseType: !97, size: 128, offset: 4544)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3281, file: !166, line: 187, baseType: !97, size: 128, offset: 5504)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3281, file: !166, line: 193, baseType: !54, size: 192, offset: 5632)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3281, file: !166, line: 195, baseType: !2830, size: 64, offset: 5824)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3281, file: !166, line: 196, baseType: !3333, size: 512, offset: 5888)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1477)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3281, file: !166, line: 197, baseType: !2830, size: 64, offset: 6400)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3281, file: !166, line: 199, baseType: !2359, size: 320, offset: 6464)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3281, file: !166, line: 202, baseType: !1797, size: 64, offset: 6784)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1904, file: !155, line: 1228, baseType: !3338, size: 64, offset: 1792)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !155, line: 1228, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1904, file: !155, line: 1229, baseType: !426, size: 128, offset: 1856)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1904, file: !155, line: 1230, baseType: !7, size: 32, offset: 1984)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1904, file: !155, line: 1231, baseType: !3343, size: 2496, offset: 2048)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !160, line: 521, size: 2496, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3349, !3381}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3343, file: !160, line: 522, baseType: !7, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3343, file: !160, line: 523, baseType: !823, size: 320, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3343, file: !160, line: 524, baseType: !3348, size: 192, offset: 384)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 192, elements: !405)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3343, file: !160, line: 525, baseType: !3350, size: 1728, offset: 576)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 1728, elements: !405)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !160, line: 222, size: 576, elements: !3352)
!3352 = !{!3353, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3351, file: !160, line: 223, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !160, line: 445, size: 256, elements: !3356)
!3356 = !{!3357, !3358, !3371, !3372}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3355, file: !160, line: 446, baseType: !22, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3355, file: !160, line: 447, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3361)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !160, line: 312, size: 512, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3361, file: !160, line: 313, baseType: !2527, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3361, file: !160, line: 314, baseType: !2527, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3361, file: !160, line: 315, baseType: !2527, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3361, file: !160, line: 316, baseType: !2527, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3361, file: !160, line: 317, baseType: !2636, size: 64, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3361, file: !160, line: 318, baseType: !2636, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3361, file: !160, line: 319, baseType: !2636, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3361, file: !160, line: 320, baseType: !2666, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3355, file: !160, line: 448, baseType: !1938, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3355, file: !160, line: 449, baseType: !3354, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3351, file: !160, line: 224, baseType: !22, size: 32, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3351, file: !160, line: 226, baseType: !97, size: 128, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3351, file: !160, line: 227, baseType: !39, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3351, file: !160, line: 228, baseType: !7, size: 32, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3351, file: !160, line: 229, baseType: !7, size: 32, offset: 352)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3351, file: !160, line: 230, baseType: !2604, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3351, file: !160, line: 231, baseType: !2604, size: 64, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3351, file: !160, line: 232, baseType: !20, size: 64, offset: 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3343, file: !160, line: 526, baseType: !3382, size: 192, offset: 2304)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3359, size: 192, elements: !405)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1904, file: !155, line: 1233, baseType: !3384, size: 2368, offset: 4544)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !155, line: 1184, size: 2368, elements: !3385)
!3385 = !{!3386, !3387, !3388}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3384, file: !155, line: 1185, baseType: !26, size: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3384, file: !155, line: 1186, baseType: !26, size: 16, offset: 16)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3384, file: !155, line: 1187, baseType: !3389, size: 2304, offset: 64)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3390, size: 2304, elements: !405)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3391, line: 12, size: 768, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3392 = !{!3393, !3401, !3402, !3407, !3408}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3390, file: !3391, line: 13, baseType: !3394, size: 384)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3395, line: 17, size: 384, elements: !3396)
!3395 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3394, file: !3395, line: 18, baseType: !22, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3394, file: !3395, line: 19, baseType: !22, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3394, file: !3395, line: 20, baseType: !54, size: 192, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3394, file: !3395, line: 22, baseType: !347, size: 128, align: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3390, file: !3391, line: 14, baseType: !2213, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3390, file: !3391, line: 15, baseType: !3403, size: 64, offset: 448)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3404, line: 16, size: 64, elements: !3405)
!3404 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3405 = !{!3406}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3403, file: !3404, line: 17, baseType: !462, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3390, file: !3391, line: 16, baseType: !54, size: 192, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3390, file: !3391, line: 17, baseType: !49, size: 32, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1904, file: !155, line: 1240, baseType: !20, size: 64, offset: 6912)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1904, file: !155, line: 1243, baseType: !473, size: 32, offset: 6976)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1904, file: !155, line: 1245, baseType: !1013, size: 64, offset: 7040)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1904, file: !155, line: 1246, baseType: !1013, size: 64, offset: 7104)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1904, file: !155, line: 1248, baseType: !474, size: 32, offset: 7168)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1904, file: !155, line: 1249, baseType: !3415, size: 64, offset: 7232)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !320, line: 472, size: 256, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3427, !3434}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3416, file: !320, line: 473, baseType: !59, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3416, file: !320, line: 474, baseType: !26, size: 16, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3416, file: !320, line: 477, baseType: !26, size: 16, offset: 48)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !3416, file: !320, line: 478, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !37, line: 81, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 79, size: 64, elements: !3424)
!3424 = !{!3425}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3423, file: !37, line: 80, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !2251)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3416, file: !320, line: 479, baseType: !3428, size: 64, offset: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3416, file: !320, line: 479, size: 64, elements: !3429)
!3429 = !{!3430, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3428, file: !320, line: 481, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !320, line: 464, baseType: !3415)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !3428, file: !320, line: 483, baseType: !3415, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3416, file: !320, line: 485, baseType: !422, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1904, file: !155, line: 1252, baseType: !3436, size: 256, offset: 7296)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !1834)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1904, file: !155, line: 1253, baseType: !3438, size: 128, offset: 7552)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3439, line: 21, baseType: !3440)
!3439 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3439, line: 19, size: 128, elements: !3441)
!3441 = !{!3442}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3440, file: !3439, line: 20, baseType: !3443, size: 128)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !1429)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1904, file: !155, line: 1255, baseType: !7, size: 32, offset: 7680)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1904, file: !155, line: 1261, baseType: !368, size: 256, offset: 7744)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1904, file: !155, line: 1267, baseType: !16, size: 64, offset: 8000)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1904, file: !155, line: 1269, baseType: !1850, size: 64, offset: 8064)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1904, file: !155, line: 1271, baseType: !3449, size: 448, offset: 8128)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2619, line: 63, size: 448, elements: !3450)
!3450 = !{!3451, !3456, !3457, !3458, !3459, !3460, !3461}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3449, file: !2619, line: 64, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!39, !3455, !2617}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3449, file: !2619, line: 66, baseType: !3452, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3449, file: !2619, line: 69, baseType: !905, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3449, file: !2619, line: 70, baseType: !22, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3449, file: !2619, line: 71, baseType: !7, size: 32, offset: 224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3449, file: !2619, line: 74, baseType: !97, size: 128, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3449, file: !2619, line: 85, baseType: !3462, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1904, file: !155, line: 1274, baseType: !359, size: 64, offset: 8576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1904, file: !155, line: 1280, baseType: !359, size: 64, offset: 8640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1904, file: !155, line: 1283, baseType: !22, size: 32, offset: 8704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1904, file: !155, line: 1286, baseType: !3467, size: 32, offset: 8736)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3468, line: 8, baseType: !473)
!3468 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1904, file: !155, line: 1289, baseType: !2421, size: 64, offset: 8768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1904, file: !155, line: 1290, baseType: !422, size: 64, offset: 8832)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1904, file: !155, line: 1297, baseType: !929, size: 64, offset: 8896)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1904, file: !155, line: 1304, baseType: !3473, size: 64, offset: 8960)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3474, line: 49, size: 64, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3475 = !{!3476}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3473, file: !3474, line: 50, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3474, line: 41, size: 512, align: 512, elements: !3479)
!3479 = !{!3480, !3481, !3486}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3478, file: !3474, line: 43, baseType: !59, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3478, file: !3474, line: 45, baseType: !3482, size: 192, offset: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3474, line: 29, size: 192, elements: !3483)
!3483 = !{!3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3482, file: !3474, line: 30, baseType: !97, size: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3482, file: !3474, line: 32, baseType: !905, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3478, file: !3474, line: 46, baseType: !905, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1904, file: !155, line: 1305, baseType: !3473, size: 64, offset: 9024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1904, file: !155, line: 1306, baseType: !347, size: 128, align: 64, offset: 9088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1904, file: !155, line: 1307, baseType: !1103, size: 256, offset: 9216)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1904, file: !155, line: 1309, baseType: !368, size: 256, offset: 9472)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1904, file: !155, line: 1314, baseType: !22, size: 32, offset: 9728)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1904, file: !155, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1904, file: !155, line: 1318, baseType: !97, size: 128, offset: 10304)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1904, file: !155, line: 1320, baseType: !59, size: 32, offset: 10432)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1904, file: !155, line: 1321, baseType: !97, size: 128, offset: 10496)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1898, file: !1899, line: 73, baseType: !22, size: 32, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1898, file: !1899, line: 74, baseType: !3498, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1372, line: 42, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1852, file: !1799, line: 141, baseType: !3502, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!22, !2679, !987}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1852, file: !1799, line: 142, baseType: !3506, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!1797, !1797, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1798, file: !1799, line: 96, baseType: !1903, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1798, file: !1799, line: 97, baseType: !39, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1798, file: !1799, line: 98, baseType: !20, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !1799, line: 100, baseType: !3515, size: 128, offset: 1024)
!3515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !1799, line: 100, size: 128, elements: !3516)
!3516 = !{!3517, !3518}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3515, file: !1799, line: 101, baseType: !97, size: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3515, file: !1799, line: 102, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1798, file: !1799, line: 104, baseType: !97, size: 128, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1798, file: !1799, line: 105, baseType: !97, size: 128, offset: 1280)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1798, file: !1799, line: 113, baseType: !3523, size: 128, offset: 1408)
!3523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !1799, line: 109, size: 128, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3523, file: !1799, line: 110, baseType: !426, size: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3523, file: !1799, line: 111, baseType: !1808, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3523, file: !1799, line: 112, baseType: !347, size: 128, align: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1791, file: !155, line: 1968, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!16, !1797, !1775, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3534, line: 10, size: 128, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3533, file: !3534, line: 11, baseType: !2097, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3533, file: !3534, line: 12, baseType: !20, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1791, file: !155, line: 1969, baseType: !3539, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!22, !3498, !1775, !22}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1791, file: !155, line: 1970, baseType: !3543, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!1785, !1775, !22, !987}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1791, file: !155, line: 1972, baseType: !3547, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!22, !1797, !1064, !22}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1791, file: !155, line: 1974, baseType: !3551, size: 64, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!22, !3498, !1775, !1797, !24, !987}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1791, file: !155, line: 1976, baseType: !3555, size: 64, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!22, !1797, !1775, !1797}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1791, file: !155, line: 1977, baseType: !3559, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!22, !1775, !1797}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1791, file: !155, line: 1978, baseType: !3563, size: 64, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!22, !3498, !1775, !1797, !16}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1791, file: !155, line: 1980, baseType: !3567, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!22, !3498, !1775, !1797, !24}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1791, file: !155, line: 1982, baseType: !3559, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1791, file: !155, line: 1983, baseType: !3572, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!22, !3498, !1775, !1797, !24, !1908}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1791, file: !155, line: 1985, baseType: !3576, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!22, !3498, !1775, !1797, !1775, !1797, !7}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1791, file: !155, line: 1987, baseType: !3580, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!22, !3498, !1797, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !155, line: 226, size: 640, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3598, !3607, !3608, !3613, !3614, !3615}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3584, file: !155, line: 227, baseType: !7, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3584, file: !155, line: 228, baseType: !24, size: 16, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !155, line: 241, baseType: !3589, size: 32, offset: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !155, line: 241, size: 32, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3589, file: !155, line: 242, baseType: !960, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3589, file: !155, line: 243, baseType: !3593, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3594, line: 16, baseType: !3595)
!3594 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3594, line: 14, size: 32, elements: !3596)
!3596 = !{!3597}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3595, file: !3594, line: 15, baseType: !965, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !155, line: 245, baseType: !3599, size: 32, offset: 96)
!3599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !155, line: 245, size: 32, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3599, file: !155, line: 246, baseType: !968, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3599, file: !155, line: 247, baseType: !3603, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3594, line: 20, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3594, line: 18, size: 32, elements: !3605)
!3605 = !{!3606}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3604, file: !3594, line: 19, baseType: !972, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3584, file: !155, line: 249, baseType: !41, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3584, file: !155, line: 250, baseType: !3609, size: 128, offset: 192)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1014, line: 13, size: 128, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3609, file: !1014, line: 14, baseType: !1013, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3609, file: !1014, line: 15, baseType: !905, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3584, file: !155, line: 251, baseType: !3609, size: 128, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3584, file: !155, line: 252, baseType: !3609, size: 128, offset: 448)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3584, file: !155, line: 259, baseType: !795, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1791, file: !155, line: 1988, baseType: !3617, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!22, !3498, !2679, !3620, !473, !7}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3622, line: 22, size: 1280, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3623 = !{!3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3621, file: !3622, line: 23, baseType: !473, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3621, file: !3622, line: 24, baseType: !24, size: 16, offset: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3621, file: !3622, line: 25, baseType: !7, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3621, file: !3622, line: 26, baseType: !1021, size: 32, offset: 96)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3621, file: !3622, line: 27, baseType: !521, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3621, file: !3622, line: 28, baseType: !521, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3621, file: !3622, line: 41, baseType: !521, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3621, file: !3622, line: 42, baseType: !1908, size: 32, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3621, file: !3622, line: 43, baseType: !1908, size: 32, offset: 352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3621, file: !3622, line: 44, baseType: !960, size: 32, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3621, file: !3622, line: 45, baseType: !968, size: 32, offset: 416)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3621, file: !3622, line: 46, baseType: !41, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3621, file: !3622, line: 47, baseType: !3609, size: 128, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3621, file: !3622, line: 48, baseType: !3609, size: 128, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3621, file: !3622, line: 49, baseType: !3609, size: 128, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3621, file: !3622, line: 50, baseType: !3609, size: 128, offset: 896)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3621, file: !3622, line: 51, baseType: !521, size: 64, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3621, file: !3622, line: 52, baseType: !521, size: 64, offset: 1088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3621, file: !3622, line: 53, baseType: !473, size: 32, offset: 1152)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3621, file: !3622, line: 54, baseType: !473, size: 32, offset: 1184)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3621, file: !3622, line: 55, baseType: !521, size: 64, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1791, file: !155, line: 1990, baseType: !3646, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!2019, !1797, !1064, !35}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1791, file: !155, line: 1991, baseType: !3650, size: 64, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!22, !1775, !3653, !521, !521}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !155, line: 55, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1791, file: !155, line: 1993, baseType: !3656, size: 64, offset: 1088)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!22, !1775, !22}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1791, file: !155, line: 1994, baseType: !3660, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!22, !1775, !1797, !795, !7, !24}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1791, file: !155, line: 1997, baseType: !3664, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!22, !3498, !1775, !795, !24}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1791, file: !155, line: 1999, baseType: !3668, size: 64, offset: 1280)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!1785, !3498, !1797, !22}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1791, file: !155, line: 2001, baseType: !3672, size: 64, offset: 1344)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!22, !3498, !1797, !1785, !22}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1791, file: !155, line: 2003, baseType: !3676, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!22, !3498, !1797, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !155, line: 76, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1791, file: !155, line: 2005, baseType: !3682, size: 64, offset: 1472)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!22, !1797, !3679}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1791, file: !155, line: 2006, baseType: !3686, size: 64, offset: 1536)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3689, !1775}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !155, line: 3192, size: 192, elements: !3691)
!3691 = !{!3692, !3693}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3690, file: !155, line: 3193, baseType: !451, size: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3690, file: !155, line: 3194, baseType: !473, size: 32, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1776, file: !155, line: 655, baseType: !1903, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1776, file: !155, line: 656, baseType: !1771, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1776, file: !155, line: 659, baseType: !20, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1776, file: !155, line: 663, baseType: !39, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !155, line: 671, baseType: !3699, size: 32, offset: 704)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !155, line: 671, size: 32, elements: !3700)
!3700 = !{!3701, !3703}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3699, file: !155, line: 672, baseType: !3702, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3699, file: !155, line: 673, baseType: !7, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1776, file: !155, line: 675, baseType: !1908, size: 32, offset: 736)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1776, file: !155, line: 676, baseType: !41, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1776, file: !155, line: 677, baseType: !3609, size: 128, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1776, file: !155, line: 678, baseType: !3609, size: 128, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1776, file: !155, line: 679, baseType: !3609, size: 128, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1776, file: !155, line: 680, baseType: !59, size: 32, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1776, file: !155, line: 681, baseType: !26, size: 16, offset: 1248)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1776, file: !155, line: 682, baseType: !83, size: 8, offset: 1264)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1776, file: !155, line: 683, baseType: !83, size: 8, offset: 1272)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1776, file: !155, line: 684, baseType: !2757, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1776, file: !155, line: 691, baseType: !39, size: 64, offset: 1344)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1776, file: !155, line: 692, baseType: !823, size: 320, offset: 1408)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1776, file: !155, line: 694, baseType: !39, size: 64, offset: 1728)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1776, file: !155, line: 695, baseType: !39, size: 64, offset: 1792)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1776, file: !155, line: 697, baseType: !426, size: 128, offset: 1856)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1776, file: !155, line: 698, baseType: !97, size: 128, offset: 1984)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1776, file: !155, line: 707, baseType: !97, size: 128, offset: 2112)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1776, file: !155, line: 708, baseType: !97, size: 128, offset: 2240)
!3722 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !155, line: 709, baseType: !3723, size: 128, offset: 2368)
!3723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !155, line: 709, size: 128, elements: !3724)
!3724 = !{!3725, !3726}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3723, file: !155, line: 710, baseType: !422, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3723, file: !155, line: 711, baseType: !347, size: 128, align: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1776, file: !155, line: 713, baseType: !361, size: 64, offset: 2496)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1776, file: !155, line: 714, baseType: !361, size: 64, offset: 2560)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1776, file: !155, line: 715, baseType: !49, size: 32, offset: 2624)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1776, file: !155, line: 716, baseType: !49, size: 32, offset: 2656)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1776, file: !155, line: 717, baseType: !49, size: 32, offset: 2688)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1776, file: !155, line: 719, baseType: !49, size: 32, offset: 2720)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !155, line: 721, baseType: !3734, size: 64, offset: 2752)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !155, line: 721, size: 64, elements: !3735)
!3735 = !{!3736, !4138}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3734, file: !155, line: 722, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !155, line: 1914, size: 2112, elements: !3740)
!3740 = !{!3741, !3742, !3746, !3750, !3754, !3920, !3921, !3927, !3940, !3948, !3952, !3953, !3957, !3958, !3962, !3967, !3968, !3972, !3976, !4086, !4087, !4091, !4092, !4098, !4102, !4106, !4111, !4115, !4119, !4123, !4127, !4128, !4134}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3739, file: !155, line: 1915, baseType: !1938, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3739, file: !155, line: 1916, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!41, !795, !41, !22}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3739, file: !155, line: 1917, baseType: !3747, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!2019, !795, !1064, !35, !40}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3739, file: !155, line: 1918, baseType: !3751, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!2019, !795, !16, !35, !40}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3739, file: !155, line: 1919, baseType: !3755, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!2019, !3758, !3863}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !155, line: 373, size: 384, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3767, !3768, !3769, !3770}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3759, file: !155, line: 374, baseType: !795, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3759, file: !155, line: 375, baseType: !41, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3759, file: !155, line: 376, baseType: !3764, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3758, !905}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3759, file: !155, line: 377, baseType: !20, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3759, file: !155, line: 378, baseType: !22, size: 32, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3759, file: !155, line: 379, baseType: !93, size: 16, offset: 288)
!3770 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !155, line: 380, baseType: !3771, size: 64, offset: 320)
!3771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !155, line: 380, size: 64, elements: !3772)
!3772 = !{!3773, !3859}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3771, file: !155, line: 386, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3776, line: 998, size: 448, elements: !3777)
!3776 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3777 = !{!3778, !3845, !3846}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3775, file: !3776, line: 999, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !114, line: 293, size: 1536, elements: !3781)
!3781 = !{!3782, !3812, !3826}
!3782 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !114, line: 295, baseType: !3783, size: 512)
!3783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3780, file: !114, line: 295, size: 512, elements: !3784)
!3784 = !{!3785, !3811}
!3785 = !DIDerivedType(tag: DW_TAG_member, scope: !3783, file: !114, line: 296, baseType: !3786, size: 448)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3783, file: !114, line: 296, size: 448, elements: !3787)
!3787 = !{!3788, !3789, !3798, !3799, !3800, !3809, !3810}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3786, file: !114, line: 298, baseType: !39, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, scope: !3786, file: !114, line: 299, baseType: !3790, size: 128, offset: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3786, file: !114, line: 299, size: 128, elements: !3791)
!3791 = !{!3792, !3793}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3790, file: !114, line: 300, baseType: !97, size: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3790, file: !114, line: 302, baseType: !3794, size: 128)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3790, file: !114, line: 302, size: 128, elements: !3795)
!3795 = !{!3796, !3797}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3794, file: !114, line: 303, baseType: !20, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3794, file: !114, line: 305, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3786, file: !114, line: 310, baseType: !1771, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3786, file: !114, line: 311, baseType: !39, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !3786, file: !114, line: 312, baseType: !3801, size: 64, offset: 320)
!3801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3786, file: !114, line: 312, size: 64, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3801, file: !114, line: 313, baseType: !20, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3801, file: !114, line: 314, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !114, line: 257, baseType: !3806)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 255, size: 64, elements: !3807)
!3807 = !{!3808}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3806, file: !114, line: 256, baseType: !39, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3786, file: !114, line: 316, baseType: !49, size: 32, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3786, file: !114, line: 317, baseType: !49, size: 32, offset: 416)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3783, file: !114, line: 323, baseType: !1750, size: 512, align: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !114, line: 325, baseType: !3813, size: 512, offset: 512)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3780, file: !114, line: 325, size: 512, elements: !3814)
!3814 = !{!3815, !3825}
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !114, line: 326, baseType: !3816, size: 320)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !114, line: 326, size: 320, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3816, file: !114, line: 327, baseType: !39, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3816, file: !114, line: 328, baseType: !39, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3816, file: !114, line: 329, baseType: !39, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3816, file: !114, line: 331, baseType: !49, size: 32, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3816, file: !114, line: 332, baseType: !49, size: 32, offset: 224)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3816, file: !114, line: 333, baseType: !49, size: 32, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3816, file: !114, line: 335, baseType: !7, size: 32, offset: 288)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3813, file: !114, line: 339, baseType: !1750, size: 512, align: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !114, line: 341, baseType: !3827, size: 512, offset: 1024)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3780, file: !114, line: 341, size: 512, elements: !3828)
!3828 = !{!3829, !3838, !3844}
!3829 = !DIDerivedType(tag: DW_TAG_member, scope: !3827, file: !114, line: 342, baseType: !3830, size: 384)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3827, file: !114, line: 342, size: 384, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3830, file: !114, line: 343, baseType: !39, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3830, file: !114, line: 344, baseType: !39, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3830, file: !114, line: 346, baseType: !20, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3830, file: !114, line: 347, baseType: !20, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3830, file: !114, line: 348, baseType: !20, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3830, file: !114, line: 349, baseType: !20, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3827, file: !114, line: 352, baseType: !3839, size: 256)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3827, file: !114, line: 352, size: 256, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3839, file: !114, line: 353, baseType: !39, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3839, file: !114, line: 354, baseType: !39, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3839, file: !114, line: 356, baseType: !97, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3827, file: !114, line: 359, baseType: !1750, size: 512, align: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3775, file: !3776, line: 1000, baseType: !22, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3775, file: !3776, line: 1001, baseType: !3847, size: 320, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !55, line: 14, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !55, line: 30, size: 320, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3858}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3848, file: !55, line: 31, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3848, file: !55, line: 32, baseType: !20, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3848, file: !55, line: 33, baseType: !3853, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !55, line: 16, baseType: !3854)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!22, !3857, !7, !22, !20}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3848, file: !55, line: 34, baseType: !97, size: 128, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3771, file: !155, line: 395, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!2019, !20}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3865, line: 41, size: 320, elements: !3866)
!3865 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3877, !3915}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3864, file: !3865, line: 42, baseType: !83, size: 8)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !3864, file: !3865, line: 43, baseType: !987, size: 8, offset: 8)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !3864, file: !3865, line: 44, baseType: !987, size: 8, offset: 16)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !3864, file: !3865, line: 45, baseType: !987, size: 8, offset: 24)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !3864, file: !3865, line: 46, baseType: !987, size: 8, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !3864, file: !3865, line: 47, baseType: !3873, size: 64, offset: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3864, file: !3865, line: 47, size: 64, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !3873, file: !3865, line: 48, baseType: !35, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !3873, file: !3865, line: 49, baseType: !22, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3864, file: !3865, line: 61, baseType: !3878, size: 128, offset: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3864, file: !3865, line: 61, size: 128, elements: !3879)
!3879 = !{!3880, !3886}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !3878, file: !3865, line: 67, baseType: !3881, size: 128)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !3882, line: 17, size: 128, elements: !3883)
!3882 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3881, file: !3882, line: 19, baseType: !20, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3881, file: !3882, line: 20, baseType: !36, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !3865, line: 68, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !3865, line: 68, size: 128, elements: !3888)
!3888 = !{!3889, !3914}
!3889 = !DIDerivedType(tag: DW_TAG_member, scope: !3887, file: !3865, line: 69, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !3865, line: 69, size: 64, elements: !3891)
!3891 = !{!3892, !3895, !3902, !3911, !3913}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !3890, file: !3865, line: 71, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !3890, file: !3865, line: 72, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !3865, line: 17, size: 128, elements: !3899)
!3899 = !{!3900, !3901}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3898, file: !3865, line: 18, baseType: !20, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3898, file: !3865, line: 19, baseType: !35, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !3890, file: !3865, line: 73, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !3906, line: 31, size: 128, elements: !3907)
!3906 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !3905, file: !3906, line: 32, baseType: !1749, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !3905, file: !3906, line: 33, baseType: !7, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !3905, file: !3906, line: 34, baseType: !7, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !3890, file: !3865, line: 74, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !3890, file: !3865, line: 75, baseType: !20, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3887, file: !3865, line: 77, baseType: !35, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3864, file: !3865, line: 80, baseType: !3916, size: 64, offset: 256)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3864, file: !3865, line: 80, size: 64, elements: !3917)
!3917 = !{!3918, !3919}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !3916, file: !3865, line: 81, baseType: !39, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !3916, file: !3865, line: 82, baseType: !41, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3739, file: !155, line: 1920, baseType: !3755, size: 64, offset: 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3739, file: !155, line: 1921, baseType: !3922, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!22, !3758, !3925, !7}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !155, line: 53, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3739, file: !155, line: 1923, baseType: !3928, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!22, !795, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !155, line: 1858, size: 128, elements: !3933)
!3933 = !{!3934, !3939}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3932, file: !155, line: 1859, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !155, line: 1855, baseType: !3936)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!987, !3931, !16, !22, !41, !521, !7}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3932, file: !155, line: 1860, baseType: !41, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3739, file: !155, line: 1924, baseType: !3941, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!3944, !795, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3945, line: 59, baseType: !7)
!3945 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !155, line: 61, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3739, file: !155, line: 1925, baseType: !3949, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!905, !795, !7, !39}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3739, file: !155, line: 1926, baseType: !3949, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3739, file: !155, line: 1927, baseType: !3954, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!22, !795, !1642}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3739, file: !155, line: 1928, baseType: !39, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3739, file: !155, line: 1929, baseType: !3959, size: 64, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!22, !1775, !795}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3739, file: !155, line: 1930, baseType: !3963, size: 64, offset: 896)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!22, !795, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !155, line: 1061, baseType: !20)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3739, file: !155, line: 1931, baseType: !3959, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3739, file: !155, line: 1932, baseType: !3969, size: 64, offset: 1024)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!22, !795, !41, !41, !22}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3739, file: !155, line: 1933, baseType: !3973, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!22, !22, !795, !22}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3739, file: !155, line: 1934, baseType: !3977, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!22, !795, !22, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !3982, line: 88, size: 1728, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/filelock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "341396167365df38f75a901b3ed01a3d")
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4008, !4009, !4010, !4023, !4058}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3981, file: !3982, line: 89, baseType: !3980, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3981, file: !3982, line: 90, baseType: !97, size: 128, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3981, file: !3982, line: 91, baseType: !426, size: 128, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3981, file: !3982, line: 92, baseType: !97, size: 128, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3981, file: !3982, line: 95, baseType: !97, size: 128, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3981, file: !3982, line: 98, baseType: !3966, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3981, file: !3982, line: 99, baseType: !7, size: 32, offset: 640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3981, file: !3982, line: 100, baseType: !87, size: 8, offset: 672)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3981, file: !3982, line: 101, baseType: !7, size: 32, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3981, file: !3982, line: 102, baseType: !22, size: 32, offset: 736)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3981, file: !3982, line: 103, baseType: !54, size: 192, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3981, file: !3982, line: 104, baseType: !795, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3981, file: !3982, line: 105, baseType: !41, size: 64, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3981, file: !3982, line: 106, baseType: !41, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3981, file: !3982, line: 108, baseType: !3999, size: 64, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !155, line: 1083, size: 384, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4000, file: !155, line: 1084, baseType: !386, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4000, file: !155, line: 1085, baseType: !22, size: 32, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4000, file: !155, line: 1086, baseType: !22, size: 32, offset: 96)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4000, file: !155, line: 1087, baseType: !3999, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4000, file: !155, line: 1088, baseType: !795, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4000, file: !155, line: 1089, baseType: !347, size: 128, align: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3981, file: !3982, line: 110, baseType: !39, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3981, file: !3982, line: 111, baseType: !39, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3981, file: !3982, line: 113, baseType: !4011, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !3982, line: 31, size: 128, elements: !4014)
!4014 = !{!4015, !4019}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4013, file: !3982, line: 32, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !3980, !3980}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4013, file: !3982, line: 33, baseType: !4020, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !3980}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3981, file: !3982, line: 114, baseType: !4024, size: 64, offset: 1408)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !3982, line: 36, size: 704, elements: !4027)
!4027 = !{!4028, !4029, !4033, !4037, !4038, !4042, !4046, !4050, !4055, !4056, !4057}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "lm_mod_owner", scope: !4026, file: !3982, line: 37, baseType: !20, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4026, file: !3982, line: 38, baseType: !4030, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!3966, !3966}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4026, file: !3982, line: 39, baseType: !4034, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3966}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4026, file: !3982, line: 40, baseType: !4020, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4026, file: !3982, line: 41, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!22, !3980, !22}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4026, file: !3982, line: 42, baseType: !4043, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!987, !3980}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4026, file: !3982, line: 43, baseType: !4047, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!22, !3980, !22, !100}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4026, file: !3982, line: 44, baseType: !4051, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3980, !4054}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4026, file: !3982, line: 45, baseType: !4043, size: 64, offset: 512)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_lock_expirable", scope: !4026, file: !3982, line: 46, baseType: !4043, size: 64, offset: 576)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "lm_expire_lock", scope: !4026, file: !3982, line: 47, baseType: !2462, size: 64, offset: 640)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3981, file: !3982, line: 126, baseType: !4059, size: 256, offset: 1472)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3981, file: !3982, line: 115, size: 256, elements: !4060)
!4060 = !{!4061, !4070, !4076, !4082}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4059, file: !3982, line: 116, baseType: !4062, size: 256)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4063, line: 10, size: 256, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c146eb6cc450a23c1b61e3c824cbd799")
!4064 = !{!4065, !4066, !4069}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4062, file: !4063, line: 11, baseType: !473, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4062, file: !4063, line: 12, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4063, line: 5, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4062, file: !4063, line: 13, baseType: !97, size: 128, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4059, file: !3982, line: 117, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4063, line: 17, size: 64, elements: !4072)
!4072 = !{!4073}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4071, file: !4063, line: 18, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4063, line: 16, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4059, file: !3982, line: 122, baseType: !4077, size: 192)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4059, file: !3982, line: 118, size: 192, elements: !4078)
!4078 = !{!4079, !4080, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4077, file: !3982, line: 119, baseType: !97, size: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4077, file: !3982, line: 120, baseType: !22, size: 32, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4077, file: !3982, line: 121, baseType: !7, size: 32, offset: 160)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ceph", scope: !4059, file: !3982, line: 125, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4059, file: !3982, line: 123, size: 64, elements: !4084)
!4084 = !{!4085}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4083, file: !3982, line: 124, baseType: !1775, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3739, file: !155, line: 1935, baseType: !792, size: 64, offset: 1216)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3739, file: !155, line: 1936, baseType: !4088, size: 64, offset: 1280)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!22, !22}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3739, file: !155, line: 1937, baseType: !3977, size: 64, offset: 1344)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3739, file: !155, line: 1938, baseType: !4093, size: 64, offset: 1408)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!2019, !4096, !795, !40, !35, !7}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !464, line: 59, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3739, file: !155, line: 1939, baseType: !4099, size: 64, offset: 1472)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!2019, !795, !40, !4096, !35, !7}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3739, file: !155, line: 1940, baseType: !4103, size: 64, offset: 1536)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !795}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3739, file: !155, line: 1941, baseType: !4107, size: 64, offset: 1600)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!22, !795, !22, !4110, !4054}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3739, file: !155, line: 1942, baseType: !4112, size: 64, offset: 1664)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!905, !795, !22, !41, !41}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3739, file: !155, line: 1944, baseType: !4116, size: 64, offset: 1728)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !1585, !795}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3739, file: !155, line: 1948, baseType: !4120, size: 64, offset: 1792)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!2019, !795, !41, !795, !41, !35, !7}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3739, file: !155, line: 1950, baseType: !4124, size: 64, offset: 1856)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!41, !795, !41, !795, !41, !41, !7}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3739, file: !155, line: 1953, baseType: !3969, size: 64, offset: 1920)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3739, file: !155, line: 1954, baseType: !4129, size: 64, offset: 1984)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!22, !4132, !7}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !155, line: 1911, flags: DIFlagFwdDecl)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3739, file: !155, line: 1955, baseType: !4135, size: 64, offset: 2048)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!22, !4132, !3925, !7}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3734, file: !155, line: 723, baseType: !2488, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1776, file: !155, line: 725, baseType: !4140, size: 64, offset: 2816)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !3982, line: 129, size: 448, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4141, file: !3982, line: 130, baseType: !59, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4141, file: !3982, line: 131, baseType: !97, size: 128, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4141, file: !3982, line: 132, baseType: !97, size: 128, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4141, file: !3982, line: 133, baseType: !97, size: 128, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1776, file: !155, line: 726, baseType: !1772, size: 1536, align: 64, offset: 2880)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1776, file: !155, line: 727, baseType: !97, size: 128, offset: 4416)
!4149 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !155, line: 728, baseType: !4150, size: 64, offset: 4544)
!4150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !155, line: 728, size: 64, elements: !4151)
!4151 = !{!4152, !4153, !4164, !4165}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4150, file: !155, line: 729, baseType: !4096, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4150, file: !155, line: 730, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4156, line: 14, size: 832, elements: !4157)
!4156 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4155, file: !4156, line: 15, baseType: !1951, size: 512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4155, file: !4156, line: 16, baseType: !1938, size: 64, offset: 512)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4155, file: !4156, line: 17, baseType: !3737, size: 64, offset: 576)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4155, file: !4156, line: 18, baseType: !97, size: 128, offset: 640)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4155, file: !4156, line: 19, baseType: !1908, size: 32, offset: 768)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4155, file: !4156, line: 20, baseType: !7, size: 32, offset: 800)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4150, file: !155, line: 731, baseType: !1064, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4150, file: !155, line: 732, baseType: !7, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1776, file: !155, line: 735, baseType: !474, size: 32, offset: 4608)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1776, file: !155, line: 738, baseType: !474, size: 32, offset: 4640)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1776, file: !155, line: 739, baseType: !3415, size: 64, offset: 4672)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1776, file: !155, line: 750, baseType: !20, size: 64, offset: 4736)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1772, file: !155, line: 474, baseType: !451, size: 128, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1772, file: !155, line: 475, baseType: !823, size: 320, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1772, file: !155, line: 476, baseType: !328, size: 32, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1772, file: !155, line: 477, baseType: !49, size: 32, offset: 544)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1772, file: !155, line: 482, baseType: !650, size: 128, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1772, file: !155, line: 483, baseType: !39, size: 64, offset: 704)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1772, file: !155, line: 484, baseType: !39, size: 64, offset: 768)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1772, file: !155, line: 485, baseType: !4178, size: 64, offset: 832)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !155, line: 404, size: 1280, elements: !4181)
!4181 = !{!4182, !4186, !4190, !4194, !4198, !4222, !4227, !4231, !4235, !4239, !4243, !4247, !4248, !4252, !4256, !4260, !4265, !4269, !4342, !4343}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4180, file: !155, line: 405, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!22, !1749, !2500}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4180, file: !155, line: 406, baseType: !4187, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!22, !795, !3779}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4180, file: !155, line: 409, baseType: !4191, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!22, !1771, !2500}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4180, file: !155, line: 412, baseType: !4195, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!987, !1771, !3779}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4180, file: !155, line: 414, baseType: !4199, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3776, line: 1276, size: 448, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4217, !4218, !4219, !4220, !4221}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4203, file: !3776, line: 1277, baseType: !795, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4203, file: !3776, line: 1278, baseType: !1771, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4203, file: !3776, line: 1279, baseType: !4208, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !155, line: 970, size: 256, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4209, file: !155, line: 971, baseType: !39, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4209, file: !155, line: 972, baseType: !7, size: 32, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4209, file: !155, line: 973, baseType: !7, size: 32, offset: 96)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4209, file: !155, line: 974, baseType: !7, size: 32, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4209, file: !155, line: 975, baseType: !7, size: 32, offset: 160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4209, file: !155, line: 976, baseType: !41, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4203, file: !3776, line: 1281, baseType: !39, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4203, file: !3776, line: 1282, baseType: !7, size: 32, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4203, file: !3776, line: 1283, baseType: !7, size: 32, offset: 288)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4203, file: !3776, line: 1284, baseType: !987, size: 8, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4203, file: !3776, line: 1285, baseType: !39, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4180, file: !155, line: 416, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!22, !795, !1771, !41, !7, !4226, !4054}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4180, file: !155, line: 419, baseType: !4228, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!22, !795, !1771, !41, !7, !7, !1749, !20}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4180, file: !155, line: 424, baseType: !4232, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!2788, !1771, !2788}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4180, file: !155, line: 425, baseType: !4236, size: 64, offset: 512)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !3779, !35, !35}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4180, file: !155, line: 426, baseType: !4240, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!987, !3779, !328}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4180, file: !155, line: 427, baseType: !4244, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !3779}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4180, file: !155, line: 428, baseType: !3755, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4180, file: !155, line: 433, baseType: !4249, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!22, !1771, !3779, !3779, !134}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4180, file: !155, line: 435, baseType: !4253, size: 64, offset: 832)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!22, !3779}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4180, file: !155, line: 436, baseType: !4257, size: 64, offset: 896)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!987, !3779, !35, !35}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4180, file: !155, line: 438, baseType: !4261, size: 64, offset: 960)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !3779, !4264, !4264}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4180, file: !155, line: 439, baseType: !4266, size: 64, offset: 1024)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!22, !1771, !1749}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4180, file: !155, line: 442, baseType: !4270, size: 64, offset: 1088)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!22, !4273, !795, !4341}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4275, line: 282, size: 2176, elements: !4276)
!4275 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4276 = !{!4277, !4298, !4299, !4300, !4301, !4302, !4303, !4305, !4312, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4274, file: !4275, line: 283, baseType: !4278, size: 128)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4279, line: 105, size: 128, elements: !4280)
!4279 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4280 = !{!4281, !4282}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4278, file: !4279, line: 110, baseType: !39, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4278, file: !4279, line: 118, baseType: !4283, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4279, line: 95, size: 448, elements: !4285)
!4285 = !{!4286, !4287, !4293, !4294, !4295, !4296, !4297}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4284, file: !4279, line: 96, baseType: !359, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !4279, line: 97, baseType: !4288, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4279, line: 60, baseType: !4290)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !4292}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4284, file: !4279, line: 98, baseType: !4288, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4284, file: !4279, line: 99, baseType: !987, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4284, file: !4279, line: 100, baseType: !987, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4284, file: !4279, line: 101, baseType: !347, size: 128, align: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4284, file: !4279, line: 102, baseType: !4292, size: 64, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4274, file: !4275, line: 284, baseType: !39, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4274, file: !4275, line: 285, baseType: !922, size: 16, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4274, file: !4275, line: 286, baseType: !759, size: 320, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4274, file: !4275, line: 287, baseType: !2192, size: 8, offset: 576)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4274, file: !4275, line: 288, baseType: !7, size: 32, offset: 608)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4274, file: !4275, line: 289, baseType: !4304, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4274, file: !4275, line: 290, baseType: !4306, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4275, line: 250, size: 64, elements: !4308)
!4308 = !{!4309, !4310, !4311}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4307, file: !4275, line: 251, baseType: !59, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4307, file: !4275, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4307, file: !4275, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4274, file: !4275, line: 291, baseType: !4313, size: 128, offset: 768)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4275, line: 274, size: 128, elements: !4314)
!4314 = !{!4315, !4316}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4313, file: !4275, line: 275, baseType: !4307, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4313, file: !4275, line: 276, baseType: !4307, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4274, file: !4275, line: 292, baseType: !7, size: 32, offset: 896)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4274, file: !4275, line: 293, baseType: !7, size: 32, offset: 928)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4274, file: !4275, line: 294, baseType: !7, size: 32, offset: 960)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4274, file: !4275, line: 295, baseType: !7, size: 32, offset: 992)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4274, file: !4275, line: 296, baseType: !7, size: 32, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4274, file: !4275, line: 297, baseType: !7, size: 32, offset: 1056)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4274, file: !4275, line: 298, baseType: !2213, size: 64, offset: 1088)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4274, file: !4275, line: 299, baseType: !4325, size: 64, offset: 1152)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4275, line: 269, size: 96, elements: !4327)
!4327 = !{!4328, !4329}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4326, file: !4275, line: 270, baseType: !4307, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4326, file: !4275, line: 271, baseType: !7, size: 32, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4274, file: !4275, line: 300, baseType: !653, size: 64, offset: 1216)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4274, file: !4275, line: 301, baseType: !2783, size: 64, offset: 1280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4274, file: !4275, line: 302, baseType: !795, size: 64, offset: 1344)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4274, file: !4275, line: 303, baseType: !7, size: 32, offset: 1408)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !4274, file: !4275, line: 304, baseType: !1141, size: 256, offset: 1472)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4274, file: !4275, line: 305, baseType: !59, size: 32, offset: 1728)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4274, file: !4275, line: 318, baseType: !59, size: 32, offset: 1760)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4274, file: !4275, line: 322, baseType: !1103, size: 256, offset: 1792)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4274, file: !4275, line: 323, baseType: !4313, size: 128, offset: 2048)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4274, file: !4275, line: 324, baseType: !4340, offset: 2176)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, elements: !1218)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4180, file: !155, line: 444, baseType: !4103, size: 64, offset: 1152)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4180, file: !155, line: 445, baseType: !4344, size: 64, offset: 1216)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!22, !3758, !3863}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !155, line: 486, baseType: !39, size: 64, offset: 896)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1772, file: !155, line: 487, baseType: !823, size: 320, offset: 960)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1772, file: !155, line: 488, baseType: !3467, size: 32, offset: 1280)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1772, file: !155, line: 489, baseType: !59, size: 32, offset: 1312)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1772, file: !155, line: 490, baseType: !97, size: 128, offset: 1344)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1772, file: !155, line: 491, baseType: !20, size: 64, offset: 1472)
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !114, line: 107, baseType: !4354, size: 64, offset: 192)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !114, line: 107, size: 64, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4354, file: !114, line: 108, baseType: !39, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4354, file: !114, line: 109, baseType: !39, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1757, file: !114, line: 117, baseType: !39, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !114, line: 119, baseType: !4360, size: 320)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !114, line: 119, size: 320, elements: !4361)
!4361 = !{!4362, !4363, !4366, !4367, !4368}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4360, file: !114, line: 124, baseType: !39, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4360, file: !114, line: 125, baseType: !4364, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !114, line: 125, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4360, file: !114, line: 126, baseType: !39, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4360, file: !114, line: 127, baseType: !39, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !114, line: 128, baseType: !4369, size: 64, offset: 256)
!4369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !114, line: 128, size: 64, elements: !4370)
!4370 = !{!4371, !4372}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4369, file: !114, line: 133, baseType: !39, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4369, file: !114, line: 138, baseType: !359, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !114, line: 141, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !114, line: 141, size: 64, elements: !4375)
!4375 = !{!4376}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4374, file: !114, line: 142, baseType: !39, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !114, line: 144, baseType: !4378, size: 128)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !114, line: 144, size: 128, elements: !4379)
!4379 = !{!4380, !4431}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4378, file: !114, line: 146, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !231, line: 126, size: 1216, elements: !4383)
!4383 = !{!4384, !4394, !4395, !4396, !4397, !4398, !4399, !4413, !4414, !4415}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4382, file: !231, line: 127, baseType: !4385, size: 384)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !231, line: 21, size: 384, elements: !4386)
!4386 = !{!4387, !4388, !4390, !4391, !4392, !4393}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4385, file: !231, line: 22, baseType: !39, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4385, file: !231, line: 23, baseType: !4389, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4385, file: !231, line: 24, baseType: !4389, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4385, file: !231, line: 25, baseType: !39, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4385, file: !231, line: 26, baseType: !39, size: 64, offset: 256)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4385, file: !231, line: 27, baseType: !39, size: 64, offset: 320)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4382, file: !231, line: 128, baseType: !4278, size: 128, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4382, file: !231, line: 129, baseType: !1141, size: 256, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4382, file: !231, line: 130, baseType: !230, size: 32, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4382, file: !231, line: 131, baseType: !7, size: 32, offset: 800)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4382, file: !231, line: 132, baseType: !39, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4382, file: !231, line: 133, baseType: !4400, size: 64, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4402)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !231, line: 77, size: 192, elements: !4403)
!4403 = !{!4404, !4408, !4409}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4402, file: !231, line: 83, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{null, !1749}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4402, file: !231, line: 89, baseType: !1708, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4402, file: !231, line: 100, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!22, !4381, !39, !39, !22}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4382, file: !231, line: 134, baseType: !20, size: 64, offset: 960)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4382, file: !231, line: 135, baseType: !22, size: 32, offset: 1024)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4382, file: !231, line: 136, baseType: !4416, size: 128, offset: 1088)
!4416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4382, file: !231, line: 136, size: 128, elements: !4417)
!4417 = !{!4418, !4424}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4416, file: !231, line: 137, baseType: !4419, size: 128)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4420, line: 6, size: 128, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4419, file: !4420, line: 7, baseType: !521, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4419, file: !4420, line: 8, baseType: !521, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, scope: !4416, file: !231, line: 138, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4416, file: !231, line: 138, elements: !4426)
!4426 = !{!4427, !4429}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4425, file: !231, line: 138, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4425, file: !231, line: 138, elements: !788)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4425, file: !231, line: 138, baseType: !4430)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4419, elements: !1218)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4378, file: !114, line: 147, baseType: !20, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1754, file: !114, line: 161, baseType: !347, size: 128, align: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !114, line: 164, baseType: !4434, size: 32, offset: 384)
!4434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !114, line: 164, size: 32, elements: !4435)
!4435 = !{!4436, !4437}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4434, file: !114, line: 169, baseType: !49, size: 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4434, file: !114, line: 177, baseType: !7, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1750, file: !114, line: 181, baseType: !49, size: 32, offset: 416)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1713, file: !1636, line: 535, baseType: !1749, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1713, file: !1636, line: 541, baseType: !4441, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1713, file: !1636, line: 545, baseType: !4443, size: 64, offset: 768)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1713, file: !1636, line: 549, baseType: !4445, size: 64, offset: 832)
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !804, line: 520, baseType: !1749)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1635, file: !1636, line: 581, baseType: !4447, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!1711, !1712, !7}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1635, file: !1636, line: 582, baseType: !4451, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!1711, !1712, !39, !39}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1635, file: !1636, line: 584, baseType: !4455, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!39, !1642}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1635, file: !1636, line: 588, baseType: !1708, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1635, file: !1636, line: 591, baseType: !1708, size: 64, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1635, file: !1636, line: 597, baseType: !4461, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!22, !1642, !39, !20, !22, !22}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1635, file: !1636, line: 603, baseType: !4465, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!16, !1642}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1635, file: !1636, line: 613, baseType: !4469, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!22, !1642, !1690}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1635, file: !1636, line: 625, baseType: !4473, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!1690, !1642, !39}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1635, file: !1636, line: 633, baseType: !4477, size: 64, offset: 960)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!1749, !1642, !39}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1573, file: !1542, line: 277, baseType: !4481, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !1579}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1573, file: !1542, line: 290, baseType: !1615, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1573, file: !1542, line: 292, baseType: !1603, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1573, file: !1542, line: 293, baseType: !1611, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1573, file: !1542, line: 294, baseType: !1607, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1573, file: !1542, line: 296, baseType: !4489, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!2019, !1579, !1064, !35, !41}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1573, file: !1542, line: 306, baseType: !35, size: 64, offset: 448)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1573, file: !1542, line: 313, baseType: !987, size: 8, offset: 512)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1573, file: !1542, line: 314, baseType: !4489, size: 64, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1573, file: !1542, line: 317, baseType: !4496, size: 64, offset: 640)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!3944, !1579, !3946}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1573, file: !1542, line: 320, baseType: !4500, size: 64, offset: 704)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!22, !1579, !1642}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1568, file: !1542, line: 176, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1542, line: 35, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1568, file: !1542, line: 177, baseType: !41, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1568, file: !1542, line: 178, baseType: !1540, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1541, file: !1542, line: 215, baseType: !20, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1541, file: !1542, line: 221, baseType: !521, size: 64, offset: 832)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1541, file: !1542, line: 223, baseType: !26, size: 16, offset: 896)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1541, file: !1542, line: 224, baseType: !24, size: 16, offset: 912)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1541, file: !1542, line: 225, baseType: !4513, size: 64, offset: 960)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1542, line: 36, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1541, file: !1542, line: 227, baseType: !347, size: 128, align: 64, offset: 1024)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1525, file: !1516, line: 442, baseType: !4517, size: 448, offset: 2048)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1516, line: 138, size: 448, elements: !4518)
!4518 = !{!4519, !4520, !4521}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4517, file: !1516, line: 140, baseType: !1540, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4517, file: !1516, line: 141, baseType: !39, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4517, file: !1516, line: 142, baseType: !2359, size: 320, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1525, file: !1516, line: 443, baseType: !4517, size: 448, offset: 2496)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1525, file: !1516, line: 446, baseType: !4524, offset: 2944)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4517, elements: !4525)
!4525 = !{!4526}
!4526 = !DISubrange(count: 0)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1525, file: !1516, line: 455, baseType: !93, size: 16, offset: 2944)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1525, file: !1516, line: 456, baseType: !93, size: 16, offset: 2960)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1525, file: !1516, line: 457, baseType: !93, size: 16, offset: 2976)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1525, file: !1516, line: 458, baseType: !93, size: 16, offset: 2992)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1525, file: !1516, line: 461, baseType: !1519, size: 896, offset: 3008)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1525, file: !1516, line: 463, baseType: !4533, size: 64, offset: 3904)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1516, line: 537, size: 41664, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4549}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4534, file: !1516, line: 538, baseType: !1560, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4534, file: !1516, line: 541, baseType: !7, size: 32, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4534, file: !1516, line: 544, baseType: !22, size: 32, offset: 96)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4534, file: !1516, line: 547, baseType: !97, size: 128, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4534, file: !1516, line: 548, baseType: !347, size: 128, align: 64, offset: 256)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4534, file: !1516, line: 555, baseType: !1525, size: 7872, offset: 384)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4534, file: !1516, line: 558, baseType: !1524, size: 64, offset: 8256)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4534, file: !1516, line: 561, baseType: !49, size: 32, offset: 8320)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4534, file: !1516, line: 564, baseType: !7, size: 32, offset: 8352)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4534, file: !1516, line: 567, baseType: !4546, size: 32768, offset: 8384)
!4546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !4547)
!4547 = !{!4548}
!4548 = !DISubrange(count: 4096)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4534, file: !1516, line: 570, baseType: !3333, size: 512, offset: 41152)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1525, file: !1516, line: 469, baseType: !97, size: 128, offset: 3968)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1525, file: !1516, line: 478, baseType: !4552, size: 1792, offset: 4096)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !4553)
!4553 = !{!4554}
!4554 = !DISubrange(count: 14)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1525, file: !1516, line: 487, baseType: !1524, size: 64, offset: 5888)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1525, file: !1516, line: 488, baseType: !1524, size: 64, offset: 5952)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1525, file: !1516, line: 491, baseType: !4558, size: 64, offset: 6016)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1516, line: 327, size: 896, elements: !4560)
!4560 = !{!4561, !4564, !4574, !4575, !4576, !4577, !4578}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4559, file: !1516, line: 332, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4563, line: 64, elements: !788)
!4563 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4559, file: !1516, line: 333, baseType: !4565, size: 192)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1516, line: 299, size: 192, elements: !4566)
!4566 = !{!4567}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4565, file: !1516, line: 300, baseType: !4568, size: 192)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4569, line: 17, size: 192, elements: !4570)
!4569 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4570 = !{!4571, !4572, !4573}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4568, file: !4569, line: 18, baseType: !521, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4568, file: !4569, line: 19, baseType: !521, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4568, file: !4569, line: 20, baseType: !523, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4559, file: !1516, line: 339, baseType: !4565, size: 192, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4559, file: !1516, line: 347, baseType: !4565, size: 192, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4559, file: !1516, line: 353, baseType: !4565, size: 192, offset: 576)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4559, file: !1516, line: 366, baseType: !1524, size: 64, offset: 768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4559, file: !1516, line: 367, baseType: !1524, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1525, file: !1516, line: 492, baseType: !97, size: 128, offset: 6080)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1525, file: !1516, line: 495, baseType: !4565, size: 192, offset: 6208)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1525, file: !1516, line: 496, baseType: !4565, size: 192, offset: 6400)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1525, file: !1516, line: 497, baseType: !1325, size: 192, offset: 6592)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1525, file: !1516, line: 503, baseType: !97, size: 128, offset: 6784)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1525, file: !1516, line: 504, baseType: !368, size: 256, offset: 6912)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1525, file: !1516, line: 507, baseType: !54, size: 192, offset: 7168)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1525, file: !1516, line: 510, baseType: !1103, size: 256, offset: 7360)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1525, file: !1516, line: 513, baseType: !4588, size: 64, offset: 7616)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4590, line: 214, elements: !788)
!4590 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1525, file: !1516, line: 516, baseType: !4592, offset: 7680)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4593, line: 76, elements: !788)
!4593 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1525, file: !1516, line: 519, baseType: !49, size: 32, offset: 7680)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1525, file: !1516, line: 522, baseType: !4596, size: 128, offset: 7712)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1516, line: 370, size: 128, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4596, file: !1516, line: 372, baseType: !987, size: 8)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4596, file: !1516, line: 375, baseType: !22, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4596, file: !1516, line: 380, baseType: !22, size: 32, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4596, file: !1516, line: 386, baseType: !22, size: 32, offset: 96)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1525, file: !1516, line: 529, baseType: !4603, offset: 7872)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1524, elements: !1218)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1521, file: !1516, line: 157, baseType: !4605, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1516, line: 669, size: 1984, elements: !4607)
!4607 = !{!4608, !4612, !4616, !4620, !4621, !4622, !4623, !4627, !4631, !4632, !4638, !4642, !4643, !4644, !4648, !4652, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4705, !4706}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4606, file: !1516, line: 670, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!1520, !1520}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4606, file: !1516, line: 671, baseType: !4613, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!22, !1520}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4606, file: !1516, line: 672, baseType: !4617, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !1520}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4606, file: !1516, line: 673, baseType: !4617, size: 64, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4606, file: !1516, line: 674, baseType: !4617, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4606, file: !1516, line: 675, baseType: !4617, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4606, file: !1516, line: 676, baseType: !4624, size: 64, offset: 384)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !1520, !22}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4606, file: !1516, line: 677, baseType: !4628, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!22, !1585, !1520}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4606, file: !1516, line: 679, baseType: !4628, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4606, file: !1516, line: 682, baseType: !4633, size: 64, offset: 576)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!22, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1516, line: 30, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4606, file: !1516, line: 683, baseType: !4639, size: 64, offset: 640)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4636}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4606, file: !1516, line: 684, baseType: !4639, size: 64, offset: 704)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4606, file: !1516, line: 685, baseType: !2462, size: 64, offset: 768)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4606, file: !1516, line: 686, baseType: !4645, size: 64, offset: 832)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!22, !462, !1514}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4606, file: !1516, line: 688, baseType: !4649, size: 64, offset: 896)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !462, !1514}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4606, file: !1516, line: 689, baseType: !4653, size: 64, offset: 960)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !462}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4606, file: !1516, line: 690, baseType: !4653, size: 64, offset: 1024)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4606, file: !1516, line: 691, baseType: !4653, size: 64, offset: 1088)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4606, file: !1516, line: 692, baseType: !4617, size: 64, offset: 1152)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4606, file: !1516, line: 694, baseType: !987, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4606, file: !1516, line: 707, baseType: !987, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4606, file: !1516, line: 719, baseType: !987, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4606, file: !1516, line: 722, baseType: !22, size: 32, offset: 1248)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4606, file: !1516, line: 723, baseType: !16, size: 64, offset: 1280)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4606, file: !1516, line: 726, baseType: !16, size: 64, offset: 1344)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4606, file: !1516, line: 729, baseType: !4533, size: 64, offset: 1408)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4606, file: !1516, line: 732, baseType: !447, size: 192, offset: 1472)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4606, file: !1516, line: 738, baseType: !97, size: 128, offset: 1664)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4606, file: !1516, line: 744, baseType: !4669, size: 64, offset: 1792)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1516, line: 580, size: 1728, elements: !4671)
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4681, !4682, !4683, !4687, !4691, !4692, !4693, !4694, !4695, !4699, !4703, !4704}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4670, file: !1516, line: 586, baseType: !3333, size: 512)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4670, file: !1516, line: 587, baseType: !39, size: 64, offset: 512)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4670, file: !1516, line: 593, baseType: !35, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4670, file: !1516, line: 596, baseType: !7, size: 32, offset: 640)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4670, file: !1516, line: 604, baseType: !7, size: 32, offset: 672)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4670, file: !1516, line: 610, baseType: !4605, size: 64, offset: 704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4670, file: !1516, line: 611, baseType: !97, size: 128, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4670, file: !1516, line: 612, baseType: !4680, size: 64, offset: 896)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4670, file: !1516, line: 614, baseType: !1576, size: 64, offset: 960)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4670, file: !1516, line: 615, baseType: !4481, size: 64, offset: 1024)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4670, file: !1516, line: 621, baseType: !4684, size: 64, offset: 1088)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!521, !1520, !4669}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4670, file: !1516, line: 625, baseType: !4688, size: 64, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!365, !1520, !4669}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4670, file: !1516, line: 628, baseType: !1615, size: 64, offset: 1216)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4670, file: !1516, line: 631, baseType: !1603, size: 64, offset: 1280)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4670, file: !1516, line: 632, baseType: !1611, size: 64, offset: 1344)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4670, file: !1516, line: 633, baseType: !1607, size: 64, offset: 1408)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4670, file: !1516, line: 640, baseType: !4696, size: 64, offset: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!22, !1520, !4669, !521}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4670, file: !1516, line: 645, baseType: !4700, size: 64, offset: 1536)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!22, !1520, !4669, !365}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4670, file: !1516, line: 654, baseType: !4489, size: 64, offset: 1600)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4670, file: !1516, line: 657, baseType: !4496, size: 64, offset: 1664)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4606, file: !1516, line: 745, baseType: !4669, size: 64, offset: 1856)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4606, file: !1516, line: 754, baseType: !7, size: 32, offset: 1920)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1521, file: !1516, line: 160, baseType: !4278, size: 128, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1521, file: !1516, line: 163, baseType: !97, size: 128, offset: 256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1521, file: !1516, line: 164, baseType: !97, size: 128, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1521, file: !1516, line: 167, baseType: !97, size: 128, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1521, file: !1516, line: 173, baseType: !22, size: 32, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1521, file: !1516, line: 175, baseType: !7, size: 32, offset: 672)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1521, file: !1516, line: 183, baseType: !521, size: 64, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1521, file: !1516, line: 189, baseType: !49, size: 32, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1521, file: !1516, line: 192, baseType: !1103, size: 256, offset: 832)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1521, file: !1516, line: 193, baseType: !4717, size: 448, offset: 1088)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !294, line: 120, size: 448, elements: !4718)
!4718 = !{!4719, !4720, !4721}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4717, file: !294, line: 121, baseType: !1103, size: 256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4717, file: !294, line: 122, baseType: !347, size: 128, align: 64, offset: 256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4717, file: !294, line: 125, baseType: !2421, size: 64, offset: 384)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1521, file: !1516, line: 199, baseType: !1520, size: 64, offset: 1536)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1515, file: !1516, line: 218, baseType: !413, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1515, file: !1516, line: 226, baseType: !1514, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1515, file: !1516, line: 229, baseType: !1524, size: 64, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1515, file: !1516, line: 232, baseType: !22, size: 32, offset: 1088)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1515, file: !1516, line: 241, baseType: !97, size: 128, offset: 1152)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1515, file: !1516, line: 242, baseType: !97, size: 128, offset: 1280)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1515, file: !1516, line: 243, baseType: !97, size: 128, offset: 1408)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1515, file: !1516, line: 246, baseType: !97, size: 128, offset: 1536)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1515, file: !1516, line: 255, baseType: !4552, size: 1792, offset: 1664)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1515, file: !1516, line: 258, baseType: !97, size: 128, offset: 3456)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1515, file: !1516, line: 259, baseType: !97, size: 128, offset: 3584)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1515, file: !1516, line: 265, baseType: !426, size: 128, offset: 3712)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1515, file: !1516, line: 271, baseType: !97, size: 128, offset: 3840)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1515, file: !1516, line: 277, baseType: !97, size: 128, offset: 3968)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1515, file: !1516, line: 278, baseType: !97, size: 128, offset: 4096)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1515, file: !1516, line: 279, baseType: !97, size: 128, offset: 4224)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1515, file: !1516, line: 288, baseType: !1524, size: 64, offset: 4352)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1515, file: !1516, line: 289, baseType: !1524, size: 64, offset: 4416)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1515, file: !1516, line: 290, baseType: !1514, size: 64, offset: 4480)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1515, file: !1516, line: 293, baseType: !987, size: 8, offset: 4544)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1515, file: !1516, line: 296, baseType: !347, size: 128, align: 64, offset: 4608)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !463, file: !464, line: 1110, baseType: !4745, size: 64, offset: 15360)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4747, line: 93, size: 8768, elements: !4748)
!4747 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4797, !4806, !4807, !4809, !4810, !4811, !4814, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4852, !4853, !4860, !4870, !4932, !4933, !4936, !4937, !4938, !4939, !4940, !4941}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4746, file: !4747, line: 94, baseType: !413, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4746, file: !4747, line: 95, baseType: !49, size: 32, offset: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4746, file: !4747, line: 96, baseType: !22, size: 32, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4746, file: !4747, line: 97, baseType: !22, size: 32, offset: 96)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4746, file: !4747, line: 98, baseType: !97, size: 128, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4746, file: !4747, line: 100, baseType: !54, size: 192, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4746, file: !4747, line: 103, baseType: !462, size: 64, offset: 448)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4746, file: !4747, line: 106, baseType: !4757, size: 192, offset: 512)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4758, line: 32, size: 192, elements: !4759)
!4758 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4759 = !{!4760, !4761}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4757, file: !4758, line: 33, baseType: !97, size: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4757, file: !4758, line: 34, baseType: !4762, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4763, line: 25, baseType: !4764)
!4763 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4763, line: 23, size: 64, elements: !4765)
!4765 = !{!4766}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4764, file: !4763, line: 24, baseType: !718, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4746, file: !4747, line: 109, baseType: !422, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4746, file: !4747, line: 112, baseType: !22, size: 32, offset: 768)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4746, file: !4747, line: 114, baseType: !22, size: 32, offset: 800)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4746, file: !4747, line: 115, baseType: !462, size: 64, offset: 832)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4746, file: !4747, line: 118, baseType: !22, size: 32, offset: 896)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4746, file: !4747, line: 119, baseType: !7, size: 32, offset: 928)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4746, file: !4747, line: 121, baseType: !4774, size: 64, offset: 960)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4747, line: 80, size: 448, elements: !4776)
!4776 = !{!4777, !4778, !4784}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4775, file: !4747, line: 81, baseType: !49, size: 32)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4775, file: !4747, line: 82, baseType: !4779, size: 128, offset: 64)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4747, line: 75, size: 128, elements: !4780)
!4780 = !{!4781, !4782}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4779, file: !4747, line: 76, baseType: !462, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4779, file: !4747, line: 77, baseType: !4783, size: 64, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4775, file: !4747, line: 83, baseType: !1141, size: 256, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4746, file: !4747, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4746, file: !4747, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4746, file: !4747, line: 138, baseType: !7, size: 32, offset: 1056)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4746, file: !4747, line: 139, baseType: !97, size: 128, offset: 1088)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4746, file: !4747, line: 142, baseType: !586, size: 512, offset: 1216)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4746, file: !4747, line: 143, baseType: !594, size: 64, offset: 1728)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4746, file: !4747, line: 150, baseType: !4792, size: 256, offset: 1792)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4793, size: 256, elements: !2251)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4747, line: 38, size: 128, elements: !4794)
!4794 = !{!4795, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4793, file: !4747, line: 39, baseType: !521, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4793, file: !4747, line: 40, baseType: !521, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4746, file: !4747, line: 156, baseType: !4798, size: 192, offset: 2048)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4747, line: 66, size: 192, elements: !4799)
!4799 = !{!4800}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4798, file: !4747, line: 67, baseType: !4801, size: 192)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4747, line: 47, size: 192, elements: !4802)
!4802 = !{!4803, !4804, !4805}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4801, file: !4747, line: 48, baseType: !361, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4801, file: !4747, line: 49, baseType: !361, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4801, file: !4747, line: 50, baseType: !361, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4746, file: !4747, line: 160, baseType: !1337, size: 640, offset: 2240)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4746, file: !4747, line: 163, baseType: !4808, size: 256, offset: 2880)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 256, elements: !431)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4746, file: !4747, line: 169, baseType: !409, size: 64, offset: 3136)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4746, file: !4747, line: 172, baseType: !22, size: 32, offset: 3200)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4746, file: !4747, line: 174, baseType: !4812, size: 64, offset: 3264)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4747, line: 174, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4746, file: !4747, line: 185, baseType: !4815, size: 64, offset: 3328)
!4815 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !637, line: 860, baseType: !4816)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 853, size: 64, elements: !4817)
!4817 = !{!4818, !4819}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4816, file: !637, line: 858, baseType: !1803, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4816, file: !637, line: 859, baseType: !59, size: 32, offset: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4746, file: !4747, line: 186, baseType: !521, size: 64, offset: 3392)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4746, file: !4747, line: 186, baseType: !521, size: 64, offset: 3456)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4746, file: !4747, line: 186, baseType: !521, size: 64, offset: 3520)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4746, file: !4747, line: 186, baseType: !521, size: 64, offset: 3584)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4746, file: !4747, line: 187, baseType: !521, size: 64, offset: 3648)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4746, file: !4747, line: 188, baseType: !521, size: 64, offset: 3712)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4746, file: !4747, line: 189, baseType: !1325, size: 192, offset: 3776)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4746, file: !4747, line: 190, baseType: !39, size: 64, offset: 3968)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4746, file: !4747, line: 190, baseType: !39, size: 64, offset: 4032)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4746, file: !4747, line: 190, baseType: !39, size: 64, offset: 4096)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4746, file: !4747, line: 190, baseType: !39, size: 64, offset: 4160)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4746, file: !4747, line: 191, baseType: !39, size: 64, offset: 4224)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4746, file: !4747, line: 191, baseType: !39, size: 64, offset: 4288)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4746, file: !4747, line: 191, baseType: !39, size: 64, offset: 4352)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4746, file: !4747, line: 191, baseType: !39, size: 64, offset: 4416)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4746, file: !4747, line: 192, baseType: !39, size: 64, offset: 4480)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4746, file: !4747, line: 192, baseType: !39, size: 64, offset: 4544)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4746, file: !4747, line: 192, baseType: !39, size: 64, offset: 4608)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4746, file: !4747, line: 192, baseType: !39, size: 64, offset: 4672)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4746, file: !4747, line: 193, baseType: !39, size: 64, offset: 4736)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4746, file: !4747, line: 193, baseType: !39, size: 64, offset: 4800)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4746, file: !4747, line: 194, baseType: !4842, size: 448, offset: 4864)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4843, line: 12, size: 448, elements: !4844)
!4843 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4850, !4851}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4842, file: !4843, line: 15, baseType: !521, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4842, file: !4843, line: 17, baseType: !521, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4842, file: !4843, line: 19, baseType: !521, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4842, file: !4843, line: 21, baseType: !521, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4842, file: !4843, line: 29, baseType: !521, size: 64, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4842, file: !4843, line: 35, baseType: !521, size: 64, offset: 320)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4842, file: !4843, line: 44, baseType: !521, size: 64, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4746, file: !4747, line: 202, baseType: !523, size: 64, offset: 5312)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4746, file: !4747, line: 213, baseType: !4854, size: 2048, offset: 5376)
!4854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4855, size: 2048, elements: !1429)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4856, line: 43, size: 128, elements: !4857)
!4856 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4857 = !{!4858, !4859}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4855, file: !4856, line: 44, baseType: !38, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4855, file: !4856, line: 45, baseType: !38, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4746, file: !4747, line: 216, baseType: !4861, size: 448, offset: 7424)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4747, line: 30, size: 448, elements: !4862)
!4862 = !{!4863, !4864, !4865, !4866, !4867, !4868, !4869}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4861, file: !4747, line: 31, baseType: !22, size: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4861, file: !4747, line: 32, baseType: !905, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4861, file: !4747, line: 33, baseType: !39, size: 64, offset: 128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4861, file: !4747, line: 34, baseType: !521, size: 64, offset: 192)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4861, file: !4747, line: 34, baseType: !521, size: 64, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4861, file: !4747, line: 35, baseType: !39, size: 64, offset: 320)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4861, file: !4747, line: 35, baseType: !39, size: 64, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4746, file: !4747, line: 219, baseType: !4871, size: 64, offset: 7872)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4873, line: 41, size: 3456, elements: !4874)
!4873 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4872, file: !4873, line: 47, baseType: !94, size: 16)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4872, file: !4873, line: 48, baseType: !474, size: 32, offset: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4872, file: !4873, line: 54, baseType: !85, size: 8, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4872, file: !4873, line: 55, baseType: !85, size: 8, offset: 72)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4872, file: !4873, line: 73, baseType: !522, size: 64, align: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4872, file: !4873, line: 74, baseType: !522, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4872, file: !4873, line: 81, baseType: !522, size: 64, offset: 256)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4872, file: !4873, line: 82, baseType: !522, size: 64, offset: 320)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4872, file: !4873, line: 85, baseType: !522, size: 64, offset: 384)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4872, file: !4873, line: 86, baseType: !522, size: 64, offset: 448)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4872, file: !4873, line: 94, baseType: !522, size: 64, offset: 512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4872, file: !4873, line: 102, baseType: !522, size: 64, offset: 576)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4872, file: !4873, line: 107, baseType: !3436, size: 256, offset: 640)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4872, file: !4873, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4872, file: !4873, line: 110, baseType: !4890, size: 24, offset: 904)
!4890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !405)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4872, file: !4873, line: 111, baseType: !474, size: 32, align: 64, offset: 960)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4872, file: !4873, line: 113, baseType: !474, size: 32, offset: 992)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4872, file: !4873, line: 114, baseType: !474, size: 32, offset: 1024)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4872, file: !4873, line: 115, baseType: !474, size: 32, offset: 1056)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4872, file: !4873, line: 117, baseType: !474, size: 32, offset: 1088)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4872, file: !4873, line: 118, baseType: !522, size: 64, align: 64, offset: 1152)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4872, file: !4873, line: 120, baseType: !522, size: 64, offset: 1216)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4872, file: !4873, line: 121, baseType: !522, size: 64, offset: 1280)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4872, file: !4873, line: 122, baseType: !522, size: 64, offset: 1344)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4872, file: !4873, line: 123, baseType: !522, size: 64, offset: 1408)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4872, file: !4873, line: 133, baseType: !522, size: 64, offset: 1472)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4872, file: !4873, line: 137, baseType: !522, size: 64, offset: 1536)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4872, file: !4873, line: 142, baseType: !522, size: 64, offset: 1600)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4872, file: !4873, line: 143, baseType: !522, size: 64, offset: 1664)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4872, file: !4873, line: 146, baseType: !522, size: 64, offset: 1728)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4872, file: !4873, line: 147, baseType: !522, size: 64, offset: 1792)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4872, file: !4873, line: 148, baseType: !522, size: 64, offset: 1856)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4872, file: !4873, line: 149, baseType: !522, size: 64, offset: 1920)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4872, file: !4873, line: 154, baseType: !522, size: 64, offset: 1984)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4872, file: !4873, line: 155, baseType: !522, size: 64, offset: 2048)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4872, file: !4873, line: 156, baseType: !522, size: 64, offset: 2112)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4872, file: !4873, line: 158, baseType: !522, size: 64, offset: 2176)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4872, file: !4873, line: 159, baseType: !522, size: 64, offset: 2240)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4872, file: !4873, line: 162, baseType: !522, size: 64, offset: 2304)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4872, file: !4873, line: 163, baseType: !522, size: 64, offset: 2368)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4872, file: !4873, line: 164, baseType: !522, size: 64, offset: 2432)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4872, file: !4873, line: 167, baseType: !522, size: 64, offset: 2496)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4872, file: !4873, line: 168, baseType: !522, size: 64, offset: 2560)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4872, file: !4873, line: 171, baseType: !522, size: 64, offset: 2624)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4872, file: !4873, line: 172, baseType: !522, size: 64, offset: 2688)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4872, file: !4873, line: 175, baseType: !522, size: 64, offset: 2752)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4872, file: !4873, line: 178, baseType: !522, size: 64, offset: 2816)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4872, file: !4873, line: 179, baseType: !522, size: 64, offset: 2880)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4872, file: !4873, line: 182, baseType: !474, size: 32, offset: 2944)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4872, file: !4873, line: 186, baseType: !522, size: 64, align: 64, offset: 3008)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4872, file: !4873, line: 194, baseType: !522, size: 64, offset: 3072)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4872, file: !4873, line: 195, baseType: !522, size: 64, offset: 3136)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4872, file: !4873, line: 199, baseType: !522, size: 64, offset: 3200)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4872, file: !4873, line: 200, baseType: !522, size: 64, offset: 3264)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4872, file: !4873, line: 203, baseType: !522, size: 64, offset: 3328)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4872, file: !4873, line: 204, baseType: !522, size: 64, offset: 3392)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4746, file: !4747, line: 222, baseType: !7, size: 32, offset: 7936)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4746, file: !4747, line: 223, baseType: !4934, size: 64, offset: 8000)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4747, line: 223, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4746, file: !4747, line: 230, baseType: !987, size: 8, offset: 8064)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4746, file: !4747, line: 231, baseType: !922, size: 16, offset: 8080)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4746, file: !4747, line: 232, baseType: !922, size: 16, offset: 8096)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4746, file: !4747, line: 234, baseType: !767, size: 64, offset: 8128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4746, file: !4747, line: 237, baseType: !368, size: 256, offset: 8192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4746, file: !4747, line: 243, baseType: !823, size: 320, offset: 8448)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !463, file: !464, line: 1111, baseType: !4943, size: 64, offset: 15424)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4747, line: 20, size: 16640, elements: !4945)
!4945 = !{!4946, !4947, !4948, !4949}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4944, file: !4747, line: 21, baseType: !59, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4944, file: !4747, line: 22, baseType: !413, size: 32, offset: 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4944, file: !4747, line: 23, baseType: !54, size: 192, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4944, file: !4747, line: 24, baseType: !4950, size: 16384, offset: 256)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4951, size: 16384, elements: !1477)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4758, line: 51, size: 256, elements: !4952)
!4952 = !{!4953}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4951, file: !4758, line: 52, baseType: !4954, size: 256)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4758, line: 37, size: 256, elements: !4955)
!4955 = !{!4956, !4963, !4964, !4968}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4954, file: !4758, line: 39, baseType: !4957, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4958, line: 83, baseType: !4959)
!4958 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4958, line: 82, baseType: !4961)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !22}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4954, file: !4758, line: 40, baseType: !39, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4954, file: !4758, line: 46, baseType: !4965, size: 64, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4958, line: 86, baseType: !4966)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4958, line: 85, baseType: !2463)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4954, file: !4758, line: 48, baseType: !4762, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !463, file: !464, line: 1112, baseType: !4762, size: 64, offset: 15488)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !463, file: !464, line: 1113, baseType: !4762, size: 64, offset: 15552)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !463, file: !464, line: 1115, baseType: !4762, size: 64, offset: 15616)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !463, file: !464, line: 1116, baseType: !4757, size: 192, offset: 15680)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !463, file: !464, line: 1117, baseType: !39, size: 64, offset: 15872)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !463, file: !464, line: 1118, baseType: !35, size: 64, offset: 15936)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !463, file: !464, line: 1119, baseType: !7, size: 32, offset: 16000)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !463, file: !464, line: 1121, baseType: !350, size: 64, offset: 16064)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !463, file: !464, line: 1125, baseType: !4978, size: 64, offset: 16128)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !464, line: 43, flags: DIFlagFwdDecl)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !463, file: !464, line: 1127, baseType: !960, size: 32, offset: 16192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !463, file: !464, line: 1128, baseType: !7, size: 32, offset: 16224)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !463, file: !464, line: 1130, baseType: !4983, size: 128, offset: 16256)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4984, line: 37, size: 128, elements: !4985)
!4984 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4985 = !{!4986, !4987, !4988}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4983, file: !4984, line: 38, baseType: !22, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4983, file: !4984, line: 39, baseType: !49, size: 32, offset: 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4983, file: !4984, line: 40, baseType: !4989, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4984, line: 24, flags: DIFlagFwdDecl)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !463, file: !464, line: 1131, baseType: !4992, size: 256, offset: 16384)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4993, line: 12, size: 256, elements: !4994)
!4993 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4994 = !{!4995, !4996, !4997, !4998}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4992, file: !4993, line: 13, baseType: !1064, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4992, file: !4993, line: 14, baseType: !39, size: 64, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4992, file: !4993, line: 15, baseType: !39, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4992, file: !4993, line: 16, baseType: !987, size: 8, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !463, file: !464, line: 1134, baseType: !521, size: 64, offset: 16640)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !463, file: !464, line: 1135, baseType: !521, size: 64, offset: 16704)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !463, file: !464, line: 1138, baseType: !59, size: 32, offset: 16768)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !463, file: !464, line: 1141, baseType: !373, size: 32, offset: 16800)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !463, file: !464, line: 1143, baseType: !5004, size: 64, offset: 16832)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !464, line: 735, size: 64, elements: !5005)
!5005 = !{!5006}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5004, file: !464, line: 736, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !463, file: !464, line: 1147, baseType: !650, size: 128, offset: 16896)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !463, file: !464, line: 1149, baseType: !462, size: 64, offset: 17024)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !463, file: !464, line: 1151, baseType: !5011, size: 64, offset: 17088)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !464, line: 1151, flags: DIFlagFwdDecl)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !463, file: !464, line: 1188, baseType: !20, size: 64, offset: 17152)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !463, file: !464, line: 1191, baseType: !5015, size: 64, offset: 17216)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !464, line: 44, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !463, file: !464, line: 1194, baseType: !5018, size: 64, offset: 17280)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !464, line: 45, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !463, file: !464, line: 1197, baseType: !5021, size: 64, offset: 17344)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4275, line: 155, size: 64, elements: !5023)
!5023 = !{!5024}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5022, file: !4275, line: 157, baseType: !39, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !463, file: !464, line: 1199, baseType: !5026, size: 64, offset: 17408)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2796, line: 99, size: 128, elements: !5028)
!5028 = !{!5029, !5030, !5031}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5027, file: !2796, line: 100, baseType: !359, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5027, file: !2796, line: 101, baseType: !49, size: 32, offset: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5027, file: !2796, line: 103, baseType: !26, size: 16, offset: 96)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !463, file: !464, line: 1202, baseType: !5033, size: 64, offset: 17472)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !464, line: 48, flags: DIFlagFwdDecl)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !463, file: !464, line: 1205, baseType: !39, size: 64, offset: 17536)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !463, file: !464, line: 1206, baseType: !5037, size: 64, offset: 17600)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4758, line: 14, baseType: !5039)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4758, line: 12, size: 384, elements: !5040)
!5040 = !{!5041}
!5041 = !DIDerivedType(tag: DW_TAG_member, scope: !5039, file: !4758, line: 13, baseType: !5042, size: 384)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5039, file: !4758, line: 13, size: 384, elements: !5043)
!5043 = !{!5044, !5045, !5046, !5047}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5042, file: !4758, line: 13, baseType: !22, size: 32)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5042, file: !4758, line: 13, baseType: !22, size: 32, offset: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5042, file: !4758, line: 13, baseType: !22, size: 32, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5042, file: !4758, line: 13, baseType: !5048, size: 256, offset: 128)
!5048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5049, line: 37, size: 256, elements: !5050)
!5049 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5050 = !{!5051, !5056, !5069, !5075, !5084, !5111, !5116}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5048, file: !5049, line: 42, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 39, size: 64, elements: !5053)
!5053 = !{!5054, !5055}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5052, file: !5049, line: 40, baseType: !1301, size: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5052, file: !5049, line: 41, baseType: !966, size: 32, offset: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5048, file: !5049, line: 50, baseType: !5057, size: 192)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 45, size: 192, elements: !5058)
!5058 = !{!5059, !5061, !5062, !5068}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5057, file: !5049, line: 46, baseType: !5060, size: 32)
!5060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5057, file: !5049, line: 47, baseType: !22, size: 32, offset: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5057, file: !5049, line: 48, baseType: !5063, size: 64, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5049, line: 11, baseType: !5064)
!5064 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5049, line: 8, size: 64, elements: !5065)
!5065 = !{!5066, !5067}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5064, file: !5049, line: 9, baseType: !22, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5064, file: !5049, line: 10, baseType: !20, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5057, file: !5049, line: 49, baseType: !22, size: 32, offset: 128)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5048, file: !5049, line: 57, baseType: !5070, size: 128)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 53, size: 128, elements: !5071)
!5071 = !{!5072, !5073, !5074}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5070, file: !5049, line: 54, baseType: !1301, size: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5070, file: !5049, line: 55, baseType: !966, size: 32, offset: 32)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5070, file: !5049, line: 56, baseType: !5063, size: 64, offset: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5048, file: !5049, line: 66, baseType: !5076, size: 256)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 60, size: 256, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5083}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5076, file: !5049, line: 61, baseType: !1301, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5076, file: !5049, line: 62, baseType: !966, size: 32, offset: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5076, file: !5049, line: 63, baseType: !22, size: 32, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5076, file: !5049, line: 64, baseType: !5082, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !2021)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5076, file: !5049, line: 65, baseType: !5082, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5048, file: !5049, line: 105, baseType: !5085, size: 256)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 69, size: 256, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5085, file: !5049, line: 70, baseType: !20, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, scope: !5085, file: !5049, line: 79, baseType: !5089, size: 192, offset: 64)
!5089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5085, file: !5049, line: 79, size: 192, elements: !5090)
!5090 = !{!5091, !5092, !5093, !5100, !5105}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5089, file: !5049, line: 81, baseType: !22, size: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5089, file: !5049, line: 86, baseType: !922, size: 16)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5089, file: !5049, line: 92, baseType: !5094, size: 192)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5089, file: !5049, line: 88, size: 192, elements: !5095)
!5095 = !{!5096, !5098, !5099}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5094, file: !5049, line: 89, baseType: !5097, size: 64)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !629)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5094, file: !5049, line: 90, baseType: !20, size: 64, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5094, file: !5049, line: 91, baseType: !20, size: 64, offset: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5089, file: !5049, line: 97, baseType: !5101, size: 96)
!5101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5089, file: !5049, line: 94, size: 96, elements: !5102)
!5102 = !{!5103, !5104}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5101, file: !5049, line: 95, baseType: !5097, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5101, file: !5049, line: 96, baseType: !474, size: 32, offset: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5089, file: !5049, line: 103, baseType: !5106, size: 128)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5089, file: !5049, line: 99, size: 128, elements: !5107)
!5107 = !{!5108, !5109, !5110}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5106, file: !5049, line: 100, baseType: !39, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5106, file: !5049, line: 101, baseType: !474, size: 32, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5106, file: !5049, line: 102, baseType: !474, size: 32, offset: 96)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5048, file: !5049, line: 111, baseType: !5112, size: 128)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 108, size: 128, elements: !5113)
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5112, file: !5049, line: 109, baseType: !905, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5112, file: !5049, line: 110, baseType: !22, size: 32, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5048, file: !5049, line: 118, baseType: !5117, size: 128)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5048, file: !5049, line: 114, size: 128, elements: !5118)
!5118 = !{!5119, !5120, !5121}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5117, file: !5049, line: 115, baseType: !20, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5117, file: !5049, line: 116, baseType: !22, size: 32, offset: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5117, file: !5049, line: 117, baseType: !7, size: 32, offset: 96)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !463, file: !464, line: 1208, baseType: !4842, size: 448, offset: 17664)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !463, file: !464, line: 1215, baseType: !521, size: 64, offset: 18112)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !463, file: !464, line: 1217, baseType: !521, size: 64, offset: 18176)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !463, file: !464, line: 1219, baseType: !521, size: 64, offset: 18240)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !463, file: !464, line: 1223, baseType: !5127, size: 64, offset: 18304)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5128, line: 99, baseType: !5129)
!5128 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5128, line: 99, size: 64, elements: !5130)
!5130 = !{!5131}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5129, file: !5128, line: 99, baseType: !718, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !463, file: !464, line: 1225, baseType: !1803, size: 32, offset: 18368)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !463, file: !464, line: 1226, baseType: !22, size: 32, offset: 18400)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !463, file: !464, line: 1227, baseType: !22, size: 32, offset: 18432)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !463, file: !464, line: 1231, baseType: !1514, size: 64, offset: 18496)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !463, file: !464, line: 1233, baseType: !97, size: 128, offset: 18560)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !463, file: !464, line: 1240, baseType: !5138, size: 64, offset: 18688)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !464, line: 62, flags: DIFlagFwdDecl)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !463, file: !464, line: 1242, baseType: !5141, size: 64, offset: 18752)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5143, line: 392, size: 96, elements: !5144)
!5143 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5144 = !{!5145, !5151, !5153}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5142, file: !5143, line: 393, baseType: !5146, size: 32)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5143, line: 388, size: 32, elements: !5147)
!5147 = !{!5148}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5146, file: !5143, line: 389, baseType: !5149, size: 32)
!5149 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5150, line: 46, baseType: !473)
!5150 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5142, file: !5143, line: 394, baseType: !5152, size: 32, offset: 32)
!5152 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5150, line: 42, baseType: !869)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5142, file: !5143, line: 395, baseType: !5149, size: 32, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !463, file: !464, line: 1244, baseType: !97, size: 128, offset: 18816)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !463, file: !464, line: 1245, baseType: !5156, size: 64, offset: 18944)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !464, line: 51, flags: DIFlagFwdDecl)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !463, file: !464, line: 1246, baseType: !368, size: 256, offset: 19008)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !463, file: !464, line: 1247, baseType: !7, size: 32, offset: 19264)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !463, file: !464, line: 1250, baseType: !5161, size: 64, offset: 19328)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !464, line: 57, flags: DIFlagFwdDecl)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !463, file: !464, line: 1251, baseType: !368, size: 256, offset: 19392)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !463, file: !464, line: 1252, baseType: !97, size: 128, offset: 19648)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !463, file: !464, line: 1259, baseType: !1690, size: 64, offset: 19776)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !463, file: !464, line: 1260, baseType: !922, size: 16, offset: 19840)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !463, file: !464, line: 1261, baseType: !922, size: 16, offset: 19856)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !463, file: !464, line: 1314, baseType: !5169, size: 64, offset: 19904)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5171, line: 62, size: 256, align: 256, elements: !5172)
!5171 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5170, file: !5171, line: 75, baseType: !474, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5170, file: !5171, line: 90, baseType: !474, size: 32, offset: 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5170, file: !5171, line: 112, baseType: !522, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5170, file: !5171, line: 132, baseType: !474, size: 32, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5170, file: !5171, line: 140, baseType: !474, size: 32, offset: 160)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5170, file: !5171, line: 149, baseType: !474, size: 32, offset: 192)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5170, file: !5171, line: 154, baseType: !5180, offset: 224)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1218)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !463, file: !464, line: 1315, baseType: !473, size: 32, offset: 19968)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !463, file: !464, line: 1316, baseType: !473, size: 32, offset: 20000)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !463, file: !464, line: 1321, baseType: !39, size: 64, offset: 20032)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !463, file: !464, line: 1325, baseType: !22, size: 32, offset: 20096)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !463, file: !464, line: 1326, baseType: !22, size: 32, offset: 20128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !463, file: !464, line: 1327, baseType: !22, size: 32, offset: 20160)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !463, file: !464, line: 1328, baseType: !22, size: 32, offset: 20192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !463, file: !464, line: 1329, baseType: !347, size: 128, align: 64, offset: 20224)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !463, file: !464, line: 1332, baseType: !5190, size: 128, offset: 20352)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5191, line: 51, size: 128, elements: !5192)
!5191 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5192 = !{!5193, !5198, !5199}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5190, file: !5191, line: 60, baseType: !5194, size: 64)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5195, line: 7, size: 64, elements: !5196)
!5195 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5196 = !{!5197}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5194, file: !5195, line: 12, baseType: !715, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5190, file: !5191, line: 63, baseType: !987, size: 8, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5190, file: !5191, line: 70, baseType: !987, size: 8, offset: 72)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !463, file: !464, line: 1335, baseType: !4096, size: 64, offset: 20480)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !463, file: !464, line: 1337, baseType: !5202, size: 128, offset: 20544)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5191, line: 39, size: 128, elements: !5203)
!5203 = !{!5204, !5205, !5206}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5202, file: !5191, line: 40, baseType: !1749, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5202, file: !5191, line: 42, baseType: !474, size: 32, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5202, file: !5191, line: 43, baseType: !474, size: 32, offset: 96)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !463, file: !464, line: 1340, baseType: !5208, size: 64, offset: 20672)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !464, line: 69, flags: DIFlagFwdDecl)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !463, file: !464, line: 1351, baseType: !22, size: 32, offset: 20736)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !463, file: !464, line: 1352, baseType: !22, size: 32, offset: 20768)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !463, file: !464, line: 1354, baseType: !39, size: 64, offset: 20800)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !463, file: !464, line: 1364, baseType: !521, size: 64, offset: 20864)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !463, file: !464, line: 1365, baseType: !521, size: 64, offset: 20928)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !463, file: !464, line: 1412, baseType: !39, size: 64, offset: 20992)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !463, file: !464, line: 1453, baseType: !2791, size: 64, offset: 21056)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !463, file: !464, line: 1457, baseType: !5218, size: 64, offset: 21120)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !239, line: 61, size: 576, elements: !5220)
!5220 = !{!5221, !5222, !5241, !5244, !5245, !5278, !5288}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5219, file: !239, line: 62, baseType: !238, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, scope: !5219, file: !239, line: 64, baseType: !5223, size: 192, offset: 64)
!5223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5219, file: !239, line: 64, size: 192, elements: !5224)
!5224 = !{!5225, !5236}
!5225 = !DIDerivedType(tag: DW_TAG_member, scope: !5223, file: !239, line: 65, baseType: !5226, size: 192)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5223, file: !239, line: 65, size: 192, elements: !5227)
!5227 = !{!5228, !5235}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5226, file: !239, line: 66, baseType: !5229, size: 128)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5230, line: 50, size: 128, elements: !5231)
!5230 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5231 = !{!5232, !5233, !5234}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5229, file: !5230, line: 52, baseType: !39, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5229, file: !5230, line: 54, baseType: !7, size: 32, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5229, file: !5230, line: 55, baseType: !7, size: 32, offset: 96)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5226, file: !239, line: 67, baseType: !39, size: 64, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, scope: !5223, file: !239, line: 70, baseType: !5237, size: 192)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5223, file: !239, line: 70, size: 192, elements: !5238)
!5238 = !{!5239, !5240}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5237, file: !239, line: 71, baseType: !347, size: 128, align: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5237, file: !239, line: 72, baseType: !39, size: 64, offset: 128)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5219, file: !239, line: 76, baseType: !5242, size: 64, offset: 256)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !239, line: 76, flags: DIFlagFwdDecl)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5219, file: !239, line: 77, baseType: !39, size: 64, offset: 320)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5219, file: !239, line: 79, baseType: !5246, size: 64, offset: 384)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5230, line: 25, size: 256, elements: !5248)
!5248 = !{!5249, !5255, !5259}
!5249 = !DIDerivedType(tag: DW_TAG_member, scope: !5247, file: !5230, line: 26, baseType: !5250, size: 128)
!5250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5247, file: !5230, line: 26, size: 128, elements: !5251)
!5251 = !{!5252, !5254}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5250, file: !5230, line: 27, baseType: !5253, size: 128)
!5253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !1429)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5250, file: !5230, line: 28, baseType: !5253, size: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5247, file: !5230, line: 31, baseType: !5256, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5258)
!5258 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5230, line: 23, flags: DIFlagFwdDecl)
!5259 = !DIDerivedType(tag: DW_TAG_member, scope: !5247, file: !5230, line: 33, baseType: !5260, size: 64, offset: 192)
!5260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5247, file: !5230, line: 33, size: 64, elements: !5261)
!5261 = !{!5262, !5268, !5273}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5260, file: !5230, line: 38, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5260, file: !5230, line: 34, size: 64, elements: !5264)
!5264 = !{!5265, !5266, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5263, file: !5230, line: 35, baseType: !869, size: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5263, file: !5230, line: 36, baseType: !83, size: 8, offset: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5263, file: !5230, line: 37, baseType: !83, size: 8, offset: 40)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5260, file: !5230, line: 42, baseType: !5269, size: 16)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5260, file: !5230, line: 39, size: 16, elements: !5270)
!5270 = !{!5271, !5272}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5269, file: !5230, line: 40, baseType: !83, size: 8)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5269, file: !5230, line: 41, baseType: !83, size: 8, offset: 8)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5260, file: !5230, line: 46, baseType: !5274, size: 16)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5260, file: !5230, line: 43, size: 16, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5274, file: !5230, line: 44, baseType: !83, size: 8)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5274, file: !5230, line: 45, baseType: !83, size: 8, offset: 8)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5219, file: !239, line: 81, baseType: !5279, size: 64, offset: 448)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !239, line: 85, size: 384, elements: !5281)
!5281 = !{!5282, !5283, !5284, !5285, !5286, !5287}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5280, file: !239, line: 86, baseType: !5242, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5280, file: !239, line: 87, baseType: !39, size: 64, offset: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5280, file: !239, line: 88, baseType: !39, size: 64, offset: 128)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5280, file: !239, line: 89, baseType: !39, size: 64, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5280, file: !239, line: 90, baseType: !987, size: 8, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5280, file: !239, line: 92, baseType: !5279, size: 64, offset: 320)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5219, file: !239, line: 82, baseType: !7, size: 32, offset: 512)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !463, file: !464, line: 1463, baseType: !5290, offset: 21184)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !464, line: 739, elements: !788)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !463, file: !464, line: 1470, baseType: !347, size: 128, align: 64, offset: 21184)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !463, file: !464, line: 1471, baseType: !413, size: 32, offset: 21312)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !463, file: !464, line: 1472, baseType: !22, size: 32, offset: 21344)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !463, file: !464, line: 1474, baseType: !462, size: 64, offset: 21376)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !463, file: !464, line: 1475, baseType: !2359, size: 320, offset: 21440)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !463, file: !464, line: 1478, baseType: !5297, size: 64, offset: 21760)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5299, line: 49, size: 512, elements: !5300)
!5299 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5300 = !{!5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5310}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5298, file: !5299, line: 50, baseType: !5297, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5298, file: !5299, line: 51, baseType: !20, size: 64, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5298, file: !5299, line: 52, baseType: !39, size: 64, offset: 128)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5298, file: !5299, line: 53, baseType: !39, size: 64, offset: 192)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5298, file: !5299, line: 54, baseType: !4226, size: 64, offset: 256)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5298, file: !5299, line: 56, baseType: !7, size: 32, offset: 320)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5298, file: !5299, line: 58, baseType: !7, size: 32, offset: 352)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5298, file: !5299, line: 59, baseType: !5309, size: 64, offset: 384)
!5309 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !25, line: 159, baseType: !521)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5298, file: !5299, line: 60, baseType: !902, size: 64, offset: 448)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !463, file: !464, line: 1482, baseType: !413, size: 32, offset: 21824)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !463, file: !464, line: 1489, baseType: !20, size: 64, offset: 21888)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !463, file: !464, line: 1504, baseType: !20, size: 64, offset: 21952)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !463, file: !464, line: 1505, baseType: !522, size: 64, offset: 22016)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !463, file: !464, line: 1506, baseType: !521, size: 64, offset: 22080)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !463, file: !464, line: 1507, baseType: !522, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !463, file: !464, line: 1508, baseType: !522, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !463, file: !464, line: 1509, baseType: !522, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !463, file: !464, line: 1510, baseType: !347, size: 128, align: 64, offset: 22208)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !463, file: !464, line: 1511, baseType: !22, size: 32, offset: 22336)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !463, file: !464, line: 1515, baseType: !5322, size: 64, offset: 22400)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !342, line: 56, size: 64, elements: !5323)
!5323 = !{!5324}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5322, file: !342, line: 57, baseType: !345, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !463, file: !464, line: 1518, baseType: !5322, size: 64, offset: 22464)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !463, file: !464, line: 1528, baseType: !347, size: 128, align: 64, offset: 22528)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !463, file: !464, line: 1552, baseType: !5328, size: 35328, offset: 23040)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5329, line: 430, size: 35328, elements: !5330)
!5329 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5330 = !{!5331, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5360, !5361, !5362, !5363, !5364, !5365, !5368, !5369, !5370, !5371}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5328, file: !5329, line: 432, baseType: !5332, size: 192)
!5332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5333, size: 192, elements: !405)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5334, line: 16, size: 64, elements: !5335)
!5334 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5335 = !{!5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5333, file: !5334, line: 17, baseType: !93, size: 16)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5333, file: !5334, line: 18, baseType: !93, size: 16, offset: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5333, file: !5334, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5333, file: !5334, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5333, file: !5334, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5333, file: !5334, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5333, file: !5334, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5333, file: !5334, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5333, file: !5334, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5333, file: !5334, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5333, file: !5334, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5333, file: !5334, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5333, file: !5334, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5328, file: !5329, line: 436, baseType: !39, size: 64, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5328, file: !5329, line: 440, baseType: !26, size: 16, offset: 256)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5328, file: !5329, line: 441, baseType: !26, size: 16, offset: 272)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5328, file: !5329, line: 442, baseType: !26, size: 16, offset: 288)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5328, file: !5329, line: 443, baseType: !26, size: 16, offset: 304)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5328, file: !5329, line: 447, baseType: !39, size: 64, offset: 320)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5328, file: !5329, line: 448, baseType: !39, size: 64, offset: 384)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5328, file: !5329, line: 459, baseType: !5357, size: 256, offset: 448)
!5357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5358, size: 256, elements: !431)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5329, line: 428, flags: DIFlagFwdDecl)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5328, file: !5329, line: 461, baseType: !39, size: 64, offset: 704)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5328, file: !5329, line: 463, baseType: !39, size: 64, offset: 768)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5328, file: !5329, line: 465, baseType: !39, size: 64, offset: 832)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5328, file: !5329, line: 466, baseType: !39, size: 64, offset: 896)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5328, file: !5329, line: 467, baseType: !39, size: 64, offset: 960)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5328, file: !5329, line: 473, baseType: !5366, size: 64, offset: 1024)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5329, line: 10, flags: DIFlagFwdDecl)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5328, file: !5329, line: 480, baseType: !39, size: 64, offset: 1088)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5328, file: !5329, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5328, file: !5329, line: 491, baseType: !473, size: 32, offset: 1184)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5328, file: !5329, line: 501, baseType: !5372, size: 33792, offset: 1536)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5373, line: 448, size: 33792, elements: !5374)
!5373 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5374 = !{!5375, !5376, !5377, !5537, !5538, !5544, !5545}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5372, file: !5373, line: 461, baseType: !7, size: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5372, file: !5373, line: 468, baseType: !39, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5372, file: !5373, line: 476, baseType: !5378, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5373, line: 356, size: 33280, align: 512, elements: !5380)
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5379, file: !5373, line: 358, baseType: !7, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5379, file: !5373, line: 361, baseType: !7, size: 32, offset: 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5379, file: !5373, line: 364, baseType: !521, size: 64, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5379, file: !5373, line: 367, baseType: !521, size: 64, offset: 128)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5379, file: !5373, line: 370, baseType: !521, size: 64, offset: 192)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5379, file: !5373, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5379, file: !5373, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5379, file: !5373, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5379, file: !5373, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5379, file: !5373, line: 397, baseType: !5391, size: 32768, offset: 512)
!5391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5373, line: 348, size: 32768, elements: !5392)
!5392 = !{!5393, !5408, !5445, !5522, !5535}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5391, file: !5373, line: 349, baseType: !5394, size: 896)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5373, line: 12, size: 896, elements: !5395)
!5395 = !{!5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5407}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5394, file: !5373, line: 13, baseType: !473, size: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5394, file: !5373, line: 14, baseType: !473, size: 32, offset: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5394, file: !5373, line: 15, baseType: !473, size: 32, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5394, file: !5373, line: 16, baseType: !473, size: 32, offset: 96)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5394, file: !5373, line: 17, baseType: !473, size: 32, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5394, file: !5373, line: 18, baseType: !473, size: 32, offset: 160)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5394, file: !5373, line: 19, baseType: !473, size: 32, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5394, file: !5373, line: 22, baseType: !5404, size: 640, offset: 224)
!5404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 640, elements: !5405)
!5405 = !{!5406}
!5406 = !DISubrange(count: 20)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5394, file: !5373, line: 25, baseType: !473, size: 32, offset: 864)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5391, file: !5373, line: 350, baseType: !5409, size: 4096, align: 128)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5373, line: 34, size: 4096, align: 128, elements: !5410)
!5410 = !{!5411, !5412, !5413, !5414, !5415, !5430, !5431, !5432, !5434, !5436, !5440}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5409, file: !5373, line: 35, baseType: !93, size: 16)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5409, file: !5373, line: 36, baseType: !93, size: 16, offset: 16)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5409, file: !5373, line: 37, baseType: !93, size: 16, offset: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5409, file: !5373, line: 38, baseType: !93, size: 16, offset: 48)
!5415 = !DIDerivedType(tag: DW_TAG_member, scope: !5409, file: !5373, line: 39, baseType: !5416, size: 128, offset: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5409, file: !5373, line: 39, size: 128, elements: !5417)
!5417 = !{!5418, !5423}
!5418 = !DIDerivedType(tag: DW_TAG_member, scope: !5416, file: !5373, line: 40, baseType: !5419, size: 128)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5416, file: !5373, line: 40, size: 128, elements: !5420)
!5420 = !{!5421, !5422}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5419, file: !5373, line: 41, baseType: !521, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5419, file: !5373, line: 42, baseType: !521, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, scope: !5416, file: !5373, line: 44, baseType: !5424, size: 128)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5416, file: !5373, line: 44, size: 128, elements: !5425)
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5424, file: !5373, line: 45, baseType: !473, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5424, file: !5373, line: 46, baseType: !473, size: 32, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5424, file: !5373, line: 47, baseType: !473, size: 32, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5424, file: !5373, line: 48, baseType: !473, size: 32, offset: 96)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5409, file: !5373, line: 51, baseType: !473, size: 32, offset: 192)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5409, file: !5373, line: 52, baseType: !473, size: 32, offset: 224)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5409, file: !5373, line: 55, baseType: !5433, size: 1024, offset: 256)
!5433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 1024, elements: !1834)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5409, file: !5373, line: 58, baseType: !5435, size: 2048, offset: 1280)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 2048, elements: !1477)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5409, file: !5373, line: 60, baseType: !5437, size: 384, offset: 3328)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 384, elements: !5438)
!5438 = !{!5439}
!5439 = !DISubrange(count: 12)
!5440 = !DIDerivedType(tag: DW_TAG_member, scope: !5409, file: !5373, line: 62, baseType: !5441, size: 384, offset: 3712)
!5441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5409, file: !5373, line: 62, size: 384, elements: !5442)
!5442 = !{!5443, !5444}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5441, file: !5373, line: 63, baseType: !5437, size: 384)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5441, file: !5373, line: 64, baseType: !5437, size: 384)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5391, file: !5373, line: 351, baseType: !5446, size: 1088)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5373, line: 79, size: 1088, elements: !5447)
!5447 = !{!5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5521}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5446, file: !5373, line: 80, baseType: !473, size: 32)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5446, file: !5373, line: 81, baseType: !473, size: 32, offset: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5446, file: !5373, line: 82, baseType: !473, size: 32, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5446, file: !5373, line: 83, baseType: !473, size: 32, offset: 96)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5446, file: !5373, line: 84, baseType: !473, size: 32, offset: 128)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5446, file: !5373, line: 85, baseType: !473, size: 32, offset: 160)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5446, file: !5373, line: 86, baseType: !473, size: 32, offset: 192)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5446, file: !5373, line: 88, baseType: !5404, size: 640, offset: 224)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5446, file: !5373, line: 89, baseType: !83, size: 8, offset: 864)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5446, file: !5373, line: 90, baseType: !83, size: 8, offset: 872)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5446, file: !5373, line: 91, baseType: !83, size: 8, offset: 880)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5446, file: !5373, line: 92, baseType: !83, size: 8, offset: 888)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5446, file: !5373, line: 93, baseType: !83, size: 8, offset: 896)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5446, file: !5373, line: 94, baseType: !83, size: 8, offset: 904)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5446, file: !5373, line: 95, baseType: !5463, size: 64, offset: 960)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5465, line: 11, size: 128, elements: !5466)
!5465 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5466 = !{!5467, !5468}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5464, file: !5465, line: 12, baseType: !905, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5464, file: !5465, line: 13, baseType: !5469, size: 64, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5471, line: 103, size: 1344, elements: !5472)
!5471 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5472 = !{!5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5501, !5502, !5503}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5470, file: !5471, line: 109, baseType: !39, size: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5470, file: !5471, line: 110, baseType: !39, size: 64, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5470, file: !5471, line: 111, baseType: !39, size: 64, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5470, file: !5471, line: 112, baseType: !39, size: 64, offset: 192)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5470, file: !5471, line: 113, baseType: !39, size: 64, offset: 256)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5470, file: !5471, line: 114, baseType: !39, size: 64, offset: 320)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5470, file: !5471, line: 117, baseType: !39, size: 64, offset: 384)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5470, file: !5471, line: 118, baseType: !39, size: 64, offset: 448)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5470, file: !5471, line: 119, baseType: !39, size: 64, offset: 512)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5470, file: !5471, line: 120, baseType: !39, size: 64, offset: 576)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5470, file: !5471, line: 121, baseType: !39, size: 64, offset: 640)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5470, file: !5471, line: 122, baseType: !39, size: 64, offset: 704)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5470, file: !5471, line: 123, baseType: !39, size: 64, offset: 768)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5470, file: !5471, line: 124, baseType: !39, size: 64, offset: 832)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5470, file: !5471, line: 125, baseType: !39, size: 64, offset: 896)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5470, file: !5471, line: 139, baseType: !39, size: 64, offset: 960)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5470, file: !5471, line: 142, baseType: !39, size: 64, offset: 1024)
!5490 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5471, line: 144, baseType: !5491, size: 64, offset: 1088)
!5491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5471, line: 144, size: 64, elements: !5492)
!5492 = !{!5493, !5494, !5495}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5491, file: !5471, line: 146, baseType: !93, size: 16)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5491, file: !5471, line: 148, baseType: !521, size: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5491, file: !5471, line: 150, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5471, line: 59, size: 64, elements: !5497)
!5497 = !{!5498, !5499, !5500}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5496, file: !5471, line: 61, baseType: !521, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5496, file: !5471, line: 63, baseType: !521, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5496, file: !5471, line: 65, baseType: !521, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5470, file: !5471, line: 153, baseType: !39, size: 64, offset: 1152)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5470, file: !5471, line: 154, baseType: !39, size: 64, offset: 1216)
!5503 = !DIDerivedType(tag: DW_TAG_member, scope: !5470, file: !5471, line: 156, baseType: !5504, size: 64, offset: 1280)
!5504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5470, file: !5471, line: 156, size: 64, elements: !5505)
!5505 = !{!5506, !5507, !5508}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5504, file: !5471, line: 158, baseType: !93, size: 16)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5504, file: !5471, line: 160, baseType: !521, size: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5504, file: !5471, line: 162, baseType: !5509, size: 64)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5471, line: 69, size: 64, elements: !5510)
!5510 = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5509, file: !5471, line: 71, baseType: !521, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5509, file: !5471, line: 73, baseType: !521, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5509, file: !5471, line: 75, baseType: !521, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5509, file: !5471, line: 77, baseType: !521, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5509, file: !5471, line: 80, baseType: !521, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5509, file: !5471, line: 83, baseType: !521, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5509, file: !5471, line: 86, baseType: !521, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5509, file: !5471, line: 88, baseType: !521, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5509, file: !5471, line: 93, baseType: !521, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5509, file: !5471, line: 100, baseType: !521, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5446, file: !5373, line: 96, baseType: !473, size: 32, offset: 1024)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5391, file: !5373, line: 352, baseType: !5523, size: 4608, align: 512)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5373, line: 333, size: 4608, align: 512, elements: !5524)
!5524 = !{!5525, !5526, !5533}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5523, file: !5373, line: 334, baseType: !5409, size: 4096, align: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5523, file: !5373, line: 335, baseType: !5527, size: 512, offset: 4096)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5373, line: 312, size: 512, elements: !5528)
!5528 = !{!5529, !5530, !5531}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5527, file: !5373, line: 313, baseType: !521, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5527, file: !5373, line: 314, baseType: !521, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5527, file: !5373, line: 315, baseType: !5532, size: 384, offset: 128)
!5532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 384, elements: !1042)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5523, file: !5373, line: 336, baseType: !5534, offset: 4608)
!5534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1218)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5391, file: !5373, line: 353, baseType: !5536, size: 32768)
!5536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !4547)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5372, file: !5373, line: 484, baseType: !5378, size: 64, offset: 192)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5372, file: !5373, line: 491, baseType: !5539, size: 128, offset: 256)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5373, line: 404, size: 128, elements: !5540)
!5540 = !{!5541, !5542, !5543}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5539, file: !5373, line: 424, baseType: !521, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5539, file: !5373, line: 432, baseType: !7, size: 32, offset: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5539, file: !5373, line: 440, baseType: !7, size: 32, offset: 96)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5372, file: !5373, line: 498, baseType: !5539, size: 128, offset: 384)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5372, file: !5373, line: 508, baseType: !5379, size: 33280, align: 512, offset: 512)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !443, file: !444, line: 31, baseType: !5547, size: 64, offset: 448)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5549, line: 11, flags: DIFlagFwdDecl)
!5549 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !443, file: !444, line: 32, baseType: !7, size: 32, offset: 512)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !443, file: !444, line: 33, baseType: !442, size: 64, offset: 576)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !443, file: !444, line: 35, baseType: !5553, size: 64, offset: 640)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !444, line: 17, flags: DIFlagFwdDecl)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !443, file: !444, line: 37, baseType: !929, size: 64, offset: 704)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !443, file: !444, line: 38, baseType: !1185, size: 64, offset: 768)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !443, file: !444, line: 39, baseType: !22, size: 32, offset: 832)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !443, file: !444, line: 40, baseType: !975, size: 192, offset: 896)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !443, file: !444, line: 42, baseType: !22, size: 32, offset: 1088)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !383, file: !155, line: 951, baseType: !245, size: 32, offset: 128)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !383, file: !155, line: 952, baseType: !960, size: 32, offset: 160)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !383, file: !155, line: 952, baseType: !960, size: 32, offset: 192)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !383, file: !155, line: 953, baseType: !22, size: 32, offset: 224)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !335, file: !155, line: 1012, baseType: !1355, size: 64, offset: 896)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !335, file: !155, line: 1013, baseType: !4209, size: 256, offset: 960)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !335, file: !155, line: 1014, baseType: !2681, size: 128, offset: 1216)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !335, file: !155, line: 1015, baseType: !1775, size: 64, offset: 1344)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !335, file: !155, line: 1016, baseType: !3737, size: 64, offset: 1408)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !335, file: !155, line: 1018, baseType: !521, size: 64, offset: 1472)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !335, file: !155, line: 1020, baseType: !20, size: 64, offset: 1536)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !335, file: !155, line: 1023, baseType: !20, size: 64, offset: 1600)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !335, file: !155, line: 1027, baseType: !5573, size: 64, offset: 1664)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !335, file: !155, line: 1029, baseType: !1771, size: 64, offset: 1728)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !335, file: !155, line: 1030, baseType: !3467, size: 32, offset: 1792)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !335, file: !155, line: 1031, baseType: !3467, size: 32, offset: 1824)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "real_path", scope: !332, file: !3, line: 50, baseType: !2681, size: 128, offset: 1856)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5580)
!5580 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !365)
!5584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_rwf_t", file: !5585, line: 287, baseType: !22)
!5585 = !DIFile(filename: "./include/uapi/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05057ca18a14d66575ba14cfa16a2889")
!5586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !39)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5590)
!5590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5573)
!5591 = !{!0, !5592, !5594, !5596, !5607, !5612, !5626, !5628, !5630, !5632, !5634, !5637, !5640, !5642, !5644, !5651, !5654, !5656, !5661, !5663, !5668, !5670, !5673, !5683, !5685, !5690, !5692, !5694, !5698}
!5592 = !DIGlobalVariableExpression(var: !5593, expr: !DIExpression())
!5593 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_max_files357", scope: !2, file: !3, line: 100, type: !20, isLocal: true, isDefinition: true)
!5594 = !DIGlobalVariableExpression(var: !5595, expr: !DIExpression())
!5595 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_file_table__358_153_init_fs_stat_sysctls5359", scope: !2, file: !3, line: 153, type: !20, isLocal: true, isDefinition: true)
!5596 = !DIGlobalVariableExpression(var: !5597, expr: !DIExpression())
!5597 = distinct !DIGlobalVariable(name: "old_max", scope: !5598, file: !3, line: 190, type: !905, isLocal: true, isDefinition: true)
!5598 = distinct !DISubprogram(name: "alloc_empty_file", scope: !3, file: !3, line: 188, type: !5599, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5601)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!795, !22, !1355}
!5601 = !{!5602, !5603, !5604, !5605, !5606}
!5602 = !DILocalVariable(name: "flags", arg: 1, scope: !5598, file: !3, line: 188, type: !22)
!5603 = !DILocalVariable(name: "cred", arg: 2, scope: !5598, file: !3, line: 188, type: !1355)
!5604 = !DILocalVariable(name: "f", scope: !5598, file: !3, line: 191, type: !795)
!5605 = !DILocalVariable(name: "error", scope: !5598, file: !3, line: 192, type: !22)
!5606 = !DILabel(scope: !5598, name: "over", file: !3, line: 220)
!5607 = !DIGlobalVariableExpression(var: !5608, expr: !DIExpression())
!5608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !5609, isLocal: true, isDefinition: true)
!5609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 280, elements: !5610)
!5610 = !{!5611}
!5611 = !DISubrange(count: 35)
!5612 = !DIGlobalVariableExpression(var: !5613, expr: !DIExpression())
!5613 = distinct !DIGlobalVariable(name: "anon_ops", scope: !5614, file: !3, line: 322, type: !1851, isLocal: true, isDefinition: true)
!5614 = distinct !DISubprogram(name: "alloc_file_pseudo", scope: !3, file: !3, line: 318, type: !5615, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!795, !1775, !1897, !16, !22, !3737}
!5617 = !{!5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625}
!5618 = !DILocalVariable(name: "inode", arg: 1, scope: !5614, file: !3, line: 318, type: !1775)
!5619 = !DILocalVariable(name: "mnt", arg: 2, scope: !5614, file: !3, line: 318, type: !1897)
!5620 = !DILocalVariable(name: "name", arg: 3, scope: !5614, file: !3, line: 319, type: !16)
!5621 = !DILocalVariable(name: "flags", arg: 4, scope: !5614, file: !3, line: 319, type: !22)
!5622 = !DILocalVariable(name: "fops", arg: 5, scope: !5614, file: !3, line: 320, type: !3737)
!5623 = !DILocalVariable(name: "this", scope: !5614, file: !3, line: 325, type: !1817)
!5624 = !DILocalVariable(name: "path", scope: !5614, file: !3, line: 326, type: !2681)
!5625 = !DILocalVariable(name: "file", scope: !5614, file: !3, line: 327, type: !795)
!5626 = !DIGlobalVariableExpression(var: !5627, expr: !DIExpression())
!5627 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_alloc_file_pseudo360", scope: !2, file: !3, line: 343, type: !20, isLocal: true, isDefinition: true)
!5628 = !DIGlobalVariableExpression(var: !5629, expr: !DIExpression())
!5629 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_flush_delayed_fput361", scope: !2, file: !3, line: 429, type: !20, isLocal: true, isDefinition: true)
!5630 = !DIGlobalVariableExpression(var: !5631, expr: !DIExpression())
!5631 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fput362", scope: !2, file: !3, line: 468, type: !20, isLocal: true, isDefinition: true)
!5632 = !DIGlobalVariableExpression(var: !5633, expr: !DIExpression())
!5633 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___fput_sync363", scope: !2, file: !3, line: 469, type: !20, isLocal: true, isDefinition: true)
!5634 = !DIGlobalVariableExpression(var: !5635, expr: !DIExpression())
!5635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !5636, isLocal: true, isDefinition: true)
!5636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 40, elements: !947)
!5637 = !DIGlobalVariableExpression(var: !5638, expr: !DIExpression())
!5638 = distinct !DIGlobalVariable(name: "__key", scope: !5639, file: !3, line: 475, type: !2469, isLocal: true, isDefinition: true)
!5639 = distinct !DISubprogram(name: "files_init", scope: !3, file: !3, line: 471, type: !2463, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5640 = !DIGlobalVariableExpression(var: !5641, expr: !DIExpression())
!5641 = distinct !DIGlobalVariable(name: "filp_cachep", scope: !2, file: !3, line: 43, type: !5547, isLocal: true, isDefinition: true)
!5642 = !DIGlobalVariableExpression(var: !5643, expr: !DIExpression())
!5643 = distinct !DIGlobalVariable(name: "nr_files", scope: !2, file: !3, line: 45, type: !861, isLocal: true, isDefinition: true, align: 512)
!5644 = !DIGlobalVariableExpression(var: !5645, expr: !DIExpression())
!5645 = distinct !DIGlobalVariable(name: "files_stat", scope: !2, file: !3, line: 38, type: !5646, isLocal: true, isDefinition: true)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_stat_struct", file: !5585, line: 97, size: 192, elements: !5647)
!5647 = !{!5648, !5649, !5650}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_files", scope: !5646, file: !5585, line: 98, baseType: !39, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free_files", scope: !5646, file: !5585, line: 99, baseType: !39, size: 64, offset: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "max_files", scope: !5646, file: !5585, line: 100, baseType: !39, size: 64, offset: 128)
!5651 = !DIGlobalVariableExpression(var: !5652, expr: !DIExpression())
!5652 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !5653, isLocal: true, isDefinition: true)
!5653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !405)
!5654 = !DIGlobalVariableExpression(var: !5655, expr: !DIExpression())
!5655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !1428, isLocal: true, isDefinition: true)
!5656 = !DIGlobalVariableExpression(var: !5657, expr: !DIExpression())
!5657 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !5658, isLocal: true, isDefinition: true)
!5658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 120, elements: !5659)
!5659 = !{!5660}
!5660 = !DISubrange(count: 15)
!5661 = !DIGlobalVariableExpression(var: !5662, expr: !DIExpression())
!5662 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !5097, isLocal: true, isDefinition: true)
!5663 = !DIGlobalVariableExpression(var: !5664, expr: !DIExpression())
!5664 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !5665, isLocal: true, isDefinition: true)
!5665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, elements: !5666)
!5666 = !{!5667}
!5667 = !DISubrange(count: 9)
!5668 = !DIGlobalVariableExpression(var: !5669, expr: !DIExpression())
!5669 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !5097, isLocal: true, isDefinition: true)
!5670 = !DIGlobalVariableExpression(var: !5671, expr: !DIExpression())
!5671 = distinct !DIGlobalVariable(name: "fs_stat_sysctls", scope: !2, file: !3, line: 114, type: !5672, isLocal: true, isDefinition: true)
!5672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !431)
!5673 = !DIGlobalVariableExpression(var: !5674, expr: !DIExpression())
!5674 = distinct !DIGlobalVariable(name: "__key", scope: !5675, file: !3, line: 170, type: !2469, isLocal: true, isDefinition: true)
!5675 = distinct !DISubprogram(name: "init_file", scope: !3, file: !3, line: 156, type: !5676, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!22, !795, !22, !1355}
!5678 = !{!5679, !5680, !5681, !5682}
!5679 = !DILocalVariable(name: "f", arg: 1, scope: !5675, file: !3, line: 156, type: !795)
!5680 = !DILocalVariable(name: "flags", arg: 2, scope: !5675, file: !3, line: 156, type: !22)
!5681 = !DILocalVariable(name: "cred", arg: 3, scope: !5675, file: !3, line: 156, type: !1355)
!5682 = !DILocalVariable(name: "error", scope: !5675, file: !3, line: 158, type: !22)
!5683 = !DIGlobalVariableExpression(var: !5684, expr: !DIExpression())
!5684 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !5658, isLocal: true, isDefinition: true)
!5685 = !DIGlobalVariableExpression(var: !5686, expr: !DIExpression())
!5686 = distinct !DIGlobalVariable(scope: null, file: !284, line: 480, type: !5687, isLocal: true, isDefinition: true)
!5687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !5688)
!5688 = !{!5689}
!5689 = !DISubrange(count: 21)
!5690 = !DIGlobalVariableExpression(var: !5691, expr: !DIExpression())
!5691 = distinct !DIGlobalVariable(name: "delayed_fput_list", scope: !2, file: !3, line: 400, type: !5322, isLocal: true, isDefinition: true)
!5692 = !DIGlobalVariableExpression(var: !5693, expr: !DIExpression())
!5693 = distinct !DIGlobalVariable(name: "delayed_fput_work", scope: !2, file: !3, line: 431, type: !2416, isLocal: true, isDefinition: true)
!5694 = !DIGlobalVariableExpression(var: !5695, expr: !DIExpression())
!5695 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5696, file: !5697, line: 112, type: !20, isLocal: true, isDefinition: true)
!5696 = distinct !DISubprogram(name: "might_resched", scope: !5697, file: !5697, line: 110, type: !2463, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5697 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5698 = !DIGlobalVariableExpression(var: !5699, expr: !DIExpression())
!5699 = distinct !DIGlobalVariable(scope: null, file: !155, line: 2817, type: !5700, isLocal: true, isDefinition: true)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 152, elements: !5701)
!5701 = !{!5702}
!5702 = !DISubrange(count: 19)
!5703 = !{i32 7, !"Dwarf Version", i32 5}
!5704 = !{i32 2, !"Debug Info Version", i32 3}
!5705 = !{i32 1, !"wchar_size", i32 2}
!5706 = !{i32 8, !"cf-protection-branch", i32 1}
!5707 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5708 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5709 = !{i32 1, !"Code Model", i32 2}
!5710 = !{i32 1, !"override-stack-alignment", i32 8}
!5711 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5712 = distinct !DISubprogram(name: "backing_file_real_path", scope: !3, file: !3, line: 58, type: !5713, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5715)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!3500, !795}
!5715 = !{!5716}
!5716 = !DILocalVariable(name: "f", arg: 1, scope: !5712, file: !3, line: 58, type: !795)
!5717 = !DILocation(line: 58, column: 50, scope: !5712)
!5718 = !DILocation(line: 60, column: 23, scope: !5712)
!5719 = !DILocation(line: 60, column: 10, scope: !5712)
!5720 = !DILocation(line: 60, column: 27, scope: !5712)
!5721 = !DILocation(line: 60, column: 2, scope: !5712)
!5722 = distinct !DISubprogram(name: "backing_file", scope: !3, file: !3, line: 53, type: !5723, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!331, !795}
!5725 = !{!5726, !5727}
!5726 = !DILocalVariable(name: "f", arg: 1, scope: !5722, file: !3, line: 53, type: !795)
!5727 = !DILocalVariable(name: "__mptr", scope: !5728, file: !3, line: 55, type: !20)
!5728 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 55, column: 9)
!5729 = !DILocation(line: 53, column: 62, scope: !5722)
!5730 = !DILocation(line: 55, column: 9, scope: !5728)
!5731 = !DILocation(line: 55, column: 9, scope: !5722)
!5732 = !DILocation(line: 55, column: 2, scope: !5722)
!5733 = distinct !DISubprogram(name: "get_max_files", scope: !3, file: !3, line: 96, type: !5734, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!39}
!5736 = !DILocation(line: 98, column: 20, scope: !5733)
!5737 = !DILocation(line: 98, column: 2, scope: !5733)
!5738 = distinct !DISubprogram(name: "__initstub__kmod_file_table__358_153_init_fs_stat_sysctls5", scope: !3, file: !3, line: 153, type: !2233, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5739 = !DILocation(line: 153, column: 1, scope: !5738)
!5740 = distinct !DISubprogram(name: "init_fs_stat_sysctls", scope: !3, file: !3, line: 143, type: !2233, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5741)
!5741 = !{!5742}
!5742 = !DILocalVariable(name: "hdr", scope: !5743, file: !3, line: 147, type: !1165)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 146, column: 38)
!5744 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 146, column: 6)
!5745 = !DILocation(line: 145, column: 2, scope: !5740)
!5746 = !DILocation(line: 147, column: 3, scope: !5743)
!5747 = !DILocation(line: 147, column: 28, scope: !5743)
!5748 = !DILocation(line: 148, column: 9, scope: !5743)
!5749 = !DILocation(line: 148, column: 7, scope: !5743)
!5750 = !DILocation(line: 149, column: 21, scope: !5743)
!5751 = !DILocation(line: 149, column: 3, scope: !5743)
!5752 = !DILocation(line: 150, column: 2, scope: !5744)
!5753 = !DILocation(line: 151, column: 2, scope: !5740)
!5754 = !DILocation(line: 188, column: 35, scope: !5598)
!5755 = !DILocation(line: 188, column: 61, scope: !5598)
!5756 = !DILocation(line: 191, column: 2, scope: !5598)
!5757 = !DILocation(line: 191, column: 15, scope: !5598)
!5758 = !DILocation(line: 192, column: 2, scope: !5598)
!5759 = !DILocation(line: 192, column: 6, scope: !5598)
!5760 = !DILocation(line: 197, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 197, column: 6)
!5762 = !DILocation(line: 197, column: 35, scope: !5761)
!5763 = !DILocation(line: 197, column: 21, scope: !5761)
!5764 = !DILocation(line: 197, column: 45, scope: !5761)
!5765 = !DILocation(line: 197, column: 49, scope: !5761)
!5766 = !DILocation(line: 197, column: 6, scope: !5598)
!5767 = !DILocation(line: 202, column: 7, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 202, column: 7)
!5769 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 197, column: 73)
!5770 = !DILocation(line: 202, column: 60, scope: !5768)
!5771 = !DILocation(line: 202, column: 46, scope: !5768)
!5772 = !DILocation(line: 202, column: 7, scope: !5769)
!5773 = !DILocation(line: 203, column: 4, scope: !5768)
!5774 = !DILocation(line: 204, column: 2, scope: !5769)
!5775 = !DILocation(line: 206, column: 24, scope: !5598)
!5776 = !DILocation(line: 206, column: 6, scope: !5598)
!5777 = !DILocation(line: 206, column: 4, scope: !5598)
!5778 = !DILocation(line: 207, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 207, column: 6)
!5780 = !DILocation(line: 207, column: 6, scope: !5598)
!5781 = !DILocation(line: 208, column: 10, scope: !5779)
!5782 = !DILocation(line: 208, column: 3, scope: !5779)
!5783 = !DILocation(line: 210, column: 20, scope: !5598)
!5784 = !DILocation(line: 210, column: 23, scope: !5598)
!5785 = !DILocation(line: 210, column: 30, scope: !5598)
!5786 = !DILocation(line: 210, column: 10, scope: !5598)
!5787 = !DILocation(line: 210, column: 8, scope: !5598)
!5788 = !DILocation(line: 211, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 211, column: 6)
!5790 = !DILocation(line: 211, column: 6, scope: !5598)
!5791 = !DILocation(line: 212, column: 19, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 211, column: 23)
!5793 = !DILocation(line: 212, column: 32, scope: !5792)
!5794 = !DILocation(line: 212, column: 3, scope: !5792)
!5795 = !DILocation(line: 213, column: 18, scope: !5792)
!5796 = !DILocation(line: 213, column: 10, scope: !5792)
!5797 = !DILocation(line: 213, column: 3, scope: !5792)
!5798 = !DILocation(line: 216, column: 2, scope: !5598)
!5799 = !DILocation(line: 218, column: 9, scope: !5598)
!5800 = !DILocation(line: 218, column: 2, scope: !5598)
!5801 = !DILocation(line: 220, column: 1, scope: !5598)
!5802 = !DILocation(line: 222, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 222, column: 6)
!5804 = !DILocation(line: 222, column: 23, scope: !5803)
!5805 = !DILocation(line: 222, column: 21, scope: !5803)
!5806 = !DILocation(line: 222, column: 6, scope: !5598)
!5807 = !DILocation(line: 223, column: 3, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 223, column: 3)
!5809 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 222, column: 32)
!5810 = !DILocation(line: 223, column: 3, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 223, column: 3)
!5812 = !DILocation(line: 224, column: 13, scope: !5809)
!5813 = !DILocation(line: 224, column: 11, scope: !5809)
!5814 = !DILocation(line: 225, column: 2, scope: !5809)
!5815 = !DILocation(line: 226, column: 9, scope: !5598)
!5816 = !DILocation(line: 226, column: 2, scope: !5598)
!5817 = !DILocation(line: 227, column: 1, scope: !5598)
!5818 = distinct !DISubprogram(name: "get_nr_files", scope: !3, file: !3, line: 88, type: !5819, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!905}
!5821 = !DILocation(line: 90, column: 9, scope: !5818)
!5822 = !DILocation(line: 90, column: 2, scope: !5818)
!5823 = !DISubprogram(name: "capable", scope: !1372, file: !1372, line: 148, type: !5824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!987, !22}
!5826 = distinct !DISubprogram(name: "percpu_counter_sum_positive", scope: !862, file: !862, line: 88, type: !5827, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5830)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!365, !5829}
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!5830 = !{!5831, !5832}
!5831 = !DILocalVariable(name: "fbc", arg: 1, scope: !5826, file: !862, line: 88, type: !5829)
!5832 = !DILocalVariable(name: "ret", scope: !5826, file: !862, line: 90, type: !365)
!5833 = !DILocation(line: 88, column: 70, scope: !5826)
!5834 = !DILocation(line: 90, column: 2, scope: !5826)
!5835 = !DILocation(line: 90, column: 6, scope: !5826)
!5836 = !DILocation(line: 90, column: 33, scope: !5826)
!5837 = !DILocation(line: 90, column: 12, scope: !5826)
!5838 = !DILocation(line: 91, column: 9, scope: !5826)
!5839 = !DILocation(line: 91, column: 13, scope: !5826)
!5840 = !DILocation(line: 91, column: 23, scope: !5826)
!5841 = !DILocation(line: 92, column: 1, scope: !5826)
!5842 = !DILocation(line: 91, column: 2, scope: !5826)
!5843 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !284, file: !284, line: 709, type: !5844, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!20, !5547, !328}
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "k", arg: 1, scope: !5843, file: !284, line: 709, type: !5547)
!5848 = !DILocalVariable(name: "flags", arg: 2, scope: !5843, file: !284, line: 709, type: !328)
!5849 = !DILocation(line: 709, column: 58, scope: !5843)
!5850 = !DILocation(line: 709, column: 67, scope: !5843)
!5851 = !DILocation(line: 711, column: 26, scope: !5843)
!5852 = !DILocation(line: 711, column: 29, scope: !5843)
!5853 = !DILocation(line: 711, column: 35, scope: !5843)
!5854 = !DILocation(line: 711, column: 9, scope: !5843)
!5855 = !DILocation(line: 711, column: 2, scope: !5843)
!5856 = distinct !DISubprogram(name: "ERR_PTR", scope: !5857, file: !5857, line: 39, type: !5858, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5857 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!20, !905}
!5860 = !{!5861}
!5861 = !DILocalVariable(name: "error", arg: 1, scope: !5856, file: !5857, line: 39, type: !905)
!5862 = !DILocation(line: 39, column: 48, scope: !5856)
!5863 = !DILocation(line: 41, column: 18, scope: !5856)
!5864 = !DILocation(line: 41, column: 9, scope: !5856)
!5865 = !DILocation(line: 41, column: 2, scope: !5856)
!5866 = !DILocation(line: 156, column: 35, scope: !5675)
!5867 = !DILocation(line: 156, column: 42, scope: !5675)
!5868 = !DILocation(line: 156, column: 68, scope: !5675)
!5869 = !DILocation(line: 158, column: 2, scope: !5675)
!5870 = !DILocation(line: 158, column: 6, scope: !5675)
!5871 = !DILocation(line: 160, column: 23, scope: !5675)
!5872 = !DILocation(line: 160, column: 14, scope: !5675)
!5873 = !DILocation(line: 160, column: 2, scope: !5675)
!5874 = !DILocation(line: 160, column: 5, scope: !5675)
!5875 = !DILocation(line: 160, column: 12, scope: !5675)
!5876 = !DILocation(line: 161, column: 30, scope: !5675)
!5877 = !DILocation(line: 161, column: 10, scope: !5675)
!5878 = !DILocation(line: 161, column: 8, scope: !5675)
!5879 = !DILocation(line: 162, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 162, column: 6)
!5881 = !DILocation(line: 162, column: 6, scope: !5675)
!5882 = !DILocation(line: 163, column: 12, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 162, column: 23)
!5884 = !DILocation(line: 163, column: 15, scope: !5883)
!5885 = !DILocation(line: 163, column: 3, scope: !5883)
!5886 = !DILocation(line: 164, column: 10, scope: !5883)
!5887 = !DILocation(line: 164, column: 3, scope: !5883)
!5888 = !DILocation(line: 167, column: 19, scope: !5675)
!5889 = !DILocation(line: 167, column: 22, scope: !5675)
!5890 = !DILocation(line: 167, column: 2, scope: !5675)
!5891 = !DILocation(line: 168, column: 2, scope: !5675)
!5892 = !DILocation(line: 168, column: 2, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 168, column: 2)
!5894 = !DILocation(line: 169, column: 2, scope: !5675)
!5895 = !DILocation(line: 169, column: 2, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 169, column: 2)
!5897 = !DILocation(line: 170, column: 2, scope: !5675)
!5898 = !DILocation(line: 170, column: 2, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 170, column: 2)
!5900 = !DILocation(line: 171, column: 15, scope: !5675)
!5901 = !DILocation(line: 171, column: 2, scope: !5675)
!5902 = !DILocation(line: 171, column: 5, scope: !5675)
!5903 = !DILocation(line: 171, column: 13, scope: !5675)
!5904 = !DILocation(line: 172, column: 14, scope: !5675)
!5905 = !DILocation(line: 172, column: 2, scope: !5675)
!5906 = !DILocation(line: 172, column: 5, scope: !5675)
!5907 = !DILocation(line: 172, column: 12, scope: !5675)
!5908 = !DILocation(line: 175, column: 2, scope: !5675)
!5909 = !DILocation(line: 176, column: 1, scope: !5675)
!5910 = !DISubprogram(name: "kmem_cache_free", scope: !284, file: !284, line: 503, type: !5911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{null, !5547, !20}
!5913 = distinct !DISubprogram(name: "percpu_counter_inc", scope: !862, file: !862, line: 235, type: !5914, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{null, !5829}
!5916 = !{!5917}
!5917 = !DILocalVariable(name: "fbc", arg: 1, scope: !5913, file: !862, line: 235, type: !5829)
!5918 = !DILocation(line: 235, column: 62, scope: !5913)
!5919 = !DILocation(line: 237, column: 21, scope: !5913)
!5920 = !DILocation(line: 237, column: 2, scope: !5913)
!5921 = !DILocation(line: 238, column: 1, scope: !5913)
!5922 = !DISubprogram(name: "_printk", scope: !5923, file: !5923, line: 153, type: !5924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5923 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!22, !16, null}
!5926 = distinct !DISubprogram(name: "alloc_empty_file_noaccount", scope: !3, file: !3, line: 235, type: !5599, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5927)
!5927 = !{!5928, !5929, !5930, !5931}
!5928 = !DILocalVariable(name: "flags", arg: 1, scope: !5926, file: !3, line: 235, type: !22)
!5929 = !DILocalVariable(name: "cred", arg: 2, scope: !5926, file: !3, line: 235, type: !1355)
!5930 = !DILocalVariable(name: "f", scope: !5926, file: !3, line: 237, type: !795)
!5931 = !DILocalVariable(name: "error", scope: !5926, file: !3, line: 238, type: !22)
!5932 = !DILocation(line: 235, column: 45, scope: !5926)
!5933 = !DILocation(line: 235, column: 71, scope: !5926)
!5934 = !DILocation(line: 237, column: 2, scope: !5926)
!5935 = !DILocation(line: 237, column: 15, scope: !5926)
!5936 = !DILocation(line: 238, column: 2, scope: !5926)
!5937 = !DILocation(line: 238, column: 6, scope: !5926)
!5938 = !DILocation(line: 240, column: 24, scope: !5926)
!5939 = !DILocation(line: 240, column: 6, scope: !5926)
!5940 = !DILocation(line: 240, column: 4, scope: !5926)
!5941 = !DILocation(line: 241, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 241, column: 6)
!5943 = !DILocation(line: 241, column: 6, scope: !5926)
!5944 = !DILocation(line: 242, column: 10, scope: !5942)
!5945 = !DILocation(line: 242, column: 3, scope: !5942)
!5946 = !DILocation(line: 244, column: 20, scope: !5926)
!5947 = !DILocation(line: 244, column: 23, scope: !5926)
!5948 = !DILocation(line: 244, column: 30, scope: !5926)
!5949 = !DILocation(line: 244, column: 10, scope: !5926)
!5950 = !DILocation(line: 244, column: 8, scope: !5926)
!5951 = !DILocation(line: 245, column: 6, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 245, column: 6)
!5953 = !DILocation(line: 245, column: 6, scope: !5926)
!5954 = !DILocation(line: 246, column: 19, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 245, column: 23)
!5956 = !DILocation(line: 246, column: 32, scope: !5955)
!5957 = !DILocation(line: 246, column: 3, scope: !5955)
!5958 = !DILocation(line: 247, column: 18, scope: !5955)
!5959 = !DILocation(line: 247, column: 10, scope: !5955)
!5960 = !DILocation(line: 247, column: 3, scope: !5955)
!5961 = !DILocation(line: 250, column: 2, scope: !5926)
!5962 = !DILocation(line: 250, column: 5, scope: !5926)
!5963 = !DILocation(line: 250, column: 12, scope: !5926)
!5964 = !DILocation(line: 252, column: 9, scope: !5926)
!5965 = !DILocation(line: 252, column: 2, scope: !5926)
!5966 = !DILocation(line: 253, column: 1, scope: !5926)
!5967 = distinct !DISubprogram(name: "alloc_empty_backing_file", scope: !3, file: !3, line: 262, type: !5599, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5968 = !{!5969, !5970, !5971, !5972}
!5969 = !DILocalVariable(name: "flags", arg: 1, scope: !5967, file: !3, line: 262, type: !22)
!5970 = !DILocalVariable(name: "cred", arg: 2, scope: !5967, file: !3, line: 262, type: !1355)
!5971 = !DILocalVariable(name: "ff", scope: !5967, file: !3, line: 264, type: !331)
!5972 = !DILocalVariable(name: "error", scope: !5967, file: !3, line: 265, type: !22)
!5973 = !DILocation(line: 262, column: 43, scope: !5967)
!5974 = !DILocation(line: 262, column: 69, scope: !5967)
!5975 = !DILocation(line: 264, column: 2, scope: !5967)
!5976 = !DILocation(line: 264, column: 23, scope: !5967)
!5977 = !DILocation(line: 265, column: 2, scope: !5967)
!5978 = !DILocation(line: 265, column: 6, scope: !5967)
!5979 = !DILocation(line: 267, column: 7, scope: !5967)
!5980 = !DILocation(line: 267, column: 5, scope: !5967)
!5981 = !DILocation(line: 268, column: 6, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 268, column: 6)
!5983 = !DILocation(line: 268, column: 6, scope: !5967)
!5984 = !DILocation(line: 269, column: 10, scope: !5982)
!5985 = !DILocation(line: 269, column: 3, scope: !5982)
!5986 = !DILocation(line: 271, column: 21, scope: !5967)
!5987 = !DILocation(line: 271, column: 25, scope: !5967)
!5988 = !DILocation(line: 271, column: 31, scope: !5967)
!5989 = !DILocation(line: 271, column: 38, scope: !5967)
!5990 = !DILocation(line: 271, column: 10, scope: !5967)
!5991 = !DILocation(line: 271, column: 8, scope: !5967)
!5992 = !DILocation(line: 272, column: 6, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 272, column: 6)
!5994 = !DILocation(line: 272, column: 6, scope: !5967)
!5995 = !DILocation(line: 273, column: 9, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 272, column: 23)
!5997 = !DILocation(line: 273, column: 3, scope: !5996)
!5998 = !DILocation(line: 274, column: 18, scope: !5996)
!5999 = !DILocation(line: 274, column: 10, scope: !5996)
!6000 = !DILocation(line: 274, column: 3, scope: !5996)
!6001 = !DILocation(line: 277, column: 2, scope: !5967)
!6002 = !DILocation(line: 277, column: 6, scope: !5967)
!6003 = !DILocation(line: 277, column: 11, scope: !5967)
!6004 = !DILocation(line: 277, column: 18, scope: !5967)
!6005 = !DILocation(line: 278, column: 10, scope: !5967)
!6006 = !DILocation(line: 278, column: 14, scope: !5967)
!6007 = !DILocation(line: 278, column: 2, scope: !5967)
!6008 = !DILocation(line: 279, column: 1, scope: !5967)
!6009 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 719, type: !6010, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!20, !35, !328}
!6012 = !{!6013, !6014}
!6013 = !DILocalVariable(name: "size", arg: 1, scope: !6009, file: !284, line: 719, type: !35)
!6014 = !DILocalVariable(name: "flags", arg: 2, scope: !6009, file: !284, line: 719, type: !328)
!6015 = !DILocation(line: 719, column: 52, scope: !6009)
!6016 = !DILocation(line: 719, column: 64, scope: !6009)
!6017 = !DILocation(line: 721, column: 17, scope: !6009)
!6018 = !DILocation(line: 721, column: 23, scope: !6009)
!6019 = !DILocation(line: 721, column: 29, scope: !6009)
!6020 = !DILocation(line: 721, column: 9, scope: !6009)
!6021 = !DILocation(line: 721, column: 2, scope: !6009)
!6022 = !DISubprogram(name: "kfree", scope: !284, file: !284, line: 227, type: !6023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{null, !902}
!6025 = !DILocation(line: 318, column: 46, scope: !5614)
!6026 = !DILocation(line: 318, column: 70, scope: !5614)
!6027 = !DILocation(line: 319, column: 17, scope: !5614)
!6028 = !DILocation(line: 319, column: 27, scope: !5614)
!6029 = !DILocation(line: 320, column: 35, scope: !5614)
!6030 = !DILocation(line: 325, column: 2, scope: !5614)
!6031 = !DILocation(line: 325, column: 14, scope: !5614)
!6032 = !DILocation(line: 325, column: 21, scope: !5614)
!6033 = !DILocation(line: 326, column: 2, scope: !5614)
!6034 = !DILocation(line: 326, column: 14, scope: !5614)
!6035 = !DILocation(line: 327, column: 2, scope: !5614)
!6036 = !DILocation(line: 327, column: 15, scope: !5614)
!6037 = !DILocation(line: 329, column: 31, scope: !5614)
!6038 = !DILocation(line: 329, column: 36, scope: !5614)
!6039 = !DILocation(line: 329, column: 16, scope: !5614)
!6040 = !DILocation(line: 329, column: 7, scope: !5614)
!6041 = !DILocation(line: 329, column: 14, scope: !5614)
!6042 = !DILocation(line: 330, column: 12, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 330, column: 6)
!6044 = !DILocation(line: 330, column: 7, scope: !6043)
!6045 = !DILocation(line: 330, column: 6, scope: !5614)
!6046 = !DILocation(line: 331, column: 10, scope: !6043)
!6047 = !DILocation(line: 331, column: 3, scope: !6043)
!6048 = !DILocation(line: 332, column: 7, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 332, column: 6)
!6050 = !DILocation(line: 332, column: 12, scope: !6049)
!6051 = !DILocation(line: 332, column: 20, scope: !6049)
!6052 = !DILocation(line: 332, column: 6, scope: !5614)
!6053 = !DILocation(line: 333, column: 19, scope: !6049)
!6054 = !DILocation(line: 333, column: 3, scope: !6049)
!6055 = !DILocation(line: 334, column: 20, scope: !5614)
!6056 = !DILocation(line: 334, column: 13, scope: !5614)
!6057 = !DILocation(line: 334, column: 7, scope: !5614)
!6058 = !DILocation(line: 334, column: 11, scope: !5614)
!6059 = !DILocation(line: 335, column: 21, scope: !5614)
!6060 = !DILocation(line: 335, column: 29, scope: !5614)
!6061 = !DILocation(line: 335, column: 2, scope: !5614)
!6062 = !DILocation(line: 336, column: 27, scope: !5614)
!6063 = !DILocation(line: 336, column: 34, scope: !5614)
!6064 = !DILocation(line: 336, column: 9, scope: !5614)
!6065 = !DILocation(line: 336, column: 7, scope: !5614)
!6066 = !DILocation(line: 337, column: 13, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 337, column: 6)
!6068 = !DILocation(line: 337, column: 6, scope: !6067)
!6069 = !DILocation(line: 337, column: 6, scope: !5614)
!6070 = !DILocation(line: 338, column: 9, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 337, column: 20)
!6072 = !DILocation(line: 338, column: 3, scope: !6071)
!6073 = !DILocation(line: 339, column: 3, scope: !6071)
!6074 = !DILocation(line: 340, column: 2, scope: !6071)
!6075 = !DILocation(line: 341, column: 9, scope: !5614)
!6076 = !DILocation(line: 341, column: 2, scope: !5614)
!6077 = !DILocation(line: 342, column: 1, scope: !5614)
!6078 = !DISubprogram(name: "strlen", scope: !6079, file: !6079, line: 128, type: !6080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6079 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6080 = !DISubroutineType(types: !6081)
!6081 = !{!39, !16}
!6082 = !DISubprogram(name: "d_alloc_pseudo", scope: !6083, file: !6083, line: 206, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = !DIFile(filename: "fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!1797, !1903, !1870}
!6086 = !DISubprogram(name: "d_set_d_op", scope: !1799, file: !1799, line: 228, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{null, !1797, !1850}
!6089 = !DISubprogram(name: "mntget", scope: !1899, file: !1899, line: 88, type: !6090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!1897, !1897}
!6092 = !DISubprogram(name: "d_instantiate", scope: !1799, file: !1799, line: 221, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6093 = distinct !DISubprogram(name: "alloc_file", scope: !3, file: !3, line: 288, type: !6094, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!795, !2679, !22, !3737}
!6096 = !{!6097, !6098, !6099, !6100}
!6097 = !DILocalVariable(name: "path", arg: 1, scope: !6093, file: !3, line: 288, type: !2679)
!6098 = !DILocalVariable(name: "flags", arg: 2, scope: !6093, file: !3, line: 288, type: !22)
!6099 = !DILocalVariable(name: "fop", arg: 3, scope: !6093, file: !3, line: 289, type: !3737)
!6100 = !DILocalVariable(name: "file", scope: !6093, file: !3, line: 291, type: !795)
!6101 = !DILocation(line: 288, column: 51, scope: !6093)
!6102 = !DILocation(line: 288, column: 61, scope: !6093)
!6103 = !DILocation(line: 289, column: 33, scope: !6093)
!6104 = !DILocation(line: 291, column: 2, scope: !6093)
!6105 = !DILocation(line: 291, column: 15, scope: !6093)
!6106 = !DILocation(line: 293, column: 26, scope: !6093)
!6107 = !DILocation(line: 293, column: 33, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 293, column: 33)
!6109 = !DILocation(line: 293, column: 33, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 293, column: 33)
!6111 = !DILocation(line: 293, column: 9, scope: !6093)
!6112 = !DILocation(line: 293, column: 7, scope: !6093)
!6113 = !DILocation(line: 294, column: 13, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 294, column: 6)
!6115 = !DILocation(line: 294, column: 6, scope: !6114)
!6116 = !DILocation(line: 294, column: 6, scope: !6093)
!6117 = !DILocation(line: 295, column: 10, scope: !6114)
!6118 = !DILocation(line: 295, column: 3, scope: !6114)
!6119 = !DILocation(line: 297, column: 2, scope: !6093)
!6120 = !DILocation(line: 297, column: 8, scope: !6093)
!6121 = !DILocation(line: 297, column: 18, scope: !6093)
!6122 = !DILocation(line: 297, column: 17, scope: !6093)
!6123 = !DILocation(line: 298, column: 18, scope: !6093)
!6124 = !DILocation(line: 298, column: 24, scope: !6093)
!6125 = !DILocation(line: 298, column: 32, scope: !6093)
!6126 = !DILocation(line: 298, column: 2, scope: !6093)
!6127 = !DILocation(line: 298, column: 8, scope: !6093)
!6128 = !DILocation(line: 298, column: 16, scope: !6093)
!6129 = !DILocation(line: 299, column: 20, scope: !6093)
!6130 = !DILocation(line: 299, column: 26, scope: !6093)
!6131 = !DILocation(line: 299, column: 34, scope: !6093)
!6132 = !DILocation(line: 299, column: 43, scope: !6093)
!6133 = !DILocation(line: 299, column: 2, scope: !6093)
!6134 = !DILocation(line: 299, column: 8, scope: !6093)
!6135 = !DILocation(line: 299, column: 18, scope: !6093)
!6136 = !DILocation(line: 300, column: 41, scope: !6093)
!6137 = !DILocation(line: 300, column: 47, scope: !6093)
!6138 = !DILocation(line: 300, column: 19, scope: !6093)
!6139 = !DILocation(line: 300, column: 2, scope: !6093)
!6140 = !DILocation(line: 300, column: 8, scope: !6093)
!6141 = !DILocation(line: 300, column: 17, scope: !6093)
!6142 = !DILocation(line: 301, column: 38, scope: !6093)
!6143 = !DILocation(line: 301, column: 19, scope: !6093)
!6144 = !DILocation(line: 301, column: 2, scope: !6093)
!6145 = !DILocation(line: 301, column: 8, scope: !6093)
!6146 = !DILocation(line: 301, column: 17, scope: !6093)
!6147 = !DILocation(line: 302, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 302, column: 6)
!6149 = !DILocation(line: 302, column: 11, scope: !6148)
!6150 = !DILocation(line: 302, column: 6, scope: !6093)
!6151 = !DILocation(line: 303, column: 3, scope: !6148)
!6152 = !DILocation(line: 303, column: 9, scope: !6148)
!6153 = !DILocation(line: 303, column: 16, scope: !6148)
!6154 = !DILocation(line: 304, column: 7, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 304, column: 6)
!6156 = !DILocation(line: 304, column: 13, scope: !6155)
!6157 = !DILocation(line: 304, column: 20, scope: !6155)
!6158 = !DILocation(line: 304, column: 34, scope: !6155)
!6159 = !DILocation(line: 305, column: 7, scope: !6155)
!6160 = !DILocation(line: 304, column: 6, scope: !6093)
!6161 = !DILocation(line: 306, column: 3, scope: !6155)
!6162 = !DILocation(line: 306, column: 9, scope: !6155)
!6163 = !DILocation(line: 306, column: 16, scope: !6155)
!6164 = !DILocation(line: 307, column: 7, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 307, column: 6)
!6166 = !DILocation(line: 307, column: 13, scope: !6165)
!6167 = !DILocation(line: 307, column: 20, scope: !6165)
!6168 = !DILocation(line: 307, column: 35, scope: !6165)
!6169 = !DILocation(line: 308, column: 7, scope: !6165)
!6170 = !DILocation(line: 307, column: 6, scope: !6093)
!6171 = !DILocation(line: 309, column: 3, scope: !6165)
!6172 = !DILocation(line: 309, column: 9, scope: !6165)
!6173 = !DILocation(line: 309, column: 16, scope: !6165)
!6174 = !DILocation(line: 310, column: 34, scope: !6093)
!6175 = !DILocation(line: 310, column: 23, scope: !6093)
!6176 = !DILocation(line: 310, column: 2, scope: !6093)
!6177 = !DILocation(line: 310, column: 8, scope: !6093)
!6178 = !DILocation(line: 310, column: 21, scope: !6093)
!6179 = !DILocation(line: 311, column: 2, scope: !6093)
!6180 = !DILocation(line: 311, column: 8, scope: !6093)
!6181 = !DILocation(line: 311, column: 15, scope: !6093)
!6182 = !DILocation(line: 312, column: 15, scope: !6093)
!6183 = !DILocation(line: 312, column: 2, scope: !6093)
!6184 = !DILocation(line: 312, column: 8, scope: !6093)
!6185 = !DILocation(line: 312, column: 13, scope: !6093)
!6186 = !DILocation(line: 313, column: 7, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 313, column: 6)
!6188 = !DILocation(line: 313, column: 13, scope: !6187)
!6189 = !DILocation(line: 313, column: 20, scope: !6187)
!6190 = !DILocation(line: 313, column: 50, scope: !6187)
!6191 = !DILocation(line: 313, column: 6, scope: !6093)
!6192 = !DILocation(line: 314, column: 19, scope: !6187)
!6193 = !DILocation(line: 314, column: 25, scope: !6187)
!6194 = !DILocation(line: 314, column: 33, scope: !6187)
!6195 = !DILocation(line: 314, column: 3, scope: !6187)
!6196 = !DILocation(line: 315, column: 9, scope: !6093)
!6197 = !DILocation(line: 315, column: 2, scope: !6093)
!6198 = !DILocation(line: 316, column: 1, scope: !6093)
!6199 = distinct !DISubprogram(name: "IS_ERR", scope: !5857, file: !5857, line: 59, type: !6200, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6200 = !DISubroutineType(types: !6201)
!6201 = !{!987, !902}
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "ptr", arg: 1, scope: !6199, file: !5857, line: 59, type: !902)
!6204 = !DILocation(line: 59, column: 60, scope: !6199)
!6205 = !DILocation(line: 61, column: 9, scope: !6199)
!6206 = !DILocation(line: 61, column: 2, scope: !6199)
!6207 = !DISubprogram(name: "ihold", scope: !155, file: !155, line: 2458, type: !2489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubprogram(name: "path_put", scope: !2682, file: !2682, line: 14, type: !6209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{null, !2679}
!6211 = distinct !DISubprogram(name: "alloc_file_clone", scope: !3, file: !3, line: 345, type: !6212, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!795, !795, !22, !3737}
!6214 = !{!6215, !6216, !6217, !6218}
!6215 = !DILocalVariable(name: "base", arg: 1, scope: !6211, file: !3, line: 345, type: !795)
!6216 = !DILocalVariable(name: "flags", arg: 2, scope: !6211, file: !3, line: 345, type: !22)
!6217 = !DILocalVariable(name: "fops", arg: 3, scope: !6211, file: !3, line: 346, type: !3737)
!6218 = !DILocalVariable(name: "f", scope: !6211, file: !3, line: 348, type: !795)
!6219 = !DILocation(line: 345, column: 44, scope: !6211)
!6220 = !DILocation(line: 345, column: 54, scope: !6211)
!6221 = !DILocation(line: 346, column: 35, scope: !6211)
!6222 = !DILocation(line: 348, column: 2, scope: !6211)
!6223 = !DILocation(line: 348, column: 15, scope: !6211)
!6224 = !DILocation(line: 348, column: 31, scope: !6211)
!6225 = !DILocation(line: 348, column: 37, scope: !6211)
!6226 = !DILocation(line: 348, column: 45, scope: !6211)
!6227 = !DILocation(line: 348, column: 52, scope: !6211)
!6228 = !DILocation(line: 348, column: 19, scope: !6211)
!6229 = !DILocation(line: 349, column: 14, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 349, column: 6)
!6231 = !DILocation(line: 349, column: 7, scope: !6230)
!6232 = !DILocation(line: 349, column: 6, scope: !6211)
!6233 = !DILocation(line: 350, column: 13, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 349, column: 18)
!6235 = !DILocation(line: 350, column: 16, scope: !6234)
!6236 = !DILocation(line: 350, column: 3, scope: !6234)
!6237 = !DILocation(line: 351, column: 18, scope: !6234)
!6238 = !DILocation(line: 351, column: 24, scope: !6234)
!6239 = !DILocation(line: 351, column: 3, scope: !6234)
!6240 = !DILocation(line: 351, column: 6, scope: !6234)
!6241 = !DILocation(line: 351, column: 16, scope: !6234)
!6242 = !DILocation(line: 352, column: 2, scope: !6234)
!6243 = !DILocation(line: 353, column: 9, scope: !6211)
!6244 = !DILocation(line: 354, column: 1, scope: !6211)
!6245 = !DILocation(line: 353, column: 2, scope: !6211)
!6246 = !DISubprogram(name: "path_get", scope: !2682, file: !2682, line: 13, type: !6209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6247 = distinct !DISubprogram(name: "flush_delayed_fput", scope: !3, file: !3, line: 425, type: !2463, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6248 = !DILocation(line: 427, column: 2, scope: !6247)
!6249 = !DILocation(line: 428, column: 1, scope: !6247)
!6250 = distinct !DISubprogram(name: "delayed_fput", scope: !3, file: !3, line: 401, type: !1110, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6251)
!6251 = !{!6252, !6253, !6254, !6255, !6256, !6259}
!6252 = !DILocalVariable(name: "unused", arg: 1, scope: !6250, file: !3, line: 401, type: !1112)
!6253 = !DILocalVariable(name: "node", scope: !6250, file: !3, line: 403, type: !345)
!6254 = !DILocalVariable(name: "f", scope: !6250, file: !3, line: 404, type: !795)
!6255 = !DILocalVariable(name: "t", scope: !6250, file: !3, line: 404, type: !795)
!6256 = !DILocalVariable(name: "__mptr", scope: !6257, file: !3, line: 406, type: !20)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 406, column: 2)
!6258 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 406, column: 2)
!6259 = !DILocalVariable(name: "__mptr", scope: !6260, file: !3, line: 406, type: !20)
!6260 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 406, column: 2)
!6261 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 406, column: 2)
!6262 = !DILocation(line: 401, column: 46, scope: !6250)
!6263 = !DILocation(line: 403, column: 2, scope: !6250)
!6264 = !DILocation(line: 403, column: 21, scope: !6250)
!6265 = !DILocation(line: 403, column: 28, scope: !6250)
!6266 = !DILocation(line: 404, column: 2, scope: !6250)
!6267 = !DILocation(line: 404, column: 15, scope: !6250)
!6268 = !DILocation(line: 404, column: 19, scope: !6250)
!6269 = !DILocation(line: 406, column: 2, scope: !6257)
!6270 = !DILocation(line: 406, column: 2, scope: !6258)
!6271 = !DILocation(line: 406, column: 2, scope: !6261)
!6272 = !DILocation(line: 406, column: 2, scope: !6260)
!6273 = !DILocation(line: 0, scope: !6261)
!6274 = !DILocation(line: 407, column: 10, scope: !6261)
!6275 = !DILocation(line: 407, column: 3, scope: !6261)
!6276 = distinct !{!6276, !6270, !6277, !6278, !6279}
!6277 = !DILocation(line: 407, column: 11, scope: !6258)
!6278 = !{!"llvm.loop.mustprogress"}
!6279 = !{!"llvm.loop.unroll.disable"}
!6280 = !DILocation(line: 408, column: 1, scope: !6250)
!6281 = distinct !DISubprogram(name: "fput", scope: !3, file: !3, line: 433, type: !4104, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6282 = !{!6283, !6284}
!6283 = !DILocalVariable(name: "file", arg: 1, scope: !6281, file: !3, line: 433, type: !795)
!6284 = !DILocalVariable(name: "task", scope: !6285, file: !3, line: 436, type: !462)
!6285 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 435, column: 48)
!6286 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 435, column: 6)
!6287 = !DILocation(line: 433, column: 24, scope: !6281)
!6288 = !DILocation(line: 435, column: 32, scope: !6286)
!6289 = !DILocation(line: 435, column: 38, scope: !6286)
!6290 = !DILocation(line: 435, column: 6, scope: !6286)
!6291 = !DILocation(line: 435, column: 6, scope: !6281)
!6292 = !DILocation(line: 436, column: 3, scope: !6285)
!6293 = !DILocation(line: 436, column: 23, scope: !6285)
!6294 = !DILocation(line: 436, column: 30, scope: !6285)
!6295 = !DILocation(line: 438, column: 7, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 438, column: 7)
!6297 = !DILocation(line: 0, scope: !6296)
!6298 = !DILocation(line: 438, column: 7, scope: !6285)
!6299 = !DILocation(line: 439, column: 20, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 438, column: 63)
!6301 = !DILocation(line: 439, column: 26, scope: !6300)
!6302 = !DILocation(line: 439, column: 4, scope: !6300)
!6303 = !DILocation(line: 440, column: 23, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 440, column: 8)
!6305 = !DILocation(line: 440, column: 30, scope: !6304)
!6306 = !DILocation(line: 440, column: 36, scope: !6304)
!6307 = !DILocation(line: 440, column: 9, scope: !6304)
!6308 = !DILocation(line: 440, column: 8, scope: !6300)
!6309 = !DILocation(line: 441, column: 5, scope: !6304)
!6310 = !DILocation(line: 447, column: 3, scope: !6300)
!6311 = !DILocation(line: 449, column: 18, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 449, column: 7)
!6313 = !DILocation(line: 449, column: 24, scope: !6312)
!6314 = !DILocation(line: 449, column: 7, scope: !6312)
!6315 = !DILocation(line: 449, column: 7, scope: !6285)
!6316 = !DILocation(line: 450, column: 4, scope: !6312)
!6317 = !DILocation(line: 451, column: 2, scope: !6286)
!6318 = !DILocation(line: 451, column: 2, scope: !6285)
!6319 = !DILocation(line: 452, column: 1, scope: !6281)
!6320 = distinct !DISubprogram(name: "atomic_long_dec_and_test", scope: !6321, file: !6321, line: 4500, type: !6322, scopeLine: 4501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6324)
!6321 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!987, !3462}
!6324 = !{!6325}
!6325 = !DILocalVariable(name: "v", arg: 1, scope: !6320, file: !6321, line: 4500, type: !3462)
!6326 = !DILocation(line: 4500, column: 41, scope: !6320)
!6327 = !DILocation(line: 4502, column: 2, scope: !6320)
!6328 = !DILocation(line: 4502, column: 2, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6320, file: !6321, line: 4502, column: 2)
!6330 = !DILocation(line: 4503, column: 31, scope: !6320)
!6331 = !DILocation(line: 4503, column: 2, scope: !6320)
!6332 = !DILocation(line: 4504, column: 38, scope: !6320)
!6333 = !DILocation(line: 4504, column: 9, scope: !6320)
!6334 = !DILocation(line: 4504, column: 2, scope: !6320)
!6335 = distinct !DISubprogram(name: "get_current", scope: !6336, file: !6336, line: 39, type: !6337, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6336 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!462}
!6339 = !{!6340, !6342, !6344}
!6340 = !DILocalVariable(name: "pscr_ret__", scope: !6341, file: !6336, line: 41, type: !462)
!6341 = distinct !DILexicalBlock(scope: !6335, file: !6336, line: 41, column: 9)
!6342 = !DILocalVariable(name: "__vpp_verify", scope: !6343, file: !6336, line: 41, type: !902)
!6343 = distinct !DILexicalBlock(scope: !6341, file: !6336, line: 41, column: 9)
!6344 = !DILocalVariable(name: "pfo_val__", scope: !6345, file: !6336, line: 41, type: !521)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !6336, line: 41, column: 9)
!6346 = !DILocation(line: 41, column: 9, scope: !6341)
!6347 = !DILocation(line: 41, column: 9, scope: !6343)
!6348 = !DILocation(line: 41, column: 9, scope: !6345)
!6349 = !{i64 2148456680}
!6350 = !DILocation(line: 41, column: 9, scope: !6335)
!6351 = !DILocation(line: 41, column: 2, scope: !6335)
!6352 = distinct !DISubprogram(name: "preempt_count", scope: !6353, file: !6353, line: 25, type: !2233, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6353 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6354 = !{!6355}
!6355 = !DILocalVariable(name: "pfo_val__", scope: !6356, file: !6353, line: 27, type: !473)
!6356 = distinct !DILexicalBlock(scope: !6352, file: !6353, line: 27, column: 9)
!6357 = !DILocation(line: 27, column: 9, scope: !6356)
!6358 = !{i64 2149554457}
!6359 = !DILocation(line: 27, column: 9, scope: !6352)
!6360 = !DILocation(line: 27, column: 48, scope: !6352)
!6361 = !DILocation(line: 27, column: 2, scope: !6352)
!6362 = distinct !DISubprogram(name: "init_task_work", scope: !254, file: !254, line: 11, type: !6363, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6366)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{null, !350, !6365}
!6365 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_work_func_t", file: !254, line: 8, baseType: !352)
!6366 = !{!6367, !6368}
!6367 = !DILocalVariable(name: "twork", arg: 1, scope: !6362, file: !254, line: 11, type: !350)
!6368 = !DILocalVariable(name: "func", arg: 2, scope: !6362, file: !254, line: 11, type: !6365)
!6369 = !DILocation(line: 11, column: 38, scope: !6362)
!6370 = !DILocation(line: 11, column: 62, scope: !6362)
!6371 = !DILocation(line: 13, column: 16, scope: !6362)
!6372 = !DILocation(line: 13, column: 2, scope: !6362)
!6373 = !DILocation(line: 13, column: 9, scope: !6362)
!6374 = !DILocation(line: 13, column: 14, scope: !6362)
!6375 = !DILocation(line: 14, column: 1, scope: !6362)
!6376 = distinct !DISubprogram(name: "____fput", scope: !3, file: !3, line: 410, type: !353, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6377 = !{!6378, !6379}
!6378 = !DILocalVariable(name: "work", arg: 1, scope: !6376, file: !3, line: 410, type: !350)
!6379 = !DILocalVariable(name: "__mptr", scope: !6380, file: !3, line: 412, type: !20)
!6380 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 412, column: 9)
!6381 = !DILocation(line: 410, column: 44, scope: !6376)
!6382 = !DILocation(line: 412, column: 9, scope: !6380)
!6383 = !DILocation(line: 412, column: 9, scope: !6376)
!6384 = !DILocation(line: 412, column: 2, scope: !6376)
!6385 = !DILocation(line: 413, column: 1, scope: !6376)
!6386 = !DISubprogram(name: "task_work_add", scope: !254, file: !254, line: 32, type: !6387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!22, !462, !350, !253}
!6389 = distinct !DISubprogram(name: "llist_add", scope: !342, file: !342, line: 219, type: !6390, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6393)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!987, !345, !6392}
!6392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!6393 = !{!6394, !6395}
!6394 = !DILocalVariable(name: "new", arg: 1, scope: !6389, file: !342, line: 219, type: !345)
!6395 = !DILocalVariable(name: "head", arg: 2, scope: !6389, file: !342, line: 219, type: !6392)
!6396 = !DILocation(line: 219, column: 49, scope: !6389)
!6397 = !DILocation(line: 219, column: 73, scope: !6389)
!6398 = !DILocation(line: 221, column: 25, scope: !6389)
!6399 = !DILocation(line: 221, column: 30, scope: !6389)
!6400 = !DILocation(line: 221, column: 35, scope: !6389)
!6401 = !DILocation(line: 221, column: 9, scope: !6389)
!6402 = !DILocation(line: 221, column: 2, scope: !6389)
!6403 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !294, file: !294, line: 688, type: !6404, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6407)
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!987, !6406, !39}
!6406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!6407 = !{!6408, !6409}
!6408 = !DILocalVariable(name: "dwork", arg: 1, scope: !6403, file: !294, line: 688, type: !6406)
!6409 = !DILocalVariable(name: "delay", arg: 2, scope: !6403, file: !294, line: 689, type: !39)
!6410 = !DILocation(line: 688, column: 63, scope: !6403)
!6411 = !DILocation(line: 689, column: 21, scope: !6403)
!6412 = !DILocation(line: 691, column: 28, scope: !6403)
!6413 = !DILocation(line: 691, column: 39, scope: !6403)
!6414 = !DILocation(line: 691, column: 46, scope: !6403)
!6415 = !DILocation(line: 691, column: 9, scope: !6403)
!6416 = !DILocation(line: 691, column: 2, scope: !6403)
!6417 = distinct !DISubprogram(name: "__fput_sync", scope: !3, file: !3, line: 462, type: !4104, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6418 = !{!6419}
!6419 = !DILocalVariable(name: "file", arg: 1, scope: !6417, file: !3, line: 462, type: !795)
!6420 = !DILocation(line: 462, column: 31, scope: !6417)
!6421 = !DILocation(line: 464, column: 32, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 464, column: 6)
!6423 = !DILocation(line: 464, column: 38, scope: !6422)
!6424 = !DILocation(line: 464, column: 6, scope: !6422)
!6425 = !DILocation(line: 464, column: 6, scope: !6417)
!6426 = !DILocation(line: 465, column: 10, scope: !6422)
!6427 = !DILocation(line: 465, column: 3, scope: !6422)
!6428 = !DILocation(line: 466, column: 1, scope: !6417)
!6429 = distinct !DISubprogram(name: "__fput", scope: !3, file: !3, line: 358, type: !4104, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6430 = !{!6431, !6432, !6433, !6434, !6435, !6436}
!6431 = !DILocalVariable(name: "file", arg: 1, scope: !6429, file: !3, line: 358, type: !795)
!6432 = !DILocalVariable(name: "dentry", scope: !6429, file: !3, line: 360, type: !1797)
!6433 = !DILocalVariable(name: "mnt", scope: !6429, file: !3, line: 361, type: !1897)
!6434 = !DILocalVariable(name: "inode", scope: !6429, file: !3, line: 362, type: !1775)
!6435 = !DILocalVariable(name: "mode", scope: !6429, file: !3, line: 363, type: !329)
!6436 = !DILabel(scope: !6429, name: "out", file: !3, line: 396)
!6437 = !DILocation(line: 358, column: 33, scope: !6429)
!6438 = !DILocation(line: 360, column: 2, scope: !6429)
!6439 = !DILocation(line: 360, column: 17, scope: !6429)
!6440 = !DILocation(line: 360, column: 26, scope: !6429)
!6441 = !DILocation(line: 360, column: 32, scope: !6429)
!6442 = !DILocation(line: 360, column: 39, scope: !6429)
!6443 = !DILocation(line: 361, column: 2, scope: !6429)
!6444 = !DILocation(line: 361, column: 19, scope: !6429)
!6445 = !DILocation(line: 361, column: 25, scope: !6429)
!6446 = !DILocation(line: 361, column: 31, scope: !6429)
!6447 = !DILocation(line: 361, column: 38, scope: !6429)
!6448 = !DILocation(line: 362, column: 2, scope: !6429)
!6449 = !DILocation(line: 362, column: 16, scope: !6429)
!6450 = !DILocation(line: 362, column: 24, scope: !6429)
!6451 = !DILocation(line: 362, column: 30, scope: !6429)
!6452 = !DILocation(line: 363, column: 2, scope: !6429)
!6453 = !DILocation(line: 363, column: 10, scope: !6429)
!6454 = !DILocation(line: 363, column: 17, scope: !6429)
!6455 = !DILocation(line: 363, column: 23, scope: !6429)
!6456 = !DILocation(line: 365, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 365, column: 6)
!6458 = !DILocation(line: 365, column: 6, scope: !6429)
!6459 = !DILocation(line: 366, column: 3, scope: !6457)
!6460 = !DILocation(line: 368, column: 2, scope: !6429)
!6461 = !DILocation(line: 368, column: 2, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 368, column: 2)
!6463 = !DILocation(line: 370, column: 17, scope: !6429)
!6464 = !DILocation(line: 370, column: 2, scope: !6429)
!6465 = !DILocation(line: 375, column: 20, scope: !6429)
!6466 = !DILocation(line: 375, column: 2, scope: !6429)
!6467 = !DILocation(line: 376, column: 20, scope: !6429)
!6468 = !DILocation(line: 376, column: 2, scope: !6429)
!6469 = !DILocation(line: 378, column: 16, scope: !6429)
!6470 = !DILocation(line: 378, column: 2, scope: !6429)
!6471 = !DILocation(line: 379, column: 6, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 379, column: 6)
!6473 = !DILocation(line: 379, column: 6, scope: !6429)
!6474 = !DILocation(line: 380, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 380, column: 7)
!6476 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 379, column: 40)
!6477 = !DILocation(line: 380, column: 13, scope: !6475)
!6478 = !DILocation(line: 380, column: 19, scope: !6475)
!6479 = !DILocation(line: 380, column: 7, scope: !6476)
!6480 = !DILocation(line: 381, column: 4, scope: !6475)
!6481 = !DILocation(line: 381, column: 10, scope: !6475)
!6482 = !DILocation(line: 381, column: 16, scope: !6475)
!6483 = !DILocation(line: 381, column: 27, scope: !6475)
!6484 = !DILocation(line: 382, column: 2, scope: !6476)
!6485 = !DILocation(line: 383, column: 6, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 383, column: 6)
!6487 = !DILocation(line: 383, column: 12, scope: !6486)
!6488 = !DILocation(line: 383, column: 18, scope: !6486)
!6489 = !DILocation(line: 383, column: 6, scope: !6429)
!6490 = !DILocation(line: 384, column: 3, scope: !6486)
!6491 = !DILocation(line: 384, column: 9, scope: !6486)
!6492 = !DILocation(line: 384, column: 15, scope: !6486)
!6493 = !DILocation(line: 384, column: 23, scope: !6486)
!6494 = !DILocation(line: 384, column: 30, scope: !6486)
!6495 = !DILocation(line: 385, column: 6, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 385, column: 6)
!6497 = !DILocation(line: 0, scope: !6496)
!6498 = !DILocation(line: 385, column: 6, scope: !6429)
!6499 = !DILocation(line: 387, column: 12, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 386, column: 31)
!6501 = !DILocation(line: 387, column: 19, scope: !6500)
!6502 = !DILocation(line: 387, column: 3, scope: !6500)
!6503 = !DILocation(line: 388, column: 2, scope: !6500)
!6504 = !DILocation(line: 389, column: 2, scope: !6429)
!6505 = !DILocation(line: 389, column: 2, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 389, column: 2)
!6507 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 389, column: 2)
!6508 = !DILocation(line: 389, column: 2, scope: !6507)
!6509 = !DILocation(line: 390, column: 10, scope: !6429)
!6510 = !DILocation(line: 390, column: 16, scope: !6429)
!6511 = !DILocation(line: 390, column: 24, scope: !6429)
!6512 = !DILocation(line: 390, column: 2, scope: !6429)
!6513 = !DILocation(line: 391, column: 18, scope: !6429)
!6514 = !DILocation(line: 391, column: 2, scope: !6429)
!6515 = !DILocation(line: 392, column: 7, scope: !6429)
!6516 = !DILocation(line: 392, column: 2, scope: !6429)
!6517 = !DILocation(line: 393, column: 6, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 393, column: 6)
!6519 = !DILocation(line: 393, column: 6, scope: !6429)
!6520 = !DILocation(line: 394, column: 20, scope: !6518)
!6521 = !DILocation(line: 394, column: 3, scope: !6518)
!6522 = !DILocation(line: 395, column: 9, scope: !6429)
!6523 = !DILocation(line: 395, column: 2, scope: !6429)
!6524 = !DILocation(line: 396, column: 1, scope: !6429)
!6525 = !DILocation(line: 397, column: 12, scope: !6429)
!6526 = !DILocation(line: 397, column: 2, scope: !6429)
!6527 = !DILocation(line: 398, column: 1, scope: !6429)
!6528 = !DILocation(line: 473, column: 16, scope: !5639)
!6529 = !DILocation(line: 473, column: 14, scope: !5639)
!6530 = !DILocation(line: 475, column: 2, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 475, column: 2)
!6532 = !DILocation(line: 476, column: 1, scope: !5639)
!6533 = !DISubprogram(name: "kmem_cache_create", scope: !284, file: !284, line: 189, type: !6534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6534 = !DISubroutineType(types: !6535)
!6535 = !{!5547, !16, !7, !7, !330, !2097}
!6536 = !DISubprogram(name: "__percpu_counter_init_many", scope: !862, file: !862, line: 33, type: !6537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6537 = !DISubroutineType(types: !6538)
!6538 = !{!22, !5829, !365, !328, !473, !6539}
!6539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!6540 = distinct !DISubprogram(name: "files_maxfiles_init", scope: !3, file: !3, line: 482, type: !2463, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6541 = !{!6542, !6543, !6544, !6545, !6547, !6548, !6550}
!6542 = !DILocalVariable(name: "n", scope: !6540, file: !3, line: 484, type: !39)
!6543 = !DILocalVariable(name: "nr_pages", scope: !6540, file: !3, line: 485, type: !39)
!6544 = !DILocalVariable(name: "memreserve", scope: !6540, file: !3, line: 486, type: !39)
!6545 = !DILocalVariable(name: "__UNIQUE_ID___x364", scope: !6546, file: !3, line: 488, type: !39)
!6546 = distinct !DILexicalBlock(scope: !6540, file: !3, line: 488, column: 15)
!6547 = !DILocalVariable(name: "__UNIQUE_ID___y365", scope: !6546, file: !3, line: 488, type: !39)
!6548 = !DILocalVariable(name: "__UNIQUE_ID___x366", scope: !6549, file: !3, line: 491, type: !39)
!6549 = distinct !DILexicalBlock(scope: !6540, file: !3, line: 491, column: 25)
!6550 = !DILocalVariable(name: "__UNIQUE_ID___y367", scope: !6549, file: !3, line: 491, type: !39)
!6551 = !DILocation(line: 484, column: 2, scope: !6540)
!6552 = !DILocation(line: 484, column: 16, scope: !6540)
!6553 = !DILocation(line: 485, column: 2, scope: !6540)
!6554 = !DILocation(line: 485, column: 16, scope: !6540)
!6555 = !DILocation(line: 485, column: 27, scope: !6540)
!6556 = !DILocation(line: 486, column: 2, scope: !6540)
!6557 = !DILocation(line: 486, column: 16, scope: !6540)
!6558 = !DILocation(line: 486, column: 30, scope: !6540)
!6559 = !DILocation(line: 486, column: 41, scope: !6540)
!6560 = !DILocation(line: 486, column: 39, scope: !6540)
!6561 = !DILocation(line: 486, column: 58, scope: !6540)
!6562 = !DILocation(line: 486, column: 61, scope: !6540)
!6563 = !DILocation(line: 488, column: 15, scope: !6546)
!6564 = !DILocation(line: 488, column: 15, scope: !6540)
!6565 = !DILocation(line: 488, column: 13, scope: !6540)
!6566 = !DILocation(line: 489, column: 8, scope: !6540)
!6567 = !DILocation(line: 489, column: 19, scope: !6540)
!6568 = !DILocation(line: 489, column: 17, scope: !6540)
!6569 = !DILocation(line: 489, column: 31, scope: !6540)
!6570 = !DILocation(line: 489, column: 53, scope: !6540)
!6571 = !DILocation(line: 489, column: 4, scope: !6540)
!6572 = !DILocation(line: 491, column: 25, scope: !6549)
!6573 = !DILocation(line: 491, column: 25, scope: !6540)
!6574 = !DILocation(line: 491, column: 23, scope: !6540)
!6575 = !DILocation(line: 492, column: 1, scope: !6540)
!6576 = distinct !DISubprogram(name: "totalram_pages", scope: !1636, file: !1636, line: 57, type: !5734, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6577 = !DILocation(line: 59, column: 24, scope: !6576)
!6578 = !DILocation(line: 59, column: 2, scope: !6576)
!6579 = distinct !DISubprogram(name: "global_zone_page_state", scope: !6580, file: !6580, line: 179, type: !6581, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6580 = !DIFile(filename: "./include/linux/vmstat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01b2722995b4b350c1d2f883546d8486")
!6581 = !DISubroutineType(types: !6582)
!6582 = !{!39, !263}
!6583 = !{!6584, !6585}
!6584 = !DILocalVariable(name: "item", arg: 1, scope: !6579, file: !6580, line: 179, type: !263)
!6585 = !DILocalVariable(name: "x", scope: !6579, file: !6580, line: 181, type: !905)
!6586 = !DILocation(line: 179, column: 72, scope: !6579)
!6587 = !DILocation(line: 181, column: 2, scope: !6579)
!6588 = !DILocation(line: 181, column: 7, scope: !6579)
!6589 = !DILocation(line: 181, column: 42, scope: !6579)
!6590 = !DILocation(line: 181, column: 29, scope: !6579)
!6591 = !DILocation(line: 181, column: 11, scope: !6579)
!6592 = !DILocation(line: 183, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6579, file: !6580, line: 183, column: 6)
!6594 = !DILocation(line: 183, column: 8, scope: !6593)
!6595 = !DILocation(line: 183, column: 6, scope: !6579)
!6596 = !DILocation(line: 184, column: 5, scope: !6593)
!6597 = !DILocation(line: 184, column: 3, scope: !6593)
!6598 = !DILocation(line: 186, column: 9, scope: !6579)
!6599 = !DILocation(line: 187, column: 1, scope: !6579)
!6600 = !DILocation(line: 186, column: 2, scope: !6579)
!6601 = !DISubprogram(name: "__register_sysctl_init", scope: !12, file: !12, line: 237, type: !6602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{null, !16, !33, !16, !35}
!6604 = !DISubprogram(name: "register_sysctl_mount_point", scope: !12, file: !12, line: 241, type: !6605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!1165, !16}
!6607 = distinct !DISubprogram(name: "kmemleak_not_leak", scope: !6608, file: !6608, line: 93, type: !6023, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6609)
!6608 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!6609 = !{!6610}
!6610 = !DILocalVariable(name: "ptr", arg: 1, scope: !6607, file: !6608, line: 93, type: !902)
!6611 = !DILocation(line: 93, column: 50, scope: !6607)
!6612 = !DILocation(line: 95, column: 1, scope: !6607)
!6613 = distinct !DISubprogram(name: "proc_nr_files", scope: !3, file: !3, line: 107, type: !31, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6614)
!6614 = !{!6615, !6616, !6617, !6618, !6619}
!6615 = !DILocalVariable(name: "table", arg: 1, scope: !6613, file: !3, line: 107, type: !33)
!6616 = !DILocalVariable(name: "write", arg: 2, scope: !6613, file: !3, line: 107, type: !22)
!6617 = !DILocalVariable(name: "buffer", arg: 3, scope: !6613, file: !3, line: 107, type: !20)
!6618 = !DILocalVariable(name: "lenp", arg: 4, scope: !6613, file: !3, line: 108, type: !34)
!6619 = !DILocalVariable(name: "ppos", arg: 5, scope: !6613, file: !3, line: 108, type: !40)
!6620 = !DILocation(line: 107, column: 44, scope: !6613)
!6621 = !DILocation(line: 107, column: 55, scope: !6613)
!6622 = !DILocation(line: 107, column: 68, scope: !6613)
!6623 = !DILocation(line: 108, column: 13, scope: !6613)
!6624 = !DILocation(line: 108, column: 27, scope: !6613)
!6625 = !DILocation(line: 110, column: 24, scope: !6613)
!6626 = !DILocation(line: 110, column: 22, scope: !6613)
!6627 = !DILocation(line: 111, column: 32, scope: !6613)
!6628 = !DILocation(line: 111, column: 39, scope: !6613)
!6629 = !DILocation(line: 111, column: 46, scope: !6613)
!6630 = !DILocation(line: 111, column: 54, scope: !6613)
!6631 = !DILocation(line: 111, column: 60, scope: !6613)
!6632 = !DILocation(line: 111, column: 9, scope: !6613)
!6633 = !DILocation(line: 111, column: 2, scope: !6613)
!6634 = !DISubprogram(name: "proc_doulongvec_minmax", scope: !12, file: !12, line: 84, type: !31, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6635 = distinct !DISubprogram(name: "percpu_counter_read_positive", scope: !862, file: !862, line: 109, type: !5827, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6636)
!6636 = !{!6637, !6638}
!6637 = !DILocalVariable(name: "fbc", arg: 1, scope: !6635, file: !862, line: 109, type: !5829)
!6638 = !DILocalVariable(name: "ret", scope: !6635, file: !862, line: 112, type: !365)
!6639 = !DILocation(line: 109, column: 71, scope: !6635)
!6640 = !DILocation(line: 112, column: 2, scope: !6635)
!6641 = !DILocation(line: 112, column: 6, scope: !6635)
!6642 = !DILocation(line: 112, column: 12, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6635, file: !862, line: 112, column: 12)
!6644 = !DILocation(line: 112, column: 12, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6643, file: !862, line: 112, column: 12)
!6646 = !DILocation(line: 114, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6635, file: !862, line: 114, column: 6)
!6648 = !DILocation(line: 114, column: 10, scope: !6647)
!6649 = !DILocation(line: 114, column: 6, scope: !6635)
!6650 = !DILocation(line: 115, column: 10, scope: !6647)
!6651 = !DILocation(line: 115, column: 3, scope: !6647)
!6652 = !DILocation(line: 116, column: 2, scope: !6635)
!6653 = !DILocation(line: 117, column: 1, scope: !6635)
!6654 = !DISubprogram(name: "__percpu_counter_sum", scope: !862, file: !862, line: 58, type: !5827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6655 = !DISubprogram(name: "kmem_cache_alloc", scope: !284, file: !284, line: 500, type: !5844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = distinct !DISubprogram(name: "get_cred", scope: !1358, file: !1358, line: 200, type: !6657, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!1355, !1355}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "cred", arg: 1, scope: !6656, file: !1358, line: 200, type: !1355)
!6661 = !DILocalVariable(name: "nonconst_cred", scope: !6656, file: !1358, line: 202, type: !5581)
!6662 = !DILocation(line: 200, column: 62, scope: !6656)
!6663 = !DILocation(line: 202, column: 2, scope: !6656)
!6664 = !DILocation(line: 202, column: 15, scope: !6656)
!6665 = !DILocation(line: 202, column: 47, scope: !6656)
!6666 = !DILocation(line: 203, column: 7, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6656, file: !1358, line: 203, column: 6)
!6668 = !DILocation(line: 203, column: 6, scope: !6656)
!6669 = !DILocation(line: 204, column: 10, scope: !6667)
!6670 = !DILocation(line: 204, column: 3, scope: !6667)
!6671 = !DILocation(line: 205, column: 2, scope: !6656)
!6672 = !DILocation(line: 205, column: 17, scope: !6656)
!6673 = !DILocation(line: 205, column: 25, scope: !6656)
!6674 = !DILocation(line: 206, column: 22, scope: !6656)
!6675 = !DILocation(line: 206, column: 9, scope: !6656)
!6676 = !DILocation(line: 206, column: 2, scope: !6656)
!6677 = !DILocation(line: 207, column: 1, scope: !6656)
!6678 = !DISubprogram(name: "security_file_alloc", scope: !6679, file: !6679, line: 389, type: !6680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6679 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!22, !795}
!6682 = distinct !DISubprogram(name: "put_cred", scope: !1358, file: !1358, line: 231, type: !6683, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{null, !1355}
!6685 = !{!6686, !6687}
!6686 = !DILocalVariable(name: "_cred", arg: 1, scope: !6682, file: !1358, line: 231, type: !1355)
!6687 = !DILocalVariable(name: "cred", scope: !6682, file: !1358, line: 233, type: !5581)
!6688 = !DILocation(line: 231, column: 48, scope: !6682)
!6689 = !DILocation(line: 233, column: 2, scope: !6682)
!6690 = !DILocation(line: 233, column: 15, scope: !6682)
!6691 = !DILocation(line: 233, column: 38, scope: !6682)
!6692 = !DILocation(line: 235, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6682, file: !1358, line: 235, column: 6)
!6694 = !DILocation(line: 235, column: 6, scope: !6682)
!6695 = !DILocation(line: 236, column: 34, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6697, file: !1358, line: 236, column: 7)
!6697 = distinct !DILexicalBlock(scope: !6693, file: !1358, line: 235, column: 12)
!6698 = !DILocation(line: 236, column: 41, scope: !6696)
!6699 = !DILocation(line: 236, column: 7, scope: !6696)
!6700 = !DILocation(line: 236, column: 7, scope: !6697)
!6701 = !DILocation(line: 237, column: 15, scope: !6696)
!6702 = !DILocation(line: 237, column: 4, scope: !6696)
!6703 = !DILocation(line: 238, column: 2, scope: !6697)
!6704 = !DILocation(line: 239, column: 1, scope: !6682)
!6705 = distinct !DISubprogram(name: "atomic_long_set", scope: !6321, file: !6321, line: 3193, type: !6706, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6708)
!6706 = !DISubroutineType(types: !6707)
!6707 = !{null, !3462, !905}
!6708 = !{!6709, !6710}
!6709 = !DILocalVariable(name: "v", arg: 1, scope: !6705, file: !6321, line: 3193, type: !3462)
!6710 = !DILocalVariable(name: "i", arg: 2, scope: !6705, file: !6321, line: 3193, type: !905)
!6711 = !DILocation(line: 3193, column: 32, scope: !6705)
!6712 = !DILocation(line: 3193, column: 40, scope: !6705)
!6713 = !DILocation(line: 3195, column: 26, scope: !6705)
!6714 = !DILocation(line: 3195, column: 2, scope: !6705)
!6715 = !DILocation(line: 3196, column: 22, scope: !6705)
!6716 = !DILocation(line: 3196, column: 25, scope: !6705)
!6717 = !DILocation(line: 3196, column: 2, scope: !6705)
!6718 = !DILocation(line: 3197, column: 1, scope: !6705)
!6719 = distinct !DISubprogram(name: "spinlock_check", scope: !6720, file: !6720, line: 324, type: !6721, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6720 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6721 = !DISubroutineType(types: !6722)
!6722 = !{!6723, !4443}
!6723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!6724 = !{!6725}
!6725 = !DILocalVariable(name: "lock", arg: 1, scope: !6719, file: !6720, line: 324, type: !4443)
!6726 = !DILocation(line: 324, column: 67, scope: !6719)
!6727 = !DILocation(line: 326, column: 10, scope: !6719)
!6728 = !DILocation(line: 326, column: 16, scope: !6719)
!6729 = !DILocation(line: 326, column: 2, scope: !6719)
!6730 = !DISubprogram(name: "__mutex_init", scope: !369, file: !369, line: 121, type: !6731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6731 = !DISubroutineType(types: !6732)
!6732 = !{null, !6733, !16, !6539}
!6733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!6734 = distinct !DISubprogram(name: "get_new_cred", scope: !1358, file: !1358, line: 181, type: !6735, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6737)
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!5581, !5581}
!6737 = !{!6738}
!6738 = !DILocalVariable(name: "cred", arg: 1, scope: !6734, file: !1358, line: 181, type: !5581)
!6739 = !DILocation(line: 181, column: 54, scope: !6734)
!6740 = !DILocation(line: 183, column: 19, scope: !6734)
!6741 = !DILocation(line: 183, column: 25, scope: !6734)
!6742 = !DILocation(line: 183, column: 2, scope: !6734)
!6743 = !DILocation(line: 184, column: 9, scope: !6734)
!6744 = !DILocation(line: 184, column: 2, scope: !6734)
!6745 = distinct !DISubprogram(name: "atomic_long_inc", scope: !6321, file: !6321, line: 3561, type: !6746, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{null, !3462}
!6748 = !{!6749}
!6749 = !DILocalVariable(name: "v", arg: 1, scope: !6745, file: !6321, line: 3561, type: !3462)
!6750 = !DILocation(line: 3561, column: 32, scope: !6745)
!6751 = !DILocation(line: 3563, column: 31, scope: !6745)
!6752 = !DILocation(line: 3563, column: 2, scope: !6745)
!6753 = !DILocation(line: 3564, column: 22, scope: !6745)
!6754 = !DILocation(line: 3564, column: 2, scope: !6745)
!6755 = !DILocation(line: 3565, column: 1, scope: !6745)
!6756 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6757, file: !6757, line: 94, type: !6758, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6757 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6758 = !DISubroutineType(types: !6759)
!6759 = !{null, !6760, !35}
!6760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6761, size: 64)
!6761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6762)
!6762 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6763 = !{!6764, !6765}
!6764 = !DILocalVariable(name: "v", arg: 1, scope: !6756, file: !6757, line: 94, type: !6760)
!6765 = !DILocalVariable(name: "size", arg: 2, scope: !6756, file: !6757, line: 94, type: !35)
!6766 = !DILocation(line: 94, column: 79, scope: !6756)
!6767 = !DILocation(line: 94, column: 89, scope: !6756)
!6768 = !DILocation(line: 96, column: 20, scope: !6756)
!6769 = !DILocation(line: 96, column: 23, scope: !6756)
!6770 = !DILocation(line: 96, column: 2, scope: !6756)
!6771 = !DILocation(line: 97, column: 2, scope: !6756)
!6772 = !DILocation(line: 98, column: 1, scope: !6756)
!6773 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !360, file: !360, line: 495, type: !6746, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6774 = !{!6775}
!6775 = !DILocalVariable(name: "v", arg: 1, scope: !6773, file: !360, line: 495, type: !3462)
!6776 = !DILocation(line: 495, column: 36, scope: !6773)
!6777 = !DILocation(line: 498, column: 19, scope: !6773)
!6778 = !DILocation(line: 498, column: 2, scope: !6773)
!6779 = !DILocation(line: 502, column: 1, scope: !6773)
!6780 = distinct !DISubprogram(name: "kasan_check_write", scope: !6781, file: !6781, line: 44, type: !6782, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6784)
!6781 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6782 = !DISubroutineType(types: !6783)
!6783 = !{!987, !6760, !7}
!6784 = !{!6785, !6786}
!6785 = !DILocalVariable(name: "p", arg: 1, scope: !6780, file: !6781, line: 44, type: !6760)
!6786 = !DILocalVariable(name: "size", arg: 2, scope: !6780, file: !6781, line: 44, type: !7)
!6787 = !DILocation(line: 44, column: 59, scope: !6780)
!6788 = !DILocation(line: 44, column: 75, scope: !6780)
!6789 = !DILocation(line: 46, column: 2, scope: !6780)
!6790 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6791, file: !6791, line: 229, type: !6792, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6794)
!6791 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6792 = !DISubroutineType(types: !6793)
!6793 = !{null, !6760, !35, !22}
!6794 = !{!6795, !6796, !6797}
!6795 = !DILocalVariable(name: "ptr", arg: 1, scope: !6790, file: !6791, line: 229, type: !6760)
!6796 = !DILocalVariable(name: "size", arg: 2, scope: !6790, file: !6791, line: 229, type: !35)
!6797 = !DILocalVariable(name: "type", arg: 3, scope: !6790, file: !6791, line: 230, type: !22)
!6798 = !DILocation(line: 229, column: 60, scope: !6790)
!6799 = !DILocation(line: 229, column: 72, scope: !6790)
!6800 = !DILocation(line: 230, column: 15, scope: !6790)
!6801 = !DILocation(line: 230, column: 23, scope: !6790)
!6802 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !6803, file: !6803, line: 3088, type: !6804, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6807)
!6803 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6804 = !DISubroutineType(types: !6805)
!6805 = !{null, !6806}
!6806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!6807 = !{!6808}
!6808 = !DILocalVariable(name: "v", arg: 1, scope: !6802, file: !6803, line: 3088, type: !6806)
!6809 = !DILocation(line: 3088, column: 30, scope: !6802)
!6810 = !DILocation(line: 3091, column: 20, scope: !6802)
!6811 = !DILocation(line: 3091, column: 2, scope: !6802)
!6812 = !DILocation(line: 3095, column: 1, scope: !6802)
!6813 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !6814, file: !6814, line: 43, type: !6804, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6815)
!6814 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6815 = !{!6816}
!6816 = !DILocalVariable(name: "v", arg: 1, scope: !6813, file: !6814, line: 43, type: !6806)
!6817 = !DILocation(line: 43, column: 59, scope: !6813)
!6818 = !DILocation(line: 46, column: 16, scope: !6813)
!6819 = !DILocation(line: 46, column: 19, scope: !6813)
!6820 = !DILocation(line: 47, column: 15, scope: !6813)
!6821 = !DILocation(line: 47, column: 18, scope: !6813)
!6822 = !DILocation(line: 45, column: 2, scope: !6813)
!6823 = !{i64 2148961532, i64 2148961571, i64 2148961592, i64 2148961629, i64 2148961652, i64 2148961522}
!6824 = !DILocation(line: 48, column: 1, scope: !6813)
!6825 = !DISubprogram(name: "__put_cred", scope: !1358, file: !1358, line: 148, type: !6826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6826 = !DISubroutineType(types: !6827)
!6827 = !{null, !5581}
!6828 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6757, file: !6757, line: 80, type: !6758, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6829)
!6829 = !{!6830, !6831}
!6830 = !DILocalVariable(name: "v", arg: 1, scope: !6828, file: !6757, line: 80, type: !6760)
!6831 = !DILocalVariable(name: "size", arg: 2, scope: !6828, file: !6757, line: 80, type: !35)
!6832 = !DILocation(line: 80, column: 74, scope: !6828)
!6833 = !DILocation(line: 80, column: 84, scope: !6828)
!6834 = !DILocation(line: 82, column: 20, scope: !6828)
!6835 = !DILocation(line: 82, column: 23, scope: !6828)
!6836 = !DILocation(line: 82, column: 2, scope: !6828)
!6837 = !DILocation(line: 83, column: 2, scope: !6828)
!6838 = !DILocation(line: 84, column: 1, scope: !6828)
!6839 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !360, file: !360, line: 76, type: !6706, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "v", arg: 1, scope: !6839, file: !360, line: 76, type: !3462)
!6842 = !DILocalVariable(name: "i", arg: 2, scope: !6839, file: !360, line: 76, type: !905)
!6843 = !DILocation(line: 76, column: 36, scope: !6839)
!6844 = !DILocation(line: 76, column: 44, scope: !6839)
!6845 = !DILocation(line: 79, column: 19, scope: !6839)
!6846 = !DILocation(line: 79, column: 22, scope: !6839)
!6847 = !DILocation(line: 79, column: 2, scope: !6839)
!6848 = !DILocation(line: 83, column: 1, scope: !6839)
!6849 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !6803, file: !6803, line: 2600, type: !6850, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6852)
!6850 = !DISubroutineType(types: !6851)
!6851 = !{null, !6806, !365}
!6852 = !{!6853, !6854}
!6853 = !DILocalVariable(name: "v", arg: 1, scope: !6849, file: !6803, line: 2600, type: !6806)
!6854 = !DILocalVariable(name: "i", arg: 2, scope: !6849, file: !6803, line: 2600, type: !365)
!6855 = !DILocation(line: 2600, column: 30, scope: !6849)
!6856 = !DILocation(line: 2600, column: 37, scope: !6849)
!6857 = !DILocation(line: 2602, column: 20, scope: !6849)
!6858 = !DILocation(line: 2602, column: 23, scope: !6849)
!6859 = !DILocation(line: 2602, column: 2, scope: !6849)
!6860 = !DILocation(line: 2603, column: 1, scope: !6849)
!6861 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !6814, file: !6814, line: 18, type: !6850, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6862)
!6862 = !{!6863, !6864}
!6863 = !DILocalVariable(name: "v", arg: 1, scope: !6861, file: !6814, line: 18, type: !6806)
!6864 = !DILocalVariable(name: "i", arg: 2, scope: !6861, file: !6814, line: 18, type: !365)
!6865 = !DILocation(line: 18, column: 59, scope: !6861)
!6866 = !DILocation(line: 18, column: 66, scope: !6861)
!6867 = !DILocation(line: 20, column: 2, scope: !6861)
!6868 = !DILocation(line: 20, column: 2, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6861, file: !6814, line: 20, column: 2)
!6870 = !DILocation(line: 21, column: 1, scope: !6861)
!6871 = distinct !DISubprogram(name: "percpu_counter_add", scope: !862, file: !862, line: 67, type: !6872, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6874)
!6872 = !DISubroutineType(types: !6873)
!6873 = !{null, !5829, !365}
!6874 = !{!6875, !6876}
!6875 = !DILocalVariable(name: "fbc", arg: 1, scope: !6871, file: !862, line: 67, type: !5829)
!6876 = !DILocalVariable(name: "amount", arg: 2, scope: !6871, file: !862, line: 67, type: !365)
!6877 = !DILocation(line: 67, column: 62, scope: !6871)
!6878 = !DILocation(line: 67, column: 71, scope: !6871)
!6879 = !DILocation(line: 69, column: 27, scope: !6871)
!6880 = !DILocation(line: 69, column: 32, scope: !6871)
!6881 = !DILocation(line: 69, column: 40, scope: !6871)
!6882 = !DILocation(line: 69, column: 2, scope: !6871)
!6883 = !DILocation(line: 70, column: 1, scope: !6871)
!6884 = !DISubprogram(name: "percpu_counter_add_batch", scope: !862, file: !862, line: 56, type: !6885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6885 = !DISubroutineType(types: !6886)
!6886 = !{null, !5829, !365, !869}
!6887 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 591, type: !6010, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6888)
!6888 = !{!6889, !6890, !6891}
!6889 = !DILocalVariable(name: "size", arg: 1, scope: !6887, file: !284, line: 591, type: !35)
!6890 = !DILocalVariable(name: "flags", arg: 2, scope: !6887, file: !284, line: 591, type: !328)
!6891 = !DILocalVariable(name: "index", scope: !6892, file: !284, line: 594, type: !7)
!6892 = distinct !DILexicalBlock(scope: !6893, file: !284, line: 593, column: 42)
!6893 = distinct !DILexicalBlock(scope: !6887, file: !284, line: 593, column: 6)
!6894 = !DILocation(line: 591, column: 61, scope: !6887)
!6895 = !DILocation(line: 591, column: 73, scope: !6887)
!6896 = !DILocation(line: 593, column: 27, scope: !6893)
!6897 = !DILocation(line: 593, column: 6, scope: !6893)
!6898 = !DILocation(line: 593, column: 33, scope: !6893)
!6899 = !DILocation(line: 593, column: 36, scope: !6893)
!6900 = !DILocation(line: 593, column: 6, scope: !6887)
!6901 = !DILocation(line: 594, column: 3, scope: !6892)
!6902 = !DILocation(line: 594, column: 16, scope: !6892)
!6903 = !DILocation(line: 596, column: 7, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6892, file: !284, line: 596, column: 7)
!6905 = !DILocation(line: 596, column: 12, scope: !6904)
!6906 = !DILocation(line: 596, column: 7, scope: !6892)
!6907 = !DILocation(line: 597, column: 25, scope: !6904)
!6908 = !DILocation(line: 597, column: 31, scope: !6904)
!6909 = !DILocation(line: 597, column: 11, scope: !6904)
!6910 = !DILocation(line: 597, column: 4, scope: !6904)
!6911 = !DILocation(line: 599, column: 11, scope: !6892)
!6912 = !DILocation(line: 599, column: 9, scope: !6892)
!6913 = !DILocation(line: 601, column: 33, scope: !6892)
!6914 = !DILocation(line: 601, column: 40, scope: !6892)
!6915 = !DILocation(line: 601, column: 20, scope: !6892)
!6916 = !DILocation(line: 601, column: 5, scope: !6892)
!6917 = !DILocation(line: 601, column: 51, scope: !6892)
!6918 = !DILocation(line: 602, column: 5, scope: !6892)
!6919 = !DILocation(line: 602, column: 12, scope: !6892)
!6920 = !DILocation(line: 600, column: 10, scope: !6892)
!6921 = !DILocation(line: 600, column: 3, scope: !6892)
!6922 = !DILocation(line: 603, column: 2, scope: !6893)
!6923 = !DILocation(line: 604, column: 19, scope: !6887)
!6924 = !DILocation(line: 604, column: 25, scope: !6887)
!6925 = !DILocation(line: 604, column: 9, scope: !6887)
!6926 = !DILocation(line: 604, column: 2, scope: !6887)
!6927 = !DILocation(line: 605, column: 1, scope: !6887)
!6928 = !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 531, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6929 = distinct !DISubprogram(name: "__kmalloc_index", scope: !284, file: !284, line: 444, type: !6930, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6932)
!6930 = !DISubroutineType(types: !6931)
!6931 = !{!7, !35, !987}
!6932 = !{!6933, !6934}
!6933 = !DILocalVariable(name: "size", arg: 1, scope: !6929, file: !284, line: 444, type: !35)
!6934 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6929, file: !284, line: 445, type: !987)
!6935 = !DILocation(line: 444, column: 60, scope: !6929)
!6936 = !DILocation(line: 445, column: 16, scope: !6929)
!6937 = !DILocation(line: 447, column: 7, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 447, column: 6)
!6939 = !DILocation(line: 447, column: 6, scope: !6929)
!6940 = !DILocation(line: 448, column: 3, scope: !6938)
!6941 = !DILocation(line: 450, column: 6, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 450, column: 6)
!6943 = !DILocation(line: 450, column: 11, scope: !6942)
!6944 = !DILocation(line: 450, column: 6, scope: !6929)
!6945 = !DILocation(line: 451, column: 3, scope: !6942)
!6946 = !DILocation(line: 453, column: 32, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 453, column: 6)
!6948 = !DILocation(line: 453, column: 37, scope: !6947)
!6949 = !DILocation(line: 453, column: 42, scope: !6947)
!6950 = !DILocation(line: 453, column: 45, scope: !6947)
!6951 = !DILocation(line: 453, column: 50, scope: !6947)
!6952 = !DILocation(line: 453, column: 6, scope: !6929)
!6953 = !DILocation(line: 454, column: 3, scope: !6947)
!6954 = !DILocation(line: 455, column: 32, scope: !6955)
!6955 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 455, column: 6)
!6956 = !DILocation(line: 455, column: 37, scope: !6955)
!6957 = !DILocation(line: 455, column: 43, scope: !6955)
!6958 = !DILocation(line: 455, column: 46, scope: !6955)
!6959 = !DILocation(line: 455, column: 51, scope: !6955)
!6960 = !DILocation(line: 455, column: 6, scope: !6929)
!6961 = !DILocation(line: 456, column: 3, scope: !6955)
!6962 = !DILocation(line: 457, column: 6, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 457, column: 6)
!6964 = !DILocation(line: 457, column: 11, scope: !6963)
!6965 = !DILocation(line: 457, column: 6, scope: !6929)
!6966 = !DILocation(line: 457, column: 26, scope: !6963)
!6967 = !DILocation(line: 458, column: 6, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 458, column: 6)
!6969 = !DILocation(line: 458, column: 11, scope: !6968)
!6970 = !DILocation(line: 458, column: 6, scope: !6929)
!6971 = !DILocation(line: 458, column: 26, scope: !6968)
!6972 = !DILocation(line: 459, column: 6, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 459, column: 6)
!6974 = !DILocation(line: 459, column: 11, scope: !6973)
!6975 = !DILocation(line: 459, column: 6, scope: !6929)
!6976 = !DILocation(line: 459, column: 26, scope: !6973)
!6977 = !DILocation(line: 460, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 460, column: 6)
!6979 = !DILocation(line: 460, column: 11, scope: !6978)
!6980 = !DILocation(line: 460, column: 6, scope: !6929)
!6981 = !DILocation(line: 460, column: 26, scope: !6978)
!6982 = !DILocation(line: 461, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 461, column: 6)
!6984 = !DILocation(line: 461, column: 11, scope: !6983)
!6985 = !DILocation(line: 461, column: 6, scope: !6929)
!6986 = !DILocation(line: 461, column: 26, scope: !6983)
!6987 = !DILocation(line: 462, column: 6, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 462, column: 6)
!6989 = !DILocation(line: 462, column: 11, scope: !6988)
!6990 = !DILocation(line: 462, column: 6, scope: !6929)
!6991 = !DILocation(line: 462, column: 26, scope: !6988)
!6992 = !DILocation(line: 463, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 463, column: 6)
!6994 = !DILocation(line: 463, column: 11, scope: !6993)
!6995 = !DILocation(line: 463, column: 6, scope: !6929)
!6996 = !DILocation(line: 463, column: 26, scope: !6993)
!6997 = !DILocation(line: 464, column: 6, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 464, column: 6)
!6999 = !DILocation(line: 464, column: 11, scope: !6998)
!7000 = !DILocation(line: 464, column: 6, scope: !6929)
!7001 = !DILocation(line: 464, column: 26, scope: !6998)
!7002 = !DILocation(line: 465, column: 6, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 465, column: 6)
!7004 = !DILocation(line: 465, column: 11, scope: !7003)
!7005 = !DILocation(line: 465, column: 6, scope: !6929)
!7006 = !DILocation(line: 465, column: 26, scope: !7003)
!7007 = !DILocation(line: 466, column: 6, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 466, column: 6)
!7009 = !DILocation(line: 466, column: 11, scope: !7008)
!7010 = !DILocation(line: 466, column: 6, scope: !6929)
!7011 = !DILocation(line: 466, column: 26, scope: !7008)
!7012 = !DILocation(line: 467, column: 6, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 467, column: 6)
!7014 = !DILocation(line: 467, column: 11, scope: !7013)
!7015 = !DILocation(line: 467, column: 6, scope: !6929)
!7016 = !DILocation(line: 467, column: 26, scope: !7013)
!7017 = !DILocation(line: 468, column: 6, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 468, column: 6)
!7019 = !DILocation(line: 468, column: 11, scope: !7018)
!7020 = !DILocation(line: 468, column: 6, scope: !6929)
!7021 = !DILocation(line: 468, column: 26, scope: !7018)
!7022 = !DILocation(line: 469, column: 6, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 469, column: 6)
!7024 = !DILocation(line: 469, column: 11, scope: !7023)
!7025 = !DILocation(line: 469, column: 6, scope: !6929)
!7026 = !DILocation(line: 469, column: 26, scope: !7023)
!7027 = !DILocation(line: 470, column: 6, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 470, column: 6)
!7029 = !DILocation(line: 470, column: 11, scope: !7028)
!7030 = !DILocation(line: 470, column: 6, scope: !6929)
!7031 = !DILocation(line: 470, column: 26, scope: !7028)
!7032 = !DILocation(line: 471, column: 6, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 471, column: 6)
!7034 = !DILocation(line: 471, column: 11, scope: !7033)
!7035 = !DILocation(line: 471, column: 6, scope: !6929)
!7036 = !DILocation(line: 471, column: 26, scope: !7033)
!7037 = !DILocation(line: 472, column: 6, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 472, column: 6)
!7039 = !DILocation(line: 472, column: 11, scope: !7038)
!7040 = !DILocation(line: 472, column: 6, scope: !6929)
!7041 = !DILocation(line: 472, column: 26, scope: !7038)
!7042 = !DILocation(line: 473, column: 6, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 473, column: 6)
!7044 = !DILocation(line: 473, column: 11, scope: !7043)
!7045 = !DILocation(line: 473, column: 6, scope: !6929)
!7046 = !DILocation(line: 473, column: 26, scope: !7043)
!7047 = !DILocation(line: 474, column: 6, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 474, column: 6)
!7049 = !DILocation(line: 474, column: 11, scope: !7048)
!7050 = !DILocation(line: 474, column: 6, scope: !6929)
!7051 = !DILocation(line: 474, column: 27, scope: !7048)
!7052 = !DILocation(line: 475, column: 6, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 475, column: 6)
!7054 = !DILocation(line: 475, column: 11, scope: !7053)
!7055 = !DILocation(line: 475, column: 6, scope: !6929)
!7056 = !DILocation(line: 475, column: 32, scope: !7053)
!7057 = !DILocation(line: 477, column: 50, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !6929, file: !284, line: 477, column: 6)
!7059 = !{i8 0, i8 2}
!7060 = !DILocation(line: 477, column: 6, scope: !6929)
!7061 = !DILocation(line: 478, column: 3, scope: !7058)
!7062 = !DILocation(line: 478, column: 3, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7064, file: !284, line: 478, column: 3)
!7064 = distinct !DILexicalBlock(scope: !7058, file: !284, line: 478, column: 3)
!7065 = !{i32 -2143550526}
!7066 = !DILocation(line: 478, column: 3, scope: !7064)
!7067 = !DILocation(line: 480, column: 3, scope: !7058)
!7068 = !DILocation(line: 480, column: 3, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7058, file: !284, line: 480, column: 3)
!7070 = !DILocation(line: 480, column: 3, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !7069, file: !284, line: 480, column: 3)
!7072 = !DILocation(line: 480, column: 3, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7069, file: !284, line: 480, column: 3)
!7074 = !{i64 2151416973, i64 2151417002, i64 2151417048, i64 2151417106, i64 2151417160, i64 2151417214, i64 2151417269, i64 2151417300}
!7075 = !DILocation(line: 483, column: 2, scope: !6929)
!7076 = !DILocation(line: 484, column: 1, scope: !6929)
!7077 = !DISubprogram(name: "kmalloc_trace", scope: !284, file: !284, line: 525, type: !7078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7078 = !DISubroutineType(types: !7079)
!7079 = !{!20, !5547, !328, !35}
!7080 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 401, type: !7081, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7083)
!7081 = !DISubroutineType(types: !7082)
!7082 = !{!283, !328, !39}
!7083 = !{!7084, !7085}
!7084 = !DILocalVariable(name: "flags", arg: 1, scope: !7080, file: !284, line: 401, type: !328)
!7085 = !DILocalVariable(name: "caller", arg: 2, scope: !7080, file: !284, line: 401, type: !39)
!7086 = !DILocation(line: 401, column: 67, scope: !7080)
!7087 = !DILocation(line: 401, column: 88, scope: !7080)
!7088 = !DILocation(line: 407, column: 6, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7080, file: !284, line: 407, column: 6)
!7090 = !DILocation(line: 407, column: 6, scope: !7080)
!7091 = !DILocation(line: 413, column: 3, scope: !7089)
!7092 = !DILocation(line: 423, column: 38, scope: !7093)
!7093 = distinct !DILexicalBlock(scope: !7080, file: !284, line: 423, column: 6)
!7094 = !DILocation(line: 423, column: 44, scope: !7093)
!7095 = !DILocation(line: 423, column: 6, scope: !7080)
!7096 = !DILocation(line: 424, column: 3, scope: !7093)
!7097 = !DILocation(line: 426, column: 3, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !7080, file: !284, line: 425, column: 6)
!7099 = !DILocation(line: 429, column: 1, scope: !7080)
!7100 = !DISubprogram(name: "__kmalloc", scope: !284, file: !284, line: 488, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7101 = !DISubprogram(name: "__compiletime_assert_117", scope: !284, file: !284, line: 478, type: !2463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7102 = distinct !DISubprogram(name: "filemap_sample_wb_err", scope: !3776, file: !3776, line: 111, type: !7103, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7105)
!7103 = !DISubroutineType(types: !7104)
!7104 = !{!3467, !1771}
!7105 = !{!7106}
!7106 = !DILocalVariable(name: "mapping", arg: 1, scope: !7102, file: !3776, line: 111, type: !1771)
!7107 = !DILocation(line: 111, column: 68, scope: !7102)
!7108 = !DILocation(line: 113, column: 24, scope: !7102)
!7109 = !DILocation(line: 113, column: 33, scope: !7102)
!7110 = !DILocation(line: 113, column: 9, scope: !7102)
!7111 = !DILocation(line: 113, column: 2, scope: !7102)
!7112 = distinct !DISubprogram(name: "file_sample_sb_err", scope: !3776, file: !3776, line: 123, type: !7113, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7115)
!7113 = !DISubroutineType(types: !7114)
!7114 = !{!3467, !795}
!7115 = !{!7116}
!7116 = !DILocalVariable(name: "file", arg: 1, scope: !7112, file: !3776, line: 123, type: !795)
!7117 = !DILocation(line: 123, column: 56, scope: !7112)
!7118 = !DILocation(line: 125, column: 24, scope: !7112)
!7119 = !DILocation(line: 125, column: 30, scope: !7112)
!7120 = !DILocation(line: 125, column: 37, scope: !7112)
!7121 = !DILocation(line: 125, column: 45, scope: !7112)
!7122 = !DILocation(line: 125, column: 51, scope: !7112)
!7123 = !DILocation(line: 125, column: 9, scope: !7112)
!7124 = !DILocation(line: 125, column: 2, scope: !7112)
!7125 = distinct !DISubprogram(name: "iocb_flags", scope: !155, file: !155, line: 3254, type: !6680, scopeLine: 3255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7126)
!7126 = !{!7127, !7128}
!7127 = !DILocalVariable(name: "file", arg: 1, scope: !7125, file: !155, line: 3254, type: !795)
!7128 = !DILocalVariable(name: "res", scope: !7125, file: !155, line: 3256, type: !22)
!7129 = !DILocation(line: 3254, column: 43, scope: !7125)
!7130 = !DILocation(line: 3256, column: 2, scope: !7125)
!7131 = !DILocation(line: 3256, column: 6, scope: !7125)
!7132 = !DILocation(line: 3257, column: 6, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7125, file: !155, line: 3257, column: 6)
!7134 = !DILocation(line: 3257, column: 12, scope: !7133)
!7135 = !DILocation(line: 3257, column: 20, scope: !7133)
!7136 = !DILocation(line: 3257, column: 6, scope: !7125)
!7137 = !DILocation(line: 3258, column: 7, scope: !7133)
!7138 = !DILocation(line: 3258, column: 3, scope: !7133)
!7139 = !DILocation(line: 3259, column: 6, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7125, file: !155, line: 3259, column: 6)
!7141 = !DILocation(line: 3259, column: 12, scope: !7140)
!7142 = !DILocation(line: 3259, column: 20, scope: !7140)
!7143 = !DILocation(line: 3259, column: 6, scope: !7125)
!7144 = !DILocation(line: 3260, column: 7, scope: !7140)
!7145 = !DILocation(line: 3260, column: 3, scope: !7140)
!7146 = !DILocation(line: 3261, column: 6, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7125, file: !155, line: 3261, column: 6)
!7148 = !DILocation(line: 3261, column: 12, scope: !7147)
!7149 = !DILocation(line: 3261, column: 20, scope: !7147)
!7150 = !DILocation(line: 3261, column: 6, scope: !7125)
!7151 = !DILocation(line: 3262, column: 7, scope: !7147)
!7152 = !DILocation(line: 3262, column: 3, scope: !7147)
!7153 = !DILocation(line: 3263, column: 6, scope: !7154)
!7154 = distinct !DILexicalBlock(scope: !7125, file: !155, line: 3263, column: 6)
!7155 = !DILocation(line: 3263, column: 12, scope: !7154)
!7156 = !DILocation(line: 3263, column: 20, scope: !7154)
!7157 = !DILocation(line: 3263, column: 6, scope: !7125)
!7158 = !DILocation(line: 3264, column: 7, scope: !7154)
!7159 = !DILocation(line: 3264, column: 3, scope: !7154)
!7160 = !DILocation(line: 3265, column: 9, scope: !7125)
!7161 = !DILocation(line: 3266, column: 1, scope: !7125)
!7162 = !DILocation(line: 3265, column: 2, scope: !7125)
!7163 = distinct !DISubprogram(name: "i_readcount_inc", scope: !155, file: !155, line: 2819, type: !2489, scopeLine: 2820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7164)
!7164 = !{!7165}
!7165 = !DILocalVariable(name: "inode", arg: 1, scope: !7163, file: !155, line: 2819, type: !1775)
!7166 = !DILocation(line: 2819, column: 50, scope: !7163)
!7167 = !DILocation(line: 2821, column: 14, scope: !7163)
!7168 = !DILocation(line: 2821, column: 21, scope: !7163)
!7169 = !DILocation(line: 2821, column: 2, scope: !7163)
!7170 = !DILocation(line: 2822, column: 1, scope: !7163)
!7171 = !DISubprogram(name: "errseq_sample", scope: !3468, file: !3468, line: 11, type: !7172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7172 = !DISubroutineType(types: !7173)
!7173 = !{!3467, !7174}
!7174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!7175 = distinct !DISubprogram(name: "atomic_inc", scope: !6321, file: !6321, line: 433, type: !7176, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7179)
!7176 = !DISubroutineType(types: !7177)
!7177 = !{null, !7178}
!7178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!7179 = !{!7180}
!7180 = !DILocalVariable(name: "v", arg: 1, scope: !7175, file: !6321, line: 433, type: !7178)
!7181 = !DILocation(line: 433, column: 22, scope: !7175)
!7182 = !DILocation(line: 435, column: 31, scope: !7175)
!7183 = !DILocation(line: 435, column: 2, scope: !7175)
!7184 = !DILocation(line: 436, column: 17, scope: !7175)
!7185 = !DILocation(line: 436, column: 2, scope: !7175)
!7186 = !DILocation(line: 437, column: 1, scope: !7175)
!7187 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6803, file: !6803, line: 976, type: !7176, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7188)
!7188 = !{!7189}
!7189 = !DILocalVariable(name: "v", arg: 1, scope: !7187, file: !6803, line: 976, type: !7178)
!7190 = !DILocation(line: 976, column: 26, scope: !7187)
!7191 = !DILocation(line: 979, column: 18, scope: !7187)
!7192 = !DILocation(line: 979, column: 2, scope: !7187)
!7193 = !DILocation(line: 983, column: 1, scope: !7187)
!7194 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7195, file: !7195, line: 51, type: !7176, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7196)
!7195 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7196 = !{!7197}
!7197 = !DILocalVariable(name: "v", arg: 1, scope: !7194, file: !7195, line: 51, type: !7178)
!7198 = !DILocation(line: 51, column: 55, scope: !7194)
!7199 = !DILocation(line: 54, column: 16, scope: !7194)
!7200 = !DILocation(line: 54, column: 19, scope: !7194)
!7201 = !DILocation(line: 53, column: 2, scope: !7194)
!7202 = !{i64 2148930605, i64 2148930644, i64 2148930665, i64 2148930702, i64 2148930725, i64 2148930595}
!7203 = !DILocation(line: 55, column: 1, scope: !7194)
!7204 = distinct !DISubprogram(name: "llist_del_all", scope: !342, file: !342, line: 237, type: !7205, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7207)
!7205 = !DISubroutineType(types: !7206)
!7206 = !{!345, !6392}
!7207 = !{!7208, !7209, !7212}
!7208 = !DILocalVariable(name: "head", arg: 1, scope: !7204, file: !342, line: 237, type: !6392)
!7209 = !DILocalVariable(name: "__ai_ptr", scope: !7210, file: !342, line: 239, type: !7211)
!7210 = distinct !DILexicalBlock(scope: !7204, file: !342, line: 239, column: 9)
!7211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!7212 = !DILocalVariable(name: "__ret", scope: !7213, file: !342, line: 239, type: !345)
!7213 = distinct !DILexicalBlock(scope: !7210, file: !342, line: 239, column: 9)
!7214 = !DILocation(line: 237, column: 67, scope: !7204)
!7215 = !DILocation(line: 239, column: 9, scope: !7210)
!7216 = !DILocation(line: 239, column: 9, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7210, file: !342, line: 239, column: 9)
!7218 = !DILocation(line: 239, column: 9, scope: !7213)
!7219 = !{i64 2149635849}
!7220 = !DILocation(line: 239, column: 9, scope: !7204)
!7221 = !DILocation(line: 239, column: 2, scope: !7204)
!7222 = distinct !DISubprogram(name: "raw_atomic_long_dec_and_test", scope: !360, file: !360, line: 1560, type: !6322, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7223)
!7223 = !{!7224}
!7224 = !DILocalVariable(name: "v", arg: 1, scope: !7222, file: !360, line: 1560, type: !3462)
!7225 = !DILocation(line: 1560, column: 45, scope: !7222)
!7226 = !DILocation(line: 1563, column: 35, scope: !7222)
!7227 = !DILocation(line: 1563, column: 9, scope: !7222)
!7228 = !DILocation(line: 1563, column: 2, scope: !7222)
!7229 = distinct !DISubprogram(name: "raw_atomic64_dec_and_test", scope: !6803, file: !6803, line: 4366, type: !7230, scopeLine: 4367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7232)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{!987, !6806}
!7232 = !{!7233}
!7233 = !DILocalVariable(name: "v", arg: 1, scope: !7229, file: !6803, line: 4366, type: !6806)
!7234 = !DILocation(line: 4366, column: 39, scope: !7229)
!7235 = !DILocation(line: 4369, column: 36, scope: !7229)
!7236 = !DILocation(line: 4369, column: 9, scope: !7229)
!7237 = !DILocation(line: 4369, column: 2, scope: !7229)
!7238 = distinct !DISubprogram(name: "arch_atomic64_dec_and_test", scope: !6814, file: !6814, line: 59, type: !7230, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7239)
!7239 = !{!7240, !7241}
!7240 = !DILocalVariable(name: "v", arg: 1, scope: !7238, file: !6814, line: 59, type: !6806)
!7241 = !DILocalVariable(name: "c", scope: !7242, file: !6814, line: 61, type: !987)
!7242 = distinct !DILexicalBlock(scope: !7238, file: !6814, line: 61, column: 9)
!7243 = !DILocation(line: 59, column: 68, scope: !7238)
!7244 = !DILocation(line: 61, column: 9, scope: !7242)
!7245 = !{i64 2148963644, i64 2148963683, i64 2148963704, i64 2148963741, i64 2148963764, i64 2148963773, i64 2148963847}
!7246 = !DILocation(line: 61, column: 9, scope: !7238)
!7247 = !DILocation(line: 61, column: 2, scope: !7238)
!7248 = !DISubprogram(name: "llist_add_batch", scope: !342, file: !342, line: 199, type: !7249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7249 = !DISubroutineType(types: !7250)
!7250 = !{!987, !345, !345, !6392}
!7251 = distinct !DISubprogram(name: "queue_delayed_work", scope: !294, file: !294, line: 573, type: !7252, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7254)
!7252 = !DISubroutineType(types: !7253)
!7253 = !{!987, !2421, !6406, !39}
!7254 = !{!7255, !7256, !7257}
!7255 = !DILocalVariable(name: "wq", arg: 1, scope: !7251, file: !294, line: 573, type: !2421)
!7256 = !DILocalVariable(name: "dwork", arg: 2, scope: !7251, file: !294, line: 574, type: !6406)
!7257 = !DILocalVariable(name: "delay", arg: 3, scope: !7251, file: !294, line: 575, type: !39)
!7258 = !DILocation(line: 573, column: 64, scope: !7251)
!7259 = !DILocation(line: 574, column: 32, scope: !7251)
!7260 = !DILocation(line: 575, column: 25, scope: !7251)
!7261 = !DILocation(line: 577, column: 49, scope: !7251)
!7262 = !DILocation(line: 577, column: 53, scope: !7251)
!7263 = !DILocation(line: 577, column: 60, scope: !7251)
!7264 = !DILocation(line: 577, column: 9, scope: !7251)
!7265 = !DILocation(line: 577, column: 2, scope: !7251)
!7266 = !DISubprogram(name: "queue_delayed_work_on", scope: !294, file: !294, line: 500, type: !7267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7267 = !DISubroutineType(types: !7268)
!7268 = !{!987, !22, !2421, !6406, !39}
!7269 = !DILocation(line: 112, column: 2, scope: !7270)
!7270 = distinct !DILexicalBlock(scope: !5696, file: !5697, line: 112, column: 2)
!7271 = !DILocation(line: 112, column: 2, scope: !5696)
!7272 = !DILocation(line: 113, column: 1, scope: !5696)
!7273 = distinct !DISubprogram(name: "fsnotify_close", scope: !7274, file: !7274, line: 344, type: !4104, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7275)
!7274 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!7275 = !{!7276, !7277}
!7276 = !DILocalVariable(name: "file", arg: 1, scope: !7273, file: !7274, line: 344, type: !795)
!7277 = !DILocalVariable(name: "mask", scope: !7273, file: !7274, line: 346, type: !474)
!7278 = !DILocation(line: 344, column: 48, scope: !7273)
!7279 = !DILocation(line: 346, column: 2, scope: !7273)
!7280 = !DILocation(line: 346, column: 8, scope: !7273)
!7281 = !DILocation(line: 346, column: 16, scope: !7273)
!7282 = !DILocation(line: 346, column: 22, scope: !7273)
!7283 = !DILocation(line: 346, column: 29, scope: !7273)
!7284 = !DILocation(line: 346, column: 15, scope: !7273)
!7285 = !DILocation(line: 349, column: 16, scope: !7273)
!7286 = !DILocation(line: 349, column: 22, scope: !7273)
!7287 = !DILocation(line: 349, column: 2, scope: !7273)
!7288 = !DILocation(line: 350, column: 1, scope: !7273)
!7289 = distinct !DISubprogram(name: "eventpoll_release", scope: !7290, file: !7290, line: 34, type: !4104, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7291)
!7290 = !DIFile(filename: "./include/linux/eventpoll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a692477efe831fc19ecabeefa815cf5")
!7291 = !{!7292}
!7292 = !DILocalVariable(name: "file", arg: 1, scope: !7289, file: !7290, line: 34, type: !795)
!7293 = !DILocation(line: 34, column: 51, scope: !7289)
!7294 = !DILocation(line: 45, column: 6, scope: !7295)
!7295 = distinct !DILexicalBlock(scope: !7296, file: !7290, line: 45, column: 6)
!7296 = distinct !DILexicalBlock(scope: !7289, file: !7290, line: 45, column: 6)
!7297 = !DILocation(line: 45, column: 6, scope: !7298)
!7298 = distinct !DILexicalBlock(scope: !7295, file: !7290, line: 45, column: 6)
!7299 = !DILocation(line: 45, column: 6, scope: !7296)
!7300 = !DILocation(line: 45, column: 6, scope: !7289)
!7301 = !DILocation(line: 46, column: 3, scope: !7296)
!7302 = !DILocation(line: 53, column: 25, scope: !7289)
!7303 = !DILocation(line: 53, column: 2, scope: !7289)
!7304 = !DILocation(line: 54, column: 1, scope: !7289)
!7305 = !DISubprogram(name: "locks_remove_file", scope: !3982, file: !3982, line: 158, type: !4104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7306 = distinct !DISubprogram(name: "ima_file_free", scope: !7307, file: !7307, line: 75, type: !4104, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7308)
!7307 = !DIFile(filename: "./include/linux/ima.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ee7ab0cd0f172777c98616f0785c7af")
!7308 = !{!7309}
!7309 = !DILocalVariable(name: "file", arg: 1, scope: !7306, file: !7307, line: 75, type: !795)
!7310 = !DILocation(line: 75, column: 47, scope: !7306)
!7311 = !DILocation(line: 77, column: 2, scope: !7306)
!7312 = !DISubprogram(name: "cdev_put", scope: !4156, file: !4156, line: 27, type: !7313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7313 = !DISubroutineType(types: !7314)
!7314 = !{null, !4154}
!7315 = !DISubprogram(name: "module_put", scope: !148, file: !148, line: 706, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7316 = !DISubprogram(name: "put_pid", scope: !246, file: !246, line: 92, type: !7317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7317 = !DISubroutineType(types: !7318)
!7318 = !{null, !409}
!7319 = distinct !DISubprogram(name: "put_file_access", scope: !6083, file: !6083, line: 98, type: !4104, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7320)
!7320 = !{!7321}
!7321 = !DILocalVariable(name: "file", arg: 1, scope: !7319, file: !6083, line: 98, type: !795)
!7322 = !DILocation(line: 98, column: 49, scope: !7319)
!7323 = !DILocation(line: 100, column: 7, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7319, file: !6083, line: 100, column: 6)
!7325 = !DILocation(line: 100, column: 13, scope: !7324)
!7326 = !DILocation(line: 100, column: 20, scope: !7324)
!7327 = !DILocation(line: 100, column: 50, scope: !7324)
!7328 = !DILocation(line: 100, column: 6, scope: !7319)
!7329 = !DILocation(line: 101, column: 19, scope: !7330)
!7330 = distinct !DILexicalBlock(scope: !7324, file: !6083, line: 100, column: 65)
!7331 = !DILocation(line: 101, column: 25, scope: !7330)
!7332 = !DILocation(line: 101, column: 3, scope: !7330)
!7333 = !DILocation(line: 102, column: 2, scope: !7330)
!7334 = !DILocation(line: 102, column: 13, scope: !7335)
!7335 = distinct !DILexicalBlock(scope: !7324, file: !6083, line: 102, column: 13)
!7336 = !DILocation(line: 102, column: 19, scope: !7335)
!7337 = !DILocation(line: 102, column: 26, scope: !7335)
!7338 = !DILocation(line: 102, column: 13, scope: !7324)
!7339 = !DILocation(line: 103, column: 20, scope: !7340)
!7340 = distinct !DILexicalBlock(scope: !7335, file: !6083, line: 102, column: 42)
!7341 = !DILocation(line: 103, column: 26, scope: !7340)
!7342 = !DILocation(line: 103, column: 3, scope: !7340)
!7343 = !DILocation(line: 104, column: 20, scope: !7340)
!7344 = !DILocation(line: 104, column: 26, scope: !7340)
!7345 = !DILocation(line: 104, column: 33, scope: !7340)
!7346 = !DILocation(line: 104, column: 3, scope: !7340)
!7347 = !DILocation(line: 105, column: 2, scope: !7340)
!7348 = !DILocation(line: 106, column: 1, scope: !7319)
!7349 = !DISubprogram(name: "dput", scope: !1799, file: !1799, line: 368, type: !1882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7350 = !DISubprogram(name: "dissolve_on_fput", scope: !6083, file: !6083, line: 79, type: !7351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{null, !1897}
!7353 = !DISubprogram(name: "mntput", scope: !1899, file: !1899, line: 87, type: !7351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7354 = distinct !DISubprogram(name: "file_free", scope: !3, file: !3, line: 75, type: !4104, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7355)
!7355 = !{!7356}
!7356 = !DILocalVariable(name: "f", arg: 1, scope: !7354, file: !3, line: 75, type: !795)
!7357 = !DILocation(line: 75, column: 43, scope: !7354)
!7358 = !DILocation(line: 77, column: 21, scope: !7354)
!7359 = !DILocation(line: 77, column: 2, scope: !7354)
!7360 = !DILocation(line: 78, column: 6, scope: !7361)
!7361 = distinct !DILexicalBlock(scope: !7354, file: !3, line: 78, column: 6)
!7362 = !DILocation(line: 78, column: 6, scope: !7354)
!7363 = !DILocation(line: 79, column: 35, scope: !7361)
!7364 = !DILocation(line: 79, column: 12, scope: !7361)
!7365 = !DILocation(line: 79, column: 3, scope: !7361)
!7366 = !DILocation(line: 80, column: 6, scope: !7367)
!7367 = distinct !DILexicalBlock(scope: !7354, file: !3, line: 80, column: 6)
!7368 = !DILocation(line: 80, column: 6, scope: !7354)
!7369 = !DILocation(line: 81, column: 3, scope: !7367)
!7370 = !DILocation(line: 82, column: 12, scope: !7354)
!7371 = !DILocation(line: 82, column: 15, scope: !7354)
!7372 = !DILocation(line: 82, column: 2, scope: !7354)
!7373 = !DILocation(line: 83, column: 1, scope: !7354)
!7374 = distinct !DISubprogram(name: "fsnotify_file", scope: !7274, file: !7274, line: 92, type: !7375, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7377)
!7375 = !DISubroutineType(types: !7376)
!7376 = !{!22, !795, !474}
!7377 = !{!7378, !7379, !7380}
!7378 = !DILocalVariable(name: "file", arg: 1, scope: !7374, file: !7274, line: 92, type: !795)
!7379 = !DILocalVariable(name: "mask", arg: 2, scope: !7374, file: !7274, line: 92, type: !474)
!7380 = !DILocalVariable(name: "path", scope: !7374, file: !7274, line: 94, type: !2679)
!7381 = !DILocation(line: 92, column: 46, scope: !7374)
!7382 = !DILocation(line: 92, column: 58, scope: !7374)
!7383 = !DILocation(line: 94, column: 2, scope: !7374)
!7384 = !DILocation(line: 94, column: 21, scope: !7374)
!7385 = !DILocation(line: 102, column: 6, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7374, file: !7274, line: 102, column: 6)
!7387 = !DILocation(line: 102, column: 12, scope: !7386)
!7388 = !DILocation(line: 102, column: 19, scope: !7386)
!7389 = !DILocation(line: 102, column: 6, scope: !7374)
!7390 = !DILocation(line: 103, column: 3, scope: !7386)
!7391 = !DILocation(line: 106, column: 24, scope: !7374)
!7392 = !DILocation(line: 106, column: 9, scope: !7374)
!7393 = !DILocation(line: 106, column: 7, scope: !7374)
!7394 = !DILocation(line: 107, column: 25, scope: !7374)
!7395 = !DILocation(line: 107, column: 31, scope: !7374)
!7396 = !DILocation(line: 107, column: 39, scope: !7374)
!7397 = !DILocation(line: 107, column: 45, scope: !7374)
!7398 = !DILocation(line: 107, column: 9, scope: !7374)
!7399 = !DILocation(line: 107, column: 2, scope: !7374)
!7400 = !DILocation(line: 108, column: 1, scope: !7374)
!7401 = distinct !DISubprogram(name: "file_real_path", scope: !155, file: !155, line: 2532, type: !7402, scopeLine: 2533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7404)
!7402 = !DISubroutineType(types: !7403)
!7403 = !{!2679, !795}
!7404 = !{!7405}
!7405 = !DILocalVariable(name: "f", arg: 1, scope: !7401, file: !155, line: 2532, type: !795)
!7406 = !DILocation(line: 2532, column: 62, scope: !7401)
!7407 = !DILocation(line: 2534, column: 6, scope: !7408)
!7408 = distinct !DILexicalBlock(scope: !7401, file: !155, line: 2534, column: 6)
!7409 = !DILocation(line: 2534, column: 6, scope: !7401)
!7410 = !DILocation(line: 2535, column: 33, scope: !7408)
!7411 = !DILocation(line: 2535, column: 10, scope: !7408)
!7412 = !DILocation(line: 2535, column: 3, scope: !7408)
!7413 = !DILocation(line: 2536, column: 10, scope: !7401)
!7414 = !DILocation(line: 2536, column: 13, scope: !7401)
!7415 = !DILocation(line: 2536, column: 2, scope: !7401)
!7416 = !DILocation(line: 2537, column: 1, scope: !7401)
!7417 = distinct !DISubprogram(name: "fsnotify_parent", scope: !7274, file: !7274, line: 57, type: !7418, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7420)
!7418 = !DISubroutineType(types: !7419)
!7419 = !{!22, !1797, !474, !902, !22}
!7420 = !{!7421, !7422, !7423, !7424, !7425, !7426}
!7421 = !DILocalVariable(name: "dentry", arg: 1, scope: !7417, file: !7274, line: 57, type: !1797)
!7422 = !DILocalVariable(name: "mask", arg: 2, scope: !7417, file: !7274, line: 57, type: !474)
!7423 = !DILocalVariable(name: "data", arg: 3, scope: !7417, file: !7274, line: 58, type: !902)
!7424 = !DILocalVariable(name: "data_type", arg: 4, scope: !7417, file: !7274, line: 58, type: !22)
!7425 = !DILocalVariable(name: "inode", scope: !7417, file: !7274, line: 60, type: !1775)
!7426 = !DILabel(scope: !7417, name: "notify_child", file: !7274, line: 79)
!7427 = !DILocation(line: 57, column: 50, scope: !7417)
!7428 = !DILocation(line: 57, column: 64, scope: !7417)
!7429 = !DILocation(line: 58, column: 19, scope: !7417)
!7430 = !DILocation(line: 58, column: 29, scope: !7417)
!7431 = !DILocation(line: 60, column: 2, scope: !7417)
!7432 = !DILocation(line: 60, column: 16, scope: !7417)
!7433 = !DILocation(line: 60, column: 32, scope: !7417)
!7434 = !DILocation(line: 60, column: 24, scope: !7417)
!7435 = !DILocation(line: 62, column: 24, scope: !7436)
!7436 = distinct !DILexicalBlock(scope: !7417, file: !7274, line: 62, column: 6)
!7437 = !DILocation(line: 62, column: 31, scope: !7436)
!7438 = !DILocation(line: 62, column: 37, scope: !7436)
!7439 = !DILocation(line: 62, column: 6, scope: !7436)
!7440 = !DILocation(line: 62, column: 60, scope: !7436)
!7441 = !DILocation(line: 62, column: 6, scope: !7417)
!7442 = !DILocation(line: 63, column: 3, scope: !7436)
!7443 = !DILocation(line: 65, column: 6, scope: !7444)
!7444 = distinct !DILexicalBlock(scope: !7417, file: !7274, line: 65, column: 6)
!7445 = !DILocation(line: 65, column: 6, scope: !7417)
!7446 = !DILocation(line: 66, column: 8, scope: !7447)
!7447 = distinct !DILexicalBlock(scope: !7444, file: !7274, line: 65, column: 30)
!7448 = !DILocation(line: 69, column: 9, scope: !7449)
!7449 = distinct !DILexicalBlock(scope: !7447, file: !7274, line: 69, column: 7)
!7450 = !DILocation(line: 69, column: 17, scope: !7449)
!7451 = !DILocation(line: 69, column: 25, scope: !7449)
!7452 = !DILocation(line: 69, column: 7, scope: !7447)
!7453 = !DILocation(line: 70, column: 4, scope: !7449)
!7454 = !DILocation(line: 71, column: 2, scope: !7447)
!7455 = !DILocation(line: 74, column: 6, scope: !7456)
!7456 = distinct !DILexicalBlock(scope: !7417, file: !7274, line: 74, column: 6)
!7457 = !DILocation(line: 74, column: 6, scope: !7417)
!7458 = !DILocation(line: 75, column: 3, scope: !7456)
!7459 = !DILocation(line: 77, column: 27, scope: !7417)
!7460 = !DILocation(line: 77, column: 35, scope: !7417)
!7461 = !DILocation(line: 77, column: 41, scope: !7417)
!7462 = !DILocation(line: 77, column: 47, scope: !7417)
!7463 = !DILocation(line: 77, column: 9, scope: !7417)
!7464 = !DILocation(line: 77, column: 2, scope: !7417)
!7465 = !DILocation(line: 79, column: 1, scope: !7417)
!7466 = !DILocation(line: 80, column: 18, scope: !7417)
!7467 = !DILocation(line: 80, column: 24, scope: !7417)
!7468 = !DILocation(line: 80, column: 30, scope: !7417)
!7469 = !DILocation(line: 80, column: 53, scope: !7417)
!7470 = !DILocation(line: 80, column: 9, scope: !7417)
!7471 = !DILocation(line: 80, column: 2, scope: !7417)
!7472 = !DILocation(line: 81, column: 1, scope: !7417)
!7473 = distinct !DISubprogram(name: "d_inode", scope: !1799, file: !1799, line: 514, type: !7474, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7476)
!7474 = !DISubroutineType(types: !7475)
!7475 = !{!1775, !1863}
!7476 = !{!7477}
!7477 = !DILocalVariable(name: "dentry", arg: 1, scope: !7473, file: !1799, line: 514, type: !1863)
!7478 = !DILocation(line: 514, column: 58, scope: !7473)
!7479 = !DILocation(line: 516, column: 9, scope: !7473)
!7480 = !DILocation(line: 516, column: 17, scope: !7473)
!7481 = !DILocation(line: 516, column: 2, scope: !7473)
!7482 = distinct !DISubprogram(name: "atomic_long_read", scope: !6321, file: !6321, line: 3158, type: !7483, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7487)
!7483 = !DISubroutineType(types: !7484)
!7484 = !{!905, !7485}
!7485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7486, size: 64)
!7486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!7487 = !{!7488}
!7488 = !DILocalVariable(name: "v", arg: 1, scope: !7482, file: !6321, line: 3158, type: !7485)
!7489 = !DILocation(line: 3158, column: 39, scope: !7482)
!7490 = !DILocation(line: 3160, column: 25, scope: !7482)
!7491 = !DILocation(line: 3160, column: 2, scope: !7482)
!7492 = !DILocation(line: 3161, column: 30, scope: !7482)
!7493 = !DILocation(line: 3161, column: 9, scope: !7482)
!7494 = !DILocation(line: 3161, column: 2, scope: !7482)
!7495 = !DISubprogram(name: "__fsnotify_parent", scope: !320, file: !320, line: 544, type: !7418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7496 = !DISubprogram(name: "fsnotify", scope: !320, file: !320, line: 541, type: !7497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7497 = !DISubroutineType(types: !7498)
!7498 = !{!22, !474, !902, !22, !1775, !1870, !1775, !473}
!7499 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6757, file: !6757, line: 66, type: !6758, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7500)
!7500 = !{!7501, !7502}
!7501 = !DILocalVariable(name: "v", arg: 1, scope: !7499, file: !6757, line: 66, type: !6760)
!7502 = !DILocalVariable(name: "size", arg: 2, scope: !7499, file: !6757, line: 66, type: !35)
!7503 = !DILocation(line: 66, column: 73, scope: !7499)
!7504 = !DILocation(line: 66, column: 83, scope: !7499)
!7505 = !DILocation(line: 68, column: 19, scope: !7499)
!7506 = !DILocation(line: 68, column: 22, scope: !7499)
!7507 = !DILocation(line: 68, column: 2, scope: !7499)
!7508 = !DILocation(line: 69, column: 2, scope: !7499)
!7509 = !DILocation(line: 70, column: 1, scope: !7499)
!7510 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !360, file: !360, line: 35, type: !7483, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7511)
!7511 = !{!7512}
!7512 = !DILocalVariable(name: "v", arg: 1, scope: !7510, file: !360, line: 35, type: !7485)
!7513 = !DILocation(line: 35, column: 43, scope: !7510)
!7514 = !DILocation(line: 38, column: 27, scope: !7510)
!7515 = !DILocation(line: 38, column: 9, scope: !7510)
!7516 = !DILocation(line: 38, column: 2, scope: !7510)
!7517 = distinct !DISubprogram(name: "kasan_check_read", scope: !6781, file: !6781, line: 40, type: !6782, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7518)
!7518 = !{!7519, !7520}
!7519 = !DILocalVariable(name: "p", arg: 1, scope: !7517, file: !6781, line: 40, type: !6760)
!7520 = !DILocalVariable(name: "size", arg: 2, scope: !7517, file: !6781, line: 40, type: !7)
!7521 = !DILocation(line: 40, column: 58, scope: !7517)
!7522 = !DILocation(line: 40, column: 74, scope: !7517)
!7523 = !DILocation(line: 42, column: 2, scope: !7517)
!7524 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6803, file: !6803, line: 2554, type: !7525, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7529)
!7525 = !DISubroutineType(types: !7526)
!7526 = !{!365, !7527}
!7527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7528, size: 64)
!7528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!7529 = !{!7530}
!7530 = !DILocalVariable(name: "v", arg: 1, scope: !7524, file: !6803, line: 2554, type: !7527)
!7531 = !DILocation(line: 2554, column: 37, scope: !7524)
!7532 = !DILocation(line: 2556, column: 28, scope: !7524)
!7533 = !DILocation(line: 2556, column: 9, scope: !7524)
!7534 = !DILocation(line: 2556, column: 2, scope: !7524)
!7535 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6814, file: !6814, line: 13, type: !7525, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7536)
!7536 = !{!7537}
!7537 = !DILocalVariable(name: "v", arg: 1, scope: !7535, file: !6814, line: 13, type: !7527)
!7538 = !DILocation(line: 13, column: 65, scope: !7535)
!7539 = !DILocation(line: 15, column: 9, scope: !7535)
!7540 = !DILocation(line: 15, column: 2, scope: !7535)
!7541 = !DISubprogram(name: "eventpoll_release_file", scope: !7290, file: !7290, line: 26, type: !4104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7542 = distinct !DISubprogram(name: "i_readcount_dec", scope: !155, file: !155, line: 2815, type: !2489, scopeLine: 2816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7543)
!7543 = !{!7544}
!7544 = !DILocalVariable(name: "inode", arg: 1, scope: !7542, file: !155, line: 2815, type: !1775)
!7545 = !DILocation(line: 2815, column: 50, scope: !7542)
!7546 = !DILocation(line: 2817, column: 2, scope: !7542)
!7547 = !DILocation(line: 2817, column: 2, scope: !7548)
!7548 = distinct !DILexicalBlock(scope: !7549, file: !155, line: 2817, column: 2)
!7549 = distinct !DILexicalBlock(scope: !7542, file: !155, line: 2817, column: 2)
!7550 = !DILocation(line: 2817, column: 2, scope: !7549)
!7551 = !DILocation(line: 2817, column: 2, scope: !7552)
!7552 = distinct !DILexicalBlock(scope: !7548, file: !155, line: 2817, column: 2)
!7553 = !DILocation(line: 2817, column: 2, scope: !7554)
!7554 = distinct !DILexicalBlock(scope: !7552, file: !155, line: 2817, column: 2)
!7555 = !DILocation(line: 2817, column: 2, scope: !7556)
!7556 = distinct !DILexicalBlock(scope: !7552, file: !155, line: 2817, column: 2)
!7557 = !{i64 2153366325, i64 2153366354, i64 2153366400, i64 2153366458, i64 2153366512, i64 2153366566, i64 2153366621, i64 2153366652}
!7558 = !DILocation(line: 2818, column: 1, scope: !7542)
!7559 = distinct !DISubprogram(name: "put_write_access", scope: !155, file: !155, line: 2800, type: !2489, scopeLine: 2801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7560)
!7560 = !{!7561}
!7561 = !DILocalVariable(name: "inode", arg: 1, scope: !7559, file: !155, line: 2800, type: !1775)
!7562 = !DILocation(line: 2800, column: 52, scope: !7559)
!7563 = !DILocation(line: 2802, column: 14, scope: !7559)
!7564 = !DILocation(line: 2802, column: 21, scope: !7559)
!7565 = !DILocation(line: 2802, column: 2, scope: !7559)
!7566 = !DILocation(line: 2803, column: 1, scope: !7559)
!7567 = !DISubprogram(name: "__mnt_drop_write", scope: !1899, file: !1899, line: 96, type: !7351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7568 = distinct !DISubprogram(name: "atomic_dec_return", scope: !6321, file: !6321, line: 607, type: !7569, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7571)
!7569 = !DISubroutineType(types: !7570)
!7570 = !{!22, !7178}
!7571 = !{!7572}
!7572 = !DILocalVariable(name: "v", arg: 1, scope: !7568, file: !6321, line: 607, type: !7178)
!7573 = !DILocation(line: 607, column: 29, scope: !7568)
!7574 = !DILocation(line: 609, column: 2, scope: !7568)
!7575 = !DILocation(line: 609, column: 2, scope: !7576)
!7576 = distinct !DILexicalBlock(scope: !7568, file: !6321, line: 609, column: 2)
!7577 = !DILocation(line: 610, column: 31, scope: !7568)
!7578 = !DILocation(line: 610, column: 2, scope: !7568)
!7579 = !DILocation(line: 611, column: 31, scope: !7568)
!7580 = !DILocation(line: 611, column: 9, scope: !7568)
!7581 = !DILocation(line: 611, column: 2, scope: !7568)
!7582 = distinct !DISubprogram(name: "raw_atomic_dec_return", scope: !6803, file: !6803, line: 1214, type: !7569, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7583)
!7583 = !{!7584}
!7584 = !DILocalVariable(name: "v", arg: 1, scope: !7582, file: !6803, line: 1214, type: !7178)
!7585 = !DILocation(line: 1214, column: 33, scope: !7582)
!7586 = !DILocation(line: 1225, column: 34, scope: !7582)
!7587 = !DILocation(line: 1225, column: 9, scope: !7582)
!7588 = !DILocation(line: 1225, column: 2, scope: !7582)
!7589 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !6803, file: !6803, line: 771, type: !7590, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7592)
!7590 = !DISubroutineType(types: !7591)
!7591 = !{!22, !22, !7178}
!7592 = !{!7593, !7594}
!7593 = !DILocalVariable(name: "i", arg: 1, scope: !7589, file: !6803, line: 771, type: !22)
!7594 = !DILocalVariable(name: "v", arg: 2, scope: !7589, file: !6803, line: 771, type: !7178)
!7595 = !DILocation(line: 771, column: 27, scope: !7589)
!7596 = !DILocation(line: 771, column: 40, scope: !7589)
!7597 = !DILocation(line: 774, column: 32, scope: !7589)
!7598 = !DILocation(line: 774, column: 35, scope: !7589)
!7599 = !DILocation(line: 774, column: 9, scope: !7589)
!7600 = !DILocation(line: 774, column: 2, scope: !7589)
!7601 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !7195, file: !7195, line: 89, type: !7590, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7602)
!7602 = !{!7603, !7604}
!7603 = !DILocalVariable(name: "i", arg: 1, scope: !7601, file: !7195, line: 89, type: !22)
!7604 = !DILocalVariable(name: "v", arg: 2, scope: !7601, file: !7195, line: 89, type: !7178)
!7605 = !DILocation(line: 89, column: 55, scope: !7601)
!7606 = !DILocation(line: 89, column: 68, scope: !7601)
!7607 = !DILocation(line: 91, column: 33, scope: !7601)
!7608 = !DILocation(line: 91, column: 32, scope: !7601)
!7609 = !DILocation(line: 91, column: 36, scope: !7601)
!7610 = !DILocation(line: 91, column: 9, scope: !7601)
!7611 = !DILocation(line: 91, column: 2, scope: !7601)
!7612 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !7195, file: !7195, line: 83, type: !7590, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7613)
!7613 = !{!7614, !7615, !7616}
!7614 = !DILocalVariable(name: "i", arg: 1, scope: !7612, file: !7195, line: 83, type: !22)
!7615 = !DILocalVariable(name: "v", arg: 2, scope: !7612, file: !7195, line: 83, type: !7178)
!7616 = !DILocalVariable(name: "__ret", scope: !7617, file: !7195, line: 85, type: !22)
!7617 = distinct !DILexicalBlock(scope: !7612, file: !7195, line: 85, column: 13)
!7618 = !DILocation(line: 83, column: 55, scope: !7612)
!7619 = !DILocation(line: 83, column: 68, scope: !7612)
!7620 = !DILocation(line: 85, column: 9, scope: !7612)
!7621 = !DILocation(line: 85, column: 13, scope: !7617)
!7622 = !{i64 2148938681, i64 2148938720, i64 2148938741, i64 2148938778, i64 2148938801, i64 2148938810}
!7623 = !DILocation(line: 85, column: 13, scope: !7612)
!7624 = !DILocation(line: 85, column: 11, scope: !7612)
!7625 = !DILocation(line: 85, column: 2, scope: !7612)
!7626 = distinct !DISubprogram(name: "atomic_dec", scope: !6321, file: !6321, line: 590, type: !7176, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7627)
!7627 = !{!7628}
!7628 = !DILocalVariable(name: "v", arg: 1, scope: !7626, file: !6321, line: 590, type: !7178)
!7629 = !DILocation(line: 590, column: 22, scope: !7626)
!7630 = !DILocation(line: 592, column: 31, scope: !7626)
!7631 = !DILocation(line: 592, column: 2, scope: !7626)
!7632 = !DILocation(line: 593, column: 17, scope: !7626)
!7633 = !DILocation(line: 593, column: 2, scope: !7626)
!7634 = !DILocation(line: 594, column: 1, scope: !7626)
!7635 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6803, file: !6803, line: 1194, type: !7176, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7636)
!7636 = !{!7637}
!7637 = !DILocalVariable(name: "v", arg: 1, scope: !7635, file: !6803, line: 1194, type: !7178)
!7638 = !DILocation(line: 1194, column: 26, scope: !7635)
!7639 = !DILocation(line: 1197, column: 18, scope: !7635)
!7640 = !DILocation(line: 1197, column: 2, scope: !7635)
!7641 = !DILocation(line: 1201, column: 1, scope: !7635)
!7642 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !7195, file: !7195, line: 58, type: !7176, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7643)
!7643 = !{!7644}
!7644 = !DILocalVariable(name: "v", arg: 1, scope: !7642, file: !7195, line: 58, type: !7178)
!7645 = !DILocation(line: 58, column: 55, scope: !7642)
!7646 = !DILocation(line: 61, column: 16, scope: !7642)
!7647 = !DILocation(line: 61, column: 19, scope: !7642)
!7648 = !DILocation(line: 60, column: 2, scope: !7642)
!7649 = !{i64 2148930968, i64 2148931007, i64 2148931028, i64 2148931065, i64 2148931088, i64 2148930958}
!7650 = !DILocation(line: 62, column: 1, scope: !7642)
!7651 = !DISubprogram(name: "security_file_free", scope: !6679, file: !6679, line: 390, type: !4104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7652 = distinct !DISubprogram(name: "percpu_counter_dec", scope: !862, file: !862, line: 240, type: !5914, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7653)
!7653 = !{!7654}
!7654 = !DILocalVariable(name: "fbc", arg: 1, scope: !7652, file: !862, line: 240, type: !5829)
!7655 = !DILocation(line: 240, column: 62, scope: !7652)
!7656 = !DILocation(line: 242, column: 21, scope: !7652)
!7657 = !DILocation(line: 242, column: 2, scope: !7652)
!7658 = !DILocation(line: 243, column: 1, scope: !7652)
!7659 = !DISubprogram(name: "call_rcu", scope: !7660, file: !7660, line: 42, type: !7661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7660 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7661 = !DISubroutineType(types: !7662)
!7662 = !{null, !350, !7663}
!7663 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !25, line: 238, baseType: !352)
!7664 = distinct !DISubprogram(name: "file_free_rcu", scope: !3, file: !3, line: 64, type: !353, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7665)
!7665 = !{!7666, !7667, !7668}
!7666 = !DILocalVariable(name: "head", arg: 1, scope: !7664, file: !3, line: 64, type: !350)
!7667 = !DILocalVariable(name: "f", scope: !7664, file: !3, line: 66, type: !795)
!7668 = !DILocalVariable(name: "__mptr", scope: !7669, file: !3, line: 66, type: !20)
!7669 = distinct !DILexicalBlock(scope: !7664, file: !3, line: 66, column: 19)
!7670 = !DILocation(line: 64, column: 44, scope: !7664)
!7671 = !DILocation(line: 66, column: 2, scope: !7664)
!7672 = !DILocation(line: 66, column: 15, scope: !7664)
!7673 = !DILocation(line: 66, column: 19, scope: !7669)
!7674 = !DILocation(line: 66, column: 19, scope: !7664)
!7675 = !DILocation(line: 68, column: 11, scope: !7664)
!7676 = !DILocation(line: 68, column: 14, scope: !7664)
!7677 = !DILocation(line: 68, column: 2, scope: !7664)
!7678 = !DILocation(line: 69, column: 6, scope: !7679)
!7679 = distinct !DILexicalBlock(scope: !7664, file: !3, line: 69, column: 6)
!7680 = !DILocation(line: 69, column: 6, scope: !7664)
!7681 = !DILocation(line: 70, column: 22, scope: !7679)
!7682 = !DILocation(line: 70, column: 9, scope: !7679)
!7683 = !DILocation(line: 70, column: 3, scope: !7679)
!7684 = !DILocation(line: 72, column: 19, scope: !7679)
!7685 = !DILocation(line: 72, column: 32, scope: !7679)
!7686 = !DILocation(line: 72, column: 3, scope: !7679)
!7687 = !DILocation(line: 73, column: 1, scope: !7664)
