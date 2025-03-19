; ModuleID = 'arch/x86/mm/pat/memtype.c'
source_filename = "arch/x86/mm/pat/memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pat_enabled: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pat_enabled ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pat_pfn_immune_to_uc_mtrr: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pat_pfn_immune_to_uc_mtrr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_io_reserve_memtype_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_io_reserve_memtype_wc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_io_free_memtype_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_io_free_memtype_wc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pgprot_writecombine: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pgprot_writecombine ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pgprot_writethrough: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pgprot_writethrough ; .previous"
module asm ".section\09\22.initcall7.init..kmod_memtype__284_1213_pat_memtype_list_init\22, \22a\22\09\09"
module asm "__initcall__kmod_memtype__284_1213_pat_memtype_list_init7:\09\09\09"
module asm ".long\09__initstub__kmod_memtype__284_1213_pat_memtype_list_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.pcpu_hot = type { %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [16 x i8] }
%struct.anon.35 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.anon = type { i8, i8, i8, i8 }
%struct.memtype = type { i64, i64, i64, i32, %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.pagerange_state = type { i64, i32, i32 }
%struct.page = type { i64, %union.anon.24, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %union.anon.26, ptr, %union.anon.28, i64 }
%union.anon.26 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.28 = type { i64 }
%union.anon.33 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.12, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.15 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i64, i64 }
%union.anon.15 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.pgprot = type { i64 }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vm_area_struct = type { %union.anon.19, ptr, %struct.pgprot, %union.anon.21, i32, ptr, i8, %struct.anon.22, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i64, i64 }
%union.anon.21 = type { i64 }
%struct.anon.22 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pfn_t = type { i64 }
%struct.vma_lock = type { %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_struct = type { %struct.anon.36, [0 x i64] }
%struct.anon.36 = type { %struct.anon.37, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.37 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.38, i32, ptr }
%union.anon.38 = type { %struct.spinlock }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@__setup_str_nopat = internal constant [6 x i8] c"nopat\00", section ".init.rodata", align 1, !dbg !0
@__setup_nopat = internal global %struct.obs_kernel_param { ptr @__setup_str_nopat, ptr @nopat, i32 1 }, section ".init.setup", align 8, !dbg !3583
@pat_disabled = internal global i8 0, section ".data..read_mostly", align 1, !dbg !3670
@__UNIQUE_ID___addressable_pat_enabled277 = internal global ptr @pat_enabled, section ".discard.addressable", align 8, !dbg !3594
@__setup_str_pat_debug_setup = internal constant [9 x i8] c"debugpat\00", section ".init.rodata", align 1, !dbg !3672
@__setup_pat_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pat_debug_setup, ptr @pat_debug_setup, i32 0 }, section ".init.setup", align 8, !dbg !3596
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [58 x i8] c"x86/PAT: PAT enabled, but not supported by secondary CPU\0A\00", align 1, !dbg !3598
@pat_msr_val = internal global i64 0, section ".data..ro_after_init", align 8, !dbg !3664
@.str.1 = private unnamed_addr constant [30 x i8] c"PAT not supported by the CPU.\00", align 1, !dbg !3603
@.str.2 = private unnamed_addr constant [38 x i8] c"PAT support disabled by the firmware.\00", align 1, !dbg !3608
@memory_caching_control = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s failed: [mem %#010Lx-%#010Lx], req %s\0A\00", align 1, !dbg !3613
@__func__.memtype_reserve = private unnamed_addr constant [16 x i8] c"memtype_reserve\00", align 1, !dbg !3618
@.str.4 = private unnamed_addr constant [26 x i8] c"arch/x86/mm/pat/memtype.c\00", align 1, !dbg !3621
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@memtype_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !3736
@.str.5 = private unnamed_addr constant [75 x i8] c"\016x86/PAT: memtype_reserve failed [mem %#010Lx-%#010Lx], track %s, req %s\0A\00", align 1, !dbg !3626
@pat_debug_enable = hidden global i32 0, align 4, !dbg !3666
@.str.6 = private unnamed_addr constant [82 x i8] c"\016x86/PAT: memtype_reserve added [mem %#010Lx-%#010Lx], track %s, req %s, ret %s\0A\00", align 1, !dbg !3631
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !3636
@.str.8 = private unnamed_addr constant [64 x i8] c"\016x86/PAT: %s:%d freeing invalid memtype [mem %#010Lx-%#010Lx]\0A\00", align 1, !dbg !3639
@.str.9 = private unnamed_addr constant [55 x i8] c"\016x86/PAT: memtype_free request [mem %#010Lx-%#010Lx]\0A\00", align 1, !dbg !3642
@__UNIQUE_ID___addressable_pat_pfn_immune_to_uc_mtrr279 = internal global ptr @pat_pfn_immune_to_uc_mtrr, section ".discard.addressable", align 8, !dbg !3647
@__UNIQUE_ID___addressable_arch_io_reserve_memtype_wc280 = internal global ptr @arch_io_reserve_memtype_wc, section ".discard.addressable", align 8, !dbg !3649
@__UNIQUE_ID___addressable_arch_io_free_memtype_wc281 = internal global ptr @arch_io_free_memtype_wc, section ".discard.addressable", align 8, !dbg !3651
@high_memory = external dso_local global ptr, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.10 = private unnamed_addr constant [74 x i8] c"\016x86/PAT: %s:%d ioremap_change_attr failed %s for [mem %#010Lx-%#010Lx]\0A\00", align 1, !dbg !3653
@__UNIQUE_ID___addressable_pgprot_writecombine282 = internal global ptr @pgprot_writecombine, section ".discard.addressable", align 8, !dbg !3658
@__UNIQUE_ID___addressable_pgprot_writethrough283 = internal global ptr @pgprot_writethrough, section ".discard.addressable", align 8, !dbg !3660
@__UNIQUE_ID___addressable___initstub__kmod_memtype__284_1213_pat_memtype_list_init7285 = internal global ptr @__initstub__kmod_memtype__284_1213_pat_memtype_list_init7, section ".discard.addressable", align 8, !dbg !3662
@.str.11 = private unnamed_addr constant [38 x i8] c"PAT support disabled via boot option.\00", align 1, !dbg !3668
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"\016x86/PAT: %s\0A\00", align 1, !dbg !3677
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"\016x86/PAT: Configuration [0-7]: %s\0A\00", align 1, !dbg !3682
@.str.14 = private unnamed_addr constant [5 x i8] c"UC  \00", align 1, !dbg !3687
@.str.15 = private unnamed_addr constant [5 x i8] c"WC  \00", align 1, !dbg !3692
@.str.16 = private unnamed_addr constant [5 x i8] c"WT  \00", align 1, !dbg !3694
@.str.17 = private unnamed_addr constant [5 x i8] c"WP  \00", align 1, !dbg !3696
@.str.18 = private unnamed_addr constant [5 x i8] c"WB  \00", align 1, !dbg !3698
@.str.19 = private unnamed_addr constant [5 x i8] c"UC- \00", align 1, !dbg !3700
@.str.20 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1, !dbg !3702
@.str.21 = private unnamed_addr constant [15 x i8] c"uncached-minus\00", align 1, !dbg !3705
@.str.22 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1, !dbg !3707
@.str.23 = private unnamed_addr constant [16 x i8] c"write-combining\00", align 1, !dbg !3712
@.str.24 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1, !dbg !3714
@.str.25 = private unnamed_addr constant [16 x i8] c"write-protected\00", align 1, !dbg !3719
@.str.26 = private unnamed_addr constant [7 x i8] c"broken\00", align 1, !dbg !3721
@vmemmap_base = external dso_local global i64, align 8
@.str.27 = private unnamed_addr constant [86 x i8] c"\016x86/PAT: reserve_ram_pages_type failed [mem %#010Lx-%#010Lx], track 0x%x, req 0x%x\0A\00", align 1, !dbg !3726
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.28 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3731
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@phys_base = external dso_local global i64, align 8
@.str.29 = private unnamed_addr constant [77 x i8] c"\014x86/PAT: %s:%d map pfn RAM range req %s for [mem %#010Lx-%#010Lx], got %s\0A\00", align 1, !dbg !3738
@.str.30 = private unnamed_addr constant [85 x i8] c"\013x86/PAT: %s:%d map pfn expected mapping type %s for [mem %#010Lx-%#010Lx], got %s\0A\00", align 1, !dbg !3743
@.str.31 = private unnamed_addr constant [17 x i8] c"pat_memtype_list\00", align 1, !dbg !3748
@arch_debugfs_dir = external dso_local global ptr, align 8
@memtype_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @memtype_seq_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3753
@memtype_seq_ops = internal constant %struct.seq_operations { ptr @memtype_seq_start, ptr @memtype_seq_stop, ptr @memtype_seq_next, ptr @memtype_seq_show }, align 8, !dbg !3755
@.str.32 = private unnamed_addr constant [19 x i8] c"PAT memtype list:\0A\00", align 1, !dbg !3757
@.str.33 = private unnamed_addr constant [33 x i8] c"PAT: [mem 0x%016Lx-0x%016Lx] %s\0A\00", align 1, !dbg !3762
@llvm.compiler.used = appending global [9 x ptr] [ptr @__setup_nopat, ptr @__UNIQUE_ID___addressable_pat_enabled277, ptr @__setup_pat_debug_setup, ptr @__UNIQUE_ID___addressable_pat_pfn_immune_to_uc_mtrr279, ptr @__UNIQUE_ID___addressable_arch_io_reserve_memtype_wc280, ptr @__UNIQUE_ID___addressable_arch_io_free_memtype_wc281, ptr @__UNIQUE_ID___addressable_pgprot_writecombine282, ptr @__UNIQUE_ID___addressable_pgprot_writethrough283, ptr @__UNIQUE_ID___addressable___initstub__kmod_memtype__284_1213_pat_memtype_list_init7285], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nopat(ptr noundef %str) #0 section ".init.text" align 16 !dbg !3777 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  call void @pat_disable(ptr noundef @.str.11) #18, !dbg !3781
  ret i32 0, !dbg !3782
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pat_enabled() #1 align 16 !dbg !3783 {
entry:
  %0 = load i8, ptr @pat_disabled, align 1, !dbg !3786, !range !3787, !noundef !443
  %tobool = trunc i8 %0 to i1, !dbg !3786
  %lnot = xor i1 %tobool, true, !dbg !3788
  ret i1 %lnot, !dbg !3789
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pat_debug_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !3790 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  store i32 1, ptr @pat_debug_enable, align 4, !dbg !3794
  ret i32 1, !dbg !3795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pat_cpu_init() #1 align 16 !dbg !3796 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !3797

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !3798

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 16, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #19, !dbg !3798
  br i1 %call, label %if.end, label %if.then, !dbg !3797

if.then:                                          ; preds = %cond.false, %cond.true
  call void (ptr, ...) @panic(ptr noundef @.str) #20, !dbg !3800
  unreachable, !dbg !3800

if.end:                                           ; preds = %cond.false, %cond.true
  %0 = load i64, ptr @pat_msr_val, align 8, !dbg !3802
  call void @wrmsrl(i32 noundef 631, i64 noundef %0) #19, !dbg !3803
  ret void, !dbg !3804
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !3805 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3810, metadata !DIExpression()), !dbg !3812
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3811, metadata !DIExpression()), !dbg !3813
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3814
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3815
  br i1 %1, label %cond.true, label %cond.false, !dbg !3815

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3816
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3817
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !3818
  %conv = zext i1 %call to i32, !dbg !3818
  br label %cond.end, !dbg !3815

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3819
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3820
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !3821
  %conv2 = zext i1 %call1 to i32, !dbg !3821
  br label %cond.end, !dbg !3815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3815
  %tobool = icmp ne i32 %cond, 0, !dbg !3815
  ret i1 %tobool, !dbg !3822
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !3823 dso_local void @panic(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !3827 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !3832, metadata !DIExpression()), !dbg !3834
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3833, metadata !DIExpression()), !dbg !3835
  %0 = load i32, ptr %msr.addr, align 4, !dbg !3836
  %1 = load i64, ptr %val.addr, align 8, !dbg !3837
  %and = and i64 %1, 4294967295, !dbg !3838
  %conv = trunc i64 %and to i32, !dbg !3839
  %2 = load i64, ptr %val.addr, align 8, !dbg !3840
  %shr = lshr i64 %2, 32, !dbg !3841
  %conv1 = trunc i64 %shr to i32, !dbg !3842
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #19, !dbg !3843
  ret void, !dbg !3844
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pat_bp_init() #0 section ".init.text" align 16 !dbg !3845 {
entry:
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #21, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3847, metadata !DIExpression()), !dbg !3906
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !3906
  br i1 false, label %cond.true, label %cond.false, !dbg !3907

cond.true:                                        ; preds = %entry
  br i1 false, label %if.else, label %if.then, !dbg !3908

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !3907

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !3908

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.else, label %if.then, !dbg !3908

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 16, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #19, !dbg !3908
  br i1 %call, label %if.else, label %if.then, !dbg !3908

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 16) #19, !dbg !3908
  br i1 %call5, label %if.else, label %if.then, !dbg !3907

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @pat_disable(ptr noundef @.str.1) #18, !dbg !3910
  br label %if.end, !dbg !3910

if.else:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %call6 = call i64 @native_read_msr(i32 noundef 631) #19, !dbg !3911
  store i64 %call6, ptr @pat_msr_val, align 8, !dbg !3911
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i64, ptr @pat_msr_val, align 8, !dbg !3912
  %tobool = icmp ne i64 %0, 0, !dbg !3912
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !3914

if.then7:                                         ; preds = %if.end
  call void @pat_disable(ptr noundef @.str.2) #18, !dbg !3915
  store i64 1974748653749254, ptr @pat_msr_val, align 8, !dbg !3917
  br label %if.end8, !dbg !3918

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load i8, ptr @pat_disabled, align 1, !dbg !3919, !range !3787, !noundef !443
  %tobool9 = trunc i8 %1 to i1, !dbg !3919
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3921

if.then10:                                        ; preds = %if.end8
  %2 = load i64, ptr @pat_msr_val, align 8, !dbg !3922
  call void @init_cache_modes(i64 noundef %2) #18, !dbg !3924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

if.end11:                                         ; preds = %if.end8
  %3 = load ptr, ptr %c, align 8, !dbg !3926
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !3928
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2, !dbg !3928
  %5 = load i8, ptr %x86_vendor, align 2, !dbg !3928
  %conv = zext i8 %5 to i32, !dbg !3926
  %cmp = icmp eq i32 %conv, 0, !dbg !3929
  br i1 %cmp, label %land.lhs.true, label %if.else30, !dbg !3930

land.lhs.true:                                    ; preds = %if.end11
  %6 = load ptr, ptr %c, align 8, !dbg !3931
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !3932
  %x86 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1, !dbg !3932
  %8 = load i8, ptr %x86, align 1, !dbg !3932
  %conv13 = zext i8 %8 to i32, !dbg !3931
  %cmp14 = icmp eq i32 %conv13, 6, !dbg !3933
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false, !dbg !3934

land.lhs.true16:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %c, align 8, !dbg !3935
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !3936
  %x86_model = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !3936
  %11 = load i8, ptr %x86_model, align 8, !dbg !3936
  %conv17 = zext i8 %11 to i32, !dbg !3935
  %cmp18 = icmp sle i32 %conv17, 13, !dbg !3937
  br i1 %cmp18, label %if.then29, label %lor.lhs.false, !dbg !3938

lor.lhs.false:                                    ; preds = %land.lhs.true16, %land.lhs.true
  %12 = load ptr, ptr %c, align 8, !dbg !3939
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !3940
  %x8620 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, !dbg !3940
  %14 = load i8, ptr %x8620, align 1, !dbg !3940
  %conv21 = zext i8 %14 to i32, !dbg !3939
  %cmp22 = icmp eq i32 %conv21, 15, !dbg !3941
  br i1 %cmp22, label %land.lhs.true24, label %if.else30, !dbg !3942

land.lhs.true24:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %c, align 8, !dbg !3943
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 0, !dbg !3944
  %x86_model25 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !3944
  %17 = load i8, ptr %x86_model25, align 8, !dbg !3944
  %conv26 = zext i8 %17 to i32, !dbg !3943
  %cmp27 = icmp sle i32 %conv26, 6, !dbg !3945
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !3946

if.then29:                                        ; preds = %land.lhs.true24, %land.lhs.true16
  store i64 1971450118865158, ptr @pat_msr_val, align 8, !dbg !3947
  br label %if.end31, !dbg !3949

if.else30:                                        ; preds = %land.lhs.true24, %lor.lhs.false, %if.end11
  store i64 290206224317088006, ptr @pat_msr_val, align 8, !dbg !3950
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  %18 = load i32, ptr @memory_caching_control, align 4, !dbg !3952
  %or = or i32 %18, 2, !dbg !3952
  store i32 %or, ptr @memory_caching_control, align 4, !dbg !3952
  %19 = load i64, ptr @pat_msr_val, align 8, !dbg !3953
  call void @init_cache_modes(i64 noundef %19) #18, !dbg !3954
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3955
  br label %cleanup, !dbg !3955

cleanup:                                          ; preds = %if.end31, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #21, !dbg !3955
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3955

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #2 align 16 !dbg !3956 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !3961, metadata !DIExpression()), !dbg !3964
  %0 = load i16, ptr %bit.addr, align 2, !dbg !3965
  %1 = load i16, ptr %bit.addr, align 2, !dbg !3966
  %conv = zext i16 %1 to i32, !dbg !3966
  %and = and i32 %conv, 7, !dbg !3967
  %shl = shl i32 1, %and, !dbg !3968
  %2 = load i16, ptr %bit.addr, align 2, !dbg !3969
  %conv1 = zext i16 %2 to i32, !dbg !3969
  %shr = ashr i32 %conv1, 3, !dbg !3970
  %idxprom = sext i32 %shr to i64, !dbg !3971
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !3971
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #21
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !3972, !srcloc !3973

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !3972

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !3962), !dbg !3974
  store i1 true, ptr %retval, align 1, !dbg !3975
  br label %return, !dbg !3975

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !3963), !dbg !3976
  store i1 false, ptr %retval, align 1, !dbg !3977
  br label %return, !dbg !3977

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !3978
  ret i1 %3, !dbg !3978
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pat_disable(ptr noundef %msg_reason) #0 section ".init.text" align 16 !dbg !3979 {
entry:
  %msg_reason.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %msg_reason, ptr %msg_reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg_reason.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load i8, ptr @pat_disabled, align 1, !dbg !3985, !range !3787, !noundef !443
  %tobool = trunc i8 %0 to i1, !dbg !3985
  br i1 %tobool, label %if.then, label %if.end, !dbg !3987

if.then:                                          ; preds = %entry
  br label %return, !dbg !3988

if.end:                                           ; preds = %entry
  store i8 1, ptr @pat_disabled, align 1, !dbg !3989
  br label %do.body, !dbg !3990

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3992

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %msg_reason.addr, align 8, !dbg !3990
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %1) #18, !dbg !3990
  store i32 %call, ptr %tmp, align 4, !dbg !3992
  %2 = load i32, ptr %tmp, align 4, !dbg !3990
  %3 = load i32, ptr @memory_caching_control, align 4, !dbg !3994
  %and = and i32 %3, -3, !dbg !3994
  store i32 %and, ptr @memory_caching_control, align 4, !dbg !3994
  br label %return, !dbg !3995

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !3995
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !3996 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4000, metadata !DIExpression()), !dbg !4002
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4001, metadata !DIExpression()), !dbg !4004
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4005
  %call = call i64 @__rdmsr(i32 noundef %0) #19, !dbg !4006
  store i64 %call, ptr %val, align 8, !dbg !4007
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #19, !dbg !4008
  br i1 %call1, label %if.then, label %if.end, !dbg !4010

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !4011
  %2 = load i64, ptr %val, align 8, !dbg !4012
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #19, !dbg !4013
  br label %if.end, !dbg !4013

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !4014
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !4015
  ret i64 %3, !dbg !4016
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_cache_modes(i64 noundef %pat) #0 section ".init.text" align 16 !dbg !4017 {
entry:
  %pat.addr = alloca i64, align 8
  %cache = alloca i32, align 4
  %pat_msg = alloca [33 x i8], align 16
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %pat, ptr %pat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pat.addr, metadata !4021, metadata !DIExpression()), !dbg !4025
  call void @llvm.lifetime.start.p0(i64 4, ptr %cache) #21, !dbg !4026
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !4022, metadata !DIExpression()), !dbg !4027
  call void @llvm.lifetime.start.p0(i64 33, ptr %pat_msg) #21, !dbg !4028
  call void @llvm.dbg.declare(metadata ptr %pat_msg, metadata !4023, metadata !DIExpression()), !dbg !4029
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !4030
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4024, metadata !DIExpression()), !dbg !4031
  %arrayidx = getelementptr [33 x i8], ptr %pat_msg, i64 0, i64 32, !dbg !4032
  store i8 0, ptr %arrayidx, align 16, !dbg !4033
  store i32 7, ptr %i, align 4, !dbg !4034
  br label %for.cond, !dbg !4036

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4037
  %cmp = icmp sge i32 %0, 0, !dbg !4039
  br i1 %cmp, label %for.body, label %for.end, !dbg !4040

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %pat.addr, align 8, !dbg !4041
  %2 = load i32, ptr %i, align 4, !dbg !4043
  %mul = mul i32 %2, 8, !dbg !4044
  %sh_prom = zext i32 %mul to i64, !dbg !4045
  %shr = lshr i64 %1, %sh_prom, !dbg !4045
  %and = and i64 %shr, 7, !dbg !4046
  %conv = trunc i64 %and to i32, !dbg !4047
  %arraydecay = getelementptr inbounds [33 x i8], ptr %pat_msg, i64 0, i64 0, !dbg !4048
  %3 = load i32, ptr %i, align 4, !dbg !4049
  %mul1 = mul i32 4, %3, !dbg !4050
  %idx.ext = sext i32 %mul1 to i64, !dbg !4051
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !4051
  %call = call i32 @pat_get_cache_mode(i32 noundef %conv, ptr noundef %add.ptr) #18, !dbg !4052
  store i32 %call, ptr %cache, align 4, !dbg !4053
  %4 = load i32, ptr %i, align 4, !dbg !4054
  %5 = load i32, ptr %cache, align 4, !dbg !4055
  call void @update_cache_mode_entry(i32 noundef %4, i32 noundef %5) #19, !dbg !4056
  br label %for.inc, !dbg !4057

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !4058
  %dec = add i32 %6, -1, !dbg !4058
  store i32 %dec, ptr %i, align 4, !dbg !4058
  br label %for.cond, !dbg !4059, !llvm.loop !4060

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !4064

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !4066

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4066

do.end:                                           ; preds = %do.cond
  %arraydecay2 = getelementptr inbounds [33 x i8], ptr %pat_msg, i64 0, i64 0, !dbg !4064
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %arraydecay2) #18, !dbg !4064
  store i32 %call3, ptr %tmp, align 4, !dbg !4066
  %7 = load i32, ptr %tmp, align 4, !dbg !4064
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !4068
  call void @llvm.lifetime.end.p0(i64 33, ptr %pat_msg) #21, !dbg !4068
  call void @llvm.lifetime.end.p0(i64 4, ptr %cache) #21, !dbg !4068
  ret void, !dbg !4068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_reserve(i64 noundef %start, i64 noundef %end, i32 noundef %req_type, ptr noundef %new_type) #1 align 16 !dbg !4069 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %req_type.addr = alloca i32, align 4
  %new_type.addr = alloca ptr, align 8
  %entry_new = alloca ptr, align 8
  %actual_type = alloca i32, align 4
  %is_range_ram = alloca i32, align 4
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4074, metadata !DIExpression()), !dbg !4090
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4075, metadata !DIExpression()), !dbg !4091
  store i32 %req_type, ptr %req_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %req_type.addr, metadata !4076, metadata !DIExpression()), !dbg !4092
  store ptr %new_type, ptr %new_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !4077, metadata !DIExpression()), !dbg !4093
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_new) #21, !dbg !4094
  call void @llvm.dbg.declare(metadata ptr %entry_new, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 4, ptr %actual_type) #21, !dbg !4096
  call void @llvm.dbg.declare(metadata ptr %actual_type, metadata !4079, metadata !DIExpression()), !dbg !4097
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_range_ram) #21, !dbg !4098
  call void @llvm.dbg.declare(metadata ptr %is_range_ram, metadata !4080, metadata !DIExpression()), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !4100
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4081, metadata !DIExpression()), !dbg !4101
  store i32 0, ptr %err, align 4, !dbg !4101
  %0 = load i64, ptr %start.addr, align 8, !dbg !4102
  %call = call i64 @sanitize_phys(i64 noundef %0) #19, !dbg !4103
  store i64 %call, ptr %start.addr, align 8, !dbg !4104
  %1 = load i64, ptr %end.addr, align 8, !dbg !4105
  %sub = sub i64 %1, 1, !dbg !4106
  %call1 = call i64 @sanitize_phys(i64 noundef %sub) #19, !dbg !4107
  %add = add i64 %call1, 1, !dbg !4108
  store i64 %add, ptr %end.addr, align 8, !dbg !4109
  %2 = load i64, ptr %start.addr, align 8, !dbg !4110
  %3 = load i64, ptr %end.addr, align 8, !dbg !4111
  %cmp = icmp uge i64 %2, %3, !dbg !4112
  br i1 %cmp, label %if.then, label %if.end32, !dbg !4113

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4114
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4082, metadata !DIExpression()), !dbg !4114
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4114
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4115
  %tobool = icmp ne i32 %4, 0, !dbg !4115
  %lnot = xor i1 %tobool, true, !dbg !4115
  %lnot2 = xor i1 %lnot, true, !dbg !4115
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4115
  %conv = sext i32 %lnot.ext to i64, !dbg !4115
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4115
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4115
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4114

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !4115

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !4116

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !4117

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4117

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %start.addr, align 8, !dbg !4116
  %6 = load i64, ptr %end.addr, align 8, !dbg !4116
  %sub6 = sub i64 %6, 1, !dbg !4116
  %7 = load i32, ptr %req_type.addr, align 4, !dbg !4116
  %call7 = call ptr @cattr_name(i32 noundef %7) #19, !dbg !4116
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef @__func__.memtype_reserve, i64 noundef %5, i64 noundef %sub6, ptr noundef %call7) #19, !dbg !4116
  br label %do.body8, !dbg !4116

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4086, metadata !DIExpression()), !dbg !4119
  store i32 2313, ptr %__flags, align 4, !dbg !4119
  br label %do.body9, !dbg !4119

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !4120

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4120

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4119

do.body12:                                        ; preds = %do.end11
  %8 = load i32, ptr %__flags, align 4, !dbg !4122
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 555, i32 %8, i64 12) #21, !dbg !4122, !srcloc !4124
  br label %do.cond13, !dbg !4122

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4122

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4119

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4125

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4125

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !4116
  br label %do.cond18, !dbg !4119

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4119

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !4116

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !4127

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4127

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !4116

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !4116

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !4116

if.end:                                           ; preds = %do.end24, %if.then
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4114
  %tobool25 = icmp ne i32 %9, 0, !dbg !4114
  %lnot26 = xor i1 %tobool25, true, !dbg !4114
  %lnot28 = xor i1 %lnot26, true, !dbg !4114
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4114
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4114
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !4114
  store i64 %expval31, ptr %tmp, align 8, !dbg !4115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4129
  %10 = load i64, ptr %tmp, align 8, !dbg !4114
  store i32 -22, ptr %retval, align 4, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4130

if.end32:                                         ; preds = %entry
  %call33 = call zeroext i1 @pat_enabled() #19, !dbg !4131
  br i1 %call33, label %if.end38, label %if.then34, !dbg !4133

if.then34:                                        ; preds = %if.end32
  %11 = load ptr, ptr %new_type.addr, align 8, !dbg !4134
  %tobool35 = icmp ne ptr %11, null, !dbg !4134
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4137

if.then36:                                        ; preds = %if.then34
  %12 = load i32, ptr %req_type.addr, align 4, !dbg !4138
  %13 = load ptr, ptr %new_type.addr, align 8, !dbg !4139
  store i32 %12, ptr %13, align 4, !dbg !4140
  br label %if.end37, !dbg !4141

if.end37:                                         ; preds = %if.then36, %if.then34
  store i32 0, ptr %retval, align 4, !dbg !4142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4142

if.end38:                                         ; preds = %if.end32
  %14 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 5), align 8, !dbg !4143
  %15 = load i64, ptr %start.addr, align 8, !dbg !4145
  %16 = load i64, ptr %end.addr, align 8, !dbg !4146
  %call39 = call zeroext i1 %14(i64 noundef %15, i64 noundef %16) #19, !dbg !4147
  br i1 %call39, label %if.then40, label %if.end44, !dbg !4148

if.then40:                                        ; preds = %if.end38
  %17 = load ptr, ptr %new_type.addr, align 8, !dbg !4149
  %tobool41 = icmp ne ptr %17, null, !dbg !4149
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4152

if.then42:                                        ; preds = %if.then40
  %18 = load ptr, ptr %new_type.addr, align 8, !dbg !4153
  store i32 0, ptr %18, align 4, !dbg !4154
  br label %if.end43, !dbg !4155

if.end43:                                         ; preds = %if.then42, %if.then40
  store i32 0, ptr %retval, align 4, !dbg !4156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4156

if.end44:                                         ; preds = %if.end38
  %19 = load i64, ptr %start.addr, align 8, !dbg !4157
  %20 = load i64, ptr %end.addr, align 8, !dbg !4158
  %21 = load i32, ptr %req_type.addr, align 4, !dbg !4159
  %call45 = call i64 @pat_x_mtrr_type(i64 noundef %19, i64 noundef %20, i32 noundef %21) #19, !dbg !4160
  %conv46 = trunc i64 %call45 to i32, !dbg !4160
  store i32 %conv46, ptr %actual_type, align 4, !dbg !4161
  %22 = load ptr, ptr %new_type.addr, align 8, !dbg !4162
  %tobool47 = icmp ne ptr %22, null, !dbg !4162
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !4164

if.then48:                                        ; preds = %if.end44
  %23 = load i32, ptr %actual_type, align 4, !dbg !4165
  %24 = load ptr, ptr %new_type.addr, align 8, !dbg !4166
  store i32 %23, ptr %24, align 4, !dbg !4167
  br label %if.end49, !dbg !4168

if.end49:                                         ; preds = %if.then48, %if.end44
  %25 = load i64, ptr %start.addr, align 8, !dbg !4169
  %26 = load i64, ptr %end.addr, align 8, !dbg !4170
  %call50 = call i32 @pat_pagerange_is_ram(i64 noundef %25, i64 noundef %26) #19, !dbg !4171
  store i32 %call50, ptr %is_range_ram, align 4, !dbg !4172
  %27 = load i32, ptr %is_range_ram, align 4, !dbg !4173
  %cmp51 = icmp eq i32 %27, 1, !dbg !4175
  br i1 %cmp51, label %if.then53, label %if.else, !dbg !4176

if.then53:                                        ; preds = %if.end49
  %28 = load i64, ptr %start.addr, align 8, !dbg !4177
  %29 = load i64, ptr %end.addr, align 8, !dbg !4179
  %30 = load i32, ptr %req_type.addr, align 4, !dbg !4180
  %31 = load ptr, ptr %new_type.addr, align 8, !dbg !4181
  %call54 = call i32 @reserve_ram_pages_type(i64 noundef %28, i64 noundef %29, i32 noundef %30, ptr noundef %31) #19, !dbg !4182
  store i32 %call54, ptr %err, align 4, !dbg !4183
  %32 = load i32, ptr %err, align 4, !dbg !4184
  store i32 %32, ptr %retval, align 4, !dbg !4185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4185

if.else:                                          ; preds = %if.end49
  %33 = load i32, ptr %is_range_ram, align 4, !dbg !4186
  %cmp55 = icmp slt i32 %33, 0, !dbg !4188
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !4189

if.then57:                                        ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !4190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4190

if.end58:                                         ; preds = %if.else
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  %call60 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #22, !dbg !4192
  store ptr %call60, ptr %entry_new, align 8, !dbg !4193
  %34 = load ptr, ptr %entry_new, align 8, !dbg !4194
  %tobool61 = icmp ne ptr %34, null, !dbg !4194
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !4196

if.then62:                                        ; preds = %if.end59
  store i32 -12, ptr %retval, align 4, !dbg !4197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4197

if.end63:                                         ; preds = %if.end59
  %35 = load i64, ptr %start.addr, align 8, !dbg !4198
  %36 = load ptr, ptr %entry_new, align 8, !dbg !4199
  %start64 = getelementptr inbounds %struct.memtype, ptr %36, i32 0, i32 0, !dbg !4200
  store i64 %35, ptr %start64, align 8, !dbg !4201
  %37 = load i64, ptr %end.addr, align 8, !dbg !4202
  %38 = load ptr, ptr %entry_new, align 8, !dbg !4203
  %end65 = getelementptr inbounds %struct.memtype, ptr %38, i32 0, i32 1, !dbg !4204
  store i64 %37, ptr %end65, align 8, !dbg !4205
  %39 = load i32, ptr %actual_type, align 4, !dbg !4206
  %40 = load ptr, ptr %entry_new, align 8, !dbg !4207
  %type = getelementptr inbounds %struct.memtype, ptr %40, i32 0, i32 3, !dbg !4208
  store i32 %39, ptr %type, align 8, !dbg !4209
  call void @spin_lock(ptr noundef @memtype_lock) #19, !dbg !4210
  %41 = load ptr, ptr %entry_new, align 8, !dbg !4211
  %42 = load ptr, ptr %new_type.addr, align 8, !dbg !4212
  %call66 = call i32 @memtype_check_insert(ptr noundef %41, ptr noundef %42) #19, !dbg !4213
  store i32 %call66, ptr %err, align 4, !dbg !4214
  %43 = load i32, ptr %err, align 4, !dbg !4215
  %tobool67 = icmp ne i32 %43, 0, !dbg !4215
  br i1 %tobool67, label %if.then68, label %if.end78, !dbg !4217

if.then68:                                        ; preds = %if.end63
  br label %do.body69, !dbg !4218

do.body69:                                        ; preds = %if.then68
  br label %do.cond70, !dbg !4221

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !4221

do.end71:                                         ; preds = %do.cond70
  %44 = load i64, ptr %start.addr, align 8, !dbg !4218
  %45 = load i64, ptr %end.addr, align 8, !dbg !4218
  %sub73 = sub i64 %45, 1, !dbg !4218
  %46 = load ptr, ptr %entry_new, align 8, !dbg !4218
  %type74 = getelementptr inbounds %struct.memtype, ptr %46, i32 0, i32 3, !dbg !4218
  %47 = load i32, ptr %type74, align 8, !dbg !4218
  %call75 = call ptr @cattr_name(i32 noundef %47) #19, !dbg !4218
  %48 = load i32, ptr %req_type.addr, align 4, !dbg !4218
  %call76 = call ptr @cattr_name(i32 noundef %48) #19, !dbg !4218
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %44, i64 noundef %sub73, ptr noundef %call75, ptr noundef %call76) #18, !dbg !4218
  store i32 %call77, ptr %tmp72, align 4, !dbg !4221
  %49 = load i32, ptr %tmp72, align 4, !dbg !4218
  %50 = load ptr, ptr %entry_new, align 8, !dbg !4223
  call void @kfree(ptr noundef %50) #19, !dbg !4224
  call void @spin_unlock(ptr noundef @memtype_lock) #19, !dbg !4225
  %51 = load i32, ptr %err, align 4, !dbg !4226
  store i32 %51, ptr %retval, align 4, !dbg !4227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4227

if.end78:                                         ; preds = %if.end63
  call void @spin_unlock(ptr noundef @memtype_lock) #19, !dbg !4228
  br label %do.body79, !dbg !4229

do.body79:                                        ; preds = %if.end78
  %52 = load i32, ptr @pat_debug_enable, align 4, !dbg !4230
  %tobool80 = icmp ne i32 %52, 0, !dbg !4230
  br i1 %tobool80, label %if.then81, label %if.end93, !dbg !4233

if.then81:                                        ; preds = %do.body79
  br label %do.body82, !dbg !4234

do.body82:                                        ; preds = %if.then81
  br label %do.cond83, !dbg !4236

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !4236

do.end84:                                         ; preds = %do.cond83
  %53 = load i64, ptr %start.addr, align 8, !dbg !4234
  %54 = load i64, ptr %end.addr, align 8, !dbg !4234
  %sub86 = sub i64 %54, 1, !dbg !4234
  %55 = load ptr, ptr %entry_new, align 8, !dbg !4234
  %type87 = getelementptr inbounds %struct.memtype, ptr %55, i32 0, i32 3, !dbg !4234
  %56 = load i32, ptr %type87, align 8, !dbg !4234
  %call88 = call ptr @cattr_name(i32 noundef %56) #19, !dbg !4234
  %57 = load i32, ptr %req_type.addr, align 4, !dbg !4234
  %call89 = call ptr @cattr_name(i32 noundef %57) #19, !dbg !4234
  %58 = load ptr, ptr %new_type.addr, align 8, !dbg !4234
  %tobool90 = icmp ne ptr %58, null, !dbg !4234
  br i1 %tobool90, label %cond.true, label %cond.false, !dbg !4234

cond.true:                                        ; preds = %do.end84
  %59 = load ptr, ptr %new_type.addr, align 8, !dbg !4234
  %60 = load i32, ptr %59, align 4, !dbg !4234
  %call91 = call ptr @cattr_name(i32 noundef %60) #19, !dbg !4234
  br label %cond.end, !dbg !4234

cond.false:                                       ; preds = %do.end84
  br label %cond.end, !dbg !4234

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call91, %cond.true ], [ @.str.7, %cond.false ], !dbg !4234
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i64 noundef %53, i64 noundef %sub86, ptr noundef %call88, ptr noundef %call89, ptr noundef %cond) #18, !dbg !4234
  store i32 %call92, ptr %tmp85, align 4, !dbg !4236
  %61 = load i32, ptr %tmp85, align 4, !dbg !4234
  br label %if.end93, !dbg !4230

if.end93:                                         ; preds = %cond.end, %do.body79
  br label %do.cond94, !dbg !4233

do.cond94:                                        ; preds = %if.end93
  br label %do.end95, !dbg !4233

do.end95:                                         ; preds = %do.cond94
  %62 = load i32, ptr %err, align 4, !dbg !4238
  store i32 %62, ptr %retval, align 4, !dbg !4239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4239

cleanup:                                          ; preds = %do.end95, %do.end71, %if.then62, %if.then57, %if.then53, %if.end43, %if.end37, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_range_ram) #21, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 4, ptr %actual_type) #21, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_new) #21, !dbg !4240
  %63 = load i32, ptr %retval, align 4, !dbg !4240
  ret i32 %63, !dbg !4240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sanitize_phys(i64 noundef %address) #1 align 16 !dbg !4241 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  %0 = load i64, ptr %address.addr, align 8, !dbg !4247
  %and = and i64 %0, 4503599627370495, !dbg !4249
  ret i64 %and, !dbg !4250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4251 dso_local void @__warn_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cattr_name(i32 noundef %pcm) #4 align 16 !dbg !4253 {
entry:
  %retval = alloca ptr, align 8
  %pcm.addr = alloca i32, align 4
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  %0 = load i32, ptr %pcm.addr, align 4, !dbg !4259
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !4260

sw.bb:                                            ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8, !dbg !4261
  br label %return, !dbg !4261

sw.bb1:                                           ; preds = %entry
  store ptr @.str.21, ptr %retval, align 8, !dbg !4263
  br label %return, !dbg !4263

sw.bb2:                                           ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !4264
  br label %return, !dbg !4264

sw.bb3:                                           ; preds = %entry
  store ptr @.str.23, ptr %retval, align 8, !dbg !4265
  br label %return, !dbg !4265

sw.bb4:                                           ; preds = %entry
  store ptr @.str.24, ptr %retval, align 8, !dbg !4266
  br label %return, !dbg !4266

sw.bb5:                                           ; preds = %entry
  store ptr @.str.25, ptr %retval, align 8, !dbg !4267
  br label %return, !dbg !4267

sw.default:                                       ; preds = %entry
  store ptr @.str.26, ptr %retval, align 8, !dbg !4268
  br label %return, !dbg !4268

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !4269
  ret ptr %1, !dbg !4269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pat_x_mtrr_type(i64 noundef %start, i64 noundef %end, i32 noundef %req_type) #1 align 16 !dbg !4270 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %req_type.addr = alloca i32, align 4
  %mtrr_type = alloca i8, align 1
  %uniform = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4274, metadata !DIExpression()), !dbg !4281
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4275, metadata !DIExpression()), !dbg !4282
  store i32 %req_type, ptr %req_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %req_type.addr, metadata !4276, metadata !DIExpression()), !dbg !4283
  %0 = load i32, ptr %req_type.addr, align 4, !dbg !4284
  %cmp = icmp eq i32 %0, 0, !dbg !4285
  br i1 %cmp, label %if.then, label %if.end5, !dbg !4286

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %mtrr_type) #21, !dbg !4287
  call void @llvm.dbg.declare(metadata ptr %mtrr_type, metadata !4277, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0(i64 1, ptr %uniform) #21, !dbg !4287
  call void @llvm.dbg.declare(metadata ptr %uniform, metadata !4280, metadata !DIExpression()), !dbg !4289
  %1 = load i64, ptr %start.addr, align 8, !dbg !4290
  %2 = load i64, ptr %end.addr, align 8, !dbg !4291
  %call = call zeroext i8 @mtrr_type_lookup(i64 noundef %1, i64 noundef %2, ptr noundef %uniform) #19, !dbg !4292
  store i8 %call, ptr %mtrr_type, align 1, !dbg !4293
  %3 = load i8, ptr %mtrr_type, align 1, !dbg !4294
  %conv = zext i8 %3 to i32, !dbg !4294
  %cmp1 = icmp ne i32 %conv, 6, !dbg !4296
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !4297

if.then3:                                         ; preds = %if.then
  store i64 2, ptr %retval, align 8, !dbg !4298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4298

if.end:                                           ; preds = %if.then
  store i64 0, ptr %retval, align 8, !dbg !4299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4299

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %uniform) #21, !dbg !4300
  call void @llvm.lifetime.end.p0(i64 1, ptr %mtrr_type) #21, !dbg !4300
  br label %return

if.end5:                                          ; preds = %entry
  %4 = load i32, ptr %req_type.addr, align 4, !dbg !4301
  %conv6 = zext i32 %4 to i64, !dbg !4301
  store i64 %conv6, ptr %retval, align 8, !dbg !4302
  br label %return, !dbg !4302

return:                                           ; preds = %if.end5, %cleanup
  %5 = load i64, ptr %retval, align 8, !dbg !4303
  ret i64 %5, !dbg !4303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pat_pagerange_is_ram(i64 noundef %start, i64 noundef %end) #1 align 16 !dbg !4304 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %state = alloca %struct.pagerange_state, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4308, metadata !DIExpression()), !dbg !4319
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4309, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4310, metadata !DIExpression()), !dbg !4322
  store i32 0, ptr %ret, align 4, !dbg !4322
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_pfn) #21, !dbg !4323
  call void @llvm.dbg.declare(metadata ptr %start_pfn, metadata !4311, metadata !DIExpression()), !dbg !4324
  %0 = load i64, ptr %start.addr, align 8, !dbg !4325
  %shr = lshr i64 %0, 12, !dbg !4326
  store i64 %shr, ptr %start_pfn, align 8, !dbg !4324
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_pfn) #21, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %end_pfn, metadata !4312, metadata !DIExpression()), !dbg !4328
  %1 = load i64, ptr %end.addr, align 8, !dbg !4329
  %add = add i64 %1, 4096, !dbg !4330
  %sub = sub i64 %add, 1, !dbg !4331
  %shr1 = lshr i64 %sub, 12, !dbg !4332
  store i64 %shr1, ptr %end_pfn, align 8, !dbg !4328
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #21, !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4313, metadata !DIExpression()), !dbg !4334
  %cur_pfn = getelementptr inbounds %struct.pagerange_state, ptr %state, i32 0, i32 0, !dbg !4335
  %2 = load i64, ptr %start_pfn, align 8, !dbg !4336
  store i64 %2, ptr %cur_pfn, align 8, !dbg !4335
  %ram = getelementptr inbounds %struct.pagerange_state, ptr %state, i32 0, i32 1, !dbg !4335
  store i32 0, ptr %ram, align 8, !dbg !4335
  %not_ram = getelementptr inbounds %struct.pagerange_state, ptr %state, i32 0, i32 2, !dbg !4335
  store i32 0, ptr %not_ram, align 4, !dbg !4335
  %3 = load i64, ptr %start_pfn, align 8, !dbg !4337
  %cmp = icmp ult i64 %3, 256, !dbg !4339
  br i1 %cmp, label %if.then, label %if.end, !dbg !4340

if.then:                                          ; preds = %entry
  store i64 256, ptr %start_pfn, align 8, !dbg !4341
  br label %if.end, !dbg !4342

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %start_pfn, align 8, !dbg !4343
  %5 = load i64, ptr %end_pfn, align 8, !dbg !4345
  %cmp2 = icmp ult i64 %4, %5, !dbg !4346
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !4347

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %start_pfn, align 8, !dbg !4348
  %7 = load i64, ptr %end_pfn, align 8, !dbg !4350
  %8 = load i64, ptr %start_pfn, align 8, !dbg !4351
  %sub4 = sub i64 %7, %8, !dbg !4352
  %call = call i32 @walk_system_ram_range(i64 noundef %6, i64 noundef %sub4, ptr noundef %state, ptr noundef @pagerange_is_ram_callback) #19, !dbg !4353
  store i32 %call, ptr %ret, align 4, !dbg !4354
  br label %if.end5, !dbg !4355

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !4356
  %cmp6 = icmp sgt i32 %9, 0, !dbg !4357
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !4358

cond.true:                                        ; preds = %if.end5
  br label %cond.end, !dbg !4358

cond.false:                                       ; preds = %if.end5
  %ram7 = getelementptr inbounds %struct.pagerange_state, ptr %state, i32 0, i32 1, !dbg !4359
  %10 = load i32, ptr %ram7, align 8, !dbg !4359
  %tobool = icmp ne i32 %10, 0, !dbg !4360
  %11 = zext i1 %tobool to i64, !dbg !4360
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4360
  br label %cond.end, !dbg !4358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ], !dbg !4358
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #21, !dbg !4361
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_pfn) #21, !dbg !4361
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_pfn) #21, !dbg !4361
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !4361
  ret i32 %cond8, !dbg !4362
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reserve_ram_pages_type(i64 noundef %start, i64 noundef %end, i32 noundef %req_type, ptr noundef %new_type) #1 align 16 !dbg !4363 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %req_type.addr = alloca i32, align 4
  %new_type.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %pfn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %type = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4365, metadata !DIExpression()), !dbg !4382
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4366, metadata !DIExpression()), !dbg !4383
  store i32 %req_type, ptr %req_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %req_type.addr, metadata !4367, metadata !DIExpression()), !dbg !4384
  store ptr %new_type, ptr %new_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !4368, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #21, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4369, metadata !DIExpression()), !dbg !4387
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #21, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !4370, metadata !DIExpression()), !dbg !4389
  %0 = load i32, ptr %req_type.addr, align 4, !dbg !4390
  %cmp = icmp eq i32 %0, 5, !dbg !4392
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4393

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %new_type.addr, align 8, !dbg !4394
  %tobool = icmp ne ptr %1, null, !dbg !4394
  br i1 %tobool, label %if.then1, label %if.end, !dbg !4397

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %new_type.addr, align 8, !dbg !4398
  store i32 2, ptr %2, align 4, !dbg !4399
  br label %if.end, !dbg !4400

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !4401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !4401

if.end2:                                          ; preds = %entry
  %3 = load i32, ptr %req_type.addr, align 4, !dbg !4402
  %cmp3 = icmp eq i32 %3, 3, !dbg !4403
  br i1 %cmp3, label %if.then4, label %if.end26, !dbg !4404

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4405
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4371, metadata !DIExpression()), !dbg !4405
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4405
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4406
  %tobool5 = icmp ne i32 %4, 0, !dbg !4406
  %lnot = xor i1 %tobool5, true, !dbg !4406
  %lnot6 = xor i1 %lnot, true, !dbg !4406
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4406
  %conv = sext i32 %lnot.ext to i64, !dbg !4406
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4406
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4406
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !4405

if.then8:                                         ; preds = %if.then4
  br label %do.body, !dbg !4406

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !4407
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4375, metadata !DIExpression()), !dbg !4407
  store i32 2307, ptr %__flags, align 4, !dbg !4407
  br label %do.body9, !dbg !4407

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4408

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4408

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4407

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !4410
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 468, i32 %5, i64 12) #21, !dbg !4410, !srcloc !4412
  br label %do.cond11, !dbg !4410

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4410

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4407

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4413

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4413

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !4406
  br label %do.cond16, !dbg !4407

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4407

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !4407

if.end18:                                         ; preds = %do.end17, %if.then4
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4405
  %tobool19 = icmp ne i32 %6, 0, !dbg !4405
  %lnot20 = xor i1 %tobool19, true, !dbg !4405
  %lnot22 = xor i1 %lnot20, true, !dbg !4405
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4405
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4405
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4405
  store i64 %expval25, ptr %tmp, align 8, !dbg !4406
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4415
  %7 = load i64, ptr %tmp, align 8, !dbg !4405
  store i32 2, ptr %req_type.addr, align 4, !dbg !4416
  br label %if.end26, !dbg !4417

if.end26:                                         ; preds = %if.end18, %if.end2
  %8 = load i64, ptr %start.addr, align 8, !dbg !4418
  %shr = lshr i64 %8, 12, !dbg !4419
  store i64 %shr, ptr %pfn, align 8, !dbg !4420
  br label %for.cond, !dbg !4421

for.cond:                                         ; preds = %for.inc, %if.end26
  %9 = load i64, ptr %pfn, align 8, !dbg !4422
  %10 = load i64, ptr %end.addr, align 8, !dbg !4423
  %shr27 = lshr i64 %10, 12, !dbg !4424
  %cmp28 = icmp ult i64 %9, %shr27, !dbg !4425
  br i1 %cmp28, label %for.body, label %for.end, !dbg !4426

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #21, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4378, metadata !DIExpression()), !dbg !4428
  %11 = load i64, ptr @vmemmap_base, align 8, !dbg !4429
  %12 = inttoptr i64 %11 to ptr, !dbg !4429
  %13 = load i64, ptr %pfn, align 8, !dbg !4429
  %add.ptr = getelementptr %struct.page, ptr %12, i64 %13, !dbg !4429
  store ptr %add.ptr, ptr %page, align 8, !dbg !4430
  %14 = load ptr, ptr %page, align 8, !dbg !4431
  %call = call i32 @get_page_memtype(ptr noundef %14) #19, !dbg !4432
  store i32 %call, ptr %type, align 4, !dbg !4433
  %15 = load i32, ptr %type, align 4, !dbg !4434
  %cmp30 = icmp ne i32 %15, 0, !dbg !4436
  br i1 %cmp30, label %if.then32, label %if.end41, !dbg !4437

if.then32:                                        ; preds = %for.body
  br label %do.body33, !dbg !4438

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !4441

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4441

do.end35:                                         ; preds = %do.cond34
  %16 = load i64, ptr %start.addr, align 8, !dbg !4438
  %17 = load i64, ptr %end.addr, align 8, !dbg !4438
  %sub = sub i64 %17, 1, !dbg !4438
  %18 = load i32, ptr %type, align 4, !dbg !4438
  %19 = load i32, ptr %req_type.addr, align 4, !dbg !4438
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27, i64 noundef %16, i64 noundef %sub, i32 noundef %18, i32 noundef %19) #18, !dbg !4438
  store i32 %call37, ptr %tmp36, align 4, !dbg !4441
  %20 = load i32, ptr %tmp36, align 4, !dbg !4438
  %21 = load ptr, ptr %new_type.addr, align 8, !dbg !4443
  %tobool38 = icmp ne ptr %21, null, !dbg !4443
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4445

if.then39:                                        ; preds = %do.end35
  %22 = load i32, ptr %type, align 4, !dbg !4446
  %23 = load ptr, ptr %new_type.addr, align 8, !dbg !4447
  store i32 %22, ptr %23, align 4, !dbg !4448
  br label %if.end40, !dbg !4449

if.end40:                                         ; preds = %if.then39, %do.end35
  store i32 -16, ptr %retval, align 4, !dbg !4450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4450

if.end41:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4451
  br label %cleanup, !dbg !4451

cleanup:                                          ; preds = %if.end41, %if.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #21, !dbg !4451
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4452

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i64, ptr %pfn, align 8, !dbg !4453
  %inc = add i64 %24, 1, !dbg !4453
  store i64 %inc, ptr %pfn, align 8, !dbg !4453
  br label %for.cond, !dbg !4454, !llvm.loop !4455

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %new_type.addr, align 8, !dbg !4457
  %tobool42 = icmp ne ptr %25, null, !dbg !4457
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !4459

if.then43:                                        ; preds = %for.end
  %26 = load i32, ptr %req_type.addr, align 4, !dbg !4460
  %27 = load ptr, ptr %new_type.addr, align 8, !dbg !4461
  store i32 %26, ptr %27, align 4, !dbg !4462
  br label %if.end44, !dbg !4463

if.end44:                                         ; preds = %if.then43, %for.end
  %28 = load i64, ptr %start.addr, align 8, !dbg !4464
  %shr45 = lshr i64 %28, 12, !dbg !4466
  store i64 %shr45, ptr %pfn, align 8, !dbg !4467
  br label %for.cond46, !dbg !4468

for.cond46:                                       ; preds = %for.inc52, %if.end44
  %29 = load i64, ptr %pfn, align 8, !dbg !4469
  %30 = load i64, ptr %end.addr, align 8, !dbg !4471
  %shr47 = lshr i64 %30, 12, !dbg !4472
  %cmp48 = icmp ult i64 %29, %shr47, !dbg !4473
  br i1 %cmp48, label %for.body50, label %for.end54, !dbg !4474

for.body50:                                       ; preds = %for.cond46
  %31 = load i64, ptr @vmemmap_base, align 8, !dbg !4475
  %32 = inttoptr i64 %31 to ptr, !dbg !4475
  %33 = load i64, ptr %pfn, align 8, !dbg !4475
  %add.ptr51 = getelementptr %struct.page, ptr %32, i64 %33, !dbg !4475
  store ptr %add.ptr51, ptr %page, align 8, !dbg !4477
  %34 = load ptr, ptr %page, align 8, !dbg !4478
  %35 = load i32, ptr %req_type.addr, align 4, !dbg !4479
  call void @set_page_memtype(ptr noundef %34, i32 noundef %35) #19, !dbg !4480
  br label %for.inc52, !dbg !4481

for.inc52:                                        ; preds = %for.body50
  %36 = load i64, ptr %pfn, align 8, !dbg !4482
  %inc53 = add i64 %36, 1, !dbg !4482
  store i64 %inc53, ptr %pfn, align 8, !dbg !4482
  br label %for.cond46, !dbg !4483, !llvm.loop !4484

for.end54:                                        ; preds = %for.cond46
  store i32 0, ptr %retval, align 4, !dbg !4486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !4486

cleanup55:                                        ; preds = %for.end54, %cleanup, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #21, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #21, !dbg !4487
  %37 = load i32, ptr %retval, align 4, !dbg !4487
  ret i32 %37, !dbg !4487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4488 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4492, metadata !DIExpression()), !dbg !4494
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4493, metadata !DIExpression()), !dbg !4495
  %0 = load i64, ptr %size.addr, align 8, !dbg !4496
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4497
  %or = or i32 %1, 256, !dbg !4498
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !4499
  ret ptr %call, !dbg !4500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !4501 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4508
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4508
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !4508
  ret void, !dbg !4509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4510 dso_local i32 @memtype_check_insert(ptr noundef, ptr noundef) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4513 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4517 dso_local void @kfree(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !4520 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4524
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4524
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !4524
  ret void, !dbg !4525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_free(i64 noundef %start, i64 noundef %end) #1 align 16 !dbg !4526 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %is_range_ram = alloca i32, align 4
  %entry_old = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4530, metadata !DIExpression()), !dbg !4534
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4531, metadata !DIExpression()), !dbg !4535
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_range_ram) #21, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %is_range_ram, metadata !4532, metadata !DIExpression()), !dbg !4537
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_old) #21, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %entry_old, metadata !4533, metadata !DIExpression()), !dbg !4539
  %call = call zeroext i1 @pat_enabled() #19, !dbg !4540
  br i1 %call, label %if.end, label %if.then, !dbg !4542

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %start.addr, align 8, !dbg !4544
  %call1 = call i64 @sanitize_phys(i64 noundef %0) #19, !dbg !4545
  store i64 %call1, ptr %start.addr, align 8, !dbg !4546
  %1 = load i64, ptr %end.addr, align 8, !dbg !4547
  %call2 = call i64 @sanitize_phys(i64 noundef %1) #19, !dbg !4548
  store i64 %call2, ptr %end.addr, align 8, !dbg !4549
  %2 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 5), align 8, !dbg !4550
  %3 = load i64, ptr %start.addr, align 8, !dbg !4552
  %4 = load i64, ptr %end.addr, align 8, !dbg !4553
  %call3 = call zeroext i1 %2(i64 noundef %3, i64 noundef %4) #19, !dbg !4554
  br i1 %call3, label %if.then4, label %if.end5, !dbg !4555

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4556

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %start.addr, align 8, !dbg !4557
  %6 = load i64, ptr %end.addr, align 8, !dbg !4558
  %call6 = call i32 @pat_pagerange_is_ram(i64 noundef %5, i64 noundef %6) #19, !dbg !4559
  store i32 %call6, ptr %is_range_ram, align 4, !dbg !4560
  %7 = load i32, ptr %is_range_ram, align 4, !dbg !4561
  %cmp = icmp eq i32 %7, 1, !dbg !4563
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4564

if.then7:                                         ; preds = %if.end5
  %8 = load i64, ptr %start.addr, align 8, !dbg !4565
  %9 = load i64, ptr %end.addr, align 8, !dbg !4566
  %call8 = call i32 @free_ram_pages_type(i64 noundef %8, i64 noundef %9) #19, !dbg !4567
  store i32 %call8, ptr %retval, align 4, !dbg !4568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4568

if.end9:                                          ; preds = %if.end5
  %10 = load i32, ptr %is_range_ram, align 4, !dbg !4569
  %cmp10 = icmp slt i32 %10, 0, !dbg !4571
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4572

if.then11:                                        ; preds = %if.end9
  store i32 -22, ptr %retval, align 4, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

if.end12:                                         ; preds = %if.end9
  call void @spin_lock(ptr noundef @memtype_lock) #19, !dbg !4574
  %11 = load i64, ptr %start.addr, align 8, !dbg !4575
  %12 = load i64, ptr %end.addr, align 8, !dbg !4576
  %call13 = call ptr @memtype_erase(i64 noundef %11, i64 noundef %12) #19, !dbg !4577
  store ptr %call13, ptr %entry_old, align 8, !dbg !4578
  call void @spin_unlock(ptr noundef @memtype_lock) #19, !dbg !4579
  %13 = load ptr, ptr %entry_old, align 8, !dbg !4580
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %13) #19, !dbg !4582
  br i1 %call14, label %if.then15, label %if.end19, !dbg !4583

if.then15:                                        ; preds = %if.end12
  br label %do.body, !dbg !4584

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !4587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4587

do.end:                                           ; preds = %do.cond
  %call16 = call ptr @get_current() #19, !dbg !4584
  %comm = getelementptr inbounds %struct.task_struct, ptr %call16, i32 0, i32 96, !dbg !4584
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !4584
  %call17 = call ptr @get_current() #19, !dbg !4584
  %pid = getelementptr inbounds %struct.task_struct, ptr %call17, i32 0, i32 62, !dbg !4584
  %14 = load i32, ptr %pid, align 8, !dbg !4584
  %15 = load i64, ptr %start.addr, align 8, !dbg !4584
  %16 = load i64, ptr %end.addr, align 8, !dbg !4584
  %sub = sub i64 %16, 1, !dbg !4584
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %arraydecay, i32 noundef %14, i64 noundef %15, i64 noundef %sub) #18, !dbg !4584
  store i32 %call18, ptr %tmp, align 4, !dbg !4587
  %17 = load i32, ptr %tmp, align 4, !dbg !4584
  store i32 -22, ptr %retval, align 4, !dbg !4589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4589

if.end19:                                         ; preds = %if.end12
  %18 = load ptr, ptr %entry_old, align 8, !dbg !4590
  call void @kfree(ptr noundef %18) #19, !dbg !4591
  br label %do.body20, !dbg !4592

do.body20:                                        ; preds = %if.end19
  %19 = load i32, ptr @pat_debug_enable, align 4, !dbg !4593
  %tobool = icmp ne i32 %19, 0, !dbg !4593
  br i1 %tobool, label %if.then21, label %if.end28, !dbg !4596

if.then21:                                        ; preds = %do.body20
  br label %do.body22, !dbg !4597

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !4599

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4599

do.end24:                                         ; preds = %do.cond23
  %20 = load i64, ptr %start.addr, align 8, !dbg !4597
  %21 = load i64, ptr %end.addr, align 8, !dbg !4597
  %sub26 = sub i64 %21, 1, !dbg !4597
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i64 noundef %20, i64 noundef %sub26) #18, !dbg !4597
  store i32 %call27, ptr %tmp25, align 4, !dbg !4599
  %22 = load i32, ptr %tmp25, align 4, !dbg !4597
  br label %if.end28, !dbg !4593

if.end28:                                         ; preds = %do.end24, %do.body20
  br label %do.cond29, !dbg !4596

do.cond29:                                        ; preds = %if.end28
  br label %do.end30, !dbg !4596

do.end30:                                         ; preds = %do.cond29
  store i32 0, ptr %retval, align 4, !dbg !4601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4601

cleanup:                                          ; preds = %do.end30, %do.end, %if.then11, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_old) #21, !dbg !4602
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_range_ram) #21, !dbg !4602
  %23 = load i32, ptr %retval, align 4, !dbg !4602
  ret i32 %23, !dbg !4602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @free_ram_pages_type(i64 noundef %start, i64 noundef %end) #1 align 16 !dbg !4603 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %page = alloca ptr, align 8
  %pfn = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4605, metadata !DIExpression()), !dbg !4609
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4606, metadata !DIExpression()), !dbg !4610
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #21, !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4607, metadata !DIExpression()), !dbg !4612
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #21, !dbg !4613
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !4608, metadata !DIExpression()), !dbg !4614
  %0 = load i64, ptr %start.addr, align 8, !dbg !4615
  %shr = lshr i64 %0, 12, !dbg !4617
  store i64 %shr, ptr %pfn, align 8, !dbg !4618
  br label %for.cond, !dbg !4619

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %pfn, align 8, !dbg !4620
  %2 = load i64, ptr %end.addr, align 8, !dbg !4622
  %shr1 = lshr i64 %2, 12, !dbg !4623
  %cmp = icmp ult i64 %1, %shr1, !dbg !4624
  br i1 %cmp, label %for.body, label %for.end, !dbg !4625

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr @vmemmap_base, align 8, !dbg !4626
  %4 = inttoptr i64 %3 to ptr, !dbg !4626
  %5 = load i64, ptr %pfn, align 8, !dbg !4626
  %add.ptr = getelementptr %struct.page, ptr %4, i64 %5, !dbg !4626
  store ptr %add.ptr, ptr %page, align 8, !dbg !4628
  %6 = load ptr, ptr %page, align 8, !dbg !4629
  call void @set_page_memtype(ptr noundef %6, i32 noundef 0) #19, !dbg !4630
  br label %for.inc, !dbg !4631

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %pfn, align 8, !dbg !4632
  %inc = add i64 %7, 1, !dbg !4632
  store i64 %inc, ptr %pfn, align 8, !dbg !4632
  br label %for.cond, !dbg !4633, !llvm.loop !4634

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #21, !dbg !4636
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #21, !dbg !4636
  ret i32 0, !dbg !4637
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4638 dso_local ptr @memtype_erase(i64 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !4641 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4648
  %1 = ptrtoint ptr %0 to i64, !dbg !4648
  %2 = inttoptr i64 %1 to ptr, !dbg !4648
  %3 = ptrtoint ptr %2 to i64, !dbg !4648
  %cmp = icmp uge i64 %3, -4095, !dbg !4648
  %lnot = xor i1 %cmp, true, !dbg !4648
  %lnot1 = xor i1 %lnot, true, !dbg !4648
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4648
  %conv = sext i32 %lnot.ext to i64, !dbg !4648
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4648
  %tobool = icmp ne i64 %expval, 0, !dbg !4648
  ret i1 %tobool, !dbg !4649
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !4650 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #21, !dbg !4661
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4655, metadata !DIExpression()), !dbg !4661
  br label %do.body, !dbg !4661

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !4662
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4657, metadata !DIExpression()), !dbg !4662
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4662
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !4661
  br label %do.cond, !dbg !4662

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4662

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #21, !dbg !4663
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4659, metadata !DIExpression()), !dbg !4663
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #23, !dbg !4663, !srcloc !4664
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4663
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4663
  %3 = inttoptr i64 %2 to ptr, !dbg !4663
  store ptr %3, ptr %tmp, align 8, !dbg !4663
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #21, !dbg !4661
  %4 = load ptr, ptr %tmp, align 8, !dbg !4663
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4661
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4661
  store ptr %5, ptr %tmp1, align 8, !dbg !4661
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #21, !dbg !4665
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4661
  ret ptr %6, !dbg !4666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pat_pfn_immune_to_uc_mtrr(i64 noundef %pfn) #1 align 16 !dbg !4667 {
entry:
  %pfn.addr = alloca i64, align 8
  %cm = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.lifetime.start.p0(i64 4, ptr %cm) #21, !dbg !4674
  call void @llvm.dbg.declare(metadata ptr %cm, metadata !4672, metadata !DIExpression()), !dbg !4675
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !4676
  %shl = shl i64 %0, 12, !dbg !4676
  %call = call i32 @lookup_memtype(i64 noundef %shl) #19, !dbg !4677
  store i32 %call, ptr %cm, align 4, !dbg !4675
  %1 = load i32, ptr %cm, align 4, !dbg !4678
  %cmp = icmp eq i32 %1, 3, !dbg !4679
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4680

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %cm, align 4, !dbg !4681
  %cmp1 = icmp eq i32 %2, 2, !dbg !4682
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !4683

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %cm, align 4, !dbg !4684
  %cmp2 = icmp eq i32 %3, 1, !dbg !4685
  br label %lor.end, !dbg !4683

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %cm) #21, !dbg !4686
  ret i1 %4, !dbg !4687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lookup_memtype(i64 noundef %paddr) #1 align 16 !dbg !4688 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %rettype = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %page = alloca ptr, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !4692, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 4, ptr %rettype) #21, !dbg !4699
  call void @llvm.dbg.declare(metadata ptr %rettype, metadata !4693, metadata !DIExpression()), !dbg !4700
  store i32 0, ptr %rettype, align 4, !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #21, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4694, metadata !DIExpression()), !dbg !4702
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 5), align 8, !dbg !4703
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !4705
  %2 = load i64, ptr %paddr.addr, align 8, !dbg !4706
  %add = add i64 %2, 4096, !dbg !4707
  %call = call zeroext i1 %0(i64 noundef %1, i64 noundef %add) #19, !dbg !4708
  br i1 %call, label %if.then, label %if.end, !dbg !4709

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rettype, align 4, !dbg !4710
  store i32 %3, ptr %retval, align 4, !dbg !4711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4711

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %paddr.addr, align 8, !dbg !4712
  %5 = load i64, ptr %paddr.addr, align 8, !dbg !4713
  %add2 = add i64 %5, 4096, !dbg !4714
  %call3 = call i32 @pat_pagerange_is_ram(i64 noundef %4, i64 noundef %add2) #19, !dbg !4715
  %tobool = icmp ne i32 %call3, 0, !dbg !4715
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !4716

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #21, !dbg !4717
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4695, metadata !DIExpression()), !dbg !4718
  %6 = load i64, ptr @vmemmap_base, align 8, !dbg !4719
  %7 = inttoptr i64 %6 to ptr, !dbg !4719
  %8 = load i64, ptr %paddr.addr, align 8, !dbg !4719
  %shr = lshr i64 %8, 12, !dbg !4719
  %add.ptr = getelementptr %struct.page, ptr %7, i64 %shr, !dbg !4719
  store ptr %add.ptr, ptr %page, align 8, !dbg !4720
  %9 = load ptr, ptr %page, align 8, !dbg !4721
  %call5 = call i32 @get_page_memtype(ptr noundef %9) #19, !dbg !4722
  store i32 %call5, ptr %retval, align 4, !dbg !4723
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #21, !dbg !4724
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @spin_lock(ptr noundef @memtype_lock) #19, !dbg !4725
  %10 = load i64, ptr %paddr.addr, align 8, !dbg !4726
  %call7 = call ptr @memtype_lookup(i64 noundef %10) #19, !dbg !4727
  store ptr %call7, ptr %entry1, align 8, !dbg !4728
  %11 = load ptr, ptr %entry1, align 8, !dbg !4729
  %cmp = icmp ne ptr %11, null, !dbg !4731
  br i1 %cmp, label %if.then8, label %if.else, !dbg !4732

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %entry1, align 8, !dbg !4733
  %type = getelementptr inbounds %struct.memtype, ptr %12, i32 0, i32 3, !dbg !4734
  %13 = load i32, ptr %type, align 8, !dbg !4734
  store i32 %13, ptr %rettype, align 4, !dbg !4735
  br label %if.end9, !dbg !4736

if.else:                                          ; preds = %if.end6
  store i32 2, ptr %rettype, align 4, !dbg !4737
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  call void @spin_unlock(ptr noundef @memtype_lock) #19, !dbg !4738
  %14 = load i32, ptr %rettype, align 4, !dbg !4739
  store i32 %14, ptr %retval, align 4, !dbg !4740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4740

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #21, !dbg !4741
  call void @llvm.lifetime.end.p0(i64 4, ptr %rettype) #21, !dbg !4741
  %15 = load i32, ptr %retval, align 4, !dbg !4741
  ret i32 %15, !dbg !4741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_reserve_io(i64 noundef %start, i64 noundef %end, ptr noundef %type) #1 align 16 !dbg !4742 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %req_type = alloca i32, align 4
  %new_type = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4746, metadata !DIExpression()), !dbg !4760
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4747, metadata !DIExpression()), !dbg !4761
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4748, metadata !DIExpression()), !dbg !4762
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4749, metadata !DIExpression()), !dbg !4764
  %0 = load i64, ptr %end.addr, align 8, !dbg !4765
  %1 = load i64, ptr %start.addr, align 8, !dbg !4766
  %sub = sub i64 %0, %1, !dbg !4767
  store i64 %sub, ptr %size, align 8, !dbg !4764
  call void @llvm.lifetime.start.p0(i64 4, ptr %req_type) #21, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %req_type, metadata !4750, metadata !DIExpression()), !dbg !4769
  %2 = load ptr, ptr %type.addr, align 8, !dbg !4770
  %3 = load i32, ptr %2, align 4, !dbg !4771
  store i32 %3, ptr %req_type, align 4, !dbg !4769
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_type) #21, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %new_type, metadata !4751, metadata !DIExpression()), !dbg !4773
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !4774
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4752, metadata !DIExpression()), !dbg !4775
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4753, metadata !DIExpression()), !dbg !4776
  %4 = load i64, ptr %start.addr, align 8, !dbg !4776
  %5 = load i64, ptr %size, align 8, !dbg !4776
  %call = call i32 @iomem_map_sanity_check(i64 noundef %4, i64 noundef %5) #19, !dbg !4776
  %tobool = icmp ne i32 %call, 0, !dbg !4776
  %lnot = xor i1 %tobool, true, !dbg !4776
  %lnot1 = xor i1 %lnot, true, !dbg !4776
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4776
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4776
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4777
  %tobool2 = icmp ne i32 %6, 0, !dbg !4777
  %lnot3 = xor i1 %tobool2, true, !dbg !4777
  %lnot5 = xor i1 %lnot3, true, !dbg !4777
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4777
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4777
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4777
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4777
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4776

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4777

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4755, metadata !DIExpression()), !dbg !4778
  store i32 2307, ptr %__flags, align 4, !dbg !4778
  br label %do.body8, !dbg !4778

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4779

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4779

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4778

do.body9:                                         ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !4781
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 737, i32 %7, i64 12) #21, !dbg !4781, !srcloc !4783
  br label %do.cond10, !dbg !4781

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4781

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4778

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4784

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4784

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !4777
  br label %do.cond15, !dbg !4778

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4778

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4778

if.end:                                           ; preds = %do.end16, %entry
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4776
  %tobool17 = icmp ne i32 %8, 0, !dbg !4776
  %lnot18 = xor i1 %tobool17, true, !dbg !4776
  %lnot20 = xor i1 %lnot18, true, !dbg !4776
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4776
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4776
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4776
  store i64 %expval23, ptr %tmp, align 8, !dbg !4777
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4786
  %9 = load i64, ptr %tmp, align 8, !dbg !4776
  %10 = load i64, ptr %start.addr, align 8, !dbg !4787
  %11 = load i64, ptr %end.addr, align 8, !dbg !4788
  %12 = load i32, ptr %req_type, align 4, !dbg !4789
  %call24 = call i32 @memtype_reserve(i64 noundef %10, i64 noundef %11, i32 noundef %12, ptr noundef %new_type) #19, !dbg !4790
  store i32 %call24, ptr %ret, align 4, !dbg !4791
  %13 = load i32, ptr %ret, align 4, !dbg !4792
  %tobool25 = icmp ne i32 %13, 0, !dbg !4792
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4794

if.then26:                                        ; preds = %if.end
  br label %out_err, !dbg !4795

if.end27:                                         ; preds = %if.end
  %14 = load i64, ptr %start.addr, align 8, !dbg !4796
  %15 = load i64, ptr %size, align 8, !dbg !4798
  %16 = load i32, ptr %req_type, align 4, !dbg !4799
  %17 = load i32, ptr %new_type, align 4, !dbg !4800
  %call28 = call i32 @is_new_memtype_allowed(i64 noundef %14, i64 noundef %15, i32 noundef %16, i32 noundef %17) #19, !dbg !4801
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4801
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !4802

if.then30:                                        ; preds = %if.end27
  br label %out_free, !dbg !4803

if.end31:                                         ; preds = %if.end27
  %18 = load i64, ptr %start.addr, align 8, !dbg !4804
  %19 = load i64, ptr %size, align 8, !dbg !4806
  %20 = load i32, ptr %new_type, align 4, !dbg !4807
  %call32 = call i32 @memtype_kernel_map_sync(i64 noundef %18, i64 noundef %19, i32 noundef %20) #19, !dbg !4808
  %cmp = icmp slt i32 %call32, 0, !dbg !4809
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !4810

if.then34:                                        ; preds = %if.end31
  br label %out_free, !dbg !4811

if.end35:                                         ; preds = %if.end31
  %21 = load i32, ptr %new_type, align 4, !dbg !4812
  %22 = load ptr, ptr %type.addr, align 8, !dbg !4813
  store i32 %21, ptr %22, align 4, !dbg !4814
  store i32 0, ptr %retval, align 4, !dbg !4815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4815

out_free:                                         ; preds = %if.then34, %if.then30
  call void @llvm.dbg.label(metadata !4758), !dbg !4816
  %23 = load i64, ptr %start.addr, align 8, !dbg !4817
  %24 = load i64, ptr %end.addr, align 8, !dbg !4818
  %call36 = call i32 @memtype_free(i64 noundef %23, i64 noundef %24) #19, !dbg !4819
  store i32 -16, ptr %ret, align 4, !dbg !4820
  br label %out_err, !dbg !4821

out_err:                                          ; preds = %out_free, %if.then26
  call void @llvm.dbg.label(metadata !4759), !dbg !4822
  %25 = load i32, ptr %ret, align 4, !dbg !4823
  store i32 %25, ptr %retval, align 4, !dbg !4824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4824

cleanup:                                          ; preds = %out_err, %if.end35
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_type) #21, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 4, ptr %req_type) #21, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !4825
  %26 = load i32, ptr %retval, align 4, !dbg !4825
  ret i32 %26, !dbg !4825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4826 dso_local i32 @iomem_map_sanity_check(i64 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_new_memtype_allowed(i64 noundef %paddr, i64 noundef %size, i32 noundef %pcm, i32 noundef %new_pcm) #4 align 16 !dbg !4830 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm.addr = alloca i32, align 4
  %new_pcm.addr = alloca i32, align 4
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !4835, metadata !DIExpression()), !dbg !4839
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4836, metadata !DIExpression()), !dbg !4840
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !4837, metadata !DIExpression()), !dbg !4841
  store i32 %new_pcm, ptr %new_pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_pcm.addr, metadata !4838, metadata !DIExpression()), !dbg !4842
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 5), align 8, !dbg !4843
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !4845
  %2 = load i64, ptr %paddr.addr, align 8, !dbg !4846
  %3 = load i64, ptr %size.addr, align 8, !dbg !4847
  %add = add i64 %2, %3, !dbg !4848
  %call = call zeroext i1 %0(i64 noundef %1, i64 noundef %add) #19, !dbg !4849
  br i1 %call, label %if.then, label %if.end, !dbg !4850

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4851
  br label %return, !dbg !4851

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %pcm.addr, align 4, !dbg !4852
  %cmp = icmp eq i32 %4, 2, !dbg !4854
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4855

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %new_pcm.addr, align 4, !dbg !4856
  %cmp1 = icmp eq i32 %5, 0, !dbg !4857
  br i1 %cmp1, label %if.then13, label %lor.lhs.false, !dbg !4858

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %pcm.addr, align 4, !dbg !4859
  %cmp2 = icmp eq i32 %6, 1, !dbg !4860
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5, !dbg !4861

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %new_pcm.addr, align 4, !dbg !4862
  %cmp4 = icmp eq i32 %7, 0, !dbg !4863
  br i1 %cmp4, label %if.then13, label %lor.lhs.false5, !dbg !4864

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %8 = load i32, ptr %pcm.addr, align 4, !dbg !4865
  %cmp6 = icmp eq i32 %8, 4, !dbg !4866
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false9, !dbg !4867

land.lhs.true7:                                   ; preds = %lor.lhs.false5
  %9 = load i32, ptr %new_pcm.addr, align 4, !dbg !4868
  %cmp8 = icmp eq i32 %9, 0, !dbg !4869
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !4870

lor.lhs.false9:                                   ; preds = %land.lhs.true7, %lor.lhs.false5
  %10 = load i32, ptr %pcm.addr, align 4, !dbg !4871
  %cmp10 = icmp eq i32 %10, 4, !dbg !4872
  br i1 %cmp10, label %land.lhs.true11, label %if.end14, !dbg !4873

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %11 = load i32, ptr %new_pcm.addr, align 4, !dbg !4874
  %cmp12 = icmp eq i32 %11, 1, !dbg !4875
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4876

if.then13:                                        ; preds = %land.lhs.true11, %land.lhs.true7, %land.lhs.true3, %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4877
  br label %return, !dbg !4877

if.end14:                                         ; preds = %land.lhs.true11, %lor.lhs.false9
  store i32 1, ptr %retval, align 4, !dbg !4879
  br label %return, !dbg !4879

return:                                           ; preds = %if.end14, %if.then13, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !4880
  ret i32 %12, !dbg !4880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memtype_kernel_map_sync(i64 noundef %base, i64 noundef %size, i32 noundef %pcm) #1 align 16 !dbg !4881 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm.addr = alloca i32, align 4
  %id_sz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4885, metadata !DIExpression()), !dbg !4889
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4886, metadata !DIExpression()), !dbg !4890
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !4887, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 8, ptr %id_sz) #21, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %id_sz, metadata !4888, metadata !DIExpression()), !dbg !4893
  %0 = load i64, ptr %base.addr, align 8, !dbg !4894
  %1 = load ptr, ptr @high_memory, align 8, !dbg !4896
  %add.ptr = getelementptr i8, ptr %1, i64 -1, !dbg !4896
  %2 = ptrtoint ptr %add.ptr to i64, !dbg !4896
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #19, !dbg !4896
  %cmp = icmp ugt i64 %0, %call, !dbg !4897
  br i1 %cmp, label %if.then, label %if.end, !dbg !4898

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %base.addr, align 8, !dbg !4900
  %shr = lshr i64 %3, 12, !dbg !4902
  %call1 = call i32 @page_is_ram(i64 noundef %shr) #19, !dbg !4903
  %tobool = icmp ne i32 %call1, 0, !dbg !4903
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4904

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4905

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr @high_memory, align 8, !dbg !4906
  %add.ptr4 = getelementptr i8, ptr %4, i64 -1, !dbg !4906
  %5 = ptrtoint ptr %add.ptr4 to i64, !dbg !4906
  %call5 = call i64 @__phys_addr_nodebug(i64 noundef %5) #19, !dbg !4906
  %6 = load i64, ptr %base.addr, align 8, !dbg !4907
  %7 = load i64, ptr %size.addr, align 8, !dbg !4908
  %add = add i64 %6, %7, !dbg !4909
  %cmp6 = icmp ule i64 %call5, %add, !dbg !4910
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !4911

cond.true:                                        ; preds = %if.end3
  %8 = load ptr, ptr @high_memory, align 8, !dbg !4912
  %9 = ptrtoint ptr %8 to i64, !dbg !4912
  %call7 = call i64 @__phys_addr_nodebug(i64 noundef %9) #19, !dbg !4912
  %10 = load i64, ptr %base.addr, align 8, !dbg !4913
  %sub = sub i64 %call7, %10, !dbg !4914
  br label %cond.end, !dbg !4911

cond.false:                                       ; preds = %if.end3
  %11 = load i64, ptr %size.addr, align 8, !dbg !4915
  br label %cond.end, !dbg !4911

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %11, %cond.false ], !dbg !4911
  store i64 %cond, ptr %id_sz, align 8, !dbg !4916
  %12 = load i64, ptr %base.addr, align 8, !dbg !4917
  %13 = load i64, ptr @page_offset_base, align 8, !dbg !4917
  %add8 = add i64 %12, %13, !dbg !4917
  %14 = inttoptr i64 %add8 to ptr, !dbg !4917
  %15 = ptrtoint ptr %14 to i64, !dbg !4919
  %16 = load i64, ptr %id_sz, align 8, !dbg !4920
  %17 = load i32, ptr %pcm.addr, align 4, !dbg !4921
  %call9 = call i32 @ioremap_change_attr(i64 noundef %15, i64 noundef %16, i32 noundef %17) #19, !dbg !4922
  %cmp10 = icmp slt i32 %call9, 0, !dbg !4923
  br i1 %cmp10, label %if.then11, label %if.end18, !dbg !4924

if.then11:                                        ; preds = %cond.end
  br label %do.body, !dbg !4925

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !4928

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4928

do.end:                                           ; preds = %do.cond
  %call12 = call ptr @get_current() #19, !dbg !4925
  %comm = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 96, !dbg !4925
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !4925
  %call13 = call ptr @get_current() #19, !dbg !4925
  %pid = getelementptr inbounds %struct.task_struct, ptr %call13, i32 0, i32 62, !dbg !4925
  %18 = load i32, ptr %pid, align 8, !dbg !4925
  %19 = load i32, ptr %pcm.addr, align 4, !dbg !4925
  %call14 = call ptr @cattr_name(i32 noundef %19) #19, !dbg !4925
  %20 = load i64, ptr %base.addr, align 8, !dbg !4925
  %21 = load i64, ptr %base.addr, align 8, !dbg !4925
  %22 = load i64, ptr %size.addr, align 8, !dbg !4925
  %add15 = add i64 %21, %22, !dbg !4925
  %sub16 = sub i64 %add15, 1, !dbg !4925
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %arraydecay, i32 noundef %18, ptr noundef %call14, i64 noundef %20, i64 noundef %sub16) #18, !dbg !4925
  store i32 %call17, ptr %tmp, align 4, !dbg !4928
  %23 = load i32, ptr %tmp, align 4, !dbg !4925
  store i32 -22, ptr %retval, align 4, !dbg !4930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4930

if.end18:                                         ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !4931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4931

cleanup:                                          ; preds = %if.end18, %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %id_sz) #21, !dbg !4932
  %24 = load i32, ptr %retval, align 4, !dbg !4932
  ret i32 %24, !dbg !4932
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @memtype_free_io(i64 noundef %start, i64 noundef %end) #1 align 16 !dbg !4933 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4937, metadata !DIExpression()), !dbg !4939
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4938, metadata !DIExpression()), !dbg !4940
  %0 = load i64, ptr %start.addr, align 8, !dbg !4941
  %1 = load i64, ptr %end.addr, align 8, !dbg !4942
  %call = call i32 @memtype_free(i64 noundef %0, i64 noundef %1) #19, !dbg !4943
  ret void, !dbg !4944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_io_reserve_memtype_wc(i64 noundef %start, i64 noundef %size) #1 align 16 !dbg !4945 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4947, metadata !DIExpression()), !dbg !4950
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4948, metadata !DIExpression()), !dbg !4951
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #21, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4949, metadata !DIExpression()), !dbg !4953
  store i32 1, ptr %type, align 4, !dbg !4953
  %0 = load i64, ptr %start.addr, align 8, !dbg !4954
  %1 = load i64, ptr %start.addr, align 8, !dbg !4955
  %2 = load i64, ptr %size.addr, align 8, !dbg !4956
  %add = add i64 %1, %2, !dbg !4957
  %call = call i32 @memtype_reserve_io(i64 noundef %0, i64 noundef %add, ptr noundef %type) #19, !dbg !4958
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #21, !dbg !4959
  ret i32 %call, !dbg !4960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_io_free_memtype_wc(i64 noundef %start, i64 noundef %size) #1 align 16 !dbg !4961 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4963, metadata !DIExpression()), !dbg !4965
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4964, metadata !DIExpression()), !dbg !4966
  %0 = load i64, ptr %start.addr, align 8, !dbg !4967
  %1 = load i64, ptr %start.addr, align 8, !dbg !4968
  %2 = load i64, ptr %size.addr, align 8, !dbg !4969
  %add = add i64 %1, %2, !dbg !4970
  call void @memtype_free_io(i64 noundef %0, i64 noundef %add) #19, !dbg !4971
  ret void, !dbg !4972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @phys_mem_access_prot(ptr noundef %file, i64 noundef %pfn, i64 noundef %size, i64 %vma_prot.coerce) #1 align 16 !dbg !4973 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %vma_prot = alloca %struct.pgprot, align 8
  %file.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %vma_prot, i32 0, i32 0
  store i64 %vma_prot.coerce, ptr %coerce.dive, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4977, metadata !DIExpression()), !dbg !4981
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !4978, metadata !DIExpression()), !dbg !4982
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4979, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata ptr %vma_prot, metadata !4980, metadata !DIExpression()), !dbg !4984
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !4985
  %shl = shl i64 %0, 12, !dbg !4987
  %1 = load i64, ptr %size.addr, align 8, !dbg !4988
  %call = call zeroext i1 @phys_mem_access_encrypted(i64 noundef %shl, i64 noundef %1) #19, !dbg !4989
  br i1 %call, label %if.end, label %if.then, !dbg !4990

if.then:                                          ; preds = %entry
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !4991
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %vma_prot, i32 0, i32 0, !dbg !4991
  %2 = load i64, ptr %pgprot1, align 8, !dbg !4991
  %call2 = call i64 @cc_mkdec(i64 noundef %2) #19, !dbg !4991
  store i64 %call2, ptr %pgprot, align 8, !dbg !4991
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vma_prot, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !4991
  br label %if.end, !dbg !4992

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %vma_prot, i64 8, i1 false), !dbg !4993
  %coerce.dive3 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !4994
  %3 = load i64, ptr %coerce.dive3, align 8, !dbg !4994
  ret i64 %3, !dbg !4994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @phys_mem_access_encrypted(i64 noundef %phys_addr, i64 noundef %size) #4 align 16 !dbg !4995 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5000, metadata !DIExpression()), !dbg !5002
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5001, metadata !DIExpression()), !dbg !5003
  ret i1 true, !dbg !5004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkdec(i64 noundef %val) #4 align 16 !dbg !5005 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load i64, ptr %val.addr, align 8, !dbg !5010
  ret i64 %0, !dbg !5011
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @phys_mem_access_prot_allowed(ptr noundef %file, i64 noundef %pfn, i64 noundef %size, ptr noundef %vma_prot) #1 align 16 !dbg !5012 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %vma_prot.addr = alloca ptr, align 8
  %pcm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5017, metadata !DIExpression()), !dbg !5022
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5018, metadata !DIExpression()), !dbg !5023
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5019, metadata !DIExpression()), !dbg !5024
  store ptr %vma_prot, ptr %vma_prot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma_prot.addr, metadata !5020, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #21, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5021, metadata !DIExpression()), !dbg !5027
  store i32 0, ptr %pcm, align 4, !dbg !5027
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !5028
  %1 = load i64, ptr %size.addr, align 8, !dbg !5030
  %call = call i32 @range_is_allowed(i64 noundef %0, i64 noundef %1) #19, !dbg !5031
  %tobool = icmp ne i32 %call, 0, !dbg !5031
  br i1 %tobool, label %if.end, label %if.then, !dbg !5032

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5033

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5034
  %f_flags = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 6, !dbg !5036
  %3 = load i32, ptr %f_flags, align 8, !dbg !5036
  %and = and i32 %3, 4096, !dbg !5037
  %tobool1 = icmp ne i32 %and, 0, !dbg !5037
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5038

if.then2:                                         ; preds = %if.end
  store i32 2, ptr %pcm, align 4, !dbg !5039
  br label %if.end3, !dbg !5040

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5041
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5042
  %5 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5042
  %pgprot4 = getelementptr inbounds %struct.pgprot, ptr %5, i32 0, i32 0, !dbg !5042
  %6 = load i64, ptr %pgprot4, align 8, !dbg !5042
  %and5 = and i64 %6, -153, !dbg !5042
  %7 = load i32, ptr %pcm, align 4, !dbg !5042
  %call6 = call i64 @cachemode2protval(i32 noundef %7) #19, !dbg !5042
  %or = or i64 %and5, %call6, !dbg !5042
  store i64 %or, ptr %pgprot, align 8, !dbg !5042
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5042
  store i32 1, ptr %retval, align 4, !dbg !5043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #21, !dbg !5044
  %8 = load i32, ptr %retval, align 4, !dbg !5044
  ret i32 %8, !dbg !5044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @range_is_allowed(i64 noundef %pfn, i64 noundef %size) #4 align 16 !dbg !5045 {
entry:
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  ret i32 1, !dbg !5053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5054 dso_local i64 @cachemode2protval(i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #2 align 16 !dbg !5057 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5062, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #21, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5063, metadata !DIExpression()), !dbg !5066
  %0 = load i64, ptr %x.addr, align 8, !dbg !5067
  %sub = sub i64 %0, -2147483648, !dbg !5068
  store i64 %sub, ptr %y, align 8, !dbg !5066
  %1 = load i64, ptr %y, align 8, !dbg !5069
  %2 = load i64, ptr %x.addr, align 8, !dbg !5070
  %3 = load i64, ptr %y, align 8, !dbg !5071
  %cmp = icmp ugt i64 %2, %3, !dbg !5072
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5073

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5074
  br label %cond.end, !dbg !5073

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5075
  %sub1 = sub i64 -2147483648, %5, !dbg !5076
  br label %cond.end, !dbg !5073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5073
  %add = add i64 %1, %cond, !dbg !5077
  store i64 %add, ptr %x.addr, align 8, !dbg !5078
  %6 = load i64, ptr %x.addr, align 8, !dbg !5079
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #21, !dbg !5080
  ret i64 %6, !dbg !5081
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5082 dso_local i32 @page_is_ram(i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5085 dso_local i32 @ioremap_change_attr(i64 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @track_pfn_copy(ptr noundef %vma) #1 align 16 !dbg !5088 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %paddr = alloca i64, align 8
  %vma_size = alloca i64, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5090, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #21, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !5091, metadata !DIExpression()), !dbg !5096
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma_size) #21, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %vma_size, metadata !5092, metadata !DIExpression()), !dbg !5098
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5099
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !5100
  %vm_end = getelementptr inbounds %struct.anon.20, ptr %1, i32 0, i32 1, !dbg !5100
  %2 = load i64, ptr %vm_end, align 8, !dbg !5100
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5101
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !5102
  %vm_start = getelementptr inbounds %struct.anon.20, ptr %4, i32 0, i32 0, !dbg !5102
  %5 = load i64, ptr %vm_start, align 8, !dbg !5102
  %sub = sub i64 %2, %5, !dbg !5103
  store i64 %sub, ptr %vma_size, align 8, !dbg !5098
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgprot) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !5093, metadata !DIExpression()), !dbg !5105
  %6 = load ptr, ptr %vma.addr, align 8, !dbg !5106
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 3, !dbg !5108
  %8 = load i64, ptr %7, align 8, !dbg !5108
  %and = and i64 %8, 16777216, !dbg !5109
  %tobool = icmp ne i64 %and, 0, !dbg !5109
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5110

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !5111
  %call = call i32 @get_pat_info(ptr noundef %9, ptr noundef %paddr, ptr noundef %pgprot) #19, !dbg !5114
  %tobool1 = icmp ne i32 %call, 0, !dbg !5114
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5115

if.then2:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5116

if.end:                                           ; preds = %if.then
  %10 = load i64, ptr %paddr, align 8, !dbg !5117
  %11 = load i64, ptr %vma_size, align 8, !dbg !5118
  %call3 = call i32 @reserve_pfn_range(i64 noundef %10, i64 noundef %11, ptr noundef %pgprot, i32 noundef 1) #19, !dbg !5119
  store i32 %call3, ptr %retval, align 4, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end4:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5121

cleanup:                                          ; preds = %if.end4, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgprot) #21, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma_size) #21, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #21, !dbg !5122
  %12 = load i32, ptr %retval, align 4, !dbg !5122
  ret i32 %12, !dbg !5122
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_pat_info(ptr noundef %vma, ptr noundef %paddr, ptr noundef %pgprot) #1 align 16 !dbg !5123 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %paddr.addr = alloca ptr, align 8
  %pgprot.addr = alloca ptr, align 8
  %prot = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5128, metadata !DIExpression()), !dbg !5137
  store ptr %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !5129, metadata !DIExpression()), !dbg !5138
  store ptr %pgprot, ptr %pgprot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot.addr, metadata !5130, metadata !DIExpression()), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #21, !dbg !5140
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !5131, metadata !DIExpression()), !dbg !5141
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5142
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5144
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 0, !dbg !5145
  %vm_start = getelementptr inbounds %struct.anon.20, ptr %2, i32 0, i32 0, !dbg !5145
  %3 = load i64, ptr %vm_start, align 8, !dbg !5145
  %4 = load ptr, ptr %paddr.addr, align 8, !dbg !5146
  %call = call i32 @follow_phys(ptr noundef %0, i64 noundef %3, i32 noundef 0, ptr noundef %prot, ptr noundef %4) #19, !dbg !5147
  %tobool = icmp ne i32 %call, 0, !dbg !5147
  br i1 %tobool, label %if.end4, label %if.then, !dbg !5148

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pgprot.addr, align 8, !dbg !5149
  %tobool1 = icmp ne ptr %5, null, !dbg !5149
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5152

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pgprot.addr, align 8, !dbg !5153
  %pgprot3 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5154
  %7 = load i64, ptr %prot, align 8, !dbg !5154
  store i64 %7, ptr %pgprot3, align 8, !dbg !5154
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5154
  br label %if.end, !dbg !5155

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5156

if.end4:                                          ; preds = %entry
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !5157
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 3, !dbg !5159
  %10 = load i64, ptr %9, align 8, !dbg !5159
  %call5 = call zeroext i1 @is_cow_mapping(i64 noundef %10) #19, !dbg !5160
  br i1 %call5, label %if.then6, label %if.end10, !dbg !5161

if.then6:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pgprot.addr, align 8, !dbg !5162
  %tobool7 = icmp ne ptr %11, null, !dbg !5162
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5165

if.then8:                                         ; preds = %if.then6
  store i32 -22, ptr %retval, align 4, !dbg !5166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5166

if.end9:                                          ; preds = %if.then6
  %12 = load ptr, ptr %vma.addr, align 8, !dbg !5167
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 11, !dbg !5168
  %13 = load i64, ptr %vm_pgoff, align 8, !dbg !5168
  %shl = shl i64 %13, 12, !dbg !5169
  %14 = load ptr, ptr %paddr.addr, align 8, !dbg !5170
  store i64 %shl, ptr %14, align 8, !dbg !5171
  store i32 0, ptr %retval, align 4, !dbg !5172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5172

if.end10:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !5173
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5132, metadata !DIExpression()), !dbg !5173
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5173
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !5174
  %tobool11 = icmp ne i32 %15, 0, !dbg !5174
  %lnot = xor i1 %tobool11, true, !dbg !5174
  %lnot12 = xor i1 %lnot, true, !dbg !5174
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !5174
  %conv = sext i32 %lnot.ext to i64, !dbg !5174
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5174
  %tobool13 = icmp ne i64 %expval, 0, !dbg !5174
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !5173

if.then14:                                        ; preds = %if.end10
  br label %do.body, !dbg !5174

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !5175
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5134, metadata !DIExpression()), !dbg !5175
  store i32 2307, ptr %__flags, align 4, !dbg !5175
  br label %do.body15, !dbg !5175

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !5176

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !5176

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !5175

do.body16:                                        ; preds = %do.end
  %16 = load i32, ptr %__flags, align 4, !dbg !5178
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 981, i32 %16, i64 12) #21, !dbg !5178, !srcloc !5180
  br label %do.cond17, !dbg !5178

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5178

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5175

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !5181

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5181

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !5174
  br label %do.cond22, !dbg !5175

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5175

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !5175

if.end24:                                         ; preds = %do.end23, %if.end10
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !5173
  %tobool25 = icmp ne i32 %17, 0, !dbg !5173
  %lnot26 = xor i1 %tobool25, true, !dbg !5173
  %lnot28 = xor i1 %lnot26, true, !dbg !5173
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5173
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5173
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5173
  store i64 %expval31, ptr %tmp, align 8, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !5183
  %18 = load i64, ptr %tmp, align 8, !dbg !5173
  store i32 -22, ptr %retval, align 4, !dbg !5184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5184

cleanup:                                          ; preds = %if.end24, %if.end9, %if.then8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #21, !dbg !5185
  %19 = load i32, ptr %retval, align 4, !dbg !5185
  ret i32 %19, !dbg !5185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reserve_pfn_range(i64 noundef %paddr, i64 noundef %size, ptr noundef %vma_prot, i32 noundef %strict_prot) #1 align 16 !dbg !5186 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %vma_prot.addr = alloca ptr, align 8
  %strict_prot.addr = alloca i32, align 4
  %is_ram = alloca i32, align 4
  %ret = alloca i32, align 4
  %want_pcm = alloca i32, align 4
  %pcm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  %tmp32 = alloca i32, align 4
  %.compoundliteral44 = alloca %struct.pgprot, align 8
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !5190, metadata !DIExpression()), !dbg !5198
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5191, metadata !DIExpression()), !dbg !5199
  store ptr %vma_prot, ptr %vma_prot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma_prot.addr, metadata !5192, metadata !DIExpression()), !dbg !5200
  store i32 %strict_prot, ptr %strict_prot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %strict_prot.addr, metadata !5193, metadata !DIExpression()), !dbg !5201
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_ram) #21, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %is_ram, metadata !5194, metadata !DIExpression()), !dbg !5203
  store i32 0, ptr %is_ram, align 4, !dbg !5203
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !5204
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5195, metadata !DIExpression()), !dbg !5205
  call void @llvm.lifetime.start.p0(i64 4, ptr %want_pcm) #21, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %want_pcm, metadata !5196, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5208
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %0, i32 0, i32 0, !dbg !5209
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !5209
  %call = call i32 @pgprot2cachemode(i64 %1) #19, !dbg !5209
  store i32 %call, ptr %want_pcm, align 4, !dbg !5207
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #21, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5197, metadata !DIExpression()), !dbg !5211
  %2 = load i32, ptr %want_pcm, align 4, !dbg !5212
  store i32 %2, ptr %pcm, align 4, !dbg !5211
  %3 = load i64, ptr %paddr.addr, align 8, !dbg !5213
  %4 = load i64, ptr %paddr.addr, align 8, !dbg !5214
  %5 = load i64, ptr %size.addr, align 8, !dbg !5215
  %add = add i64 %4, %5, !dbg !5216
  %call1 = call i32 @pat_pagerange_is_ram(i64 noundef %3, i64 noundef %add) #19, !dbg !5217
  store i32 %call1, ptr %is_ram, align 4, !dbg !5218
  %6 = load i32, ptr %is_ram, align 4, !dbg !5219
  %tobool = icmp ne i32 %6, 0, !dbg !5219
  br i1 %tobool, label %if.then, label %if.end15, !dbg !5221

if.then:                                          ; preds = %entry
  %call2 = call zeroext i1 @pat_enabled() #19, !dbg !5222
  br i1 %call2, label %if.end, label %if.then3, !dbg !5225

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5226

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %paddr.addr, align 8, !dbg !5227
  %call4 = call i32 @lookup_memtype(i64 noundef %7) #19, !dbg !5228
  store i32 %call4, ptr %pcm, align 4, !dbg !5229
  %8 = load i32, ptr %want_pcm, align 4, !dbg !5230
  %9 = load i32, ptr %pcm, align 4, !dbg !5232
  %cmp = icmp ne i32 %8, %9, !dbg !5233
  br i1 %cmp, label %if.then5, label %if.end14, !dbg !5234

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !5235

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !5238

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5238

do.end:                                           ; preds = %do.cond
  %call6 = call ptr @get_current() #19, !dbg !5235
  %comm = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 96, !dbg !5235
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !5235
  %call7 = call ptr @get_current() #19, !dbg !5235
  %pid = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 62, !dbg !5235
  %10 = load i32, ptr %pid, align 8, !dbg !5235
  %11 = load i32, ptr %want_pcm, align 4, !dbg !5235
  %call8 = call ptr @cattr_name(i32 noundef %11) #19, !dbg !5235
  %12 = load i64, ptr %paddr.addr, align 8, !dbg !5235
  %13 = load i64, ptr %paddr.addr, align 8, !dbg !5235
  %14 = load i64, ptr %size.addr, align 8, !dbg !5235
  %add9 = add i64 %13, %14, !dbg !5235
  %sub = sub i64 %add9, 1, !dbg !5235
  %15 = load i32, ptr %pcm, align 4, !dbg !5235
  %call10 = call ptr @cattr_name(i32 noundef %15) #19, !dbg !5235
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.29, ptr noundef %arraydecay, i32 noundef %10, ptr noundef %call8, i64 noundef %12, i64 noundef %sub, ptr noundef %call10) #18, !dbg !5235
  store i32 %call11, ptr %tmp, align 4, !dbg !5238
  %16 = load i32, ptr %tmp, align 4, !dbg !5235
  %17 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5240
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5241
  %18 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5241
  %pgprot12 = getelementptr inbounds %struct.pgprot, ptr %18, i32 0, i32 0, !dbg !5241
  %19 = load i64, ptr %pgprot12, align 8, !dbg !5241
  %and = and i64 %19, -153, !dbg !5241
  %20 = load i32, ptr %pcm, align 4, !dbg !5241
  %call13 = call i64 @cachemode2protval(i32 noundef %20) #19, !dbg !5241
  %or = or i64 %and, %call13, !dbg !5241
  store i64 %or, ptr %pgprot, align 8, !dbg !5241
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5241
  br label %if.end14, !dbg !5242

if.end14:                                         ; preds = %do.end, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5243

if.end15:                                         ; preds = %entry
  %21 = load i64, ptr %paddr.addr, align 8, !dbg !5244
  %22 = load i64, ptr %paddr.addr, align 8, !dbg !5245
  %23 = load i64, ptr %size.addr, align 8, !dbg !5246
  %add16 = add i64 %22, %23, !dbg !5247
  %24 = load i32, ptr %want_pcm, align 4, !dbg !5248
  %call17 = call i32 @memtype_reserve(i64 noundef %21, i64 noundef %add16, i32 noundef %24, ptr noundef %pcm) #19, !dbg !5249
  store i32 %call17, ptr %ret, align 4, !dbg !5250
  %25 = load i32, ptr %ret, align 4, !dbg !5251
  %tobool18 = icmp ne i32 %25, 0, !dbg !5251
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5253

if.then19:                                        ; preds = %if.end15
  %26 = load i32, ptr %ret, align 4, !dbg !5254
  store i32 %26, ptr %retval, align 4, !dbg !5255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5255

if.end20:                                         ; preds = %if.end15
  %27 = load i32, ptr %pcm, align 4, !dbg !5256
  %28 = load i32, ptr %want_pcm, align 4, !dbg !5258
  %cmp21 = icmp ne i32 %27, %28, !dbg !5259
  br i1 %cmp21, label %if.then22, label %if.end50, !dbg !5260

if.then22:                                        ; preds = %if.end20
  %29 = load i32, ptr %strict_prot.addr, align 4, !dbg !5261
  %tobool23 = icmp ne i32 %29, 0, !dbg !5261
  br i1 %tobool23, label %if.then26, label %lor.lhs.false, !dbg !5264

lor.lhs.false:                                    ; preds = %if.then22
  %30 = load i64, ptr %paddr.addr, align 8, !dbg !5265
  %31 = load i64, ptr %size.addr, align 8, !dbg !5266
  %32 = load i32, ptr %want_pcm, align 4, !dbg !5267
  %33 = load i32, ptr %pcm, align 4, !dbg !5268
  %call24 = call i32 @is_new_memtype_allowed(i64 noundef %30, i64 noundef %31, i32 noundef %32, i32 noundef %33) #19, !dbg !5269
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5269
  br i1 %tobool25, label %if.end43, label %if.then26, !dbg !5270

if.then26:                                        ; preds = %lor.lhs.false, %if.then22
  %34 = load i64, ptr %paddr.addr, align 8, !dbg !5271
  %35 = load i64, ptr %paddr.addr, align 8, !dbg !5273
  %36 = load i64, ptr %size.addr, align 8, !dbg !5274
  %add27 = add i64 %35, %36, !dbg !5275
  %call28 = call i32 @memtype_free(i64 noundef %34, i64 noundef %add27) #19, !dbg !5276
  br label %do.body29, !dbg !5277

do.body29:                                        ; preds = %if.then26
  br label %do.cond30, !dbg !5279

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5279

do.end31:                                         ; preds = %do.cond30
  %call33 = call ptr @get_current() #19, !dbg !5277
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %call33, i32 0, i32 96, !dbg !5277
  %arraydecay35 = getelementptr inbounds [16 x i8], ptr %comm34, i64 0, i64 0, !dbg !5277
  %call36 = call ptr @get_current() #19, !dbg !5277
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %call36, i32 0, i32 62, !dbg !5277
  %37 = load i32, ptr %pid37, align 8, !dbg !5277
  %38 = load i32, ptr %want_pcm, align 4, !dbg !5277
  %call38 = call ptr @cattr_name(i32 noundef %38) #19, !dbg !5277
  %39 = load i64, ptr %paddr.addr, align 8, !dbg !5277
  %40 = load i64, ptr %paddr.addr, align 8, !dbg !5277
  %41 = load i64, ptr %size.addr, align 8, !dbg !5277
  %add39 = add i64 %40, %41, !dbg !5277
  %sub40 = sub i64 %add39, 1, !dbg !5277
  %42 = load i32, ptr %pcm, align 4, !dbg !5277
  %call41 = call ptr @cattr_name(i32 noundef %42) #19, !dbg !5277
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, ptr noundef %arraydecay35, i32 noundef %37, ptr noundef %call38, i64 noundef %39, i64 noundef %sub40, ptr noundef %call41) #18, !dbg !5277
  store i32 %call42, ptr %tmp32, align 4, !dbg !5279
  %43 = load i32, ptr %tmp32, align 4, !dbg !5277
  store i32 -22, ptr %retval, align 4, !dbg !5281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5281

if.end43:                                         ; preds = %lor.lhs.false
  %44 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5282
  %pgprot45 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral44, i32 0, i32 0, !dbg !5283
  %45 = load ptr, ptr %vma_prot.addr, align 8, !dbg !5283
  %pgprot46 = getelementptr inbounds %struct.pgprot, ptr %45, i32 0, i32 0, !dbg !5283
  %46 = load i64, ptr %pgprot46, align 8, !dbg !5283
  %and47 = and i64 %46, -153, !dbg !5283
  %47 = load i32, ptr %pcm, align 4, !dbg !5283
  %call48 = call i64 @cachemode2protval(i32 noundef %47) #19, !dbg !5283
  %or49 = or i64 %and47, %call48, !dbg !5283
  store i64 %or49, ptr %pgprot45, align 8, !dbg !5283
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %.compoundliteral44, i64 8, i1 false), !dbg !5283
  br label %if.end50, !dbg !5284

if.end50:                                         ; preds = %if.end43, %if.end20
  %48 = load i64, ptr %paddr.addr, align 8, !dbg !5285
  %49 = load i64, ptr %size.addr, align 8, !dbg !5287
  %50 = load i32, ptr %pcm, align 4, !dbg !5288
  %call51 = call i32 @memtype_kernel_map_sync(i64 noundef %48, i64 noundef %49, i32 noundef %50) #19, !dbg !5289
  %cmp52 = icmp slt i32 %call51, 0, !dbg !5290
  br i1 %cmp52, label %if.then53, label %if.end56, !dbg !5291

if.then53:                                        ; preds = %if.end50
  %51 = load i64, ptr %paddr.addr, align 8, !dbg !5292
  %52 = load i64, ptr %paddr.addr, align 8, !dbg !5294
  %53 = load i64, ptr %size.addr, align 8, !dbg !5295
  %add54 = add i64 %52, %53, !dbg !5296
  %call55 = call i32 @memtype_free(i64 noundef %51, i64 noundef %add54) #19, !dbg !5297
  store i32 -22, ptr %retval, align 4, !dbg !5298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5298

if.end56:                                         ; preds = %if.end50
  store i32 0, ptr %retval, align 4, !dbg !5299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5299

cleanup:                                          ; preds = %if.end56, %if.then53, %do.end31, %if.then19, %if.end14, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #21, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 4, ptr %want_pcm) #21, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_ram) #21, !dbg !5300
  %54 = load i32, ptr %retval, align 4, !dbg !5300
  ret i32 %54, !dbg !5300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @track_pfn_remap(ptr noundef %vma, ptr noundef %prot, i64 noundef %pfn, i64 noundef %addr, i64 noundef %size) #1 align 16 !dbg !5301 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %prot.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %paddr = alloca i64, align 8
  %pcm = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5305, metadata !DIExpression()), !dbg !5315
  store ptr %prot, ptr %prot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !5306, metadata !DIExpression()), !dbg !5316
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5307, metadata !DIExpression()), !dbg !5317
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5308, metadata !DIExpression()), !dbg !5318
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5309, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #21, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !5310, metadata !DIExpression()), !dbg !5321
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !5322
  %shl = shl i64 %0, 12, !dbg !5323
  store i64 %shl, ptr %paddr, align 8, !dbg !5321
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #21, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5311, metadata !DIExpression()), !dbg !5325
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5326
  %tobool = icmp ne ptr %1, null, !dbg !5326
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5327

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5328
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !5329
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !5330
  %vm_start = getelementptr inbounds %struct.anon.20, ptr %4, i32 0, i32 0, !dbg !5330
  %5 = load i64, ptr %vm_start, align 8, !dbg !5330
  %cmp = icmp eq i64 %2, %5, !dbg !5331
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !5332

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i64, ptr %size.addr, align 8, !dbg !5333
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !5334
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 0, !dbg !5335
  %vm_end = getelementptr inbounds %struct.anon.20, ptr %8, i32 0, i32 1, !dbg !5335
  %9 = load i64, ptr %vm_end, align 8, !dbg !5335
  %10 = load ptr, ptr %vma.addr, align 8, !dbg !5336
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 0, !dbg !5337
  %vm_start1 = getelementptr inbounds %struct.anon.20, ptr %11, i32 0, i32 0, !dbg !5337
  %12 = load i64, ptr %vm_start1, align 8, !dbg !5337
  %sub = sub i64 %9, %12, !dbg !5338
  %cmp2 = icmp eq i64 %6, %sub, !dbg !5339
  br i1 %cmp2, label %if.then, label %if.end7, !dbg !5340

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5312, metadata !DIExpression()), !dbg !5342
  %13 = load i64, ptr %paddr, align 8, !dbg !5343
  %14 = load i64, ptr %size.addr, align 8, !dbg !5344
  %15 = load ptr, ptr %prot.addr, align 8, !dbg !5345
  %call = call i32 @reserve_pfn_range(i64 noundef %13, i64 noundef %14, ptr noundef %15, i32 noundef 0) #19, !dbg !5346
  store i32 %call, ptr %ret, align 4, !dbg !5347
  %16 = load i32, ptr %ret, align 4, !dbg !5348
  %cmp3 = icmp eq i32 %16, 0, !dbg !5350
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !5351

land.lhs.true4:                                   ; preds = %if.then
  %17 = load ptr, ptr %vma.addr, align 8, !dbg !5352
  %tobool5 = icmp ne ptr %17, null, !dbg !5352
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5353

if.then6:                                         ; preds = %land.lhs.true4
  %18 = load ptr, ptr %vma.addr, align 8, !dbg !5354
  call void @vm_flags_set(ptr noundef %18, i64 noundef 16777216) #19, !dbg !5355
  br label %if.end, !dbg !5355

if.end:                                           ; preds = %if.then6, %land.lhs.true4, %if.then
  %19 = load i32, ptr %ret, align 4, !dbg !5356
  store i32 %19, ptr %retval, align 4, !dbg !5357
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !5358
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %call8 = call zeroext i1 @pat_enabled() #19, !dbg !5359
  br i1 %call8, label %if.end10, label %if.then9, !dbg !5361

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5362

if.end10:                                         ; preds = %if.end7
  %20 = load i64, ptr %paddr, align 8, !dbg !5363
  %call11 = call i32 @lookup_memtype(i64 noundef %20) #19, !dbg !5364
  store i32 %call11, ptr %pcm, align 4, !dbg !5365
  br label %while.cond, !dbg !5366

while.cond:                                       ; preds = %if.end17, %if.end10
  %21 = load i64, ptr %size.addr, align 8, !dbg !5367
  %cmp12 = icmp ugt i64 %21, 4096, !dbg !5368
  br i1 %cmp12, label %while.body, label %while.end, !dbg !5366

while.body:                                       ; preds = %while.cond
  %22 = load i64, ptr %size.addr, align 8, !dbg !5369
  %sub13 = sub i64 %22, 4096, !dbg !5369
  store i64 %sub13, ptr %size.addr, align 8, !dbg !5369
  %23 = load i64, ptr %paddr, align 8, !dbg !5371
  %add = add i64 %23, 4096, !dbg !5371
  store i64 %add, ptr %paddr, align 8, !dbg !5371
  %24 = load i32, ptr %pcm, align 4, !dbg !5372
  %25 = load i64, ptr %paddr, align 8, !dbg !5374
  %call14 = call i32 @lookup_memtype(i64 noundef %25) #19, !dbg !5375
  %cmp15 = icmp ne i32 %24, %call14, !dbg !5376
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5377

if.then16:                                        ; preds = %while.body
  store i32 -22, ptr %retval, align 4, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

if.end17:                                         ; preds = %while.body
  br label %while.cond, !dbg !5366, !llvm.loop !5379

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %prot.addr, align 8, !dbg !5381
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5382
  %27 = load ptr, ptr %prot.addr, align 8, !dbg !5382
  %pgprot18 = getelementptr inbounds %struct.pgprot, ptr %27, i32 0, i32 0, !dbg !5382
  %28 = load i64, ptr %pgprot18, align 8, !dbg !5382
  %and = and i64 %28, -153, !dbg !5382
  %29 = load i32, ptr %pcm, align 4, !dbg !5382
  %call19 = call i64 @cachemode2protval(i32 noundef %29) #19, !dbg !5382
  %or = or i64 %and, %call19, !dbg !5382
  store i64 %or, ptr %pgprot, align 8, !dbg !5382
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5382
  store i32 0, ptr %retval, align 4, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

cleanup:                                          ; preds = %while.end, %if.then16, %if.then9, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #21, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #21, !dbg !5384
  %30 = load i32, ptr %retval, align 4, !dbg !5384
  ret i32 %30, !dbg !5384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_set(ptr noundef %vma, i64 noundef %flags) #4 align 16 !dbg !5385 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5389, metadata !DIExpression()), !dbg !5391
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5390, metadata !DIExpression()), !dbg !5392
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5393
  call void @vma_start_write(ptr noundef %0) #19, !dbg !5394
  %1 = load i64, ptr %flags.addr, align 8, !dbg !5395
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !5396
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 3, !dbg !5396
  %4 = load i64, ptr %3, align 8, !dbg !5397
  %or = or i64 %4, %1, !dbg !5397
  store i64 %or, ptr %3, align 8, !dbg !5397
  ret void, !dbg !5398
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @track_pfn_insert(ptr noundef %vma, ptr noundef %prot, i64 %pfn.coerce) #1 align 16 !dbg !5399 {
entry:
  %pfn = alloca %struct.pfn_t, align 8
  %vma.addr = alloca ptr, align 8
  %prot.addr = alloca ptr, align 8
  %pcm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0
  store i64 %pfn.coerce, ptr %coerce.dive, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5408, metadata !DIExpression()), !dbg !5412
  store ptr %prot, ptr %prot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !5409, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !5410, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #21, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5411, metadata !DIExpression()), !dbg !5416
  %call = call zeroext i1 @pat_enabled() #19, !dbg !5417
  br i1 %call, label %if.end, label %if.then, !dbg !5419

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

if.end:                                           ; preds = %entry
  %coerce.dive1 = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0, !dbg !5421
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5421
  %call2 = call i64 @pfn_t_to_phys(i64 %0) #19, !dbg !5421
  %call3 = call i32 @lookup_memtype(i64 noundef %call2) #19, !dbg !5422
  store i32 %call3, ptr %pcm, align 4, !dbg !5423
  %1 = load ptr, ptr %prot.addr, align 8, !dbg !5424
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5425
  %2 = load ptr, ptr %prot.addr, align 8, !dbg !5425
  %pgprot4 = getelementptr inbounds %struct.pgprot, ptr %2, i32 0, i32 0, !dbg !5425
  %3 = load i64, ptr %pgprot4, align 8, !dbg !5425
  %and = and i64 %3, -153, !dbg !5425
  %4 = load i32, ptr %pcm, align 4, !dbg !5425
  %call5 = call i64 @cachemode2protval(i32 noundef %4) #19, !dbg !5425
  %or = or i64 %and, %call5, !dbg !5425
  store i64 %or, ptr %pgprot, align 8, !dbg !5425
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5425
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5426
  br label %cleanup, !dbg !5426

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #21, !dbg !5426
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5426

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_t_to_phys(i64 %pfn.coerce) #4 align 16 !dbg !5427 {
entry:
  %pfn = alloca %struct.pfn_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0
  store i64 %pfn.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !5432, metadata !DIExpression()), !dbg !5433
  %coerce.dive1 = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0, !dbg !5434
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !5434
  %call = call i64 @pfn_t_to_pfn(i64 %0) #19, !dbg !5434
  %shl = shl i64 %call, 12, !dbg !5434
  ret i64 %shl, !dbg !5435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @untrack_pfn(ptr noundef %vma, i64 noundef %pfn, i64 noundef %size, i1 noundef zeroext %mm_wr_locked) #1 align 16 !dbg !5436 {
entry:
  %vma.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mm_wr_locked.addr = alloca i8, align 1
  %paddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5440, metadata !DIExpression()), !dbg !5445
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5441, metadata !DIExpression()), !dbg !5446
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5442, metadata !DIExpression()), !dbg !5447
  %frombool = zext i1 %mm_wr_locked to i8
  store i8 %frombool, ptr %mm_wr_locked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mm_wr_locked.addr, metadata !5443, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #21, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !5444, metadata !DIExpression()), !dbg !5450
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5451
  %tobool = icmp ne ptr %0, null, !dbg !5451
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5453

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5454
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3, !dbg !5455
  %3 = load i64, ptr %2, align 8, !dbg !5455
  %and = and i64 %3, 16777216, !dbg !5456
  %tobool1 = icmp ne i64 %and, 0, !dbg !5456
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5457

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5458

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !5459
  %shl = shl i64 %4, 12, !dbg !5460
  store i64 %shl, ptr %paddr, align 8, !dbg !5461
  %5 = load i64, ptr %paddr, align 8, !dbg !5462
  %tobool2 = icmp ne i64 %5, 0, !dbg !5462
  br i1 %tobool2, label %if.end9, label %land.lhs.true3, !dbg !5464

land.lhs.true3:                                   ; preds = %if.end
  %6 = load i64, ptr %size.addr, align 8, !dbg !5465
  %tobool4 = icmp ne i64 %6, 0, !dbg !5465
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !5466

if.then5:                                         ; preds = %land.lhs.true3
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !5467
  %call = call i32 @get_pat_info(ptr noundef %7, ptr noundef %paddr, ptr noundef null) #19, !dbg !5470
  %tobool6 = icmp ne i32 %call, 0, !dbg !5470
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5471

if.then7:                                         ; preds = %if.then5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5472

if.end8:                                          ; preds = %if.then5
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !5473
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 0, !dbg !5474
  %vm_end = getelementptr inbounds %struct.anon.20, ptr %9, i32 0, i32 1, !dbg !5474
  %10 = load i64, ptr %vm_end, align 8, !dbg !5474
  %11 = load ptr, ptr %vma.addr, align 8, !dbg !5475
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 0, !dbg !5476
  %vm_start = getelementptr inbounds %struct.anon.20, ptr %12, i32 0, i32 0, !dbg !5476
  %13 = load i64, ptr %vm_start, align 8, !dbg !5476
  %sub = sub i64 %10, %13, !dbg !5477
  store i64 %sub, ptr %size.addr, align 8, !dbg !5478
  br label %if.end9, !dbg !5479

if.end9:                                          ; preds = %if.end8, %land.lhs.true3, %if.end
  %14 = load i64, ptr %paddr, align 8, !dbg !5480
  %15 = load i64, ptr %size.addr, align 8, !dbg !5481
  call void @free_pfn_range(i64 noundef %14, i64 noundef %15) #19, !dbg !5482
  %16 = load ptr, ptr %vma.addr, align 8, !dbg !5483
  %tobool10 = icmp ne ptr %16, null, !dbg !5483
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !5485

if.then11:                                        ; preds = %if.end9
  %17 = load i8, ptr %mm_wr_locked.addr, align 1, !dbg !5486, !range !3787, !noundef !443
  %tobool12 = trunc i8 %17 to i1, !dbg !5486
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5489

if.then13:                                        ; preds = %if.then11
  %18 = load ptr, ptr %vma.addr, align 8, !dbg !5490
  call void @vm_flags_clear(ptr noundef %18, i64 noundef 16777216) #19, !dbg !5491
  br label %if.end14, !dbg !5491

if.else:                                          ; preds = %if.then11
  %19 = load ptr, ptr %vma.addr, align 8, !dbg !5492
  call void @__vm_flags_mod(ptr noundef %19, i64 noundef 0, i64 noundef 16777216) #19, !dbg !5493
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  br label %if.end15, !dbg !5494

if.end15:                                         ; preds = %if.end14, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5495
  br label %cleanup, !dbg !5495

cleanup:                                          ; preds = %if.end15, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #21, !dbg !5495
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5495

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_pfn_range(i64 noundef %paddr, i64 noundef %size) #1 align 16 !dbg !5496 {
entry:
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %is_ram = alloca i32, align 4
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !5500, metadata !DIExpression()), !dbg !5503
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5501, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_ram) #21, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %is_ram, metadata !5502, metadata !DIExpression()), !dbg !5506
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !5507
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !5508
  %2 = load i64, ptr %size.addr, align 8, !dbg !5509
  %add = add i64 %1, %2, !dbg !5510
  %call = call i32 @pat_pagerange_is_ram(i64 noundef %0, i64 noundef %add) #19, !dbg !5511
  store i32 %call, ptr %is_ram, align 4, !dbg !5512
  %3 = load i32, ptr %is_ram, align 4, !dbg !5513
  %cmp = icmp eq i32 %3, 0, !dbg !5515
  br i1 %cmp, label %if.then, label %if.end, !dbg !5516

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %paddr.addr, align 8, !dbg !5517
  %5 = load i64, ptr %paddr.addr, align 8, !dbg !5518
  %6 = load i64, ptr %size.addr, align 8, !dbg !5519
  %add1 = add i64 %5, %6, !dbg !5520
  %call2 = call i32 @memtype_free(i64 noundef %4, i64 noundef %add1) #19, !dbg !5521
  br label %if.end, !dbg !5521

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_ram) #21, !dbg !5522
  ret void, !dbg !5522
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_clear(ptr noundef %vma, i64 noundef %flags) #4 align 16 !dbg !5523 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5525, metadata !DIExpression()), !dbg !5527
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5526, metadata !DIExpression()), !dbg !5528
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5529
  call void @vma_start_write(ptr noundef %0) #19, !dbg !5530
  %1 = load i64, ptr %flags.addr, align 8, !dbg !5531
  %not = xor i64 %1, -1, !dbg !5532
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !5533
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 3, !dbg !5533
  %4 = load i64, ptr %3, align 8, !dbg !5534
  %and = and i64 %4, %not, !dbg !5534
  store i64 %and, ptr %3, align 8, !dbg !5534
  ret void, !dbg !5535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__vm_flags_mod(ptr noundef %vma, i64 noundef %set, i64 noundef %clear) #4 align 16 !dbg !5536 {
entry:
  %vma.addr = alloca ptr, align 8
  %set.addr = alloca i64, align 8
  %clear.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5540, metadata !DIExpression()), !dbg !5543
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5541, metadata !DIExpression()), !dbg !5544
  store i64 %clear, ptr %clear.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !5542, metadata !DIExpression()), !dbg !5545
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5546
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5547
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3, !dbg !5548
  %3 = load i64, ptr %2, align 8, !dbg !5548
  %4 = load i64, ptr %set.addr, align 8, !dbg !5549
  %or = or i64 %3, %4, !dbg !5550
  %5 = load i64, ptr %clear.addr, align 8, !dbg !5551
  %not = xor i64 %5, -1, !dbg !5552
  %and = and i64 %or, %not, !dbg !5553
  call void @vm_flags_init(ptr noundef %0, i64 noundef %and) #19, !dbg !5554
  ret void, !dbg !5555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @untrack_pfn_clear(ptr noundef %vma) #1 align 16 !dbg !5556 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5560
  call void @vm_flags_clear(ptr noundef %0, i64 noundef 16777216) #19, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pgprot_writecombine(i64 %prot.coerce) #1 align 16 !dbg !5563 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %prot = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !5567, metadata !DIExpression()), !dbg !5568
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !5569
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5569
  %0 = load i64, ptr %pgprot1, align 8, !dbg !5569
  %call = call i64 @cachemode2protval(i32 noundef 1) #19, !dbg !5569
  %or = or i64 %0, %call, !dbg !5569
  store i64 %or, ptr %pgprot, align 8, !dbg !5569
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !5570
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5570
  ret i64 %1, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pgprot_writethrough(i64 %prot.coerce) #1 align 16 !dbg !5571 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %prot = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !5573, metadata !DIExpression()), !dbg !5574
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !5575
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5575
  %0 = load i64, ptr %pgprot1, align 8, !dbg !5575
  %call = call i64 @cachemode2protval(i32 noundef 4) #19, !dbg !5575
  %or = or i64 %0, %call, !dbg !5575
  store i64 %or, ptr %pgprot, align 8, !dbg !5575
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !5576
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !5576
  ret i64 %1, !dbg !5576
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_memtype__284_1213_pat_memtype_list_init7() #0 section ".init.text" align 16 !dbg !5577 {
entry:
  %call = call i32 @pat_memtype_list_init() #18, !dbg !5580
  ret i32 %call, !dbg !5580
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pat_memtype_list_init() #0 section ".init.text" align 16 !dbg !5581 {
entry:
  %call = call zeroext i1 @pat_enabled() #19, !dbg !5582
  br i1 %call, label %if.then, label %if.end, !dbg !5584

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @arch_debugfs_dir, align 8, !dbg !5585
  %call1 = call ptr @debugfs_create_file(ptr noundef @.str.31, i16 noundef zeroext 256, ptr noundef %0, ptr noundef null, ptr noundef @memtype_fops) #19, !dbg !5587
  br label %if.end, !dbg !5588

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5589
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !5590 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5594, metadata !DIExpression()), !dbg !5596
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5595, metadata !DIExpression()), !dbg !5597
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5598
  %and = and i64 %0, 63, !dbg !5599
  %shl = shl i64 1, %and, !dbg !5600
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5601
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5602
  %shr = ashr i64 %2, 6, !dbg !5603
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5601
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5601
  %and1 = and i64 %shl, %3, !dbg !5604
  %cmp = icmp ne i64 %and1, 0, !dbg !5605
  ret i1 %cmp, !dbg !5606
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !5607 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5609, metadata !DIExpression()), !dbg !5612
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5610, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5611, metadata !DIExpression()), !dbg !5615
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5616
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5617
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !5618, !srcloc !5619
  %3 = icmp ult i8 %2, 2, !dbg !5618
  call void @llvm.assume(i1 %3), !dbg !5618
  store i8 %2, ptr %oldbit, align 1, !dbg !5618
  %4 = load i8, ptr %oldbit, align 1, !dbg !5620, !range !3787, !noundef !443
  %tobool = trunc i8 %4 to i1, !dbg !5620
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !5621
  ret i1 %tobool, !dbg !5622
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !5623 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5627, metadata !DIExpression()), !dbg !5630
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5628, metadata !DIExpression()), !dbg !5631
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5629, metadata !DIExpression()), !dbg !5632
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5633
  %1 = load i32, ptr %low.addr, align 4, !dbg !5634
  %2 = load i32, ptr %high.addr, align 4, !dbg !5635
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #19, !dbg !5636
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #19, !dbg !5637
  br i1 %call, label %if.then, label %if.end, !dbg !5639

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !5640
  %4 = load i32, ptr %high.addr, align 4, !dbg !5641
  %conv = zext i32 %4 to i64, !dbg !5642
  %shl = shl i64 %conv, 32, !dbg !5643
  %5 = load i32, ptr %low.addr, align 4, !dbg !5644
  %conv1 = zext i32 %5 to i64, !dbg !5644
  %or = or i64 %shl, %conv1, !dbg !5645
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #19, !dbg !5646
  br label %if.end, !dbg !5646

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #2 align 16 !dbg !5648 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5650, metadata !DIExpression()), !dbg !5653
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5651, metadata !DIExpression()), !dbg !5654
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5652, metadata !DIExpression()), !dbg !5655
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5656
  %1 = load i32, ptr %low.addr, align 4, !dbg !5657
  %2 = load i32, ptr %high.addr, align 4, !dbg !5658
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #21, !dbg !5659, !srcloc !5660
  ret void, !dbg !5661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !5662 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5686
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #19, !dbg !5687
  ret i1 %call, !dbg !5688
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5689 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !5692 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5697, metadata !DIExpression()), !dbg !5700
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5698, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5702
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5703, !range !3787, !noundef !443
  %tobool = trunc i8 %1 to i1, !dbg !5703
  %conv = zext i1 %tobool to i32, !dbg !5703
  %or = or i32 2, %conv, !dbg !5704
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #21
          to label %asm.fallthrough [label %l_yes], !dbg !5705, !srcloc !5706

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5707
  br label %return, !dbg !5707

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5699), !dbg !5708
  store i1 true, ptr %retval, align 1, !dbg !5709
  br label %return, !dbg !5709

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5710
  ret i1 %2, !dbg !5710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #2 align 16 !dbg !5711 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5713, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #21, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5714, metadata !DIExpression()), !dbg !5717
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #21, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5715, metadata !DIExpression()), !dbg !5717
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5718
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #21, !dbg !5719, !srcloc !5720
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !5719
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !5719
  store i64 %asmresult, ptr %low, align 8, !dbg !5719
  store i64 %asmresult1, ptr %high, align 8, !dbg !5719
  %2 = load i64, ptr %low, align 8, !dbg !5721
  %3 = load i64, ptr %high, align 8, !dbg !5721
  %shl = shl i64 %3, 32, !dbg !5721
  %or = or i64 %2, %shl, !dbg !5721
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #21, !dbg !5722
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #21, !dbg !5722
  ret i64 %or, !dbg !5723
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5724 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pat_get_cache_mode(i32 noundef %pat_val, ptr noundef %msg) #0 section ".init.text" align 16 !dbg !5725 {
entry:
  %pat_val.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %cache = alloca i32, align 4
  %cache_mode = alloca ptr, align 8
  store i32 %pat_val, ptr %pat_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pat_val.addr, metadata !5729, metadata !DIExpression()), !dbg !5733
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !5730, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 4, ptr %cache) #21, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !5731, metadata !DIExpression()), !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache_mode) #21, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %cache_mode, metadata !5732, metadata !DIExpression()), !dbg !5738
  %0 = load i32, ptr %pat_val.addr, align 4, !dbg !5739
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
  ], !dbg !5740

sw.bb:                                            ; preds = %entry
  store i32 3, ptr %cache, align 4, !dbg !5741
  store ptr @.str.14, ptr %cache_mode, align 8, !dbg !5743
  br label %sw.epilog, !dbg !5744

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %cache, align 4, !dbg !5745
  store ptr @.str.15, ptr %cache_mode, align 8, !dbg !5746
  br label %sw.epilog, !dbg !5747

sw.bb2:                                           ; preds = %entry
  store i32 4, ptr %cache, align 4, !dbg !5748
  store ptr @.str.16, ptr %cache_mode, align 8, !dbg !5749
  br label %sw.epilog, !dbg !5750

sw.bb3:                                           ; preds = %entry
  store i32 5, ptr %cache, align 4, !dbg !5751
  store ptr @.str.17, ptr %cache_mode, align 8, !dbg !5752
  br label %sw.epilog, !dbg !5753

sw.bb4:                                           ; preds = %entry
  store i32 0, ptr %cache, align 4, !dbg !5754
  store ptr @.str.18, ptr %cache_mode, align 8, !dbg !5755
  br label %sw.epilog, !dbg !5756

sw.bb5:                                           ; preds = %entry
  store i32 2, ptr %cache, align 4, !dbg !5757
  store ptr @.str.19, ptr %cache_mode, align 8, !dbg !5758
  br label %sw.epilog, !dbg !5759

sw.default:                                       ; preds = %entry
  store i32 0, ptr %cache, align 4, !dbg !5760
  store ptr @.str.18, ptr %cache_mode, align 8, !dbg !5761
  br label %sw.epilog, !dbg !5762

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %msg.addr, align 8, !dbg !5763
  %2 = load ptr, ptr %cache_mode, align 8, !dbg !5764
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 4, i1 false), !dbg !5765
  %3 = load i32, ptr %cache, align 4, !dbg !5766
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache_mode) #21, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 4, ptr %cache) #21, !dbg !5767
  ret i32 %3, !dbg !5768
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5769 dso_local void @update_cache_mode_entry(i32 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5773 dso_local zeroext i8 @mtrr_type_lookup(i64 noundef, i64 noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5778 dso_local i32 @walk_system_ram_range(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pagerange_is_ram_callback(i64 noundef %initial_pfn, i64 noundef %total_nr_pages, ptr noundef %arg) #1 align 16 !dbg !5784 {
entry:
  %initial_pfn.addr = alloca i64, align 8
  %total_nr_pages.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store i64 %initial_pfn, ptr %initial_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %initial_pfn.addr, metadata !5786, metadata !DIExpression()), !dbg !5791
  store i64 %total_nr_pages, ptr %total_nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %total_nr_pages.addr, metadata !5787, metadata !DIExpression()), !dbg !5792
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5788, metadata !DIExpression()), !dbg !5793
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #21, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5789, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !5796
  store ptr %0, ptr %state, align 8, !dbg !5795
  %1 = load i64, ptr %initial_pfn.addr, align 8, !dbg !5797
  %2 = load ptr, ptr %state, align 8, !dbg !5798
  %cur_pfn = getelementptr inbounds %struct.pagerange_state, ptr %2, i32 0, i32 0, !dbg !5799
  %3 = load i64, ptr %cur_pfn, align 8, !dbg !5799
  %cmp = icmp ugt i64 %1, %3, !dbg !5800
  %conv = zext i1 %cmp to i32, !dbg !5800
  %4 = load ptr, ptr %state, align 8, !dbg !5801
  %not_ram = getelementptr inbounds %struct.pagerange_state, ptr %4, i32 0, i32 2, !dbg !5802
  %5 = load i32, ptr %not_ram, align 4, !dbg !5803
  %or = or i32 %5, %conv, !dbg !5803
  store i32 %or, ptr %not_ram, align 4, !dbg !5803
  %6 = load i64, ptr %total_nr_pages.addr, align 8, !dbg !5804
  %cmp1 = icmp ugt i64 %6, 0, !dbg !5805
  %conv2 = zext i1 %cmp1 to i32, !dbg !5805
  %7 = load ptr, ptr %state, align 8, !dbg !5806
  %ram = getelementptr inbounds %struct.pagerange_state, ptr %7, i32 0, i32 1, !dbg !5807
  %8 = load i32, ptr %ram, align 8, !dbg !5808
  %or3 = or i32 %8, %conv2, !dbg !5808
  store i32 %or3, ptr %ram, align 8, !dbg !5808
  %9 = load i64, ptr %initial_pfn.addr, align 8, !dbg !5809
  %10 = load i64, ptr %total_nr_pages.addr, align 8, !dbg !5810
  %add = add i64 %9, %10, !dbg !5811
  %11 = load ptr, ptr %state, align 8, !dbg !5812
  %cur_pfn4 = getelementptr inbounds %struct.pagerange_state, ptr %11, i32 0, i32 0, !dbg !5813
  store i64 %add, ptr %cur_pfn4, align 8, !dbg !5814
  %12 = load ptr, ptr %state, align 8, !dbg !5815
  %ram5 = getelementptr inbounds %struct.pagerange_state, ptr %12, i32 0, i32 1, !dbg !5816
  %13 = load i32, ptr %ram5, align 8, !dbg !5816
  %tobool = icmp ne i32 %13, 0, !dbg !5815
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5817

land.rhs:                                         ; preds = %entry
  %14 = load ptr, ptr %state, align 8, !dbg !5818
  %not_ram6 = getelementptr inbounds %struct.pagerange_state, ptr %14, i32 0, i32 2, !dbg !5819
  %15 = load i32, ptr %not_ram6, align 4, !dbg !5819
  %tobool7 = icmp ne i32 %15, 0, !dbg !5817
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %tobool7, %land.rhs ], !dbg !5820
  %land.ext = zext i1 %16 to i32, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #21, !dbg !5821
  ret i32 %land.ext, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_page_memtype(ptr noundef %pg) #4 align 16 !dbg !5823 {
entry:
  %retval = alloca i32, align 4
  %pg.addr = alloca ptr, align 8
  %pg_flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pg, ptr %pg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_flags) #21, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %pg_flags, metadata !5828, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %pg.addr, align 8, !dbg !5832
  %flags = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 0, !dbg !5833
  %1 = load i64, ptr %flags, align 16, !dbg !5833
  %and = and i64 %1, 4202496, !dbg !5834
  store i64 %and, ptr %pg_flags, align 8, !dbg !5831
  %2 = load i64, ptr %pg_flags, align 8, !dbg !5835
  %cmp = icmp eq i64 %2, 0, !dbg !5837
  br i1 %cmp, label %if.then, label %if.else, !dbg !5838

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %pg_flags, align 8, !dbg !5840
  %cmp1 = icmp eq i64 %3, 8192, !dbg !5842
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5843

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5844

if.else3:                                         ; preds = %if.else
  %4 = load i64, ptr %pg_flags, align 8, !dbg !5845
  %cmp4 = icmp eq i64 %4, 4194304, !dbg !5847
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !5848

if.then5:                                         ; preds = %if.else3
  store i32 2, ptr %retval, align 4, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

if.else6:                                         ; preds = %if.else3
  store i32 4, ptr %retval, align 4, !dbg !5850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5850

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_flags) #21, !dbg !5851
  %5 = load i32, ptr %retval, align 4, !dbg !5851
  ret i32 %5, !dbg !5851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_page_memtype(ptr noundef %pg, i32 noundef %memtype) #4 align 16 !dbg !5852 {
entry:
  %pg.addr = alloca ptr, align 8
  %memtype.addr = alloca i32, align 4
  %memtype_flags = alloca i64, align 8
  %old_flags = alloca i64, align 8
  %new_flags = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp10 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp15 = alloca i64, align 8
  store ptr %pg, ptr %pg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pg.addr, metadata !5856, metadata !DIExpression()), !dbg !5870
  store i32 %memtype, ptr %memtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memtype.addr, metadata !5857, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %memtype_flags) #21, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %memtype_flags, metadata !5858, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_flags) #21, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %old_flags, metadata !5859, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #21, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !5860, metadata !DIExpression()), !dbg !5877
  %0 = load i32, ptr %memtype.addr, align 4, !dbg !5878
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 0, label %sw.bb3
  ], !dbg !5879

sw.bb:                                            ; preds = %entry
  store i64 8192, ptr %memtype_flags, align 8, !dbg !5880
  br label %sw.epilog, !dbg !5882

sw.bb1:                                           ; preds = %entry
  store i64 4194304, ptr %memtype_flags, align 8, !dbg !5883
  br label %sw.epilog, !dbg !5884

sw.bb2:                                           ; preds = %entry
  store i64 4202496, ptr %memtype_flags, align 8, !dbg !5885
  br label %sw.epilog, !dbg !5886

sw.bb3:                                           ; preds = %entry
  br label %sw.default, !dbg !5887

sw.default:                                       ; preds = %entry, %sw.bb3
  store i64 0, ptr %memtype_flags, align 8, !dbg !5888
  br label %sw.epilog, !dbg !5889

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  br label %do.body, !dbg !5890

do.body:                                          ; preds = %sw.epilog
  br label %do.cond, !dbg !5892

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5892

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pg.addr, align 8, !dbg !5890
  %flags = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 0, !dbg !5890
  %2 = load volatile i64, ptr %flags, align 16, !dbg !5890
  store i64 %2, ptr %tmp, align 8, !dbg !5892
  %3 = load i64, ptr %tmp, align 8, !dbg !5890
  store i64 %3, ptr %old_flags, align 8, !dbg !5894
  br label %do.body4, !dbg !5895

do.body4:                                         ; preds = %if.end, %do.end
  %4 = load i64, ptr %old_flags, align 8, !dbg !5896
  %and = and i64 %4, -4202497, !dbg !5898
  %5 = load i64, ptr %memtype_flags, align 8, !dbg !5899
  %or = or i64 %and, %5, !dbg !5900
  store i64 %or, ptr %new_flags, align 8, !dbg !5901
  br label %do.cond5, !dbg !5902

do.cond5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #21, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5861, metadata !DIExpression()), !dbg !5903
  %6 = load ptr, ptr %pg.addr, align 8, !dbg !5903
  %flags6 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 0, !dbg !5903
  store ptr %flags6, ptr %__ai_ptr, align 8, !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #21, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !5863, metadata !DIExpression()), !dbg !5903
  store ptr %old_flags, ptr %__ai_oldp, align 8, !dbg !5903
  br label %do.body7, !dbg !5903

do.body7:                                         ; preds = %do.cond5
  br label %do.cond8, !dbg !5904

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5904

do.end9:                                          ; preds = %do.cond8
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !5903
  call void @instrument_atomic_read_write(ptr noundef %7, i64 noundef 8) #19, !dbg !5903
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !5903
  call void @instrument_read_write(ptr noundef %8, i64 noundef 8) #19, !dbg !5903
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #21, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5864, metadata !DIExpression()), !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #21, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5866, metadata !DIExpression()), !dbg !5906
  %9 = load ptr, ptr %__ai_oldp, align 8, !dbg !5906
  store ptr %9, ptr %_old, align 8, !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #21, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5867, metadata !DIExpression()), !dbg !5906
  %10 = load ptr, ptr %_old, align 8, !dbg !5906
  %11 = load i64, ptr %10, align 8, !dbg !5906
  store i64 %11, ptr %__old, align 8, !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #21, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5868, metadata !DIExpression()), !dbg !5906
  %12 = load i64, ptr %new_flags, align 8, !dbg !5906
  store i64 %12, ptr %__new, align 8, !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #21, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5869, metadata !DIExpression()), !dbg !5906
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !5906
  store ptr %13, ptr %__ptr, align 8, !dbg !5906
  %14 = load ptr, ptr %__ptr, align 8, !dbg !5906
  %15 = load i64, ptr %__old, align 8, !dbg !5906
  %16 = load i64, ptr %__new, align 8, !dbg !5906
  %17 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %14, i64 %16, ptr elementtype(i64) %14, i64 %15) #21, !dbg !5906, !srcloc !5907
  %asmresult = extractvalue { i8, i64 } %17, 0, !dbg !5906
  %asmresult11 = extractvalue { i8, i64 } %17, 1, !dbg !5906
  %18 = icmp ult i8 %asmresult, 2, !dbg !5906
  call void @llvm.assume(i1 %18), !dbg !5906
  store i8 %asmresult, ptr %success, align 1, !dbg !5906
  store i64 %asmresult11, ptr %__old, align 8, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #21, !dbg !5906
  %19 = load i8, ptr %success, align 1, !dbg !5908, !range !3787, !noundef !443
  %tobool = trunc i8 %19 to i1, !dbg !5908
  %lnot = xor i1 %tobool, true, !dbg !5908
  %lnot12 = xor i1 %lnot, true, !dbg !5908
  %lnot13 = xor i1 %lnot12, true, !dbg !5908
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !5908
  %conv = sext i32 %lnot.ext to i64, !dbg !5908
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5908
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5908
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5906

if.then:                                          ; preds = %do.end9
  %20 = load i64, ptr %__old, align 8, !dbg !5908
  %21 = load ptr, ptr %_old, align 8, !dbg !5908
  store i64 %20, ptr %21, align 8, !dbg !5908
  br label %if.end, !dbg !5908

if.end:                                           ; preds = %if.then, %do.end9
  %22 = load i8, ptr %success, align 1, !dbg !5906, !range !3787, !noundef !443
  %tobool16 = trunc i8 %22 to i1, !dbg !5906
  %lnot17 = xor i1 %tobool16, true, !dbg !5906
  %lnot19 = xor i1 %lnot17, true, !dbg !5906
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5906
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5906
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1), !dbg !5906
  store i64 %expval22, ptr %tmp15, align 8, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #21, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #21, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #21, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #21, !dbg !5903
  %23 = load i64, ptr %tmp15, align 8, !dbg !5906
  store i64 %23, ptr %tmp10, align 8, !dbg !5903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #21, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #21, !dbg !5910
  %24 = load i64, ptr %tmp10, align 8, !dbg !5903
  %tobool23 = icmp ne i64 %24, 0, !dbg !5911
  %lnot24 = xor i1 %tobool23, true, !dbg !5911
  br i1 %lnot24, label %do.body4, label %do.end26, !dbg !5902, !llvm.loop !5912

do.end26:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #21, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_flags) #21, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %memtype_flags) #21, !dbg !5914
  ret void, !dbg !5914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5915 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5923, metadata !DIExpression()), !dbg !5925
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5924, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5927
  %1 = load i64, ptr %size.addr, align 8, !dbg !5928
  %conv = trunc i64 %1 to i32, !dbg !5928
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !5929
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5930
  %3 = load i64, ptr %size.addr, align 8, !dbg !5930
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !5930
  ret void, !dbg !5931
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5932 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5934, metadata !DIExpression()), !dbg !5936
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5935, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5938
  %1 = load i64, ptr %size.addr, align 8, !dbg !5939
  %conv = trunc i64 %1 to i32, !dbg !5939
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !5940
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5941
  %3 = load i64, ptr %size.addr, align 8, !dbg !5941
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #19, !dbg !5941
  ret void, !dbg !5942
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5943 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5949, metadata !DIExpression()), !dbg !5951
  ret i1 true, !dbg !5952
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5953 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5958, metadata !DIExpression()), !dbg !5961
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5959, metadata !DIExpression()), !dbg !5962
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5960, metadata !DIExpression()), !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !5965 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5967, metadata !DIExpression()), !dbg !5972
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5968, metadata !DIExpression()), !dbg !5973
  %0 = load i64, ptr %size.addr, align 8, !dbg !5974
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5975
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5976

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5977
  %tobool = icmp ne i64 %2, 0, !dbg !5977
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5978

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !5979
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5969, metadata !DIExpression()), !dbg !5980
  %3 = load i64, ptr %size.addr, align 8, !dbg !5981
  %cmp = icmp ugt i64 %3, 8192, !dbg !5983
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5984

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5985
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5986
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !5987
  store ptr %call, ptr %retval, align 8, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5989
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !5989
  store i32 %call2, ptr %index, align 4, !dbg !5990
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5991
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5992
  %9 = ptrtoint ptr %8 to i64, !dbg !5992
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !5993
  %idxprom = zext i32 %call3 to i64, !dbg !5994
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5994
  %10 = load i32, ptr %index, align 4, !dbg !5995
  %idxprom4 = zext i32 %10 to i64, !dbg !5994
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5994
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5994
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5996
  %13 = load i64, ptr %size.addr, align 8, !dbg !5997
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !5998
  store ptr %call6, ptr %retval, align 8, !dbg !5999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5999

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !6000
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6001
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6002
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !6003
  store ptr %call8, ptr %retval, align 8, !dbg !6004
  br label %return, !dbg !6004

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6005
  ret ptr %16, !dbg !6005
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6006 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #2 align 16 !dbg !6007 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6011, metadata !DIExpression()), !dbg !6013
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6012, metadata !DIExpression()), !dbg !6014
  %0 = load i64, ptr %size.addr, align 8, !dbg !6015
  %tobool = icmp ne i64 %0, 0, !dbg !6015
  br i1 %tobool, label %if.end, label %if.then, !dbg !6017

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6018
  br label %return, !dbg !6018

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6019
  %cmp = icmp ule i64 %1, 8, !dbg !6021
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6022

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6023
  br label %return, !dbg !6023

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6024
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6026
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6027

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6028
  %cmp4 = icmp ule i64 %3, 96, !dbg !6029
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6030

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6031
  br label %return, !dbg !6031

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6032
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6034
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6035

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6036
  %cmp9 = icmp ule i64 %5, 192, !dbg !6037
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6038

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6039
  br label %return, !dbg !6039

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6040
  %cmp12 = icmp ule i64 %6, 8, !dbg !6042
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6043

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6044
  br label %return, !dbg !6044

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6045
  %cmp15 = icmp ule i64 %7, 16, !dbg !6047
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6048

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6049
  br label %return, !dbg !6049

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6050
  %cmp18 = icmp ule i64 %8, 32, !dbg !6052
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6053

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6054
  br label %return, !dbg !6054

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6055
  %cmp21 = icmp ule i64 %9, 64, !dbg !6057
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6058

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6060
  %cmp24 = icmp ule i64 %10, 128, !dbg !6062
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6063

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6064
  br label %return, !dbg !6064

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6065
  %cmp27 = icmp ule i64 %11, 256, !dbg !6067
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6068

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6069
  br label %return, !dbg !6069

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6070
  %cmp30 = icmp ule i64 %12, 512, !dbg !6072
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6073

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6074
  br label %return, !dbg !6074

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6075
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6077
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6078

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6079
  br label %return, !dbg !6079

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6080
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6082
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6083

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6084
  br label %return, !dbg !6084

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6085
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6087
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6088

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6089
  br label %return, !dbg !6089

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6090
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6092
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6093

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6094
  br label %return, !dbg !6094

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6095
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6097
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6098

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6099
  br label %return, !dbg !6099

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6100
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6102
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6103

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6104
  br label %return, !dbg !6104

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6105
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6107
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6108

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6109
  br label %return, !dbg !6109

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6110
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6112
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6113

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6114
  br label %return, !dbg !6114

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6115
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6117
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6118

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6119
  br label %return, !dbg !6119

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6120
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6122
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6123

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6125
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6127
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6128

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6129
  br label %return, !dbg !6129

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6130
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6132
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6133

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6135, !range !3787, !noundef !443
  %tobool69 = trunc i8 %25 to i1, !dbg !6135
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6137

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6138

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #25, !dbg !6139, !srcloc !6142
  unreachable, !dbg !6139

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6143

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6144

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6145

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6147

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6145

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, i32 480, i32 0, i64 12) #21, !dbg !6149, !srcloc !6151
  br label %do.end75, !dbg !6149

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6145

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6153
  ret i32 %26, !dbg !6153
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6154 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #2 align 16 !dbg !6160 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6164, metadata !DIExpression()), !dbg !6166
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6165, metadata !DIExpression()), !dbg !6167
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6168
  %and = and i32 %0, 17, !dbg !6168
  %cmp = icmp eq i32 %and, 0, !dbg !6168
  %lnot = xor i1 %cmp, true, !dbg !6168
  %lnot1 = xor i1 %lnot, true, !dbg !6168
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6168
  %conv = sext i32 %lnot.ext to i64, !dbg !6168
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6168
  %tobool = icmp ne i64 %expval, 0, !dbg !6168
  br i1 %tobool, label %if.then, label %if.end, !dbg !6170

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6172
  %and2 = and i32 %1, 1, !dbg !6174
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6174
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6175

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6176
  br label %return, !dbg !6176

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6179
  ret i32 %2, !dbg !6179
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6180 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #15

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6181 dso_local void @__compiletime_assert_245() #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6182 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6187 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6188 dso_local ptr @memtype_lookup(i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6191 dso_local i32 @follow_phys(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_cow_mapping(i64 noundef %flags) #4 align 16 !dbg !6194 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6200
  %and = and i64 %0, 40, !dbg !6201
  %cmp = icmp eq i64 %and, 32, !dbg !6202
  ret i1 %cmp, !dbg !6203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6204 dso_local i32 @pgprot2cachemode(i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_start_write(ptr noundef %vma) #4 align 16 !dbg !6208 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6210, metadata !DIExpression()), !dbg !6212
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #21, !dbg !6213
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !6211, metadata !DIExpression()), !dbg !6214
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6215
  %call = call zeroext i1 @__is_vma_write_locked(ptr noundef %0, ptr noundef %mm_lock_seq) #19, !dbg !6217
  br i1 %call, label %if.then, label %if.end, !dbg !6218

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6219

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6220
  %vm_lock = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5, !dbg !6221
  %2 = load ptr, ptr %vm_lock, align 8, !dbg !6221
  %lock = getelementptr inbounds %struct.vma_lock, ptr %2, i32 0, i32 0, !dbg !6222
  call void @down_write(ptr noundef %lock) #19, !dbg !6223
  br label %do.body, !dbg !6224

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6225

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6227

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6227

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6225

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %mm_lock_seq, align 4, !dbg !6229
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6229
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 4, !dbg !6229
  store volatile i32 %3, ptr %vm_lock_seq, align 8, !dbg !6229
  br label %do.cond3, !dbg !6229

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6229

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !6225

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6225

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6231
  %vm_lock7 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 5, !dbg !6232
  %6 = load ptr, ptr %vm_lock7, align 8, !dbg !6232
  %lock8 = getelementptr inbounds %struct.vma_lock, ptr %6, i32 0, i32 0, !dbg !6233
  call void @up_write(ptr noundef %lock8) #19, !dbg !6234
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6235
  br label %cleanup, !dbg !6235

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #21, !dbg !6235
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6235

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_vma_write_locked(ptr noundef %vma, ptr noundef %mm_lock_seq) #1 align 16 !dbg !6236 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6240, metadata !DIExpression()), !dbg !6242
  store ptr %mm_lock_seq, ptr %mm_lock_seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq.addr, metadata !6241, metadata !DIExpression()), !dbg !6243
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6244
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6245
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6245
  call void @mmap_assert_write_locked(ptr noundef %1) #19, !dbg !6246
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !6247
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !6248
  %3 = load ptr, ptr %vm_mm1, align 8, !dbg !6248
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !6249
  %mm_lock_seq2 = getelementptr inbounds %struct.anon.36, ptr %4, i32 0, i32 18, !dbg !6249
  %5 = load i32, ptr %mm_lock_seq2, align 8, !dbg !6249
  %6 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6250
  store i32 %5, ptr %6, align 4, !dbg !6251
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !6252
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 4, !dbg !6253
  %8 = load i32, ptr %vm_lock_seq, align 8, !dbg !6253
  %9 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !6254
  %10 = load i32, ptr %9, align 4, !dbg !6255
  %cmp = icmp eq i32 %8, %10, !dbg !6256
  ret i1 %cmp, !dbg !6257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6258 dso_local void @down_write(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6262 dso_local void @up_write(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #4 align 16 !dbg !6263 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  br label %do.body, !dbg !6270

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6271
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6271
  %mmap_lock = getelementptr inbounds %struct.anon.36, ptr %1, i32 0, i32 16, !dbg !6271
  br label %do.end, !dbg !6271

do.end:                                           ; preds = %do.body
  ret void, !dbg !6273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_t_to_pfn(i64 %pfn.coerce) #4 align 16 !dbg !6274 {
entry:
  %pfn = alloca %struct.pfn_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0
  store i64 %pfn.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6278, metadata !DIExpression()), !dbg !6279
  %val = getelementptr inbounds %struct.pfn_t, ptr %pfn, i32 0, i32 0, !dbg !6280
  %0 = load i64, ptr %val, align 8, !dbg !6280
  %and = and i64 %0, 4503599627370495, !dbg !6281
  ret i64 %and, !dbg !6282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_init(ptr noundef %vma, i64 noundef %flags) #4 align 16 !dbg !6283 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6285, metadata !DIExpression()), !dbg !6287
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6286, metadata !DIExpression()), !dbg !6288
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6289
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6290
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3, !dbg !6290
  store i64 %0, ptr %2, align 8, !dbg !6291
  ret void, !dbg !6292
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6293 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @memtype_seq_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !6297 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6299, metadata !DIExpression()), !dbg !6301
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6300, metadata !DIExpression()), !dbg !6302
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6303
  %call = call i32 @seq_open(ptr noundef %0, ptr noundef @memtype_seq_ops) #19, !dbg !6304
  ret i32 %call, !dbg !6305
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local i32 @seq_open(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memtype_seq_start(ptr noundef %seq, ptr noundef %pos) #1 align 16 !dbg !6309 {
entry:
  %seq.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !6315
  %1 = load i64, ptr %0, align 8, !dbg !6317
  %cmp = icmp eq i64 %1, 0, !dbg !6318
  br i1 %cmp, label %if.then, label %if.end, !dbg !6319

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !6320
  %3 = load i64, ptr %2, align 8, !dbg !6322
  %inc = add i64 %3, 1, !dbg !6322
  store i64 %inc, ptr %2, align 8, !dbg !6322
  %4 = load ptr, ptr %seq.addr, align 8, !dbg !6323
  call void @seq_puts(ptr noundef %4, ptr noundef @.str.32) #19, !dbg !6324
  br label %if.end, !dbg !6325

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !6326
  %6 = load i64, ptr %5, align 8, !dbg !6327
  %call = call ptr @memtype_get_idx(i64 noundef %6) #19, !dbg !6328
  ret ptr %call, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memtype_seq_stop(ptr noundef %seq, ptr noundef %v) #1 align 16 !dbg !6330 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6332, metadata !DIExpression()), !dbg !6334
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6336
  call void @kfree(ptr noundef %0) #19, !dbg !6337
  ret void, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memtype_seq_next(ptr noundef %seq, ptr noundef %v, ptr noundef %pos) #1 align 16 !dbg !6339 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6342, metadata !DIExpression()), !dbg !6345
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6343, metadata !DIExpression()), !dbg !6346
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6347
  call void @kfree(ptr noundef %0) #19, !dbg !6348
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !6349
  %2 = load i64, ptr %1, align 8, !dbg !6350
  %inc = add i64 %2, 1, !dbg !6350
  store i64 %inc, ptr %1, align 8, !dbg !6350
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !6351
  %4 = load i64, ptr %3, align 8, !dbg !6352
  %call = call ptr @memtype_get_idx(i64 noundef %4) #19, !dbg !6353
  ret ptr %call, !dbg !6354
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @memtype_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 16 !dbg !6355 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %entry_print = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6357, metadata !DIExpression()), !dbg !6360
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6358, metadata !DIExpression()), !dbg !6361
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_print) #21, !dbg !6362
  call void @llvm.dbg.declare(metadata ptr %entry_print, metadata !6359, metadata !DIExpression()), !dbg !6363
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6364
  store ptr %0, ptr %entry_print, align 8, !dbg !6363
  %1 = load ptr, ptr %seq.addr, align 8, !dbg !6365
  %2 = load ptr, ptr %entry_print, align 8, !dbg !6366
  %start = getelementptr inbounds %struct.memtype, ptr %2, i32 0, i32 0, !dbg !6367
  %3 = load i64, ptr %start, align 8, !dbg !6367
  %4 = load ptr, ptr %entry_print, align 8, !dbg !6368
  %end = getelementptr inbounds %struct.memtype, ptr %4, i32 0, i32 1, !dbg !6369
  %5 = load i64, ptr %end, align 8, !dbg !6369
  %6 = load ptr, ptr %entry_print, align 8, !dbg !6370
  %type = getelementptr inbounds %struct.memtype, ptr %6, i32 0, i32 3, !dbg !6371
  %7 = load i32, ptr %type, align 8, !dbg !6371
  %call = call ptr @cattr_name(i32 noundef %7) #19, !dbg !6372
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.33, i64 noundef %3, i64 noundef %5, ptr noundef %call) #19, !dbg !6373
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_print) #21, !dbg !6374
  ret i32 0, !dbg !6375
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6376 dso_local void @seq_puts(ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memtype_get_idx(i64 noundef %pos) #1 align 16 !dbg !6379 {
entry:
  %retval = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %entry_print = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6383, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_print) #21, !dbg !6387
  call void @llvm.dbg.declare(metadata ptr %entry_print, metadata !6384, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6385, metadata !DIExpression()), !dbg !6390
  %call = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #22, !dbg !6391
  store ptr %call, ptr %entry_print, align 8, !dbg !6392
  %0 = load ptr, ptr %entry_print, align 8, !dbg !6393
  %tobool = icmp ne ptr %0, null, !dbg !6393
  br i1 %tobool, label %if.end, label %if.then, !dbg !6395

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6396

if.end:                                           ; preds = %entry
  call void @spin_lock(ptr noundef @memtype_lock) #19, !dbg !6397
  %1 = load ptr, ptr %entry_print, align 8, !dbg !6398
  %2 = load i64, ptr %pos.addr, align 8, !dbg !6399
  %call1 = call i32 @memtype_copy_nth_element(ptr noundef %1, i64 noundef %2) #19, !dbg !6400
  store i32 %call1, ptr %ret, align 4, !dbg !6401
  call void @spin_unlock(ptr noundef @memtype_lock) #19, !dbg !6402
  %3 = load i32, ptr %ret, align 4, !dbg !6403
  %tobool2 = icmp ne i32 %3, 0, !dbg !6403
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6405

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %entry_print, align 8, !dbg !6406
  call void @kfree(ptr noundef %4) #19, !dbg !6408
  store ptr null, ptr %retval, align 8, !dbg !6409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6409

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %entry_print, align 8, !dbg !6410
  store ptr %5, ptr %retval, align 8, !dbg !6411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6411

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !6412
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_print) #21, !dbg !6412
  %6 = load ptr, ptr %retval, align 8, !dbg !6412
  ret ptr %6, !dbg !6412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6413 dso_local i32 @memtype_copy_nth_element(ptr noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6416 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #8

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone noreturn }
attributes #21 = { nounwind }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { nounwind memory(none) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!llvm.ident = !{!3776}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_nopat", scope: !2, file: !3, line: 87, type: !3767, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/pat/.memtype.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/pat/memtype\22 -D KBUILD_BASENAME=\22memtype\22 -D KBUILD_MODNAME=\22memtype\22 -D __KBUILD_MODNAME=kmod_memtype -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/pat/memtype.ll arch/x86/mm/pat/memtype.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !3582, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/pat/memtype.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ade1980cd62a6bb65b79bb0befa99745")
!4 = !{!5, !14, !24, !32, !37, !43, !48, !54, !61, !69, !85, !92, !97, !137}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 178, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "PAT_UC", value: 0)
!9 = !DIEnumerator(name: "PAT_WC", value: 1)
!10 = !DIEnumerator(name: "PAT_WT", value: 4)
!11 = !DIEnumerator(name: "PAT_WP", value: 5)
!12 = !DIEnumerator(name: "PAT_WB", value: 6)
!13 = !DIEnumerator(name: "PAT_UC_MINUS", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !15, line: 168, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!18 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!19 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!20 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!21 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!22 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!23 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 9, baseType: !6, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!31 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !33, line: 2052, baseType: !6, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!36 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !6, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !44, line: 65, baseType: !6, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!47 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !49, line: 16, baseType: !6, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "TT_NONE", value: 0)
!52 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!53 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !55, line: 15, baseType: !6, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!58 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!59 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!60 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !62, line: 68, baseType: !6, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!67 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !70, line: 1325, baseType: !6, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!72 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!73 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!74 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!75 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!76 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!77 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!78 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!79 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!80 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!81 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!82 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!83 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!84 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !86, line: 51, baseType: !6, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!89 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!90 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!91 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !6, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !98, line: 100, baseType: !6, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!100 = !DIEnumerator(name: "PG_locked", value: 0)
!101 = !DIEnumerator(name: "PG_writeback", value: 1)
!102 = !DIEnumerator(name: "PG_referenced", value: 2)
!103 = !DIEnumerator(name: "PG_uptodate", value: 3)
!104 = !DIEnumerator(name: "PG_dirty", value: 4)
!105 = !DIEnumerator(name: "PG_lru", value: 5)
!106 = !DIEnumerator(name: "PG_head", value: 6)
!107 = !DIEnumerator(name: "PG_waiters", value: 7)
!108 = !DIEnumerator(name: "PG_active", value: 8)
!109 = !DIEnumerator(name: "PG_workingset", value: 9)
!110 = !DIEnumerator(name: "PG_error", value: 10)
!111 = !DIEnumerator(name: "PG_slab", value: 11)
!112 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!113 = !DIEnumerator(name: "PG_arch_1", value: 13)
!114 = !DIEnumerator(name: "PG_reserved", value: 14)
!115 = !DIEnumerator(name: "PG_private", value: 15)
!116 = !DIEnumerator(name: "PG_private_2", value: 16)
!117 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!118 = !DIEnumerator(name: "PG_reclaim", value: 18)
!119 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!120 = !DIEnumerator(name: "PG_unevictable", value: 20)
!121 = !DIEnumerator(name: "PG_mlocked", value: 21)
!122 = !DIEnumerator(name: "PG_uncached", value: 22)
!123 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!124 = !DIEnumerator(name: "PG_readahead", value: 18)
!125 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!126 = !DIEnumerator(name: "PG_checked", value: 12)
!127 = !DIEnumerator(name: "PG_swapcache", value: 12)
!128 = !DIEnumerator(name: "PG_fscache", value: 16)
!129 = !DIEnumerator(name: "PG_pinned", value: 12)
!130 = !DIEnumerator(name: "PG_savepinned", value: 4)
!131 = !DIEnumerator(name: "PG_foreign", value: 12)
!132 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!133 = !DIEnumerator(name: "PG_isolated", value: 18)
!134 = !DIEnumerator(name: "PG_reported", value: 3)
!135 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!136 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !138, line: 364, baseType: !6, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!139 = !{!140, !141, !142, !143, !144, !145, !146}
!140 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!141 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!142 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!143 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!144 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!145 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!146 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!147 = !{!148, !149, !150, !152, !157, !159, !160, !151, !156, !162, !163, !165, !168, !3565, !3568, !3570, !1728, !3571, !3573}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !153, line: 23, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !156)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!156 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !6)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !152)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !161, line: 14, baseType: !151)
!161 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !158, line: 164, baseType: !159)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !153, line: 21, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !6)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !70, line: 74, size: 512, align: 128, elements: !170)
!170 = !{!171, !172, !3559, !3564}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !70, line: 75, baseType: !151, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !70, line: 83, baseType: !173, size: 320, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !70, line: 83, size: 320, elements: !174)
!174 = !{!175, !3465, !3479, !3483, !3558}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !70, line: 84, baseType: !176, size: 320)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !70, line: 84, size: 320, elements: !177)
!177 = !{!178, !194, !3459, !3464}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !70, line: 90, baseType: !179, size: 128)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !70, line: 90, size: 128, elements: !180)
!180 = !{!181, !187, !192, !193}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !179, file: !70, line: 91, baseType: !182, size: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !158, line: 191, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !158, line: 191, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !70, line: 94, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !70, line: 94, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !188, file: !70, line: 96, baseType: !148, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !188, file: !70, line: 98, baseType: !6, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !179, file: !70, line: 102, baseType: !182, size: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !179, file: !70, line: 103, baseType: !182, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !176, file: !70, line: 106, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !33, line: 472, size: 1536, align: 64, elements: !197)
!197 = !{!198, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3453, !3454, !3455, !3456, !3457, !3458}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !196, file: !33, line: 473, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !33, line: 641, size: 4800, elements: !201)
!201 = !{!202, !205, !206, !215, !216, !223, !224, !227, !228, !3232, !3233, !3234, !3235, !3236, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3276, !3279, !3280, !3281, !3290, !3291, !3292, !3293}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !200, file: !33, line: 642, baseType: !203, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !200, file: !33, line: 643, baseType: !204, size: 16, offset: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !200, file: !33, line: 644, baseType: !207, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !208, line: 23, baseType: !209)
!208 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 21, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !208, line: 22, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !214, line: 49, baseType: !6)
!214 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !200, file: !33, line: 645, baseType: !182, size: 128, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !200, file: !33, line: 646, baseType: !217, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !208, line: 28, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 26, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !218, file: !208, line: 27, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !214, line: 50, baseType: !6)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !200, file: !33, line: 647, baseType: !6, size: 32, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !200, file: !33, line: 650, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !33, line: 607, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !200, file: !33, line: 651, baseType: !225, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !200, file: !33, line: 654, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !33, line: 1966, size: 2048, align: 512, elements: !232)
!232 = !{!233, !3063, !3076, !3080, !3084, !3088, !3092, !3096, !3100, !3104, !3108, !3109, !3113, !3117, !3154, !3183, !3187, !3193, !3197, !3201, !3205, !3209, !3213, !3219, !3223}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !231, file: !33, line: 1967, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !199, !237, !6}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !239, line: 82, size: 1536, elements: !240)
!239 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!240 = !{!241, !242, !252, !260, !261, !277, !278, !282, !333, !3046, !3047, !3048, !3049, !3055, !3056, !3057}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !238, file: !239, line: 84, baseType: !6, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !238, file: !239, line: 85, baseType: !243, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !244, line: 275, baseType: !245)
!244 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !244, line: 275, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !245, file: !244, line: 275, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !244, line: 69, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !244, line: 64, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !249, file: !244, line: 65, baseType: !6, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !238, file: !239, line: 86, baseType: !253, size: 128, offset: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !254, line: 38, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !254, line: 39, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !253, file: !254, line: 39, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !238, file: !239, line: 87, baseType: !237, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !238, file: !239, line: 88, baseType: !262, size: 128, offset: 256)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !239, line: 49, size: 128, elements: !263)
!263 = !{!264, !273}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !239, line: 50, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !239, line: 50, size: 64, elements: !266)
!266 = !{!267, !272}
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !239, line: 51, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !239, line: 51, size: 64, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !268, file: !239, line: 52, baseType: !163, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !268, file: !239, line: 52, baseType: !163, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !265, file: !239, line: 54, baseType: !152, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !239, line: 56, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !238, file: !239, line: 89, baseType: !199, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !238, file: !239, line: 91, baseType: !279, size: 256, offset: 448)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 256, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !238, file: !239, line: 94, baseType: !283, size: 64, offset: 704)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !284, line: 25, size: 64, elements: !285)
!284 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 26, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 26, size: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !287, file: !284, line: 28, baseType: !154, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !284, line: 30, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !284, line: 30, size: 64, elements: !292)
!292 = !{!293, !332}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !291, file: !284, line: 31, baseType: !294, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !295, line: 29, baseType: !296)
!295 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !295, line: 17, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !295, line: 18, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !295, line: 18, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !299, file: !295, line: 19, baseType: !302, size: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !303, line: 14, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !302, file: !303, line: 15, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !307, line: 44, baseType: !308)
!307 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !307, line: 14, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !307, line: 15, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !307, line: 15, size: 32, elements: !312)
!312 = !{!313, !318, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !307, line: 16, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !315, file: !158, line: 173, baseType: !149, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !307, line: 24, baseType: !319, size: 16)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !307, line: 24, size: 16, elements: !320)
!320 = !{!321, !324}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !319, file: !307, line: 25, baseType: !322, size: 8)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !153, line: 17, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !276)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !319, file: !307, line: 26, baseType: !322, size: 8, offset: 8)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !307, line: 28, baseType: !326, size: 32)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !307, line: 28, size: 32, elements: !327)
!327 = !{!328, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !326, file: !307, line: 29, baseType: !329, size: 16)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !153, line: 19, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !204)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !326, file: !307, line: 30, baseType: !329, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !291, file: !284, line: 32, baseType: !149, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !238, file: !239, line: 95, baseType: !334, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !239, line: 128, size: 1024, align: 512, elements: !337)
!337 = !{!338, !342, !343, !350, !356, !360, !364, !368, !369, !373, !378, !3036, !3040}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !336, file: !239, line: 129, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!149, !237, !6}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !336, file: !239, line: 130, baseType: !339, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !336, file: !239, line: 131, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!149, !347, !349}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !336, file: !239, line: 132, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!149, !347, !6, !165, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !336, file: !239, line: 134, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!149, !347}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !336, file: !239, line: 135, baseType: !361, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!149, !237}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !336, file: !239, line: 136, baseType: !365, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !237}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !336, file: !239, line: 137, baseType: !365, size: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !336, file: !239, line: 138, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !237, !199}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !336, file: !239, line: 139, baseType: !374, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !237, !377, !149}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !336, file: !239, line: 140, baseType: !379, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !3035}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !384, line: 70, size: 256, elements: !385)
!384 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!385 = !{!386, !387, !3031, !3032}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !383, file: !384, line: 71, baseType: !237, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !383, file: !384, line: 72, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !33, line: 1190, size: 10752, elements: !390)
!390 = !{!391, !392, !395, !396, !397, !401, !454, !1501, !1541, !1626, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1643, !1647, !1648, !1651, !1654, !1657, !1660, !1661, !1662, !1703, !2962, !2963, !2964, !2965, !2966, !2967, !2970, !2972, !2979, !2980, !2981, !2982, !2983, !2998, !2999, !3000, !3001, !3002, !3005, !3006, !3007, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !389, file: !33, line: 1191, baseType: !182, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !389, file: !33, line: 1192, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !163)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !389, file: !33, line: 1193, baseType: !276, size: 8, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !389, file: !33, line: 1194, baseType: !151, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !389, file: !33, line: 1195, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !214, line: 88, baseType: !400)
!400 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !389, file: !33, line: 1196, baseType: !402, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !33, line: 2366, size: 576, elements: !404)
!404 = !{!405, !406, !407, !413, !417, !421, !425, !429, !430, !440, !444, !445, !446, !450, !451, !452, !453}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !33, line: 2367, baseType: !165, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !403, file: !33, line: 2368, baseType: !149, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !403, file: !33, line: 2376, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!149, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !384, line: 21, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !403, file: !33, line: 2377, baseType: !414, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !33, line: 75, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !403, file: !33, line: 2378, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!237, !402, !149, !165, !148}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !403, file: !33, line: 2380, baseType: !422, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !388}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !403, file: !33, line: 2381, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !428, line: 196, flags: DIFlagFwdDecl)
!428 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !33, line: 2382, baseType: !402, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !403, file: !33, line: 2383, baseType: !431, size: 64, offset: 512)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !431, file: !158, line: 195, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !158, line: 199, baseType: !434, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !435, file: !158, line: 199, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !403, file: !33, line: 2385, baseType: !441, offset: 576)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !442, line: 206, elements: !443)
!442 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!443 = !{}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !403, file: !33, line: 2386, baseType: !441, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !403, file: !33, line: 2387, baseType: !441, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !403, file: !33, line: 2388, baseType: !447, offset: 576)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 3)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !403, file: !33, line: 2390, baseType: !441, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !403, file: !33, line: 2391, baseType: !441, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !403, file: !33, line: 2392, baseType: !441, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !403, file: !33, line: 2393, baseType: !441, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !389, file: !33, line: 1197, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !33, line: 2057, size: 1664, elements: !458)
!458 = !{!459, !463, !467, !468, !472, !478, !482, !483, !484, !488, !492, !496, !497, !498, !504, !509, !510, !1426, !1427, !1428, !1429, !1433, !1437, !1484, !1499, !1500}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !457, file: !33, line: 2058, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!199, !388}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !457, file: !33, line: 2059, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !199}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !457, file: !33, line: 2060, baseType: !464, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !457, file: !33, line: 2062, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !199, !149}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !457, file: !33, line: 2063, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!149, !199, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !33, line: 309, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !457, file: !33, line: 2064, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!149, !199}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !457, file: !33, line: 2065, baseType: !464, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !457, file: !33, line: 2066, baseType: !422, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !457, file: !33, line: 2067, baseType: !485, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!149, !388, !149}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !457, file: !33, line: 2068, baseType: !489, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!149, !388, !32}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !457, file: !33, line: 2069, baseType: !493, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!149, !388}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !457, file: !33, line: 2070, baseType: !489, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !457, file: !33, line: 2071, baseType: !493, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !457, file: !33, line: 2072, baseType: !499, size: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!149, !237, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !33, line: 62, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !457, file: !33, line: 2073, baseType: !505, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!149, !388, !508, !377}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !457, file: !33, line: 2074, baseType: !422, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !457, file: !33, line: 2076, baseType: !511, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!149, !514, !237}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !516, line: 17, size: 960, elements: !517)
!516 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!517 = !{!518, !519, !523, !524, !525, !526, !527, !528, !549, !571, !572, !1425}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !515, file: !516, line: 18, baseType: !377, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !516, line: 19, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !214, line: 72, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !214, line: 16, baseType: !151)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !515, file: !516, line: 20, baseType: !520, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !515, file: !516, line: 21, baseType: !520, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !515, file: !516, line: 22, baseType: !520, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !515, file: !516, line: 23, baseType: !398, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !515, file: !516, line: 24, baseType: !398, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !516, line: 25, baseType: !529, size: 256, offset: 448)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !530, line: 66, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!531 = !{!532, !541, !543, !548}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !529, file: !530, line: 67, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !534, line: 13, baseType: !535)
!534 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !536, file: !158, line: 180, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !153, line: 22, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !400)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !529, file: !530, line: 68, baseType: !542, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !303, line: 23, baseType: !302)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !529, file: !530, line: 70, baseType: !544, size: 32, offset: 96)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !545, line: 15, size: 32, elements: !546)
!545 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !544, file: !545, line: 20, baseType: !314, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !529, file: !530, line: 72, baseType: !182, size: 128, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !515, file: !516, line: 26, baseType: !550, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !516, line: 32, size: 256, elements: !553)
!553 = !{!554, !559, !563, !567}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !552, file: !516, line: 33, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!148, !514, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !552, file: !516, line: 34, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !514, !148}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !516, line: 35, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!148, !514, !148, !558}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !552, file: !516, line: 36, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!149, !514, !148}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !515, file: !516, line: 27, baseType: !149, size: 32, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !515, file: !516, line: 28, baseType: !573, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !33, line: 994, size: 1856, align: 64, elements: !576)
!576 = !{!577, !596, !597, !599, !600, !601, !602, !603, !666, !878, !887, !893, !894, !1415, !1416, !1417, !1418, !1420, !1421, !1424}
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !33, line: 995, baseType: !578, size: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !33, line: 995, size: 128, elements: !579)
!579 = !{!580, !586, !595}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !578, file: !33, line: 996, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !582, line: 60, size: 64, elements: !583)
!582 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !582, line: 61, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !578, file: !33, line: 997, baseType: !587, size: 128, align: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !588)
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !158, line: 233, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !587, file: !158, line: 234, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !590}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !578, file: !33, line: 998, baseType: !6, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !575, file: !33, line: 1005, baseType: !294, size: 32, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !575, file: !33, line: 1006, baseType: !598, size: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !6)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !575, file: !33, line: 1007, baseType: !533, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !575, file: !33, line: 1008, baseType: !529, size: 256, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !575, file: !33, line: 1009, baseType: !398, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !575, file: !33, line: 1010, baseType: !6, size: 32, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !575, file: !33, line: 1011, baseType: !604, size: 256, offset: 640)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !33, line: 948, size: 256, elements: !605)
!605 = !{!606, !627, !662, !663, !664, !665}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !33, line: 949, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !608, line: 34, baseType: !609)
!608 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 25, size: 64, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !609, file: !608, line: 26, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !613, line: 27, baseType: !614)
!613 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !613, line: 13, size: 64, elements: !615)
!615 = !{!616, !626}
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !613, line: 14, baseType: !617, size: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !613, line: 14, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !617, file: !613, line: 15, baseType: !314, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 16, baseType: !621, size: 32)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 16, size: 32, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !621, file: !613, line: 18, baseType: !322, size: 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !621, file: !613, line: 19, baseType: !625, size: 24, offset: 8)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 24, elements: !448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !614, file: !613, line: 26, baseType: !306, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !604, file: !33, line: 950, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 59, size: 768, elements: !630)
!630 = !{!631, !637, !638, !639, !643, !644, !651, !652}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !629, file: !25, line: 61, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !633, line: 113, baseType: !634)
!633 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !633, line: 111, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !634, file: !633, line: 112, baseType: !314, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !629, file: !25, line: 62, baseType: !6, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !629, file: !25, line: 63, baseType: !294, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !629, file: !25, line: 65, baseType: !640, size: 256, offset: 128)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 4)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !629, file: !25, line: 66, baseType: !431, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !629, file: !25, line: 68, baseType: !645, size: 192, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !646, line: 41, baseType: !647)
!646 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !646, line: 37, size: 192, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !646, line: 38, baseType: !294, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !647, file: !646, line: 39, baseType: !182, size: 128, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !629, file: !25, line: 69, baseType: !587, size: 128, align: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !629, file: !25, line: 70, baseType: !653, offset: 768)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, elements: !660)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 54, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !654, file: !25, line: 55, baseType: !149, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !654, file: !25, line: 56, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !25, line: 56, flags: DIFlagFwdDecl)
!660 = !{!661}
!661 = !DISubrange(count: -1)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !604, file: !33, line: 951, baseType: !24, size: 32, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !33, line: 952, baseType: !207, size: 32, offset: 160)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !604, file: !33, line: 952, baseType: !207, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !604, file: !33, line: 953, baseType: !149, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !575, file: !33, line: 1012, baseType: !667, size: 64, offset: 896)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !670, line: 110, size: 1472, elements: !671)
!670 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !688, !689, !690, !691, !692, !693, !823, !824, !825, !826, !827, !858, !861, !865, !873}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !669, file: !670, line: 111, baseType: !533, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !669, file: !670, line: 112, baseType: !207, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !669, file: !670, line: 113, baseType: !217, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !669, file: !670, line: 114, baseType: !207, size: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !669, file: !670, line: 115, baseType: !217, size: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !669, file: !670, line: 116, baseType: !207, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !669, file: !670, line: 117, baseType: !217, size: 32, offset: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !669, file: !670, line: 118, baseType: !207, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !669, file: !670, line: 119, baseType: !217, size: 32, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !669, file: !670, line: 120, baseType: !6, size: 32, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !669, file: !670, line: 121, baseType: !683, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !684, line: 24, baseType: !685)
!684 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 24, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !684, line: 24, baseType: !152, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !669, file: !670, line: 122, baseType: !683, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !669, file: !670, line: 123, baseType: !683, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !669, file: !670, line: 124, baseType: !683, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !669, file: !670, line: 125, baseType: !683, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !669, file: !670, line: 127, baseType: !276, size: 8, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !669, file: !670, line: 129, baseType: !694, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !696, line: 195, size: 1728, elements: !697)
!696 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!697 = !{!698, !699, !704, !716, !725, !728, !729, !736, !737, !738, !739, !742, !743, !744, !746, !747, !787, !808}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !695, file: !696, line: 196, baseType: !632, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !695, file: !696, line: 197, baseType: !700, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !696, line: 28, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !153, line: 20, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !149)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 198, baseType: !705, size: 192, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 198, size: 192, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !705, file: !696, line: 199, baseType: !182, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !705, file: !696, line: 200, baseType: !709, size: 192, align: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !710, line: 5, size: 192, align: 64, elements: !711)
!710 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!711 = !{!712, !713, !715}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !709, file: !710, line: 6, baseType: !151, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !709, file: !710, line: 7, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !709, file: !710, line: 8, baseType: !714, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !695, file: !696, line: 205, baseType: !717, size: 320, offset: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !718, line: 48, size: 320, elements: !719)
!718 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!719 = !{!720, !721, !722, !723, !724}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !718, line: 49, baseType: !533, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !717, file: !718, line: 55, baseType: !533, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !717, file: !718, line: 57, baseType: !544, size: 32, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !717, file: !718, line: 59, baseType: !542, size: 32, offset: 160)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !717, file: !718, line: 60, baseType: !182, size: 128, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !695, file: !696, line: 206, baseType: !726, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !696, line: 206, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !695, file: !696, line: 207, baseType: !148, size: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 208, baseType: !730, size: 64, offset: 704)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 208, size: 64, elements: !731)
!731 = !{!732, !735}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !730, file: !696, line: 209, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !734, line: 8, baseType: !540)
!734 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!735 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !730, file: !696, line: 210, baseType: !733, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !695, file: !696, line: 212, baseType: !733, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !695, file: !696, line: 213, baseType: !207, size: 32, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !695, file: !696, line: 214, baseType: !217, size: 32, offset: 864)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !695, file: !696, line: 215, baseType: !740, size: 32, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !696, line: 31, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !163)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !695, file: !696, line: 216, baseType: !204, size: 16, offset: 928)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !695, file: !696, line: 217, baseType: !204, size: 16, offset: 944)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !695, file: !696, line: 221, baseType: !745, size: 16, offset: 960)
!745 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 228, baseType: !151, size: 64, offset: 1024)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 245, baseType: !748, size: 320, offset: 1088)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 245, size: 320, elements: !749)
!749 = !{!750, !779}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !748, file: !696, line: 246, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !696, line: 114, size: 320, elements: !752)
!752 = !{!753, !754, !766, !769, !778}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !751, file: !696, line: 116, baseType: !151, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !696, line: 117, baseType: !755, size: 64, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !696, line: 117, size: 64, elements: !756)
!756 = !{!757, !765}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !696, line: 118, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !696, line: 118, size: 64, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !758, file: !696, line: 120, baseType: !329, size: 16)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !758, file: !696, line: 121, baseType: !762, size: 48, offset: 16)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 6)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !755, file: !696, line: 127, baseType: !151, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !696, line: 129, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !696, line: 102, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !751, file: !696, line: 130, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !696, line: 108, size: 192, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !771, file: !696, line: 109, baseType: !587, size: 128, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !771, file: !696, line: 110, baseType: !632, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !771, file: !696, line: 111, baseType: !776, size: 8, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !777)
!777 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !751, file: !696, line: 131, baseType: !165, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !696, line: 247, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !696, line: 247, size: 320, elements: !781)
!781 = !{!782, !783, !784, !785, !786}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !780, file: !696, line: 248, baseType: !151, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !780, file: !696, line: 249, baseType: !151, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !696, line: 250, baseType: !767, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !780, file: !696, line: 251, baseType: !770, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !780, file: !696, line: 252, baseType: !377, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 260, baseType: !788, size: 256, offset: 1408)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 260, size: 256, elements: !789)
!789 = !{!790, !796}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !788, file: !696, line: 261, baseType: !791, size: 256)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !696, line: 134, size: 256, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !791, file: !696, line: 135, baseType: !148, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !791, file: !696, line: 136, baseType: !795, size: 256)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !641)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !696, line: 262, baseType: !797, size: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !696, line: 262, size: 256, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !797, file: !696, line: 264, baseType: !182, size: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !797, file: !696, line: 265, baseType: !801, size: 128, offset: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !802, line: 22, size: 128, elements: !803)
!802 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!803 = !{!804, !807}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !801, file: !802, line: 23, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !802, line: 23, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !801, file: !802, line: 24, baseType: !151, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !695, file: !696, line: 280, baseType: !809, size: 64, offset: 1664)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !696, line: 176, size: 192, elements: !811)
!811 = !{!812, !821, !822}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !810, file: !696, line: 177, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !696, line: 171, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!149, !694, !817, !819, !694}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !810, file: !696, line: 178, baseType: !694, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !810, file: !696, line: 179, baseType: !767, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !669, file: !670, line: 130, baseType: !694, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !669, file: !670, line: 131, baseType: !694, size: 64, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !669, file: !670, line: 132, baseType: !694, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !669, file: !670, line: 135, baseType: !148, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !669, file: !670, line: 137, baseType: !828, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !830, line: 14, size: 1088, elements: !831)
!830 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!831 = !{!832, !833, !842, !843, !844, !845, !846, !847}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !829, file: !830, line: 15, baseType: !632, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !829, file: !830, line: 17, baseType: !834, size: 320, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !835, line: 22, size: 320, elements: !836)
!835 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!836 = !{!837, !838, !839, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 23, baseType: !542, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !834, file: !835, line: 24, baseType: !539, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !834, file: !835, line: 26, baseType: !182, size: 128, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !834, file: !835, line: 28, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !829, file: !830, line: 19, baseType: !151, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !829, file: !830, line: 20, baseType: !533, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !829, file: !830, line: 23, baseType: !435, size: 128, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !829, file: !830, line: 24, baseType: !207, size: 32, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !829, file: !830, line: 29, baseType: !533, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !829, file: !830, line: 36, baseType: !848, size: 320, offset: 768)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !849, line: 15, size: 320, elements: !850)
!849 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!850 = !{!851, !852, !853, !854, !855, !856, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !848, file: !849, line: 16, baseType: !542, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !848, file: !849, line: 18, baseType: !149, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !848, file: !849, line: 19, baseType: !149, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !848, file: !849, line: 20, baseType: !149, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !848, file: !849, line: 21, baseType: !149, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !848, file: !849, line: 22, baseType: !151, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !849, line: 23, baseType: !151, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !669, file: !670, line: 138, baseType: !859, size: 64, offset: 1152)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !208, line: 18, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !669, file: !670, line: 139, baseType: !862, size: 64, offset: 1216)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !864, line: 16, flags: DIFlagFwdDecl)
!864 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!865 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !669, file: !670, line: 140, baseType: !866, size: 64, offset: 1280)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !670, line: 25, size: 64, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !867, file: !670, line: 26, baseType: !314, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !867, file: !670, line: 27, baseType: !149, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !867, file: !670, line: 28, baseType: !872, offset: 64)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !660)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !670, line: 142, baseType: !874, size: 128, offset: 1344)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !670, line: 142, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !874, file: !670, line: 143, baseType: !149, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !874, file: !670, line: 144, baseType: !587, size: 128, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !575, file: !33, line: 1013, baseType: !879, size: 256, offset: 960)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !33, line: 970, size: 256, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !879, file: !33, line: 971, baseType: !151, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !879, file: !33, line: 972, baseType: !6, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !879, file: !33, line: 973, baseType: !6, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !879, file: !33, line: 974, baseType: !6, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !879, file: !33, line: 975, baseType: !6, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !879, file: !33, line: 976, baseType: !398, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !575, file: !33, line: 1014, baseType: !888, size: 128, offset: 1216)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !889, line: 8, size: 128, elements: !890)
!889 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !888, file: !889, line: 9, baseType: !382, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !888, file: !889, line: 10, baseType: !237, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !575, file: !33, line: 1015, baseType: !199, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !575, file: !33, line: 1016, baseType: !895, size: 64, offset: 1408)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !33, line: 1914, size: 2112, elements: !898)
!898 = !{!899, !900, !905, !913, !917, !1001, !1002, !1008, !1021, !1029, !1033, !1034, !1336, !1337, !1341, !1346, !1347, !1351, !1355, !1361, !1362, !1366, !1367, !1374, !1378, !1382, !1388, !1392, !1396, !1400, !1404, !1405, !1411}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !33, line: 1915, baseType: !426, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !897, file: !33, line: 1916, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!398, !904, !398, !149}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !897, file: !33, line: 1917, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!909, !904, !377, !520, !558}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !214, line: 73, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !214, line: 15, baseType: !912)
!912 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !897, file: !33, line: 1918, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!909, !904, !165, !520, !558}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !897, file: !33, line: 1919, baseType: !918, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!909, !921, !943}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !33, line: 373, size: 384, elements: !923)
!923 = !{!924, !925, !926, !930, !931, !932, !933}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !922, file: !33, line: 374, baseType: !904, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !922, file: !33, line: 375, baseType: !398, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !922, file: !33, line: 376, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !921, !912}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !922, file: !33, line: 377, baseType: !148, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !922, file: !33, line: 378, baseType: !149, size: 32, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !922, file: !33, line: 379, baseType: !329, size: 16, offset: 288)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !33, line: 380, baseType: !934, size: 64, offset: 320)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !33, line: 380, size: 64, elements: !935)
!935 = !{!936, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !934, file: !33, line: 386, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !33, line: 386, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !934, file: !33, line: 395, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!909, !148}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !945, line: 41, size: 320, elements: !946)
!945 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!946 = !{!947, !948, !949, !950, !951, !952, !957, !996}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !944, file: !945, line: 42, baseType: !322, size: 8)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !944, file: !945, line: 43, baseType: !776, size: 8, offset: 8)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !944, file: !945, line: 44, baseType: !776, size: 8, offset: 16)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !944, file: !945, line: 45, baseType: !776, size: 8, offset: 24)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !944, file: !945, line: 46, baseType: !776, size: 8, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 47, baseType: !953, size: 64, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 47, size: 64, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !953, file: !945, line: 48, baseType: !520, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !953, file: !945, line: 49, baseType: !149, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 61, baseType: !958, size: 128, offset: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 61, size: 128, elements: !959)
!959 = !{!960, !966}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !958, file: !945, line: 67, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !962, line: 17, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !961, file: !962, line: 19, baseType: !148, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !961, file: !962, line: 20, baseType: !521, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !945, line: 68, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !945, line: 68, size: 128, elements: !968)
!968 = !{!969, !995}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !945, line: 69, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !945, line: 69, size: 64, elements: !971)
!971 = !{!972, !975, !982, !986, !994}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !970, file: !945, line: 71, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !970, file: !945, line: 72, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !945, line: 17, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !978, file: !945, line: 18, baseType: !148, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !978, file: !945, line: 19, baseType: !520, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !970, file: !945, line: 73, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !945, line: 73, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !970, file: !945, line: 74, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !989, line: 296, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !988, file: !989, line: 297, baseType: !294, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !988, file: !989, line: 299, baseType: !157, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !988, file: !989, line: 300, baseType: !148, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !970, file: !945, line: 75, baseType: !148, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !967, file: !945, line: 77, baseType: !520, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 80, baseType: !997, size: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 80, size: 64, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !997, file: !945, line: 81, baseType: !151, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !997, file: !945, line: 82, baseType: !398, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !897, file: !33, line: 1920, baseType: !918, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !897, file: !33, line: 1921, baseType: !1003, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!149, !921, !1006, !6}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !33, line: 53, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !897, file: !33, line: 1923, baseType: !1009, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!149, !904, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !33, line: 1858, size: 128, elements: !1014)
!1014 = !{!1015, !1020}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1013, file: !33, line: 1859, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !33, line: 1855, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!776, !1012, !165, !149, !398, !152, !6}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1013, file: !33, line: 1860, baseType: !398, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !897, file: !33, line: 1924, baseType: !1022, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025, !904, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1026, line: 59, baseType: !6)
!1026 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !33, line: 61, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !897, file: !33, line: 1925, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!912, !904, !6, !151}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !897, file: !33, line: 1926, baseType: !1030, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !897, file: !33, line: 1927, baseType: !1035, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!149, !904, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !70, line: 625, size: 1344, elements: !1040)
!1040 = !{!1041, !1050, !1193, !1199, !1206, !1207, !1212, !1213, !1218, !1219, !1222, !1329, !1330, !1331, !1332, !1333, !1334}
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !70, line: 628, baseType: !1042, size: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !70, line: 628, size: 128, elements: !1043)
!1043 = !{!1044, !1049}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !70, line: 629, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !70, line: 629, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1045, file: !70, line: 631, baseType: !151, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1045, file: !70, line: 632, baseType: !151, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1042, file: !70, line: 635, baseType: !587, size: 128, align: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1039, file: !70, line: 639, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !70, line: 733, size: 10240, elements: !1053)
!1053 = !{!1054, !1191}
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !70, line: 734, baseType: !1055, size: 10240)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !70, line: 734, size: 10240, elements: !1056)
!1056 = !{!1057, !1061, !1074, !1078, !1079, !1080, !1081, !1082, !1083, !1090, !1091, !1092, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1131, !1133, !1136, !1160, !1161, !1162, !1165, !1166, !1167, !1170, !1171, !1172, !1178, !1179}
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !70, line: 739, baseType: !1058, size: 512, align: 512)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !70, line: 739, size: 512, align: 512, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1058, file: !70, line: 747, baseType: !314, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1055, file: !70, line: 750, baseType: !1062, size: 128, offset: 512)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1063, line: 218, size: 128, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1064 = !{!1065, !1072, !1073}
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1063, line: 219, baseType: !1066, size: 32)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !1063, line: 219, size: 32, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1066, file: !1063, line: 220, baseType: !294, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1066, file: !1063, line: 221, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1063, line: 197, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 197, elements: !443)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1062, file: !1063, line: 223, baseType: !6, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1062, file: !1063, line: 224, baseType: !148, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1055, file: !70, line: 752, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!151, !904, !151, !151, !151, !151}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1055, file: !70, line: 756, baseType: !151, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1055, file: !70, line: 757, baseType: !151, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1055, file: !70, line: 760, baseType: !151, size: 64, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1055, file: !70, line: 761, baseType: !151, size: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1055, file: !70, line: 763, baseType: !151, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1055, file: !70, line: 764, baseType: !1084, size: 64, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !15, line: 299, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 299, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1086, file: !15, line: 299, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !161, line: 18, baseType: !151)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1055, file: !70, line: 773, baseType: !314, size: 32, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1055, file: !70, line: 785, baseType: !314, size: 32, offset: 1120)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1055, file: !70, line: 795, baseType: !1093, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !70, line: 726, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1094, file: !70, line: 727, baseType: !152, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1094, file: !70, line: 728, baseType: !149, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1055, file: !70, line: 801, baseType: !151, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1055, file: !70, line: 804, baseType: !533, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1055, file: !70, line: 806, baseType: !149, size: 32, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1055, file: !70, line: 808, baseType: !294, size: 32, offset: 1376)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1055, file: !70, line: 823, baseType: !717, size: 320, offset: 1408)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1055, file: !70, line: 825, baseType: !182, size: 128, offset: 1728)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1055, file: !70, line: 845, baseType: !149, size: 32, offset: 1856)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1055, file: !70, line: 849, baseType: !151, size: 64, offset: 1920)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1055, file: !70, line: 850, baseType: !151, size: 64, offset: 1984)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1055, file: !70, line: 852, baseType: !151, size: 64, offset: 2048)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1055, file: !70, line: 853, baseType: !151, size: 64, offset: 2112)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1055, file: !70, line: 854, baseType: !535, size: 64, offset: 2176)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1055, file: !70, line: 855, baseType: !151, size: 64, offset: 2240)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1055, file: !70, line: 856, baseType: !151, size: 64, offset: 2304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1055, file: !70, line: 857, baseType: !151, size: 64, offset: 2368)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1055, file: !70, line: 858, baseType: !151, size: 64, offset: 2432)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1055, file: !70, line: 865, baseType: !248, size: 32, offset: 2496)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1055, file: !70, line: 867, baseType: !294, size: 32, offset: 2528)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1055, file: !70, line: 869, baseType: !151, size: 64, offset: 2560)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1055, file: !70, line: 869, baseType: !151, size: 64, offset: 2624)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1055, file: !70, line: 869, baseType: !151, size: 64, offset: 2688)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1055, file: !70, line: 869, baseType: !151, size: 64, offset: 2752)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1055, file: !70, line: 870, baseType: !151, size: 64, offset: 2816)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1055, file: !70, line: 870, baseType: !151, size: 64, offset: 2880)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1055, file: !70, line: 870, baseType: !151, size: 64, offset: 2944)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1055, file: !70, line: 871, baseType: !151, size: 64, offset: 3008)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1055, file: !70, line: 871, baseType: !151, size: 64, offset: 3072)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1055, file: !70, line: 871, baseType: !151, size: 64, offset: 3136)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1055, file: !70, line: 871, baseType: !151, size: 64, offset: 3200)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1055, file: !70, line: 873, baseType: !1128, size: 3328, offset: 3264)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 3328, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 52)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1055, file: !70, line: 875, baseType: !1132, size: 1280, offset: 6592)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 1280, elements: !641)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1055, file: !70, line: 877, baseType: !1134, size: 64, offset: 7872)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !70, line: 877, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1055, file: !70, line: 880, baseType: !1137, size: 1088, offset: 7936)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1138, line: 72, baseType: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 23, size: 1088, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1148, !1149, !1150, !1151, !1155, !1156, !1157}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1139, file: !1138, line: 28, baseType: !152, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1139, file: !1138, line: 38, baseType: !535, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1139, file: !1138, line: 40, baseType: !151, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1139, file: !1138, line: 43, baseType: !717, size: 320, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1139, file: !1138, line: 44, baseType: !1146, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1138, line: 44, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1138, line: 48, baseType: !151, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1138, line: 59, baseType: !529, size: 256, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1139, file: !1138, line: 60, baseType: !148, size: 64, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1139, file: !1138, line: 61, baseType: !1152, size: 64, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1138, line: 61, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1139, file: !1138, line: 63, baseType: !314, size: 32, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1139, file: !1138, line: 69, baseType: !329, size: 16, offset: 1056)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1139, file: !1138, line: 70, baseType: !1158, size: 16, offset: 1072)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !153, line: 18, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !745)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !70, line: 882, baseType: !151, size: 64, offset: 9024)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1055, file: !70, line: 885, baseType: !294, size: 32, offset: 9088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1055, file: !70, line: 886, baseType: !1163, size: 64, offset: 9152)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !70, line: 732, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1055, file: !70, line: 901, baseType: !859, size: 64, offset: 9216)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1055, file: !70, line: 904, baseType: !904, size: 64, offset: 9280)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1055, file: !70, line: 906, baseType: !1168, size: 64, offset: 9344)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !70, line: 906, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1055, file: !70, line: 930, baseType: !314, size: 32, offset: 9408)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1055, file: !70, line: 933, baseType: !314, size: 32, offset: 9440)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1055, file: !70, line: 935, baseType: !1173, size: 64, offset: 9472)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !86, line: 103, size: 64, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1173, file: !86, line: 104, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !86, line: 101, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1055, file: !70, line: 940, baseType: !533, size: 64, offset: 9536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1055, file: !70, line: 942, baseType: !1180, size: 256, offset: 9600)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1181, line: 98, size: 256, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1180, file: !1181, line: 99, baseType: !533, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1180, file: !1181, line: 100, baseType: !182, size: 128, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1180, file: !1181, line: 101, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1181, line: 21, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1052, file: !70, line: 986, baseType: !1192, offset: 10240)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !660)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1039, file: !70, line: 640, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !15, line: 297, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !15, line: 297, size: 64, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1195, file: !15, line: 297, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !161, line: 19, baseType: !151)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !70, line: 646, baseType: !1200, size: 64, offset: 256)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !70, line: 646, size: 64, elements: !1201)
!1201 = !{!1202, !1205}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1200, file: !70, line: 647, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !70, line: 542, baseType: !151)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1200, file: !70, line: 648, baseType: !1204, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1039, file: !70, line: 666, baseType: !149, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1039, file: !70, line: 667, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !70, line: 579, size: 320, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1209, file: !70, line: 580, baseType: !717, size: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1039, file: !70, line: 670, baseType: !776, size: 8, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1039, file: !70, line: 681, baseType: !1214, size: 256, offset: 512)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !70, line: 678, size: 256, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1214, file: !70, line: 679, baseType: !709, size: 192, align: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1214, file: !70, line: 680, baseType: !151, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1039, file: !70, line: 689, baseType: !182, size: 128, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1039, file: !70, line: 691, baseType: !1220, size: 64, offset: 896)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !70, line: 691, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1039, file: !70, line: 694, baseType: !1223, size: 64, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1226, line: 563, size: 1024, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1227 = !{!1228, !1232, !1233, !1237, !1241, !1245, !1293, !1297, !1301, !1305, !1306, !1307, !1311, !1315, !1321, !1325}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1225, file: !1226, line: 564, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1038}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1225, file: !1226, line: 569, baseType: !1229, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1225, file: !1226, line: 571, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!149, !1038, !151}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1225, file: !1226, line: 572, baseType: !1238, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!149, !1038}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1225, file: !1226, line: 578, baseType: !1242, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!149, !1038, !151, !151, !151}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1225, file: !1226, line: 580, baseType: !1246, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !70, line: 1184, baseType: !6)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1226, line: 512, size: 896, elements: !1252)
!1252 = !{!1253, !1261, !1262, !1269, !1276, !1285, !1286, !1287, !1289, !1291}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1226, line: 513, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !1226, line: 513, size: 320, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1254, file: !1226, line: 514, baseType: !1038, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1254, file: !1226, line: 515, baseType: !157, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1254, file: !1226, line: 516, baseType: !151, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1254, file: !1226, line: 517, baseType: !151, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1254, file: !1226, line: 518, baseType: !151, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !1226, line: 520, baseType: !69, size: 32, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1251, file: !1226, line: 522, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !161, line: 22, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 22, size: 64, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1265, file: !161, line: 22, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !161, line: 15, baseType: !151)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1251, file: !1226, line: 524, baseType: !1270, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !15, line: 372, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 372, size: 64, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1272, file: !15, line: 372, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !161, line: 16, baseType: !151)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1226, line: 527, baseType: !1277, size: 64, offset: 512)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !1226, line: 527, size: 64, elements: !1278)
!1278 = !{!1279, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1277, file: !1226, line: 528, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !161, line: 21, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 21, size: 64, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1281, file: !161, line: 21, baseType: !160, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1277, file: !1226, line: 529, baseType: !1264, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1251, file: !1226, line: 534, baseType: !168, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1251, file: !1226, line: 535, baseType: !168, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1251, file: !1226, line: 541, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1251, file: !1226, line: 545, baseType: !1290, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1251, file: !1226, line: 549, baseType: !1292, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !15, line: 520, baseType: !168)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1225, file: !1226, line: 581, baseType: !1294, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1249, !1250, !6}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1225, file: !1226, line: 582, baseType: !1298, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1249, !1250, !151, !151}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1225, file: !1226, line: 584, baseType: !1302, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!151, !1038}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1225, file: !1226, line: 588, baseType: !1246, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1225, file: !1226, line: 591, baseType: !1246, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1225, file: !1226, line: 597, baseType: !1308, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!149, !1038, !151, !148, !149, !149}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1225, file: !1226, line: 603, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!165, !1038}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1225, file: !1226, line: 613, baseType: !1316, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!149, !1038, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !70, line: 717, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1225, file: !1226, line: 625, baseType: !1322, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1319, !1038, !151}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1225, file: !1226, line: 633, baseType: !1326, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!168, !1038, !151}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1039, file: !70, line: 697, baseType: !151, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1039, file: !70, line: 699, baseType: !904, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1039, file: !70, line: 700, baseType: !148, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1039, file: !70, line: 711, baseType: !533, size: 64, offset: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1039, file: !70, line: 717, baseType: !1319, size: 64, offset: 1280)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1039, file: !70, line: 722, baseType: !1335, offset: 1344)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !70, line: 570, elements: !443)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !897, file: !33, line: 1928, baseType: !151, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !897, file: !33, line: 1929, baseType: !1338, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!149, !199, !904}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !897, file: !33, line: 1930, baseType: !1342, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!149, !904, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !33, line: 1061, baseType: !148)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !897, file: !33, line: 1931, baseType: !1338, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !897, file: !33, line: 1932, baseType: !1348, size: 64, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!149, !904, !398, !398, !149}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !897, file: !33, line: 1933, baseType: !1352, size: 64, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!149, !149, !904, !149}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !897, file: !33, line: 1934, baseType: !1356, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!149, !904, !149, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !33, line: 1063, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !897, file: !33, line: 1935, baseType: !1075, size: 64, offset: 1216)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !897, file: !33, line: 1936, baseType: !1363, size: 64, offset: 1280)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!149, !149}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !897, file: !33, line: 1937, baseType: !1356, size: 64, offset: 1344)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !897, file: !33, line: 1938, baseType: !1368, size: 64, offset: 1408)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!909, !1371, !904, !558, !520, !6}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1373, line: 59, flags: DIFlagFwdDecl)
!1373 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !897, file: !33, line: 1939, baseType: !1375, size: 64, offset: 1472)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!909, !904, !558, !1371, !520, !6}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !897, file: !33, line: 1940, baseType: !1379, size: 64, offset: 1536)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !904}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !897, file: !33, line: 1941, baseType: !1383, size: 64, offset: 1600)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!149, !904, !149, !1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !897, file: !33, line: 1942, baseType: !1389, size: 64, offset: 1664)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!912, !904, !149, !398, !398}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !897, file: !33, line: 1944, baseType: !1393, size: 64, offset: 1728)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !514, !904}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !897, file: !33, line: 1948, baseType: !1397, size: 64, offset: 1792)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!909, !904, !398, !904, !398, !520, !6}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !897, file: !33, line: 1950, baseType: !1401, size: 64, offset: 1856)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!398, !904, !398, !904, !398, !398, !6}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !897, file: !33, line: 1953, baseType: !1348, size: 64, offset: 1920)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !897, file: !33, line: 1954, baseType: !1406, size: 64, offset: 1984)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!149, !1409, !6}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !33, line: 1911, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !897, file: !33, line: 1955, baseType: !1412, size: 64, offset: 2048)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!149, !1409, !1006, !6}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !575, file: !33, line: 1018, baseType: !152, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !575, file: !33, line: 1020, baseType: !148, size: 64, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !575, file: !33, line: 1023, baseType: !148, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !575, file: !33, line: 1027, baseType: !1419, size: 64, offset: 1664)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !575, file: !33, line: 1029, baseType: !195, size: 64, offset: 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !575, file: !33, line: 1030, baseType: !1422, size: 32, offset: 1792)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1423, line: 8, baseType: !163)
!1423 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !575, file: !33, line: 1031, baseType: !1422, size: 32, offset: 1824)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !515, file: !516, line: 29, baseType: !148, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !457, file: !33, line: 2077, baseType: !511, size: 64, offset: 1088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !457, file: !33, line: 2078, baseType: !511, size: 64, offset: 1152)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !457, file: !33, line: 2079, baseType: !511, size: 64, offset: 1216)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !457, file: !33, line: 2081, baseType: !1430, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!909, !388, !149, !377, !520, !398}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !457, file: !33, line: 2082, baseType: !1434, size: 64, offset: 1344)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!909, !388, !149, !165, !520, !398}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !457, file: !33, line: 2083, baseType: !1438, size: 64, offset: 1408)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441, !199}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 296, size: 1664, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1469, !1470, !1471}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1443, file: !38, line: 297, baseType: !435, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1443, file: !38, line: 298, baseType: !182, size: 128, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1443, file: !38, line: 299, baseType: !182, size: 128, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1443, file: !38, line: 300, baseType: !182, size: 128, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1443, file: !38, line: 301, baseType: !529, size: 256, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1443, file: !38, line: 302, baseType: !294, size: 32, offset: 768)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1443, file: !38, line: 303, baseType: !314, size: 32, offset: 800)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1443, file: !38, line: 304, baseType: !388, size: 64, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1443, file: !38, line: 305, baseType: !1454, size: 64, offset: 896)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !1455)
!1455 = !{!1456, !1468}
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !38, line: 69, baseType: !1457, size: 32)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !38, line: 69, size: 32, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1457, file: !38, line: 70, baseType: !207, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1457, file: !38, line: 71, baseType: !217, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1457, file: !38, line: 72, baseType: !1462, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1463, line: 24, baseType: !1464)
!1463 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1463, line: 22, size: 32, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1464, file: !1463, line: 23, baseType: !1467, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1463, line: 20, baseType: !213)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1443, file: !38, line: 306, baseType: !398, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1443, file: !38, line: 307, baseType: !151, size: 64, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1443, file: !38, line: 308, baseType: !1472, size: 576, offset: 1088)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !1473)
!1473 = !{!1474, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1472, file: !38, line: 206, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !400)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1472, file: !38, line: 207, baseType: !1475, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1472, file: !38, line: 208, baseType: !1475, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1472, file: !38, line: 209, baseType: !1475, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1472, file: !38, line: 210, baseType: !1475, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1472, file: !38, line: 211, baseType: !1475, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1472, file: !38, line: 212, baseType: !1475, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1472, file: !38, line: 213, baseType: !733, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1472, file: !38, line: 214, baseType: !733, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !457, file: !33, line: 2085, baseType: !1485, size: 64, offset: 1472)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!912, !388, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1490, line: 15, size: 256, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1491 = !{!1492, !1493, !1494, !1495, !1496}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1489, file: !1490, line: 16, baseType: !157, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1489, file: !1490, line: 19, baseType: !149, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1489, file: !1490, line: 26, baseType: !151, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1489, file: !1490, line: 33, baseType: !151, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1489, file: !1490, line: 36, baseType: !1497, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1490, line: 36, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !457, file: !33, line: 2087, baseType: !1485, size: 64, offset: 1536)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !457, file: !33, line: 2089, baseType: !422, size: 64, offset: 1600)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !389, file: !33, line: 1198, baseType: !1502, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 324, size: 704, elements: !1505)
!1505 = !{!1506, !1510, !1514, !1518, !1519, !1520, !1521, !1522, !1527, !1532, !1536}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1504, file: !38, line: 325, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!149, !1442}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1504, file: !38, line: 326, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1442, !388, !149}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1504, file: !38, line: 327, baseType: !1515, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1442}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1504, file: !38, line: 328, baseType: !1507, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1504, file: !38, line: 329, baseType: !1507, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1504, file: !38, line: 330, baseType: !1507, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1504, file: !38, line: 331, baseType: !485, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1504, file: !38, line: 334, baseType: !1523, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1526, !199}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1504, file: !38, line: 335, baseType: !1528, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!149, !199, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1504, file: !38, line: 337, baseType: !1533, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!149, !199, !1526}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1504, file: !38, line: 339, baseType: !1537, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!149, !388, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !389, file: !33, line: 1199, baseType: !1542, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 430, size: 704, elements: !1545)
!1545 = !{!1546, !1552, !1553, !1557, !1558, !1559, !1574, !1597, !1601, !1602, !1625}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1544, file: !38, line: 431, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!149, !388, !149, !149, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1544, file: !38, line: 432, baseType: !485, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1544, file: !38, line: 433, baseType: !1554, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!149, !388, !6}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1544, file: !38, line: 434, baseType: !1554, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1544, file: !38, line: 435, baseType: !485, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1544, file: !38, line: 436, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!149, !388, !149, !1563}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 417, size: 256, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1564, file: !38, line: 418, baseType: !149, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1564, file: !38, line: 419, baseType: !6, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1564, file: !38, line: 420, baseType: !6, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1564, file: !38, line: 422, baseType: !6, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1564, file: !38, line: 423, baseType: !6, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1564, file: !38, line: 424, baseType: !6, size: 32, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1564, file: !38, line: 425, baseType: !6, size: 32, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1564, file: !38, line: 426, baseType: !6, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1544, file: !38, line: 437, baseType: !1575, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!149, !388, !1454, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 345, size: 960, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1579, file: !38, line: 346, baseType: !149, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1579, file: !38, line: 347, baseType: !152, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1579, file: !38, line: 348, baseType: !152, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1579, file: !38, line: 349, baseType: !152, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1579, file: !38, line: 350, baseType: !152, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1579, file: !38, line: 351, baseType: !152, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1579, file: !38, line: 352, baseType: !152, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1579, file: !38, line: 353, baseType: !539, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1579, file: !38, line: 355, baseType: !539, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1579, file: !38, line: 356, baseType: !149, size: 32, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1579, file: !38, line: 357, baseType: !149, size: 32, offset: 608)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1579, file: !38, line: 358, baseType: !152, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1579, file: !38, line: 359, baseType: !152, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1579, file: !38, line: 360, baseType: !152, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1579, file: !38, line: 361, baseType: !539, size: 64, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1579, file: !38, line: 362, baseType: !149, size: 32, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1544, file: !38, line: 438, baseType: !1598, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!149, !388, !1540, !1578}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1544, file: !38, line: 440, baseType: !1575, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1544, file: !38, line: 441, baseType: !1603, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!149, !388, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 411, size: 1408, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1607, file: !38, line: 412, baseType: !6, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1607, file: !38, line: 413, baseType: !1611, size: 1344, offset: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1612, size: 1344, elements: !448)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 397, size: 448, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1624}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1612, file: !38, line: 398, baseType: !6, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1612, file: !38, line: 399, baseType: !6, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1612, file: !38, line: 401, baseType: !6, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1612, file: !38, line: 402, baseType: !6, size: 32, offset: 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1612, file: !38, line: 403, baseType: !6, size: 32, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1612, file: !38, line: 404, baseType: !6, size: 32, offset: 160)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1612, file: !38, line: 405, baseType: !6, size: 32, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1612, file: !38, line: 406, baseType: !156, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1612, file: !38, line: 407, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !152)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1612, file: !38, line: 408, baseType: !1623, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1544, file: !38, line: 442, baseType: !1554, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !389, file: !33, line: 1200, baseType: !1627, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !33, line: 54, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !389, file: !33, line: 1201, baseType: !151, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !389, file: !33, line: 1202, baseType: !151, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !389, file: !33, line: 1203, baseType: !151, size: 64, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !389, file: !33, line: 1204, baseType: !237, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !389, file: !33, line: 1205, baseType: !717, size: 320, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !389, file: !33, line: 1206, baseType: !149, size: 32, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !389, file: !33, line: 1207, baseType: !314, size: 32, offset: 1248)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !389, file: !33, line: 1209, baseType: !148, size: 64, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !389, file: !33, line: 1211, baseType: !1639, size: 64, offset: 1344)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !33, line: 1211, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !389, file: !33, line: 1223, baseType: !1644, size: 64, offset: 1408)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !254, line: 34, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1644, file: !254, line: 35, baseType: !257, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !389, file: !33, line: 1224, baseType: !182, size: 128, offset: 1472)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !389, file: !33, line: 1225, baseType: !1649, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !33, line: 1225, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !389, file: !33, line: 1226, baseType: !1652, size: 64, offset: 1664)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !33, line: 1226, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !389, file: !33, line: 1227, baseType: !1655, size: 64, offset: 1728)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !33, line: 50, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !389, file: !33, line: 1228, baseType: !1658, size: 64, offset: 1792)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !33, line: 1228, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !389, file: !33, line: 1229, baseType: !435, size: 128, offset: 1856)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !389, file: !33, line: 1230, baseType: !6, size: 32, offset: 1984)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !389, file: !33, line: 1231, baseType: !1663, size: 2496, offset: 2048)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 521, size: 2496, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1669, !1701}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1663, file: !38, line: 522, baseType: !6, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1663, file: !38, line: 523, baseType: !717, size: 320, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1663, file: !38, line: 524, baseType: !1668, size: 192, offset: 384)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 192, elements: !448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1663, file: !38, line: 525, baseType: !1670, size: 1728, offset: 576)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 1728, elements: !448)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !1672)
!1672 = !{!1673, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1671, file: !38, line: 223, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 445, size: 256, elements: !1676)
!1676 = !{!1677, !1678, !1691, !1692}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1675, file: !38, line: 446, baseType: !149, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1675, file: !38, line: 447, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 312, size: 512, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1681, file: !38, line: 313, baseType: !485, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1681, file: !38, line: 314, baseType: !485, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1681, file: !38, line: 315, baseType: !485, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1681, file: !38, line: 316, baseType: !485, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1681, file: !38, line: 317, baseType: !1507, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1681, file: !38, line: 318, baseType: !1507, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1681, file: !38, line: 319, baseType: !1507, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1681, file: !38, line: 320, baseType: !1537, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1675, file: !38, line: 448, baseType: !426, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1675, file: !38, line: 449, baseType: !1674, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1671, file: !38, line: 224, baseType: !149, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1671, file: !38, line: 226, baseType: !182, size: 128, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1671, file: !38, line: 227, baseType: !151, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1671, file: !38, line: 228, baseType: !6, size: 32, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1671, file: !38, line: 229, baseType: !6, size: 32, offset: 352)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1671, file: !38, line: 230, baseType: !1475, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1671, file: !38, line: 231, baseType: !1475, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1671, file: !38, line: 232, baseType: !148, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1663, file: !38, line: 526, baseType: !1702, size: 192, offset: 2304)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1679, size: 192, elements: !448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !389, file: !33, line: 1233, baseType: !1704, size: 2368, offset: 4544)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !33, line: 1184, size: 2368, elements: !1705)
!1705 = !{!1706, !1707, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1704, file: !33, line: 1185, baseType: !204, size: 16)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1704, file: !33, line: 1186, baseType: !204, size: 16, offset: 16)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1704, file: !33, line: 1187, baseType: !1709, size: 2304, offset: 64)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 2304, elements: !448)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1711, line: 12, size: 768, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1712 = !{!1713, !1721, !1723, !2960, !2961}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1710, file: !1711, line: 13, baseType: !1714, size: 384)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1715, line: 17, size: 384, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1716 = !{!1717, !1718, !1719, !1720}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1714, file: !1715, line: 18, baseType: !149, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1714, file: !1715, line: 19, baseType: !149, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1714, file: !1715, line: 20, baseType: !645, size: 192, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1714, file: !1715, line: 22, baseType: !587, size: 128, align: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1710, file: !1711, line: 14, baseType: !1722, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1710, file: !1711, line: 15, baseType: !1724, size: 64, offset: 448)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1725, line: 16, size: 64, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1724, file: !1725, line: 17, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1373, line: 746, size: 58368, elements: !1730)
!1730 = !{!1731, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1811, !1822, !1917, !1921, !1924, !1955, !1956, !1957, !1958, !1969, !1971, !1972, !1973, !1974, !1975, !1976, !1987, !1988, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !2005, !2006, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2094, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2109, !2110, !2111, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2153, !2159, !2160, !2161, !2162, !2163, !2167, !2170, !2177, !2182, !2185, !2188, !2191, !2194, !2334, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2376, !2377, !2378, !2387, !2395, !2396, !2397, !2398, !2399, !2404, !2405, !2406, !2409, !2410, !2413, !2416, !2419, !2427, !2430, !2431, !2517, !2518, !2519, !2520, !2521, !2527, !2528, !2529, !2530, !2533, !2534, !2537, !2551, !2552, !2555, !2556, !2557, !2560, !2561, !2562, !2563, !2564, !2565, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2597, !2598, !2604, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2616, !2688, !2690, !2691, !2692, !2693, !2694, !2706, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2737, !2738, !2739}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1729, file: !1373, line: 752, baseType: !1732, size: 192)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1733, line: 56, size: 192, elements: !1734)
!1733 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1734 = !{!1735, !1736, !1737, !1738}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 57, baseType: !151, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1732, file: !1733, line: 58, baseType: !151, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1732, file: !1733, line: 59, baseType: !163, size: 32, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1732, file: !1733, line: 61, baseType: !163, size: 32, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1729, file: !1373, line: 754, baseType: !6, size: 32, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1729, file: !1373, line: 767, baseType: !148, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1373, line: 768, baseType: !632, size: 32, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1373, line: 770, baseType: !6, size: 32, offset: 352)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1729, file: !1373, line: 771, baseType: !6, size: 32, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1729, file: !1373, line: 774, baseType: !149, size: 32, offset: 416)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1729, file: !1373, line: 775, baseType: !1746, size: 128, offset: 448)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1747, line: 58, size: 128, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1748 = !{!1749, !1750, !1755, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1746, file: !1747, line: 59, baseType: !581, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1747, line: 60, baseType: !1751, size: 32, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !1747, line: 60, size: 32, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1751, file: !1747, line: 61, baseType: !6, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1751, file: !1747, line: 62, baseType: !314, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1746, file: !1747, line: 65, baseType: !329, size: 16, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1746, file: !1747, line: 65, baseType: !329, size: 16, offset: 112)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1729, file: !1373, line: 776, baseType: !6, size: 32, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1729, file: !1373, line: 777, baseType: !151, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1729, file: !1373, line: 778, baseType: !1728, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1729, file: !1373, line: 787, baseType: !149, size: 32, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1729, file: !1373, line: 788, baseType: !149, size: 32, offset: 800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1729, file: !1373, line: 790, baseType: !149, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1729, file: !1373, line: 792, baseType: !149, size: 32, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1729, file: !1373, line: 793, baseType: !149, size: 32, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1729, file: !1373, line: 794, baseType: !149, size: 32, offset: 928)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1729, file: !1373, line: 795, baseType: !6, size: 32, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1729, file: !1373, line: 797, baseType: !1768, size: 2048, offset: 1024)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1373, line: 551, size: 2048, elements: !1769)
!1769 = !{!1770, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1790, !1793, !1794, !1795}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1768, file: !1373, line: 553, baseType: !1771, size: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1373, line: 411, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1771, file: !1373, line: 412, baseType: !151, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1771, file: !1373, line: 413, baseType: !163, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1768, file: !1373, line: 554, baseType: !709, size: 192, align: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1768, file: !1373, line: 555, baseType: !152, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1768, file: !1373, line: 556, baseType: !152, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1768, file: !1373, line: 558, baseType: !182, size: 128, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1768, file: !1373, line: 559, baseType: !6, size: 32, offset: 576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1768, file: !1373, line: 561, baseType: !152, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1768, file: !1373, line: 562, baseType: !152, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1768, file: !1373, line: 563, baseType: !152, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1768, file: !1373, line: 564, baseType: !152, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1768, file: !1373, line: 565, baseType: !539, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1768, file: !1373, line: 566, baseType: !152, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1768, file: !1373, line: 568, baseType: !152, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1768, file: !1373, line: 571, baseType: !149, size: 32, offset: 1088)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1768, file: !1373, line: 572, baseType: !1789, size: 64, offset: 1152)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1768, file: !1373, line: 574, baseType: !1791, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1373, line: 49, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1768, file: !1373, line: 576, baseType: !1791, size: 64, offset: 1280)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1768, file: !1373, line: 578, baseType: !151, size: 64, offset: 1344)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1768, file: !1373, line: 588, baseType: !1796, size: 512, align: 512, offset: 1536)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1373, line: 497, size: 512, align: 512, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1796, file: !1373, line: 498, baseType: !152, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1796, file: !1373, line: 499, baseType: !152, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1796, file: !1373, line: 500, baseType: !152, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1796, file: !1373, line: 501, baseType: !163, size: 32, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1796, file: !1373, line: 502, baseType: !163, size: 32, offset: 224)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1796, file: !1373, line: 503, baseType: !151, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1796, file: !1373, line: 504, baseType: !151, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1796, file: !1373, line: 505, baseType: !151, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1796, file: !1373, line: 506, baseType: !1807, size: 64, align: 64, offset: 448)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1373, line: 445, size: 64, align: 64, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1807, file: !1373, line: 446, baseType: !6, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1807, file: !1373, line: 447, baseType: !6, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1729, file: !1373, line: 798, baseType: !1812, size: 384, offset: 3072)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1373, line: 592, size: 384, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1812, file: !1373, line: 593, baseType: !182, size: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1812, file: !1373, line: 594, baseType: !151, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1812, file: !1373, line: 595, baseType: !151, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1812, file: !1373, line: 596, baseType: !6, size: 32, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1812, file: !1373, line: 597, baseType: !204, size: 16, offset: 288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1812, file: !1373, line: 598, baseType: !204, size: 16, offset: 304)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1812, file: !1373, line: 600, baseType: !1821, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1729, file: !1373, line: 799, baseType: !1823, size: 1792, offset: 3456)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1373, line: 610, size: 1792, elements: !1824)
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1914, !1915}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1823, file: !1373, line: 611, baseType: !709, size: 192, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1823, file: !1373, line: 618, baseType: !152, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1823, file: !1373, line: 619, baseType: !152, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1823, file: !1373, line: 620, baseType: !152, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1823, file: !1373, line: 621, baseType: !152, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1823, file: !1373, line: 622, baseType: !152, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1823, file: !1373, line: 629, baseType: !539, size: 64, offset: 512)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1823, file: !1373, line: 630, baseType: !152, size: 64, offset: 576)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !1373, line: 631, baseType: !6, size: 32, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1823, file: !1373, line: 653, baseType: !6, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1823, file: !1373, line: 654, baseType: !6, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1823, file: !1373, line: 655, baseType: !6, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1823, file: !1373, line: 656, baseType: !6, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1823, file: !1373, line: 662, baseType: !1839, size: 512, offset: 704)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !44, line: 118, size: 512, elements: !1840)
!1840 = !{!1841, !1849, !1850, !1855, !1910, !1911, !1912, !1913}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1839, file: !44, line: 119, baseType: !1842, size: 256)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1843, line: 9, size: 256, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1842, file: !1843, line: 10, baseType: !709, size: 192, align: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1842, file: !1843, line: 11, baseType: !1847, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1848, line: 29, baseType: !539)
!1848 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1839, file: !44, line: 120, baseType: !1847, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1839, file: !44, line: 121, baseType: !1851, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!43, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1839, file: !44, line: 122, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !44, line: 159, size: 512, align: 512, elements: !1858)
!1858 = !{!1859, !1884, !1885, !1888, !1893, !1894, !1905, !1909}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1857, file: !44, line: 160, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !44, line: 215, size: 4608, align: 512, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !44, line: 216, baseType: !542, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1861, file: !44, line: 217, baseType: !6, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1861, file: !44, line: 218, baseType: !6, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1861, file: !44, line: 219, baseType: !6, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1861, file: !44, line: 220, baseType: !6, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1861, file: !44, line: 221, baseType: !6, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1861, file: !44, line: 222, baseType: !6, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1861, file: !44, line: 223, baseType: !6, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1861, file: !44, line: 224, baseType: !6, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1861, file: !44, line: 226, baseType: !6, size: 32, offset: 160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1861, file: !44, line: 227, baseType: !204, size: 16, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1861, file: !44, line: 228, baseType: !204, size: 16, offset: 208)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1861, file: !44, line: 229, baseType: !6, size: 32, offset: 224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1861, file: !44, line: 235, baseType: !1847, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1861, file: !44, line: 236, baseType: !1854, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1861, file: !44, line: 237, baseType: !1847, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1861, file: !44, line: 238, baseType: !1854, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1861, file: !44, line: 239, baseType: !1881, size: 4096, align: 512, offset: 512)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 4096, align: 512, elements: !1882)
!1882 = !{!1883}
!1883 = !DISubrange(count: 8)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1857, file: !44, line: 161, baseType: !6, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1857, file: !44, line: 162, baseType: !1886, size: 32, offset: 96)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !214, line: 96, baseType: !149)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1857, file: !44, line: 163, baseType: !1889, size: 32, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !244, line: 274, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !244, line: 274, size: 32, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1890, file: !244, line: 274, baseType: !248, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1857, file: !44, line: 164, baseType: !1854, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1857, file: !44, line: 165, baseType: !1895, size: 128, offset: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1843, line: 14, size: 128, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1895, file: !1843, line: 15, baseType: !1898, size: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !710, line: 26, size: 128, elements: !1899)
!1899 = !{!1900, !1904}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1898, file: !710, line: 27, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !710, line: 12, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1901, file: !710, line: 13, baseType: !714, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1898, file: !710, line: 28, baseType: !714, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1857, file: !44, line: 166, baseType: !1906, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1847}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1857, file: !44, line: 167, baseType: !1847, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1839, file: !44, line: 123, baseType: !322, size: 8, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1839, file: !44, line: 124, baseType: !322, size: 8, offset: 456)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1839, file: !44, line: 125, baseType: !322, size: 8, offset: 464)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1839, file: !44, line: 126, baseType: !322, size: 8, offset: 472)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1823, file: !1373, line: 671, baseType: !1839, size: 512, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1823, file: !1373, line: 679, baseType: !1916, size: 64, offset: 1728)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1729, file: !1373, line: 800, baseType: !1918, size: 64, offset: 5248)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1373, line: 800, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1729, file: !1373, line: 809, baseType: !1922, size: 64, offset: 5312)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1373, line: 70, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1729, file: !1373, line: 825, baseType: !1925, size: 2048, align: 512, offset: 5632)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1373, line: 509, size: 2048, align: 512, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1925, file: !1373, line: 511, baseType: !152, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1925, file: !1373, line: 512, baseType: !152, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1925, file: !1373, line: 513, baseType: !152, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1925, file: !1373, line: 514, baseType: !152, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1925, file: !1373, line: 515, baseType: !152, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1925, file: !1373, line: 516, baseType: !152, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1925, file: !1373, line: 518, baseType: !152, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1925, file: !1373, line: 519, baseType: !152, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1925, file: !1373, line: 520, baseType: !539, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1925, file: !1373, line: 522, baseType: !152, size: 64, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1925, file: !1373, line: 523, baseType: !152, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1925, file: !1373, line: 524, baseType: !539, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1925, file: !1373, line: 526, baseType: !539, size: 64, offset: 768)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1925, file: !1373, line: 527, baseType: !152, size: 64, offset: 832)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1925, file: !1373, line: 529, baseType: !152, size: 64, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1925, file: !1373, line: 530, baseType: !152, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1925, file: !1373, line: 531, baseType: !152, size: 64, offset: 1024)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1925, file: !1373, line: 532, baseType: !152, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1925, file: !1373, line: 533, baseType: !152, size: 64, offset: 1152)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1925, file: !1373, line: 535, baseType: !152, size: 64, offset: 1216)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1925, file: !1373, line: 536, baseType: !152, size: 64, offset: 1280)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1925, file: !1373, line: 537, baseType: !152, size: 64, offset: 1344)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1925, file: !1373, line: 538, baseType: !152, size: 64, offset: 1408)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1925, file: !1373, line: 539, baseType: !152, size: 64, offset: 1472)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1925, file: !1373, line: 540, baseType: !152, size: 64, offset: 1536)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1925, file: !1373, line: 541, baseType: !152, size: 64, offset: 1600)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1925, file: !1373, line: 542, baseType: !152, size: 64, offset: 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1925, file: !1373, line: 543, baseType: !152, size: 64, offset: 1728)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1729, file: !1373, line: 833, baseType: !6, size: 32, offset: 7680)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1729, file: !1373, line: 836, baseType: !6, size: 32, offset: 7712)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1729, file: !1373, line: 837, baseType: !149, size: 32, offset: 7744)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1729, file: !1373, line: 838, baseType: !1959, size: 64, offset: 7808)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1962, line: 19, baseType: !1963)
!1962 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1962, line: 19, size: 64, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1963, file: !1962, line: 19, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1967)
!1967 = !{!1968}
!1968 = !DISubrange(count: 1)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1729, file: !1373, line: 839, baseType: !1970, size: 64, offset: 7872)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1729, file: !1373, line: 840, baseType: !1961, size: 64, offset: 7936)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1729, file: !1373, line: 841, baseType: !148, size: 64, offset: 8000)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1729, file: !1373, line: 843, baseType: !204, size: 16, offset: 8064)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1729, file: !1373, line: 845, baseType: !204, size: 16, offset: 8080)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1729, file: !1373, line: 848, baseType: !149, size: 32, offset: 8096)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1729, file: !1373, line: 849, baseType: !1977, size: 32, offset: 8128)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1373, line: 718, size: 32, elements: !1978)
!1978 = !{!1979, !1986}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1977, file: !1373, line: 724, baseType: !1980, size: 32)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1977, file: !1373, line: 719, size: 32, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1980, file: !1373, line: 720, baseType: !322, size: 8)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1980, file: !1373, line: 721, baseType: !322, size: 8, offset: 8)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1980, file: !1373, line: 722, baseType: !322, size: 8, offset: 16)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1980, file: !1373, line: 723, baseType: !322, size: 8, offset: 24)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1977, file: !1373, line: 725, baseType: !163, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1729, file: !1373, line: 850, baseType: !182, size: 128, offset: 8192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1729, file: !1373, line: 851, baseType: !1989, size: 64, offset: 8320)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1373, line: 60, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1729, file: !1373, line: 855, baseType: !151, size: 64, offset: 8384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1729, file: !1373, line: 856, baseType: !322, size: 8, offset: 8448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1729, file: !1373, line: 857, baseType: !322, size: 8, offset: 8456)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1729, file: !1373, line: 858, baseType: !149, size: 32, offset: 8480)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1729, file: !1373, line: 859, baseType: !182, size: 128, offset: 8512)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1729, file: !1373, line: 860, baseType: !149, size: 32, offset: 8640)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1729, file: !1373, line: 861, baseType: !182, size: 128, offset: 8704)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1729, file: !1373, line: 873, baseType: !1999, size: 256, offset: 8832)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1373, line: 376, size: 256, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1999, file: !1373, line: 381, baseType: !151, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1999, file: !1373, line: 384, baseType: !156, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1999, file: !1373, line: 389, baseType: !156, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1999, file: !1373, line: 392, baseType: !156, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1729, file: !1373, line: 875, baseType: !182, size: 128, offset: 9088)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1729, file: !1373, line: 877, baseType: !2007, size: 320, offset: 9216)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2008, line: 86, size: 320, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2007, file: !2008, line: 87, baseType: !149, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2007, file: !2008, line: 88, baseType: !182, size: 128, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2007, file: !2008, line: 89, baseType: !182, size: 128, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1729, file: !1373, line: 878, baseType: !709, size: 192, align: 64, offset: 9536)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1729, file: !1373, line: 881, baseType: !1051, size: 64, offset: 9728)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1729, file: !1373, line: 882, baseType: !1051, size: 64, offset: 9792)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1729, file: !1373, line: 884, baseType: !149, size: 32, offset: 9856)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1729, file: !1373, line: 885, baseType: !149, size: 32, offset: 9888)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1729, file: !1373, line: 886, baseType: !149, size: 32, offset: 9920)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1729, file: !1373, line: 888, baseType: !149, size: 32, offset: 9952)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1729, file: !1373, line: 890, baseType: !151, size: 64, offset: 9984)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1729, file: !1373, line: 893, baseType: !6, size: 32, offset: 10048)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1729, file: !1373, line: 896, baseType: !6, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1729, file: !1373, line: 897, baseType: !6, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1729, file: !1373, line: 898, baseType: !6, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1729, file: !1373, line: 899, baseType: !6, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1729, file: !1373, line: 919, baseType: !6, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1729, file: !1373, line: 922, baseType: !6, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1729, file: !1373, line: 923, baseType: !6, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1729, file: !1373, line: 925, baseType: !6, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1729, file: !1373, line: 939, baseType: !6, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1729, file: !1373, line: 941, baseType: !6, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1729, file: !1373, line: 944, baseType: !6, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1729, file: !1373, line: 956, baseType: !6, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1729, file: !1373, line: 962, baseType: !6, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1729, file: !1373, line: 966, baseType: !6, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1729, file: !1373, line: 969, baseType: !151, size: 64, offset: 10176)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1729, file: !1373, line: 971, baseType: !2038, size: 448, offset: 10240)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !49, line: 25, size: 448, elements: !2039)
!2039 = !{!2040, !2041, !2046}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2038, file: !49, line: 26, baseType: !151, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2038, file: !49, line: 27, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!912, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !49, line: 28, baseType: !2047, size: 320, offset: 128)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !49, line: 28, size: 320, elements: !2048)
!2048 = !{!2049, !2059, !2084}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2047, file: !49, line: 37, baseType: !2050, size: 320)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !49, line: 30, size: 320, elements: !2051)
!2051 = !{!2052, !2054, !2055, !2056, !2057, !2058}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2050, file: !49, line: 31, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2050, file: !49, line: 32, baseType: !163, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !49, line: 33, baseType: !163, size: 32, offset: 96)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2050, file: !49, line: 34, baseType: !163, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2050, file: !49, line: 35, baseType: !152, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2050, file: !49, line: 36, baseType: !2053, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2047, file: !49, line: 47, baseType: !2060, size: 192)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !49, line: 39, size: 192, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2083}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2060, file: !49, line: 40, baseType: !1886, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2060, file: !49, line: 41, baseType: !48, size: 32, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !49, line: 42, baseType: !2065, size: 64, offset: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !49, line: 42, size: 64, elements: !2066)
!2066 = !{!2067, !2075}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2065, file: !49, line: 43, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2070, line: 7, size: 128, elements: !2071)
!2070 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2071 = !{!2072, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2069, file: !2070, line: 8, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !214, line: 93, baseType: !400)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2069, file: !2070, line: 9, baseType: !400, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2065, file: !49, line: 44, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2078, line: 7, size: 64, elements: !2079)
!2078 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2079 = !{!2080, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2077, file: !2078, line: 8, baseType: !2081, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2078, line: 5, baseType: !702)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2077, file: !2078, line: 9, baseType: !702, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2060, file: !49, line: 46, baseType: !152, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2047, file: !49, line: 55, baseType: !2085, size: 256)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !49, line: 49, size: 256, elements: !2086)
!2086 = !{!2087, !2090, !2091, !2092, !2093}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2085, file: !49, line: 50, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !49, line: 14, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2085, file: !49, line: 51, baseType: !149, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2085, file: !49, line: 52, baseType: !149, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2085, file: !49, line: 53, baseType: !151, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2085, file: !49, line: 54, baseType: !151, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1729, file: !1373, line: 973, baseType: !2095, size: 32, offset: 10688)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !214, line: 28, baseType: !149)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1729, file: !1373, line: 974, baseType: !2095, size: 32, offset: 10720)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1729, file: !1373, line: 978, baseType: !151, size: 64, offset: 10752)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1729, file: !1373, line: 987, baseType: !1728, size: 64, offset: 10816)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1729, file: !1373, line: 990, baseType: !1728, size: 64, offset: 10880)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1729, file: !1373, line: 995, baseType: !182, size: 128, offset: 10944)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1729, file: !1373, line: 996, baseType: !182, size: 128, offset: 11072)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1729, file: !1373, line: 997, baseType: !1728, size: 64, offset: 11200)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1729, file: !1373, line: 1005, baseType: !182, size: 128, offset: 11264)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1729, file: !1373, line: 1006, baseType: !182, size: 128, offset: 11392)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1729, file: !1373, line: 1009, baseType: !628, size: 64, offset: 11520)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1729, file: !1373, line: 1010, baseType: !2108, size: 512, offset: 11584)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !641)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1729, file: !1373, line: 1011, baseType: !182, size: 128, offset: 12096)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1729, file: !1373, line: 1012, baseType: !182, size: 128, offset: 12224)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1729, file: !1373, line: 1014, baseType: !2112, size: 64, offset: 12352)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2114, line: 26, size: 256, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2113, file: !2114, line: 27, baseType: !6, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2113, file: !2114, line: 28, baseType: !2118, size: 192, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2119, line: 43, size: 192, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2118, file: !2119, line: 44, baseType: !542, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2118, file: !2119, line: 45, baseType: !182, size: 128, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1729, file: !1373, line: 1017, baseType: !508, size: 64, offset: 12416)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1729, file: !1373, line: 1020, baseType: !508, size: 64, offset: 12480)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1729, file: !1373, line: 1023, baseType: !148, size: 64, offset: 12544)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1729, file: !1373, line: 1025, baseType: !152, size: 64, offset: 12608)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1729, file: !1373, line: 1026, baseType: !152, size: 64, offset: 12672)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1729, file: !1373, line: 1031, baseType: !152, size: 64, offset: 12736)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1729, file: !1373, line: 1032, baseType: !2130, size: 192, offset: 12800)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1373, line: 324, size: 192, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2130, file: !1373, line: 326, baseType: !152, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2130, file: !1373, line: 327, baseType: !152, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2130, file: !1373, line: 328, baseType: !542, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1729, file: !1373, line: 1041, baseType: !151, size: 64, offset: 12992)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1729, file: !1373, line: 1042, baseType: !151, size: 64, offset: 13056)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1729, file: !1373, line: 1045, baseType: !152, size: 64, offset: 13120)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1729, file: !1373, line: 1048, baseType: !152, size: 64, offset: 13184)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1729, file: !1373, line: 1051, baseType: !151, size: 64, offset: 13248)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1729, file: !1373, line: 1052, baseType: !151, size: 64, offset: 13312)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1729, file: !1373, line: 1055, baseType: !2142, size: 640, offset: 13376)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2143, line: 132, size: 640, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2144 = !{!2145, !2151, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2142, file: !2143, line: 133, baseType: !2146, size: 576)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2147, size: 576, elements: !448)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2143, line: 117, size: 192, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2147, file: !2143, line: 118, baseType: !152, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2147, file: !2143, line: 119, baseType: !1895, size: 128, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2142, file: !2143, line: 134, baseType: !6, size: 32, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2142, file: !2143, line: 135, baseType: !6, size: 32, offset: 608)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1729, file: !1373, line: 1058, baseType: !2154, size: 448, offset: 14016)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2143, line: 144, size: 448, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2154, file: !2143, line: 145, baseType: !587, size: 128, align: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2154, file: !2143, line: 146, baseType: !529, size: 256, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2154, file: !2143, line: 147, baseType: !6, size: 32, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1729, file: !1373, line: 1064, baseType: !667, size: 64, offset: 14464)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1729, file: !1373, line: 1067, baseType: !667, size: 64, offset: 14528)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1729, file: !1373, line: 1070, baseType: !667, size: 64, offset: 14592)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1729, file: !1373, line: 1074, baseType: !694, size: 64, offset: 14656)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1729, file: !1373, line: 1084, baseType: !2164, size: 128, offset: 14720)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !2165)
!2165 = !{!2166}
!2166 = !DISubrange(count: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1729, file: !1373, line: 1086, baseType: !2168, size: 64, offset: 14848)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1373, line: 55, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1729, file: !1373, line: 1089, baseType: !2171, size: 64, offset: 14912)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2172, line: 12, size: 64, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2173 = !{!2174}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2171, file: !2172, line: 13, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2172, line: 8, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1729, file: !1373, line: 1090, baseType: !2178, size: 128, offset: 14976)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2179, line: 13, size: 128, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2178, file: !2179, line: 14, baseType: !182, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1729, file: !1373, line: 1097, baseType: !2183, size: 64, offset: 15104)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1373, line: 50, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1729, file: !1373, line: 1100, baseType: !2186, size: 64, offset: 15168)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1373, line: 1100, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1729, file: !1373, line: 1103, baseType: !2189, size: 64, offset: 15232)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1373, line: 53, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1729, file: !1373, line: 1107, baseType: !2192, size: 64, offset: 15296)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1373, line: 56, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1729, file: !1373, line: 1110, baseType: !2195, size: 64, offset: 15360)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2197, line: 93, size: 8768, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2248, !2257, !2258, !2260, !2261, !2262, !2265, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2303, !2304, !2311, !2321, !2324, !2325, !2328, !2329, !2330, !2331, !2332, !2333}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2196, file: !2197, line: 94, baseType: !632, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2196, file: !2197, line: 95, baseType: !314, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2196, file: !2197, line: 96, baseType: !149, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2196, file: !2197, line: 97, baseType: !149, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2196, file: !2197, line: 98, baseType: !182, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2196, file: !2197, line: 100, baseType: !645, size: 192, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2196, file: !2197, line: 103, baseType: !1728, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2196, file: !2197, line: 106, baseType: !2207, size: 192, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !864, line: 32, size: 192, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2207, file: !864, line: 33, baseType: !182, size: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2207, file: !864, line: 34, baseType: !2211, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2212, line: 25, baseType: !2213)
!2212 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2212, line: 23, size: 64, elements: !2214)
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2213, file: !2212, line: 24, baseType: !1966, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2196, file: !2197, line: 109, baseType: !431, size: 64, offset: 704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2196, file: !2197, line: 112, baseType: !149, size: 32, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2196, file: !2197, line: 114, baseType: !149, size: 32, offset: 800)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2196, file: !2197, line: 115, baseType: !1728, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2196, file: !2197, line: 118, baseType: !149, size: 32, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 119, baseType: !6, size: 32, offset: 928)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2196, file: !2197, line: 121, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2197, line: 80, size: 448, elements: !2225)
!2225 = !{!2226, !2227, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2224, file: !2197, line: 81, baseType: !314, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2224, file: !2197, line: 82, baseType: !2228, size: 128, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2197, line: 75, size: 128, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2228, file: !2197, line: 76, baseType: !1728, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2228, file: !2197, line: 77, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2224, file: !2197, line: 83, baseType: !2113, size: 256, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2196, file: !2197, line: 132, baseType: !6, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2196, file: !2197, line: 133, baseType: !6, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2196, file: !2197, line: 138, baseType: !6, size: 32, offset: 1056)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2196, file: !2197, line: 139, baseType: !182, size: 128, offset: 1088)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2196, file: !2197, line: 142, baseType: !1839, size: 512, offset: 1216)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2196, file: !2197, line: 143, baseType: !1847, size: 64, offset: 1728)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2196, file: !2197, line: 150, baseType: !2241, size: 256, offset: 1792)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 256, elements: !2246)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2197, line: 38, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2242, file: !2197, line: 39, baseType: !152, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2242, file: !2197, line: 40, baseType: !152, size: 64, offset: 64)
!2246 = !{!2247}
!2247 = !DISubrange(count: 2)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2196, file: !2197, line: 156, baseType: !2249, size: 192, offset: 2048)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2197, line: 66, size: 192, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2249, file: !2197, line: 67, baseType: !2252, size: 192)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2197, line: 47, size: 192, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2252, file: !2197, line: 48, baseType: !535, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2252, file: !2197, line: 49, baseType: !535, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2252, file: !2197, line: 50, baseType: !535, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2196, file: !2197, line: 160, baseType: !2142, size: 640, offset: 2240)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2196, file: !2197, line: 163, baseType: !2259, size: 256, offset: 2880)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, elements: !641)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2196, file: !2197, line: 169, baseType: !628, size: 64, offset: 3136)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2196, file: !2197, line: 172, baseType: !149, size: 32, offset: 3200)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2196, file: !2197, line: 174, baseType: !2263, size: 64, offset: 3264)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2197, line: 174, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2196, file: !2197, line: 185, baseType: !2266, size: 64, offset: 3328)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !244, line: 860, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 853, size: 64, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2267, file: !244, line: 858, baseType: !243, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2267, file: !244, line: 859, baseType: !294, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2196, file: !2197, line: 186, baseType: !152, size: 64, offset: 3392)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2196, file: !2197, line: 186, baseType: !152, size: 64, offset: 3456)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2196, file: !2197, line: 186, baseType: !152, size: 64, offset: 3520)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2196, file: !2197, line: 186, baseType: !152, size: 64, offset: 3584)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2196, file: !2197, line: 187, baseType: !152, size: 64, offset: 3648)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2196, file: !2197, line: 188, baseType: !152, size: 64, offset: 3712)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2196, file: !2197, line: 189, baseType: !2130, size: 192, offset: 3776)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2196, file: !2197, line: 190, baseType: !151, size: 64, offset: 3968)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2196, file: !2197, line: 190, baseType: !151, size: 64, offset: 4032)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2196, file: !2197, line: 190, baseType: !151, size: 64, offset: 4096)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2196, file: !2197, line: 190, baseType: !151, size: 64, offset: 4160)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2196, file: !2197, line: 191, baseType: !151, size: 64, offset: 4224)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2196, file: !2197, line: 191, baseType: !151, size: 64, offset: 4288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2196, file: !2197, line: 191, baseType: !151, size: 64, offset: 4352)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2196, file: !2197, line: 191, baseType: !151, size: 64, offset: 4416)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2196, file: !2197, line: 192, baseType: !151, size: 64, offset: 4480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2196, file: !2197, line: 192, baseType: !151, size: 64, offset: 4544)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2196, file: !2197, line: 192, baseType: !151, size: 64, offset: 4608)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2196, file: !2197, line: 192, baseType: !151, size: 64, offset: 4672)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2196, file: !2197, line: 193, baseType: !151, size: 64, offset: 4736)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2196, file: !2197, line: 193, baseType: !151, size: 64, offset: 4800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2196, file: !2197, line: 194, baseType: !2293, size: 448, offset: 4864)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2294, line: 12, size: 448, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2293, file: !2294, line: 15, baseType: !152, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2293, file: !2294, line: 17, baseType: !152, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2293, file: !2294, line: 19, baseType: !152, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2293, file: !2294, line: 21, baseType: !152, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2293, file: !2294, line: 29, baseType: !152, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2293, file: !2294, line: 35, baseType: !152, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2293, file: !2294, line: 44, baseType: !152, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2196, file: !2197, line: 202, baseType: !156, size: 64, offset: 5312)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2196, file: !2197, line: 213, baseType: !2305, size: 2048, offset: 5376)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 2048, elements: !2165)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2307, line: 43, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2306, file: !2307, line: 44, baseType: !522, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2306, file: !2307, line: 45, baseType: !522, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2196, file: !2197, line: 216, baseType: !2312, size: 448, offset: 7424)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2197, line: 30, size: 448, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2312, file: !2197, line: 31, baseType: !149, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2312, file: !2197, line: 32, baseType: !912, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2312, file: !2197, line: 33, baseType: !151, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2312, file: !2197, line: 34, baseType: !152, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2312, file: !2197, line: 34, baseType: !152, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2312, file: !2197, line: 35, baseType: !151, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2312, file: !2197, line: 35, baseType: !151, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2196, file: !2197, line: 219, baseType: !2322, size: 64, offset: 7872)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2197, line: 219, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2196, file: !2197, line: 222, baseType: !6, size: 32, offset: 7936)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2196, file: !2197, line: 223, baseType: !2326, size: 64, offset: 8000)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2197, line: 223, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2196, file: !2197, line: 230, baseType: !776, size: 8, offset: 8064)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2196, file: !2197, line: 231, baseType: !745, size: 16, offset: 8080)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2196, file: !2197, line: 232, baseType: !745, size: 16, offset: 8096)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2196, file: !2197, line: 234, baseType: !1051, size: 64, offset: 8128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2196, file: !2197, line: 237, baseType: !529, size: 256, offset: 8192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2196, file: !2197, line: 243, baseType: !717, size: 320, offset: 8448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1729, file: !1373, line: 1111, baseType: !2335, size: 64, offset: 15424)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2197, line: 20, size: 16640, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2336, file: !2197, line: 21, baseType: !294, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2336, file: !2197, line: 22, baseType: !632, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2336, file: !2197, line: 23, baseType: !645, size: 192, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2336, file: !2197, line: 24, baseType: !2342, size: 16384, offset: 256)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 16384, elements: !2363)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !864, line: 51, size: 256, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2343, file: !864, line: 52, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !864, line: 37, size: 256, elements: !2347)
!2347 = !{!2348, !2355, !2356, !2362}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2346, file: !864, line: 39, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2350, line: 83, baseType: !2351)
!2350 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2350, line: 82, baseType: !2353)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !149}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2346, file: !864, line: 40, baseType: !151, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2346, file: !864, line: 46, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2350, line: 86, baseType: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2350, line: 85, baseType: !2360)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2346, file: !864, line: 48, baseType: !2211, size: 64, offset: 192)
!2363 = !{!2364}
!2364 = !DISubrange(count: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1729, file: !1373, line: 1112, baseType: !2211, size: 64, offset: 15488)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1729, file: !1373, line: 1113, baseType: !2211, size: 64, offset: 15552)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1729, file: !1373, line: 1115, baseType: !2211, size: 64, offset: 15616)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1729, file: !1373, line: 1116, baseType: !2207, size: 192, offset: 15680)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1729, file: !1373, line: 1117, baseType: !151, size: 64, offset: 15872)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1729, file: !1373, line: 1118, baseType: !520, size: 64, offset: 15936)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1729, file: !1373, line: 1119, baseType: !6, size: 32, offset: 16000)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1729, file: !1373, line: 1121, baseType: !590, size: 64, offset: 16064)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1729, file: !1373, line: 1125, baseType: !2374, size: 64, offset: 16128)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1373, line: 43, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1729, file: !1373, line: 1127, baseType: !207, size: 32, offset: 16192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1729, file: !1373, line: 1128, baseType: !6, size: 32, offset: 16224)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1729, file: !1373, line: 1130, baseType: !2379, size: 128, offset: 16256)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2380, line: 37, size: 128, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2381 = !{!2382, !2383, !2384}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2379, file: !2380, line: 38, baseType: !149, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2379, file: !2380, line: 39, baseType: !314, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2379, file: !2380, line: 40, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2380, line: 24, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1729, file: !1373, line: 1131, baseType: !2388, size: 256, offset: 16384)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2389, line: 12, size: 256, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2388, file: !2389, line: 13, baseType: !377, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2388, file: !2389, line: 14, baseType: !151, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2388, file: !2389, line: 15, baseType: !151, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2388, file: !2389, line: 16, baseType: !776, size: 8, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1729, file: !1373, line: 1134, baseType: !152, size: 64, offset: 16640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1729, file: !1373, line: 1135, baseType: !152, size: 64, offset: 16704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1729, file: !1373, line: 1138, baseType: !294, size: 32, offset: 16768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1729, file: !1373, line: 1141, baseType: !542, size: 32, offset: 16800)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1729, file: !1373, line: 1143, baseType: !2400, size: 64, offset: 16832)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1373, line: 735, size: 64, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2400, file: !1373, line: 736, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1729, file: !1373, line: 1147, baseType: !1898, size: 128, offset: 16896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1729, file: !1373, line: 1149, baseType: !1728, size: 64, offset: 17024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1729, file: !1373, line: 1151, baseType: !2407, size: 64, offset: 17088)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1373, line: 1151, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1729, file: !1373, line: 1188, baseType: !148, size: 64, offset: 17152)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1729, file: !1373, line: 1191, baseType: !2411, size: 64, offset: 17216)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1373, line: 44, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1729, file: !1373, line: 1194, baseType: !2414, size: 64, offset: 17280)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1373, line: 45, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1729, file: !1373, line: 1197, baseType: !2417, size: 64, offset: 17344)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1373, line: 61, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1729, file: !1373, line: 1199, baseType: !2420, size: 64, offset: 17408)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2422, line: 99, size: 128, elements: !2423)
!2422 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2421, file: !2422, line: 100, baseType: !533, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2421, file: !2422, line: 101, baseType: !314, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2421, file: !2422, line: 103, baseType: !204, size: 16, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1729, file: !1373, line: 1202, baseType: !2428, size: 64, offset: 17472)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1373, line: 48, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1729, file: !1373, line: 1205, baseType: !151, size: 64, offset: 17536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1729, file: !1373, line: 1206, baseType: !2432, size: 64, offset: 17600)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !864, line: 14, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !864, line: 12, size: 384, elements: !2435)
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2434, file: !864, line: 13, baseType: !2437, size: 384)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2434, file: !864, line: 13, size: 384, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2437, file: !864, line: 13, baseType: !149, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2437, file: !864, line: 13, baseType: !149, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2437, file: !864, line: 13, baseType: !149, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2437, file: !864, line: 13, baseType: !2443, size: 256, offset: 128)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2444, line: 37, size: 256, elements: !2445)
!2444 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2445 = !{!2446, !2451, !2464, !2470, !2479, !2506, !2511}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2443, file: !2444, line: 42, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 39, size: 64, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2447, file: !2444, line: 40, baseType: !2096, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2447, file: !2444, line: 41, baseType: !213, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2443, file: !2444, line: 50, baseType: !2452, size: 192)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 45, size: 192, elements: !2453)
!2453 = !{!2454, !2456, !2457, !2463}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2452, file: !2444, line: 46, baseType: !2455, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !214, line: 95, baseType: !149)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2452, file: !2444, line: 47, baseType: !149, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2452, file: !2444, line: 48, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2444, line: 11, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2444, line: 8, size: 64, elements: !2460)
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2459, file: !2444, line: 9, baseType: !149, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2459, file: !2444, line: 10, baseType: !148, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2452, file: !2444, line: 49, baseType: !149, size: 32, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2443, file: !2444, line: 57, baseType: !2465, size: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 53, size: 128, elements: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2465, file: !2444, line: 54, baseType: !2096, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2465, file: !2444, line: 55, baseType: !213, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2465, file: !2444, line: 56, baseType: !2458, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2443, file: !2444, line: 66, baseType: !2471, size: 256)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 60, size: 256, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2478}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2471, file: !2444, line: 61, baseType: !2096, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2471, file: !2444, line: 62, baseType: !213, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2471, file: !2444, line: 63, baseType: !149, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2471, file: !2444, line: 64, baseType: !2477, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !214, line: 94, baseType: !911)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2471, file: !2444, line: 65, baseType: !2477, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2443, file: !2444, line: 105, baseType: !2480, size: 256)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 69, size: 256, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2480, file: !2444, line: 70, baseType: !148, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !2444, line: 79, baseType: !2484, size: 192, offset: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !2444, line: 79, size: 192, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2495, !2500}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2484, file: !2444, line: 81, baseType: !149, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2484, file: !2444, line: 86, baseType: !745, size: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2484, file: !2444, line: 92, baseType: !2489, size: 192)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2484, file: !2444, line: 88, size: 192, elements: !2490)
!2490 = !{!2491, !2493, !2494}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2489, file: !2444, line: 89, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !1882)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2489, file: !2444, line: 90, baseType: !148, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2489, file: !2444, line: 91, baseType: !148, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2484, file: !2444, line: 97, baseType: !2496, size: 96)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2484, file: !2444, line: 94, size: 96, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2496, file: !2444, line: 95, baseType: !2492, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2496, file: !2444, line: 96, baseType: !164, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2484, file: !2444, line: 103, baseType: !2501, size: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2484, file: !2444, line: 99, size: 128, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2501, file: !2444, line: 100, baseType: !151, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2501, file: !2444, line: 101, baseType: !164, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2501, file: !2444, line: 102, baseType: !164, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2443, file: !2444, line: 111, baseType: !2507, size: 128)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 108, size: 128, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2507, file: !2444, line: 109, baseType: !912, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2507, file: !2444, line: 110, baseType: !149, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2443, file: !2444, line: 118, baseType: !2512, size: 128)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2443, file: !2444, line: 114, size: 128, elements: !2513)
!2513 = !{!2514, !2515, !2516}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2512, file: !2444, line: 115, baseType: !148, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2512, file: !2444, line: 116, baseType: !149, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2512, file: !2444, line: 117, baseType: !6, size: 32, offset: 96)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1729, file: !1373, line: 1208, baseType: !2293, size: 448, offset: 17664)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1729, file: !1373, line: 1215, baseType: !152, size: 64, offset: 18112)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1729, file: !1373, line: 1217, baseType: !152, size: 64, offset: 18176)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1729, file: !1373, line: 1219, baseType: !152, size: 64, offset: 18240)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1729, file: !1373, line: 1223, baseType: !2522, size: 64, offset: 18304)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2523, line: 99, baseType: !2524)
!2523 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2523, line: 99, size: 64, elements: !2525)
!2525 = !{!2526}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2524, file: !2523, line: 99, baseType: !1966, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1729, file: !1373, line: 1225, baseType: !243, size: 32, offset: 18368)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1729, file: !1373, line: 1226, baseType: !149, size: 32, offset: 18400)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1729, file: !1373, line: 1227, baseType: !149, size: 32, offset: 18432)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1729, file: !1373, line: 1231, baseType: !2531, size: 64, offset: 18496)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1373, line: 1231, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1729, file: !1373, line: 1233, baseType: !182, size: 128, offset: 18560)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1729, file: !1373, line: 1240, baseType: !2535, size: 64, offset: 18688)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1373, line: 62, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1729, file: !1373, line: 1242, baseType: !2538, size: 64, offset: 18752)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2540, line: 392, size: 96, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2541 = !{!2542, !2548, !2550}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2539, file: !2540, line: 393, baseType: !2543, size: 32)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2540, line: 388, size: 32, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2543, file: !2540, line: 389, baseType: !2546, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2547, line: 46, baseType: !163)
!2547 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2539, file: !2540, line: 394, baseType: !2549, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2547, line: 42, baseType: !702)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2539, file: !2540, line: 395, baseType: !2546, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1729, file: !1373, line: 1244, baseType: !182, size: 128, offset: 18816)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1729, file: !1373, line: 1245, baseType: !2553, size: 64, offset: 18944)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1373, line: 51, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1729, file: !1373, line: 1246, baseType: !529, size: 256, offset: 19008)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1729, file: !1373, line: 1247, baseType: !6, size: 32, offset: 19264)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1729, file: !1373, line: 1250, baseType: !2558, size: 64, offset: 19328)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1373, line: 57, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1729, file: !1373, line: 1251, baseType: !529, size: 256, offset: 19392)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1729, file: !1373, line: 1252, baseType: !182, size: 128, offset: 19648)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1729, file: !1373, line: 1259, baseType: !1319, size: 64, offset: 19776)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1729, file: !1373, line: 1260, baseType: !745, size: 16, offset: 19840)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1729, file: !1373, line: 1261, baseType: !745, size: 16, offset: 19856)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1729, file: !1373, line: 1314, baseType: !2566, size: 64, offset: 19904)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2568, line: 62, size: 256, align: 256, elements: !2569)
!2568 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2567, file: !2568, line: 75, baseType: !164, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2567, file: !2568, line: 90, baseType: !164, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2567, file: !2568, line: 112, baseType: !154, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2568, line: 132, baseType: !164, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2567, file: !2568, line: 140, baseType: !164, size: 32, offset: 160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2567, file: !2568, line: 149, baseType: !164, size: 32, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2567, file: !2568, line: 154, baseType: !2577, offset: 224)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !660)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1729, file: !1373, line: 1315, baseType: !163, size: 32, offset: 19968)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1729, file: !1373, line: 1316, baseType: !163, size: 32, offset: 20000)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1729, file: !1373, line: 1321, baseType: !151, size: 64, offset: 20032)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1729, file: !1373, line: 1325, baseType: !149, size: 32, offset: 20096)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1729, file: !1373, line: 1326, baseType: !149, size: 32, offset: 20128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1729, file: !1373, line: 1327, baseType: !149, size: 32, offset: 20160)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1729, file: !1373, line: 1328, baseType: !149, size: 32, offset: 20192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1729, file: !1373, line: 1329, baseType: !587, size: 128, align: 64, offset: 20224)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1729, file: !1373, line: 1332, baseType: !2587, size: 128, offset: 20352)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2588, line: 51, size: 128, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2589 = !{!2590, !2595, !2596}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2587, file: !2588, line: 60, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2592, line: 7, size: 64, elements: !2593)
!2592 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2591, file: !2592, line: 12, baseType: !1963, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2587, file: !2588, line: 63, baseType: !776, size: 8, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2587, file: !2588, line: 70, baseType: !776, size: 8, offset: 72)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1729, file: !1373, line: 1335, baseType: !1371, size: 64, offset: 20480)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1729, file: !1373, line: 1337, baseType: !2599, size: 128, offset: 20544)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2588, line: 39, size: 128, elements: !2600)
!2600 = !{!2601, !2602, !2603}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2599, file: !2588, line: 40, baseType: !168, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2599, file: !2588, line: 42, baseType: !164, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2599, file: !2588, line: 43, baseType: !164, size: 32, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1729, file: !1373, line: 1340, baseType: !2605, size: 64, offset: 20672)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1373, line: 69, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1729, file: !1373, line: 1351, baseType: !149, size: 32, offset: 20736)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1729, file: !1373, line: 1352, baseType: !149, size: 32, offset: 20768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1729, file: !1373, line: 1354, baseType: !151, size: 64, offset: 20800)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1729, file: !1373, line: 1364, baseType: !152, size: 64, offset: 20864)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1729, file: !1373, line: 1365, baseType: !152, size: 64, offset: 20928)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1729, file: !1373, line: 1412, baseType: !151, size: 64, offset: 20992)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1729, file: !1373, line: 1453, baseType: !2614, size: 64, offset: 21056)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1373, line: 1453, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1729, file: !1373, line: 1457, baseType: !2617, size: 64, offset: 21120)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !86, line: 61, size: 576, elements: !2619)
!2619 = !{!2620, !2621, !2640, !2643, !2644, !2677, !2687}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2618, file: !86, line: 62, baseType: !85, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !86, line: 64, baseType: !2622, size: 192, offset: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !86, line: 64, size: 192, elements: !2623)
!2623 = !{!2624, !2635}
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !86, line: 65, baseType: !2625, size: 192)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !86, line: 65, size: 192, elements: !2626)
!2626 = !{!2627, !2634}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2625, file: !86, line: 66, baseType: !2628, size: 128)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2629, line: 50, size: 128, elements: !2630)
!2629 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2630 = !{!2631, !2632, !2633}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2628, file: !2629, line: 52, baseType: !151, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2628, file: !2629, line: 54, baseType: !6, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2628, file: !2629, line: 55, baseType: !6, size: 32, offset: 96)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2625, file: !86, line: 67, baseType: !151, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !86, line: 70, baseType: !2636, size: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !86, line: 70, size: 192, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2636, file: !86, line: 71, baseType: !587, size: 128, align: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2636, file: !86, line: 72, baseType: !151, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2618, file: !86, line: 76, baseType: !2641, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !86, line: 76, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2618, file: !86, line: 77, baseType: !151, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2618, file: !86, line: 79, baseType: !2645, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2629, line: 25, size: 256, elements: !2647)
!2647 = !{!2648, !2654, !2658}
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !2629, line: 26, baseType: !2649, size: 128)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2646, file: !2629, line: 26, size: 128, elements: !2650)
!2650 = !{!2651, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2649, file: !2629, line: 27, baseType: !2652, size: 128)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 128, elements: !2165)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2649, file: !2629, line: 28, baseType: !2652, size: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2646, file: !2629, line: 31, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2657)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2629, line: 23, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !2629, line: 33, baseType: !2659, size: 64, offset: 192)
!2659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2646, file: !2629, line: 33, size: 64, elements: !2660)
!2660 = !{!2661, !2667, !2672}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2659, file: !2629, line: 38, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2659, file: !2629, line: 34, size: 64, elements: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2662, file: !2629, line: 35, baseType: !702, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2662, file: !2629, line: 36, baseType: !322, size: 8, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2662, file: !2629, line: 37, baseType: !322, size: 8, offset: 40)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2659, file: !2629, line: 42, baseType: !2668, size: 16)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2659, file: !2629, line: 39, size: 16, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2668, file: !2629, line: 40, baseType: !322, size: 8)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2668, file: !2629, line: 41, baseType: !322, size: 8, offset: 8)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2659, file: !2629, line: 46, baseType: !2673, size: 16)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2659, file: !2629, line: 43, size: 16, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2673, file: !2629, line: 44, baseType: !322, size: 8)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2673, file: !2629, line: 45, baseType: !322, size: 8, offset: 8)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2618, file: !86, line: 81, baseType: !2678, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !86, line: 85, size: 384, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2679, file: !86, line: 86, baseType: !2641, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2679, file: !86, line: 87, baseType: !151, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2679, file: !86, line: 88, baseType: !151, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2679, file: !86, line: 89, baseType: !151, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2679, file: !86, line: 90, baseType: !776, size: 8, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2679, file: !86, line: 92, baseType: !2678, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2618, file: !86, line: 82, baseType: !6, size: 32, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1729, file: !1373, line: 1463, baseType: !2689, offset: 21184)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1373, line: 739, elements: !443)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1729, file: !1373, line: 1470, baseType: !587, size: 128, align: 64, offset: 21184)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1729, file: !1373, line: 1471, baseType: !632, size: 32, offset: 21312)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1729, file: !1373, line: 1472, baseType: !149, size: 32, offset: 21344)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1729, file: !1373, line: 1474, baseType: !1728, size: 64, offset: 21376)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1729, file: !1373, line: 1475, baseType: !2695, size: 320, offset: 21440)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2696, line: 11, size: 320, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2697 = !{!2698, !2699, !2700, !2705}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2695, file: !2696, line: 16, baseType: !435, size: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2695, file: !2696, line: 17, baseType: !151, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2695, file: !2696, line: 18, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2696, line: 19, baseType: !163, size: 32, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1729, file: !1373, line: 1478, baseType: !2707, size: 64, offset: 21760)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2709, line: 49, size: 512, elements: !2710)
!2709 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2717, !2718, !2719, !2720}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2708, file: !2709, line: 50, baseType: !2707, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2708, file: !2709, line: 51, baseType: !148, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2708, file: !2709, line: 52, baseType: !151, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2708, file: !2709, line: 53, baseType: !151, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2708, file: !2709, line: 54, baseType: !2716, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2708, file: !2709, line: 56, baseType: !6, size: 32, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2708, file: !2709, line: 58, baseType: !6, size: 32, offset: 352)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2708, file: !2709, line: 59, baseType: !159, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2708, file: !2709, line: 60, baseType: !2721, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1729, file: !1373, line: 1482, baseType: !632, size: 32, offset: 21824)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1729, file: !1373, line: 1489, baseType: !148, size: 64, offset: 21888)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1729, file: !1373, line: 1504, baseType: !148, size: 64, offset: 21952)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1729, file: !1373, line: 1505, baseType: !154, size: 64, offset: 22016)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1729, file: !1373, line: 1506, baseType: !152, size: 64, offset: 22080)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1729, file: !1373, line: 1507, baseType: !154, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1729, file: !1373, line: 1508, baseType: !154, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1729, file: !1373, line: 1509, baseType: !154, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1729, file: !1373, line: 1510, baseType: !587, size: 128, align: 64, offset: 22208)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1729, file: !1373, line: 1511, baseType: !149, size: 32, offset: 22336)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1729, file: !1373, line: 1515, baseType: !2734, size: 64, offset: 22400)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !582, line: 56, size: 64, elements: !2735)
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2734, file: !582, line: 57, baseType: !585, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1729, file: !1373, line: 1518, baseType: !2734, size: 64, offset: 22464)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1729, file: !1373, line: 1528, baseType: !587, size: 128, align: 64, offset: 22528)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1729, file: !1373, line: 1552, baseType: !2740, size: 35328, offset: 23040)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2741, line: 430, size: 35328, elements: !2742)
!2741 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2742 = !{!2743, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2772, !2773, !2774, !2775, !2776, !2777, !2780, !2781, !2782, !2783}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2740, file: !2741, line: 432, baseType: !2744, size: 192)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2745, size: 192, elements: !448)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2746, line: 16, size: 64, elements: !2747)
!2746 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2745, file: !2746, line: 17, baseType: !329, size: 16)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2745, file: !2746, line: 18, baseType: !329, size: 16, offset: 16)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2745, file: !2746, line: 19, baseType: !329, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2745, file: !2746, line: 19, baseType: !329, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2745, file: !2746, line: 19, baseType: !329, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2745, file: !2746, line: 19, baseType: !329, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2745, file: !2746, line: 19, baseType: !329, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2745, file: !2746, line: 20, baseType: !329, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2745, file: !2746, line: 20, baseType: !329, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2745, file: !2746, line: 20, baseType: !329, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2745, file: !2746, line: 20, baseType: !329, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2745, file: !2746, line: 20, baseType: !329, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2745, file: !2746, line: 20, baseType: !329, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2740, file: !2741, line: 436, baseType: !151, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2740, file: !2741, line: 440, baseType: !204, size: 16, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2740, file: !2741, line: 441, baseType: !204, size: 16, offset: 272)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2740, file: !2741, line: 442, baseType: !204, size: 16, offset: 288)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2740, file: !2741, line: 443, baseType: !204, size: 16, offset: 304)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2740, file: !2741, line: 447, baseType: !151, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2740, file: !2741, line: 448, baseType: !151, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2740, file: !2741, line: 459, baseType: !2769, size: 256, offset: 448)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2770, size: 256, elements: !641)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2741, line: 428, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2740, file: !2741, line: 461, baseType: !151, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2740, file: !2741, line: 463, baseType: !151, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2740, file: !2741, line: 465, baseType: !151, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2740, file: !2741, line: 466, baseType: !151, size: 64, offset: 896)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2740, file: !2741, line: 467, baseType: !151, size: 64, offset: 960)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2740, file: !2741, line: 473, baseType: !2778, size: 64, offset: 1024)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2741, line: 10, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2740, file: !2741, line: 480, baseType: !151, size: 64, offset: 1088)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2740, file: !2741, line: 482, baseType: !6, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2740, file: !2741, line: 491, baseType: !163, size: 32, offset: 1184)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2740, file: !2741, line: 501, baseType: !2784, size: 33792, offset: 1536)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2785, line: 448, size: 33792, elements: !2786)
!2785 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2786 = !{!2787, !2788, !2789, !2951, !2952, !2958, !2959}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2784, file: !2785, line: 461, baseType: !6, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2784, file: !2785, line: 468, baseType: !151, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2784, file: !2785, line: 476, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2785, line: 356, size: 33280, align: 512, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2791, file: !2785, line: 358, baseType: !6, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2791, file: !2785, line: 361, baseType: !6, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2791, file: !2785, line: 364, baseType: !152, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2791, file: !2785, line: 367, baseType: !152, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2791, file: !2785, line: 370, baseType: !152, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2791, file: !2785, line: 373, baseType: !6, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2791, file: !2785, line: 376, baseType: !6, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2791, file: !2785, line: 391, baseType: !6, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2791, file: !2785, line: 394, baseType: !6, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2791, file: !2785, line: 397, baseType: !2803, size: 32768, offset: 512)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2785, line: 348, size: 32768, elements: !2804)
!2804 = !{!2805, !2820, !2857, !2934, !2947}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2803, file: !2785, line: 349, baseType: !2806, size: 896)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2785, line: 12, size: 896, elements: !2807)
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2819}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2806, file: !2785, line: 13, baseType: !163, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2806, file: !2785, line: 14, baseType: !163, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2806, file: !2785, line: 15, baseType: !163, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2806, file: !2785, line: 16, baseType: !163, size: 32, offset: 96)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2806, file: !2785, line: 17, baseType: !163, size: 32, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2806, file: !2785, line: 18, baseType: !163, size: 32, offset: 160)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2806, file: !2785, line: 19, baseType: !163, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2806, file: !2785, line: 22, baseType: !2816, size: 640, offset: 224)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 640, elements: !2817)
!2817 = !{!2818}
!2818 = !DISubrange(count: 20)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2806, file: !2785, line: 25, baseType: !163, size: 32, offset: 864)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2803, file: !2785, line: 350, baseType: !2821, size: 4096, align: 128)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2785, line: 34, size: 4096, align: 128, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2842, !2843, !2844, !2846, !2848, !2852}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2821, file: !2785, line: 35, baseType: !329, size: 16)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2821, file: !2785, line: 36, baseType: !329, size: 16, offset: 16)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2821, file: !2785, line: 37, baseType: !329, size: 16, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2821, file: !2785, line: 38, baseType: !329, size: 16, offset: 48)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2821, file: !2785, line: 39, baseType: !2828, size: 128, offset: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2821, file: !2785, line: 39, size: 128, elements: !2829)
!2829 = !{!2830, !2835}
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2785, line: 40, baseType: !2831, size: 128)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !2785, line: 40, size: 128, elements: !2832)
!2832 = !{!2833, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2831, file: !2785, line: 41, baseType: !152, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2831, file: !2785, line: 42, baseType: !152, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !2785, line: 44, baseType: !2836, size: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !2785, line: 44, size: 128, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2836, file: !2785, line: 45, baseType: !163, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2836, file: !2785, line: 46, baseType: !163, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2836, file: !2785, line: 47, baseType: !163, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2836, file: !2785, line: 48, baseType: !163, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2821, file: !2785, line: 51, baseType: !163, size: 32, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2821, file: !2785, line: 52, baseType: !163, size: 32, offset: 224)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2821, file: !2785, line: 55, baseType: !2845, size: 1024, offset: 256)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 1024, elements: !280)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2821, file: !2785, line: 58, baseType: !2847, size: 2048, offset: 1280)
!2847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2048, elements: !2363)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2821, file: !2785, line: 60, baseType: !2849, size: 384, offset: 3328)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !2850)
!2850 = !{!2851}
!2851 = !DISubrange(count: 12)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !2821, file: !2785, line: 62, baseType: !2853, size: 384, offset: 3712)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2821, file: !2785, line: 62, size: 384, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2853, file: !2785, line: 63, baseType: !2849, size: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2853, file: !2785, line: 64, baseType: !2849, size: 384)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2803, file: !2785, line: 351, baseType: !2858, size: 1088)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2785, line: 79, size: 1088, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2933}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2858, file: !2785, line: 80, baseType: !163, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2858, file: !2785, line: 81, baseType: !163, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2858, file: !2785, line: 82, baseType: !163, size: 32, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2858, file: !2785, line: 83, baseType: !163, size: 32, offset: 96)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2858, file: !2785, line: 84, baseType: !163, size: 32, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2858, file: !2785, line: 85, baseType: !163, size: 32, offset: 160)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2858, file: !2785, line: 86, baseType: !163, size: 32, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2858, file: !2785, line: 88, baseType: !2816, size: 640, offset: 224)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2858, file: !2785, line: 89, baseType: !322, size: 8, offset: 864)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2858, file: !2785, line: 90, baseType: !322, size: 8, offset: 872)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2858, file: !2785, line: 91, baseType: !322, size: 8, offset: 880)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2858, file: !2785, line: 92, baseType: !322, size: 8, offset: 888)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2858, file: !2785, line: 93, baseType: !322, size: 8, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2858, file: !2785, line: 94, baseType: !322, size: 8, offset: 904)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2858, file: !2785, line: 95, baseType: !2875, size: 64, offset: 960)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2877, line: 11, size: 128, elements: !2878)
!2877 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2876, file: !2877, line: 12, baseType: !912, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2876, file: !2877, line: 13, baseType: !2881, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2883, line: 103, size: 1344, elements: !2884)
!2883 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2884 = !{!2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2913, !2914, !2915}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2882, file: !2883, line: 109, baseType: !151, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2882, file: !2883, line: 110, baseType: !151, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2882, file: !2883, line: 111, baseType: !151, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2882, file: !2883, line: 112, baseType: !151, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2882, file: !2883, line: 113, baseType: !151, size: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2882, file: !2883, line: 114, baseType: !151, size: 64, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2882, file: !2883, line: 117, baseType: !151, size: 64, offset: 384)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2882, file: !2883, line: 118, baseType: !151, size: 64, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2882, file: !2883, line: 119, baseType: !151, size: 64, offset: 512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2882, file: !2883, line: 120, baseType: !151, size: 64, offset: 576)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2882, file: !2883, line: 121, baseType: !151, size: 64, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2882, file: !2883, line: 122, baseType: !151, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2882, file: !2883, line: 123, baseType: !151, size: 64, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2882, file: !2883, line: 124, baseType: !151, size: 64, offset: 832)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2882, file: !2883, line: 125, baseType: !151, size: 64, offset: 896)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2882, file: !2883, line: 139, baseType: !151, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2882, file: !2883, line: 142, baseType: !151, size: 64, offset: 1024)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !2883, line: 144, baseType: !2903, size: 64, offset: 1088)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2882, file: !2883, line: 144, size: 64, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2903, file: !2883, line: 146, baseType: !329, size: 16)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2903, file: !2883, line: 148, baseType: !152, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2903, file: !2883, line: 150, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2883, line: 59, size: 64, elements: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2908, file: !2883, line: 61, baseType: !152, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2908, file: !2883, line: 63, baseType: !152, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2908, file: !2883, line: 65, baseType: !152, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2882, file: !2883, line: 153, baseType: !151, size: 64, offset: 1152)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2882, file: !2883, line: 154, baseType: !151, size: 64, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !2883, line: 156, baseType: !2916, size: 64, offset: 1280)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2882, file: !2883, line: 156, size: 64, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2916, file: !2883, line: 158, baseType: !329, size: 16)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2916, file: !2883, line: 160, baseType: !152, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2916, file: !2883, line: 162, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2883, line: 69, size: 64, elements: !2922)
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2921, file: !2883, line: 71, baseType: !152, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2921, file: !2883, line: 73, baseType: !152, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2921, file: !2883, line: 75, baseType: !152, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2921, file: !2883, line: 77, baseType: !152, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2921, file: !2883, line: 80, baseType: !152, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2921, file: !2883, line: 83, baseType: !152, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2921, file: !2883, line: 86, baseType: !152, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2921, file: !2883, line: 88, baseType: !152, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2921, file: !2883, line: 93, baseType: !152, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2921, file: !2883, line: 100, baseType: !152, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2858, file: !2785, line: 96, baseType: !163, size: 32, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2803, file: !2785, line: 352, baseType: !2935, size: 4608, align: 512)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2785, line: 333, size: 4608, align: 512, elements: !2936)
!2936 = !{!2937, !2938, !2945}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2935, file: !2785, line: 334, baseType: !2821, size: 4096, align: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2935, file: !2785, line: 335, baseType: !2939, size: 512, offset: 4096)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2785, line: 312, size: 512, elements: !2940)
!2940 = !{!2941, !2942, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2939, file: !2785, line: 313, baseType: !152, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2939, file: !2785, line: 314, baseType: !152, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2939, file: !2785, line: 315, baseType: !2944, size: 384, offset: 128)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !763)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2935, file: !2785, line: 336, baseType: !2946, offset: 4608)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, elements: !660)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2803, file: !2785, line: 353, baseType: !2948, size: 32768)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 32768, elements: !2949)
!2949 = !{!2950}
!2950 = !DISubrange(count: 4096)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2784, file: !2785, line: 484, baseType: !2790, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2784, file: !2785, line: 491, baseType: !2953, size: 128, offset: 256)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2785, line: 404, size: 128, elements: !2954)
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2953, file: !2785, line: 424, baseType: !152, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2953, file: !2785, line: 432, baseType: !6, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2953, file: !2785, line: 440, baseType: !6, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2784, file: !2785, line: 498, baseType: !2953, size: 128, offset: 384)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2784, file: !2785, line: 508, baseType: !2791, size: 33280, align: 512, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1710, file: !1711, line: 16, baseType: !645, size: 192, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1710, file: !1711, line: 17, baseType: !314, size: 32, offset: 704)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !389, file: !33, line: 1240, baseType: !148, size: 64, offset: 6912)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !389, file: !33, line: 1243, baseType: !163, size: 32, offset: 6976)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !389, file: !33, line: 1245, baseType: !733, size: 64, offset: 7040)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !389, file: !33, line: 1246, baseType: !733, size: 64, offset: 7104)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !389, file: !33, line: 1248, baseType: !164, size: 32, offset: 7168)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !389, file: !33, line: 1249, baseType: !2968, size: 64, offset: 7232)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !33, line: 634, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !389, file: !33, line: 1252, baseType: !2971, size: 256, offset: 7296)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !280)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !389, file: !33, line: 1253, baseType: !2973, size: 128, offset: 7552)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2974, line: 21, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 19, size: 128, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2975, file: !2974, line: 20, baseType: !2978, size: 128)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !2165)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !389, file: !33, line: 1255, baseType: !6, size: 32, offset: 7680)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !389, file: !33, line: 1261, baseType: !529, size: 256, offset: 7744)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !389, file: !33, line: 1267, baseType: !165, size: 64, offset: 8000)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !389, file: !33, line: 1269, baseType: !334, size: 64, offset: 8064)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !389, file: !33, line: 1271, baseType: !2984, size: 448, offset: 8128)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1490, line: 63, size: 448, elements: !2985)
!2985 = !{!2986, !2991, !2992, !2993, !2994, !2995, !2996}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2984, file: !1490, line: 64, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!151, !2990, !1488}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2984, file: !1490, line: 66, baseType: !2987, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2984, file: !1490, line: 69, baseType: !912, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2984, file: !1490, line: 70, baseType: !149, size: 32, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2984, file: !1490, line: 71, baseType: !6, size: 32, offset: 224)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2984, file: !1490, line: 74, baseType: !182, size: 128, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2984, file: !1490, line: 85, baseType: !2997, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !389, file: !33, line: 1274, baseType: !533, size: 64, offset: 8576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !389, file: !33, line: 1280, baseType: !533, size: 64, offset: 8640)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !389, file: !33, line: 1283, baseType: !149, size: 32, offset: 8704)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !389, file: !33, line: 1286, baseType: !1422, size: 32, offset: 8736)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !389, file: !33, line: 1289, baseType: !3003, size: 64, offset: 8768)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1181, line: 18, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !389, file: !33, line: 1290, baseType: !431, size: 64, offset: 8832)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !389, file: !33, line: 1297, baseType: !859, size: 64, offset: 8896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !389, file: !33, line: 1304, baseType: !3008, size: 64, offset: 8960)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3009, line: 49, size: 64, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3008, file: !3009, line: 50, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3009, line: 41, size: 512, align: 512, elements: !3014)
!3014 = !{!3015, !3016, !3021}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3013, file: !3009, line: 43, baseType: !294, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3013, file: !3009, line: 45, baseType: !3017, size: 192, offset: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3009, line: 29, size: 192, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3017, file: !3009, line: 30, baseType: !182, size: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3017, file: !3009, line: 32, baseType: !912, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3013, file: !3009, line: 46, baseType: !912, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !389, file: !33, line: 1305, baseType: !3008, size: 64, offset: 9024)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !389, file: !33, line: 1306, baseType: !587, size: 128, align: 64, offset: 9088)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !389, file: !33, line: 1307, baseType: !1180, size: 256, offset: 9216)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !389, file: !33, line: 1309, baseType: !529, size: 256, offset: 9472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !389, file: !33, line: 1314, baseType: !149, size: 32, offset: 9728)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !389, file: !33, line: 1317, baseType: !294, size: 32, align: 512, offset: 10240)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !389, file: !33, line: 1318, baseType: !182, size: 128, offset: 10304)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !389, file: !33, line: 1320, baseType: !294, size: 32, offset: 10432)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !389, file: !33, line: 1321, baseType: !182, size: 128, offset: 10496)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !383, file: !384, line: 73, baseType: !149, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !383, file: !384, line: 74, baseType: !3033, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !684, line: 42, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !336, file: !239, line: 141, baseType: !3037, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!149, !1550, !776}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !336, file: !239, line: 142, baseType: !3041, size: 64, offset: 768)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!237, !237, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !238, file: !239, line: 96, baseType: !388, size: 64, offset: 832)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !238, file: !239, line: 97, baseType: !151, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !238, file: !239, line: 98, baseType: !148, size: 64, offset: 960)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !239, line: 100, baseType: !3050, size: 128, offset: 1024)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 100, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3050, file: !239, line: 101, baseType: !182, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3050, file: !239, line: 102, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !238, file: !239, line: 104, baseType: !182, size: 128, offset: 1152)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !238, file: !239, line: 105, baseType: !182, size: 128, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !238, file: !239, line: 113, baseType: !3058, size: 128, offset: 1408)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 109, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3058, file: !239, line: 110, baseType: !435, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3058, file: !239, line: 111, baseType: !253, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3058, file: !239, line: 112, baseType: !587, size: 128, align: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !231, file: !33, line: 1968, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!165, !237, !199, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3069, line: 10, size: 128, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3070 = !{!3071, !3075}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3068, file: !3069, line: 11, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !148}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3068, file: !3069, line: 12, baseType: !148, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !231, file: !33, line: 1969, baseType: !3077, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!149, !3033, !199, !149}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !231, file: !33, line: 1970, baseType: !3081, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!225, !199, !149, !776}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !231, file: !33, line: 1972, baseType: !3085, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!149, !237, !377, !149}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !231, file: !33, line: 1974, baseType: !3089, size: 64, offset: 320)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!149, !3033, !199, !237, !203, !776}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !231, file: !33, line: 1976, baseType: !3093, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!149, !237, !199, !237}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !231, file: !33, line: 1977, baseType: !3097, size: 64, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!149, !199, !237}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !231, file: !33, line: 1978, baseType: !3101, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!149, !3033, !199, !237, !165}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !231, file: !33, line: 1980, baseType: !3105, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!149, !3033, !199, !237, !203}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !231, file: !33, line: 1982, baseType: !3097, size: 64, offset: 640)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !231, file: !33, line: 1983, baseType: !3110, size: 64, offset: 704)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!149, !3033, !199, !237, !203, !393}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !231, file: !33, line: 1985, baseType: !3114, size: 64, offset: 768)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!149, !3033, !199, !237, !199, !237, !6}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !231, file: !33, line: 1987, baseType: !3118, size: 64, offset: 832)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!149, !3033, !237, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !33, line: 226, size: 640, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3136, !3145, !3146, !3151, !3152, !3153}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3122, file: !33, line: 227, baseType: !6, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3122, file: !33, line: 228, baseType: !203, size: 16, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3122, file: !33, line: 241, baseType: !3127, size: 32, offset: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3122, file: !33, line: 241, size: 32, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3127, file: !33, line: 242, baseType: !207, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3127, file: !33, line: 243, baseType: !3131, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3132, line: 16, baseType: !3133)
!3132 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3132, line: 14, size: 32, elements: !3134)
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3133, file: !3132, line: 15, baseType: !212, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3122, file: !33, line: 245, baseType: !3137, size: 32, offset: 96)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3122, file: !33, line: 245, size: 32, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3137, file: !33, line: 246, baseType: !217, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3137, file: !33, line: 247, baseType: !3141, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3132, line: 20, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3132, line: 18, size: 32, elements: !3143)
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3142, file: !3132, line: 19, baseType: !221, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3122, file: !33, line: 249, baseType: !398, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3122, file: !33, line: 250, baseType: !3147, size: 128, offset: 192)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !734, line: 13, size: 128, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3147, file: !734, line: 14, baseType: !733, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3147, file: !734, line: 15, baseType: !912, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3122, file: !33, line: 251, baseType: !3147, size: 128, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3122, file: !33, line: 252, baseType: !3147, size: 128, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3122, file: !33, line: 259, baseType: !904, size: 64, offset: 576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !231, file: !33, line: 1988, baseType: !3155, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!149, !3033, !1550, !3158, !163, !6}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3160, line: 22, size: 1280, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3159, file: !3160, line: 23, baseType: !163, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3159, file: !3160, line: 24, baseType: !203, size: 16, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3159, file: !3160, line: 25, baseType: !6, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3159, file: !3160, line: 26, baseType: !741, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3159, file: !3160, line: 27, baseType: !152, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3159, file: !3160, line: 28, baseType: !152, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3159, file: !3160, line: 41, baseType: !152, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3159, file: !3160, line: 42, baseType: !393, size: 32, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3159, file: !3160, line: 43, baseType: !393, size: 32, offset: 352)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3159, file: !3160, line: 44, baseType: !207, size: 32, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3159, file: !3160, line: 45, baseType: !217, size: 32, offset: 416)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3159, file: !3160, line: 46, baseType: !398, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3159, file: !3160, line: 47, baseType: !3147, size: 128, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3159, file: !3160, line: 48, baseType: !3147, size: 128, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3159, file: !3160, line: 49, baseType: !3147, size: 128, offset: 768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3159, file: !3160, line: 50, baseType: !3147, size: 128, offset: 896)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3159, file: !3160, line: 51, baseType: !152, size: 64, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3159, file: !3160, line: 52, baseType: !152, size: 64, offset: 1088)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3159, file: !3160, line: 53, baseType: !163, size: 32, offset: 1152)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3159, file: !3160, line: 54, baseType: !163, size: 32, offset: 1184)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3159, file: !3160, line: 55, baseType: !152, size: 64, offset: 1216)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !231, file: !33, line: 1990, baseType: !3184, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!909, !237, !377, !520}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !231, file: !33, line: 1991, baseType: !3188, size: 64, offset: 1024)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!149, !199, !3191, !152, !152}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !33, line: 55, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !231, file: !33, line: 1993, baseType: !3194, size: 64, offset: 1088)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!149, !199, !149}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !231, file: !33, line: 1994, baseType: !3198, size: 64, offset: 1152)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!149, !199, !237, !904, !6, !203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !231, file: !33, line: 1997, baseType: !3202, size: 64, offset: 1216)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!149, !3033, !199, !904, !203}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !231, file: !33, line: 1999, baseType: !3206, size: 64, offset: 1280)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!225, !3033, !237, !149}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !231, file: !33, line: 2001, baseType: !3210, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!149, !3033, !237, !225, !149}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !231, file: !33, line: 2003, baseType: !3214, size: 64, offset: 1408)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!149, !3033, !237, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !33, line: 76, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !231, file: !33, line: 2005, baseType: !3220, size: 64, offset: 1472)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!149, !237, !3217}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !231, file: !33, line: 2006, baseType: !3224, size: 64, offset: 1536)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!3227, !199}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !33, line: 3192, size: 192, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3228, file: !33, line: 3193, baseType: !988, size: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3228, file: !33, line: 3194, baseType: !163, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !200, file: !33, line: 655, baseType: !388, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !200, file: !33, line: 656, baseType: !195, size: 64, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !200, file: !33, line: 659, baseType: !148, size: 64, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !200, file: !33, line: 663, baseType: !151, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !33, line: 671, baseType: !3237, size: 32, offset: 704)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !33, line: 671, size: 32, elements: !3238)
!3238 = !{!3239, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3237, file: !33, line: 672, baseType: !3240, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3237, file: !33, line: 673, baseType: !6, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !200, file: !33, line: 675, baseType: !393, size: 32, offset: 736)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !200, file: !33, line: 676, baseType: !398, size: 64, offset: 768)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !200, file: !33, line: 677, baseType: !3147, size: 128, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !200, file: !33, line: 678, baseType: !3147, size: 128, offset: 960)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !200, file: !33, line: 679, baseType: !3147, size: 128, offset: 1088)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !200, file: !33, line: 680, baseType: !294, size: 32, offset: 1216)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !200, file: !33, line: 681, baseType: !204, size: 16, offset: 1248)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !200, file: !33, line: 682, baseType: !322, size: 8, offset: 1264)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !200, file: !33, line: 683, baseType: !322, size: 8, offset: 1272)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !200, file: !33, line: 684, baseType: !1623, size: 64, offset: 1280)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !200, file: !33, line: 691, baseType: !151, size: 64, offset: 1344)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !200, file: !33, line: 692, baseType: !717, size: 320, offset: 1408)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !200, file: !33, line: 694, baseType: !151, size: 64, offset: 1728)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !200, file: !33, line: 695, baseType: !151, size: 64, offset: 1792)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !200, file: !33, line: 697, baseType: !435, size: 128, offset: 1856)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !200, file: !33, line: 698, baseType: !182, size: 128, offset: 1984)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !200, file: !33, line: 707, baseType: !182, size: 128, offset: 2112)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !200, file: !33, line: 708, baseType: !182, size: 128, offset: 2240)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !33, line: 709, baseType: !3261, size: 128, offset: 2368)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !33, line: 709, size: 128, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3261, file: !33, line: 710, baseType: !431, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3261, file: !33, line: 711, baseType: !587, size: 128, align: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !200, file: !33, line: 713, baseType: !535, size: 64, offset: 2496)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !200, file: !33, line: 714, baseType: !535, size: 64, offset: 2560)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !200, file: !33, line: 715, baseType: !314, size: 32, offset: 2624)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !200, file: !33, line: 716, baseType: !314, size: 32, offset: 2656)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !200, file: !33, line: 717, baseType: !314, size: 32, offset: 2688)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !200, file: !33, line: 719, baseType: !314, size: 32, offset: 2720)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !33, line: 721, baseType: !3272, size: 64, offset: 2752)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !33, line: 721, size: 64, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3272, file: !33, line: 722, baseType: !895, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3272, file: !33, line: 723, baseType: !464, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !200, file: !33, line: 725, baseType: !3277, size: 64, offset: 2816)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !33, line: 725, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !200, file: !33, line: 726, baseType: !196, size: 1536, align: 64, offset: 2880)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !200, file: !33, line: 727, baseType: !182, size: 128, offset: 4416)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !33, line: 728, baseType: !3282, size: 64, offset: 4544)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !33, line: 728, size: 64, elements: !3283)
!3283 = !{!3284, !3285, !3288, !3289}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3282, file: !33, line: 729, baseType: !1371, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3282, file: !33, line: 730, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !33, line: 730, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3282, file: !33, line: 731, baseType: !377, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3282, file: !33, line: 732, baseType: !6, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !200, file: !33, line: 735, baseType: !164, size: 32, offset: 4608)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !200, file: !33, line: 738, baseType: !164, size: 32, offset: 4640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !200, file: !33, line: 739, baseType: !2968, size: 64, offset: 4672)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !200, file: !33, line: 750, baseType: !148, size: 64, offset: 4736)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !196, file: !33, line: 474, baseType: !988, size: 128, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !196, file: !33, line: 475, baseType: !717, size: 320, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !196, file: !33, line: 476, baseType: !157, size: 32, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !196, file: !33, line: 477, baseType: !314, size: 32, offset: 544)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !196, file: !33, line: 482, baseType: !1898, size: 128, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !196, file: !33, line: 483, baseType: !151, size: 64, offset: 704)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !196, file: !33, line: 484, baseType: !151, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !196, file: !33, line: 485, baseType: !3302, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !33, line: 404, size: 1280, elements: !3305)
!3305 = !{!3306, !3310, !3380, !3384, !3388, !3394, !3398, !3402, !3407, !3411, !3415, !3419, !3420, !3424, !3428, !3432, !3437, !3441, !3448, !3449}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3304, file: !33, line: 405, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!149, !168, !476}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3304, file: !33, line: 406, baseType: !3311, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!149, !904, !3314}
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !70, line: 293, size: 1536, elements: !3316)
!3316 = !{!3317, !3347, !3361}
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !70, line: 295, baseType: !3318, size: 512)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !70, line: 295, size: 512, elements: !3319)
!3319 = !{!3320, !3346}
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !70, line: 296, baseType: !3321, size: 448)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !70, line: 296, size: 448, elements: !3322)
!3322 = !{!3323, !3324, !3333, !3334, !3335, !3344, !3345}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3321, file: !70, line: 298, baseType: !151, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !70, line: 299, baseType: !3325, size: 128, offset: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3321, file: !70, line: 299, size: 128, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3325, file: !70, line: 300, baseType: !182, size: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !70, line: 302, baseType: !3329, size: 128)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3325, file: !70, line: 302, size: 128, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3329, file: !70, line: 303, baseType: !148, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3329, file: !70, line: 305, baseType: !6, size: 32, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3321, file: !70, line: 310, baseType: !195, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3321, file: !70, line: 311, baseType: !151, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !70, line: 312, baseType: !3336, size: 64, offset: 320)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3321, file: !70, line: 312, size: 64, elements: !3337)
!3337 = !{!3338, !3339}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3336, file: !70, line: 313, baseType: !148, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3336, file: !70, line: 314, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !70, line: 257, baseType: !3341)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 255, size: 64, elements: !3342)
!3342 = !{!3343}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3341, file: !70, line: 256, baseType: !151, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3321, file: !70, line: 316, baseType: !314, size: 32, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3321, file: !70, line: 317, baseType: !314, size: 32, offset: 416)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3318, file: !70, line: 323, baseType: !169, size: 512, align: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !70, line: 325, baseType: !3348, size: 512, offset: 512)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !70, line: 325, size: 512, elements: !3349)
!3349 = !{!3350, !3360}
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3348, file: !70, line: 326, baseType: !3351, size: 320)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3348, file: !70, line: 326, size: 320, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3351, file: !70, line: 327, baseType: !151, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3351, file: !70, line: 328, baseType: !151, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3351, file: !70, line: 329, baseType: !151, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3351, file: !70, line: 331, baseType: !314, size: 32, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3351, file: !70, line: 332, baseType: !314, size: 32, offset: 224)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3351, file: !70, line: 333, baseType: !314, size: 32, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3351, file: !70, line: 335, baseType: !6, size: 32, offset: 288)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3348, file: !70, line: 339, baseType: !169, size: 512, align: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !70, line: 341, baseType: !3362, size: 512, offset: 1024)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !70, line: 341, size: 512, elements: !3363)
!3363 = !{!3364, !3373, !3379}
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !70, line: 342, baseType: !3365, size: 384)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !70, line: 342, size: 384, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3365, file: !70, line: 343, baseType: !151, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3365, file: !70, line: 344, baseType: !151, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3365, file: !70, line: 346, baseType: !148, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3365, file: !70, line: 347, baseType: !148, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3365, file: !70, line: 348, baseType: !148, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3365, file: !70, line: 349, baseType: !148, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !70, line: 352, baseType: !3374, size: 256)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !70, line: 352, size: 256, elements: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3374, file: !70, line: 353, baseType: !151, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3374, file: !70, line: 354, baseType: !151, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3374, file: !70, line: 356, baseType: !182, size: 128, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3362, file: !70, line: 359, baseType: !169, size: 512, align: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3304, file: !33, line: 409, baseType: !3381, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!149, !195, !476}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3304, file: !33, line: 412, baseType: !3385, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!776, !195, !3314}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3304, file: !33, line: 414, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !33, line: 310, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3304, file: !33, line: 416, baseType: !3395, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!149, !904, !195, !398, !6, !2716, !1387}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3304, file: !33, line: 419, baseType: !3399, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!149, !904, !195, !398, !6, !6, !168, !148}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3304, file: !33, line: 424, baseType: !3403, size: 64, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!3406, !195, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3304, file: !33, line: 425, baseType: !3408, size: 64, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3314, !520, !520}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3304, file: !33, line: 426, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!776, !3314, !157}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3304, file: !33, line: 427, baseType: !3416, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !3314}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3304, file: !33, line: 428, baseType: !918, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3304, file: !33, line: 433, baseType: !3421, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!149, !195, !3314, !3314, !54}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3304, file: !33, line: 435, baseType: !3425, size: 64, offset: 832)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!149, !3314}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3304, file: !33, line: 436, baseType: !3429, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!776, !3314, !520, !520}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3304, file: !33, line: 438, baseType: !3433, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3314, !3436, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3304, file: !33, line: 439, baseType: !3438, size: 64, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!149, !195, !168}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3304, file: !33, line: 442, baseType: !3442, size: 64, offset: 1088)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!149, !3445, !904, !3447}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !33, line: 66, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3304, file: !33, line: 444, baseType: !1379, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3304, file: !33, line: 445, baseType: !3450, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!149, !921, !943}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !33, line: 486, baseType: !151, size: 64, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !196, file: !33, line: 487, baseType: !717, size: 320, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !196, file: !33, line: 488, baseType: !1422, size: 32, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !196, file: !33, line: 489, baseType: !294, size: 32, offset: 1312)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !196, file: !33, line: 490, baseType: !182, size: 128, offset: 1344)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !196, file: !33, line: 491, baseType: !148, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !70, line: 107, baseType: !3460, size: 64, offset: 192)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !70, line: 107, size: 64, elements: !3461)
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3460, file: !70, line: 108, baseType: !151, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3460, file: !70, line: 109, baseType: !151, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !176, file: !70, line: 117, baseType: !151, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !70, line: 119, baseType: !3466, size: 320)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !70, line: 119, size: 320, elements: !3467)
!3467 = !{!3468, !3469, !3472, !3473, !3474}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3466, file: !70, line: 124, baseType: !151, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3466, file: !70, line: 125, baseType: !3470, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !70, line: 125, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3466, file: !70, line: 126, baseType: !151, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3466, file: !70, line: 127, baseType: !151, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !70, line: 128, baseType: !3475, size: 64, offset: 256)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !70, line: 128, size: 64, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3475, file: !70, line: 133, baseType: !151, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3475, file: !70, line: 138, baseType: !533, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !70, line: 141, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !70, line: 141, size: 64, elements: !3481)
!3481 = !{!3482}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3480, file: !70, line: 142, baseType: !151, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !70, line: 144, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !70, line: 144, size: 128, elements: !3485)
!3485 = !{!3486, !3557}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3484, file: !70, line: 146, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !62, line: 126, size: 1216, elements: !3489)
!3489 = !{!3490, !3500, !3521, !3522, !3523, !3524, !3525, !3539, !3540, !3541}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3488, file: !62, line: 127, baseType: !3491, size: 384)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !62, line: 21, size: 384, elements: !3492)
!3492 = !{!3493, !3494, !3496, !3497, !3498, !3499}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3491, file: !62, line: 22, baseType: !151, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3491, file: !62, line: 23, baseType: !3495, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3491, file: !62, line: 24, baseType: !3495, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3491, file: !62, line: 25, baseType: !151, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3491, file: !62, line: 26, baseType: !151, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3491, file: !62, line: 27, baseType: !151, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3488, file: !62, line: 128, baseType: !3501, size: 128, offset: 384)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3502, line: 105, size: 128, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3501, file: !3502, line: 110, baseType: !151, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3501, file: !3502, line: 118, baseType: !3506, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3502, line: 95, size: 448, elements: !3508)
!3508 = !{!3509, !3510, !3516, !3517, !3518, !3519, !3520}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3507, file: !3502, line: 96, baseType: !533, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3507, file: !3502, line: 97, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3502, line: 60, baseType: !3513)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3507, file: !3502, line: 98, baseType: !3511, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3507, file: !3502, line: 99, baseType: !776, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3507, file: !3502, line: 100, baseType: !776, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3507, file: !3502, line: 101, baseType: !587, size: 128, align: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3507, file: !3502, line: 102, baseType: !3515, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3488, file: !62, line: 129, baseType: !2113, size: 256, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3488, file: !62, line: 130, baseType: !61, size: 32, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3488, file: !62, line: 131, baseType: !6, size: 32, offset: 800)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3488, file: !62, line: 132, baseType: !151, size: 64, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3488, file: !62, line: 133, baseType: !3526, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3528)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !62, line: 77, size: 192, elements: !3529)
!3529 = !{!3530, !3534, !3535}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3528, file: !62, line: 83, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !168}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3528, file: !62, line: 89, baseType: !1246, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3528, file: !62, line: 100, baseType: !3536, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!149, !3487, !151, !151, !149}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3488, file: !62, line: 134, baseType: !148, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3488, file: !62, line: 135, baseType: !149, size: 32, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !62, line: 136, baseType: !3542, size: 128, offset: 1088)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !62, line: 136, size: 128, elements: !3543)
!3543 = !{!3544, !3550}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3542, file: !62, line: 137, baseType: !3545, size: 128)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3546, line: 6, size: 128, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3545, file: !3546, line: 7, baseType: !152, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3545, file: !3546, line: 8, baseType: !152, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !62, line: 138, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3542, file: !62, line: 138, elements: !3552)
!3552 = !{!3553, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3551, file: !62, line: 138, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !62, line: 138, elements: !443)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3551, file: !62, line: 138, baseType: !3556)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, elements: !660)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3484, file: !70, line: 147, baseType: !148, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !173, file: !70, line: 161, baseType: !587, size: 128, align: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !70, line: 164, baseType: !3560, size: 32, offset: 384)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !70, line: 164, size: 32, elements: !3561)
!3561 = !{!3562, !3563}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3560, file: !70, line: 169, baseType: !314, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3560, file: !70, line: 177, baseType: !6, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !169, file: !70, line: 181, baseType: !314, size: 32, offset: 416)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3567)
!3567 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !152)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !149)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memtype", file: !3575, line: 10, size: 448, elements: !3576)
!3575 = !DIFile(filename: "arch/x86/mm/pat/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc405af90f683cdb3b3d3fb0d708f2")
!3576 = !{!3577, !3578, !3579, !3580, !3581}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3574, file: !3575, line: 11, baseType: !152, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3574, file: !3575, line: 12, baseType: !152, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_end", scope: !3574, file: !3575, line: 13, baseType: !152, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3574, file: !3575, line: 14, baseType: !14, size: 32, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3574, file: !3575, line: 15, baseType: !709, size: 192, align: 64, offset: 256)
!3582 = !{!3583, !3594, !3596, !3598, !3603, !3608, !3613, !3618, !3621, !3626, !3631, !3636, !3639, !3642, !3647, !3649, !3651, !3653, !3658, !3660, !3662, !3664, !3666, !0, !3668, !3670, !3672, !3677, !3682, !3687, !3692, !3694, !3696, !3698, !3700, !3702, !3705, !3707, !3712, !3714, !3719, !3721, !3726, !3731, !3736, !3738, !3743, !3748, !3753, !3755, !3757, !3762}
!3583 = !DIGlobalVariableExpression(var: !3584, expr: !DIExpression())
!3584 = distinct !DIGlobalVariable(name: "__setup_nopat", scope: !2, file: !3, line: 87, type: !3585, isLocal: true, isDefinition: true, align: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !3586, line: 324, size: 192, elements: !3587)
!3586 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!3587 = !{!3588, !3589, !3593}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3585, file: !3586, line: 325, baseType: !165, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !3585, file: !3586, line: 326, baseType: !3590, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!149, !377}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !3585, file: !3586, line: 327, baseType: !149, size: 32, offset: 128)
!3594 = !DIGlobalVariableExpression(var: !3595, expr: !DIExpression())
!3595 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pat_enabled277", scope: !2, file: !3, line: 93, type: !148, isLocal: true, isDefinition: true)
!3596 = !DIGlobalVariableExpression(var: !3597, expr: !DIExpression())
!3597 = distinct !DIGlobalVariable(name: "__setup_pat_debug_setup", scope: !2, file: !3, line: 102, type: !3585, isLocal: true, isDefinition: true, align: 64)
!3598 = !DIGlobalVariableExpression(var: !3599, expr: !DIExpression())
!3599 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !3600, isLocal: true, isDefinition: true)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 464, elements: !3601)
!3601 = !{!3602}
!3602 = !DISubrange(count: 58)
!3603 = !DIGlobalVariableExpression(var: !3604, expr: !DIExpression())
!3604 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !3605, isLocal: true, isDefinition: true)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 240, elements: !3606)
!3606 = !{!3607}
!3607 = !DISubrange(count: 30)
!3608 = !DIGlobalVariableExpression(var: !3609, expr: !DIExpression())
!3609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !3610, isLocal: true, isDefinition: true)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 304, elements: !3611)
!3611 = !{!3612}
!3612 = !DISubrange(count: 38)
!3613 = !DIGlobalVariableExpression(var: !3614, expr: !DIExpression())
!3614 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !3615, isLocal: true, isDefinition: true)
!3615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 336, elements: !3616)
!3616 = !{!3617}
!3617 = !DISubrange(count: 42)
!3618 = !DIGlobalVariableExpression(var: !3619, expr: !DIExpression())
!3619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !3620, isLocal: true, isDefinition: true)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !2165)
!3621 = !DIGlobalVariableExpression(var: !3622, expr: !DIExpression())
!3622 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !3623, isLocal: true, isDefinition: true)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 208, elements: !3624)
!3624 = !{!3625}
!3625 = !DISubrange(count: 26)
!3626 = !DIGlobalVariableExpression(var: !3627, expr: !DIExpression())
!3627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 606, type: !3628, isLocal: true, isDefinition: true)
!3628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 600, elements: !3629)
!3629 = !{!3630}
!3630 = !DISubrange(count: 75)
!3631 = !DIGlobalVariableExpression(var: !3632, expr: !DIExpression())
!3632 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !3633, isLocal: true, isDefinition: true)
!3633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 656, elements: !3634)
!3634 = !{!3635}
!3635 = !DISubrange(count: 82)
!3636 = !DIGlobalVariableExpression(var: !3637, expr: !DIExpression())
!3637 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !3638, isLocal: true, isDefinition: true)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 16, elements: !2246)
!3639 = !DIGlobalVariableExpression(var: !3640, expr: !DIExpression())
!3640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 650, type: !3641, isLocal: true, isDefinition: true)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 512, elements: !2363)
!3642 = !DIGlobalVariableExpression(var: !3643, expr: !DIExpression())
!3643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 657, type: !3644, isLocal: true, isDefinition: true)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 440, elements: !3645)
!3645 = !{!3646}
!3646 = !DISubrange(count: 55)
!3647 = !DIGlobalVariableExpression(var: !3648, expr: !DIExpression())
!3648 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pat_pfn_immune_to_uc_mtrr279", scope: !2, file: !3, line: 717, type: !148, isLocal: true, isDefinition: true)
!3649 = !DIGlobalVariableExpression(var: !3650, expr: !DIExpression())
!3650 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_io_reserve_memtype_wc280", scope: !2, file: !3, line: 776, type: !148, isLocal: true, isDefinition: true)
!3651 = !DIGlobalVariableExpression(var: !3652, expr: !DIExpression())
!3652 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_io_free_memtype_wc281", scope: !2, file: !3, line: 782, type: !148, isLocal: true, isDefinition: true)
!3653 = !DIGlobalVariableExpression(var: !3654, expr: !DIExpression())
!3654 = distinct !DIGlobalVariable(scope: null, file: !3, line: 860, type: !3655, isLocal: true, isDefinition: true)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 592, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 74)
!3658 = !DIGlobalVariableExpression(var: !3659, expr: !DIExpression())
!3659 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pgprot_writecombine282", scope: !2, file: !3, line: 1115, type: !148, isLocal: true, isDefinition: true)
!3660 = !DIGlobalVariableExpression(var: !3661, expr: !DIExpression())
!3661 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pgprot_writethrough283", scope: !2, file: !3, line: 1122, type: !148, isLocal: true, isDefinition: true)
!3662 = !DIGlobalVariableExpression(var: !3663, expr: !DIExpression())
!3663 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_memtype__284_1213_pat_memtype_list_init7285", scope: !2, file: !3, line: 1213, type: !148, isLocal: true, isDefinition: true)
!3664 = !DIGlobalVariableExpression(var: !3665, expr: !DIExpression())
!3665 = distinct !DIGlobalVariable(name: "pat_msr_val", scope: !2, file: !3, line: 65, type: !152, isLocal: true, isDefinition: true)
!3666 = !DIGlobalVariableExpression(var: !3667, expr: !DIExpression())
!3667 = distinct !DIGlobalVariable(name: "pat_debug_enable", scope: !2, file: !3, line: 95, type: !149, isLocal: false, isDefinition: true)
!3668 = !DIGlobalVariableExpression(var: !3669, expr: !DIExpression())
!3669 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !3610, isLocal: true, isDefinition: true)
!3670 = !DIGlobalVariableExpression(var: !3671, expr: !DIExpression())
!3671 = distinct !DIGlobalVariable(name: "pat_disabled", scope: !2, file: !3, line: 64, type: !776, isLocal: true, isDefinition: true)
!3672 = !DIGlobalVariableExpression(var: !3673, expr: !DIExpression())
!3673 = distinct !DIGlobalVariable(name: "__setup_str_pat_debug_setup", scope: !2, file: !3, line: 102, type: !3674, isLocal: true, isDefinition: true, align: 8)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 72, elements: !3675)
!3675 = !{!3676}
!3676 = !DISubrange(count: 9)
!3677 = !DIGlobalVariableExpression(var: !3678, expr: !DIExpression())
!3678 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !3679, isLocal: true, isDefinition: true)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 120, elements: !3680)
!3680 = !{!3681}
!3681 = !DISubrange(count: 15)
!3682 = !DIGlobalVariableExpression(var: !3683, expr: !DIExpression())
!3683 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !3684, isLocal: true, isDefinition: true)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 288, elements: !3685)
!3685 = !{!3686}
!3686 = !DISubrange(count: 36)
!3687 = !DIGlobalVariableExpression(var: !3688, expr: !DIExpression())
!3688 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !3689, isLocal: true, isDefinition: true)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 40, elements: !3690)
!3690 = !{!3691}
!3691 = !DISubrange(count: 5)
!3692 = !DIGlobalVariableExpression(var: !3693, expr: !DIExpression())
!3693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !3689, isLocal: true, isDefinition: true)
!3694 = !DIGlobalVariableExpression(var: !3695, expr: !DIExpression())
!3695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !3689, isLocal: true, isDefinition: true)
!3696 = !DIGlobalVariableExpression(var: !3697, expr: !DIExpression())
!3697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !3689, isLocal: true, isDefinition: true)
!3698 = !DIGlobalVariableExpression(var: !3699, expr: !DIExpression())
!3699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !3689, isLocal: true, isDefinition: true)
!3700 = !DIGlobalVariableExpression(var: !3701, expr: !DIExpression())
!3701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !3689, isLocal: true, isDefinition: true)
!3702 = !DIGlobalVariableExpression(var: !3703, expr: !DIExpression())
!3703 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 21, type: !3704, isLocal: true, isDefinition: true)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 72, elements: !3675)
!3705 = !DIGlobalVariableExpression(var: !3706, expr: !DIExpression())
!3706 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 22, type: !3679, isLocal: true, isDefinition: true)
!3707 = !DIGlobalVariableExpression(var: !3708, expr: !DIExpression())
!3708 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 23, type: !3709, isLocal: true, isDefinition: true)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 88, elements: !3710)
!3710 = !{!3711}
!3711 = !DISubrange(count: 11)
!3712 = !DIGlobalVariableExpression(var: !3713, expr: !DIExpression())
!3713 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 24, type: !2164, isLocal: true, isDefinition: true)
!3714 = !DIGlobalVariableExpression(var: !3715, expr: !DIExpression())
!3715 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 25, type: !3716, isLocal: true, isDefinition: true)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 112, elements: !3717)
!3717 = !{!3718}
!3718 = !DISubrange(count: 14)
!3719 = !DIGlobalVariableExpression(var: !3720, expr: !DIExpression())
!3720 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 26, type: !2164, isLocal: true, isDefinition: true)
!3721 = !DIGlobalVariableExpression(var: !3722, expr: !DIExpression())
!3722 = distinct !DIGlobalVariable(scope: null, file: !3575, line: 27, type: !3723, isLocal: true, isDefinition: true)
!3723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 56, elements: !3724)
!3724 = !{!3725}
!3725 = !DISubrange(count: 7)
!3726 = !DIGlobalVariableExpression(var: !3727, expr: !DIExpression())
!3727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 478, type: !3728, isLocal: true, isDefinition: true)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 688, elements: !3729)
!3729 = !{!3730}
!3730 = !DISubrange(count: 86)
!3731 = !DIGlobalVariableExpression(var: !3732, expr: !DIExpression())
!3732 = distinct !DIGlobalVariable(scope: null, file: !138, line: 480, type: !3733, isLocal: true, isDefinition: true)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 168, elements: !3734)
!3734 = !{!3735}
!3735 = !DISubrange(count: 21)
!3736 = !DIGlobalVariableExpression(var: !3737, expr: !DIExpression())
!3737 = distinct !DIGlobalVariable(name: "memtype_lock", scope: !2, file: !3, line: 370, type: !294, isLocal: true, isDefinition: true)
!3738 = !DIGlobalVariableExpression(var: !3739, expr: !DIExpression())
!3739 = distinct !DIGlobalVariable(scope: null, file: !3, line: 895, type: !3740, isLocal: true, isDefinition: true)
!3740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 616, elements: !3741)
!3741 = !{!3742}
!3742 = !DISubrange(count: 77)
!3743 = !DIGlobalVariableExpression(var: !3744, expr: !DIExpression())
!3744 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !3745, isLocal: true, isDefinition: true)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 680, elements: !3746)
!3746 = !{!3747}
!3747 = !DISubrange(count: 85)
!3748 = !DIGlobalVariableExpression(var: !3749, expr: !DIExpression())
!3749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1208, type: !3750, isLocal: true, isDefinition: true)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 136, elements: !3751)
!3751 = !{!3752}
!3752 = !DISubrange(count: 17)
!3753 = !DIGlobalVariableExpression(var: !3754, expr: !DIExpression())
!3754 = distinct !DIGlobalVariable(name: "memtype_fops", scope: !2, file: !3, line: 1198, type: !896, isLocal: true, isDefinition: true)
!3755 = !DIGlobalVariableExpression(var: !3756, expr: !DIExpression())
!3756 = distinct !DIGlobalVariable(name: "memtype_seq_ops", scope: !2, file: !3, line: 1186, type: !551, isLocal: true, isDefinition: true)
!3757 = !DIGlobalVariableExpression(var: !3758, expr: !DIExpression())
!3758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1156, type: !3759, isLocal: true, isDefinition: true)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 152, elements: !3760)
!3760 = !{!3761}
!3761 = !DISubrange(count: 19)
!3762 = !DIGlobalVariableExpression(var: !3763, expr: !DIExpression())
!3763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1178, type: !3764, isLocal: true, isDefinition: true)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 264, elements: !3765)
!3765 = !{!3766}
!3766 = !DISubrange(count: 33)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !763)
!3768 = !{i32 7, !"Dwarf Version", i32 5}
!3769 = !{i32 2, !"Debug Info Version", i32 3}
!3770 = !{i32 1, !"wchar_size", i32 2}
!3771 = !{i32 8, !"cf-protection-branch", i32 1}
!3772 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3773 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3774 = !{i32 1, !"Code Model", i32 2}
!3775 = !{i32 1, !"override-stack-alignment", i32 8}
!3776 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3777 = distinct !DISubprogram(name: "nopat", scope: !3, file: !3, line: 82, type: !3591, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3778)
!3778 = !{!3779}
!3779 = !DILocalVariable(name: "str", arg: 1, scope: !3777, file: !3, line: 82, type: !377)
!3780 = !DILocation(line: 82, column: 31, scope: !3777)
!3781 = !DILocation(line: 84, column: 2, scope: !3777)
!3782 = !DILocation(line: 85, column: 2, scope: !3777)
!3783 = distinct !DISubprogram(name: "pat_enabled", scope: !3, file: !3, line: 89, type: !3784, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!776}
!3786 = !DILocation(line: 91, column: 10, scope: !3783)
!3787 = !{i8 0, i8 2}
!3788 = !DILocation(line: 91, column: 9, scope: !3783)
!3789 = !DILocation(line: 91, column: 2, scope: !3783)
!3790 = distinct !DISubprogram(name: "pat_debug_setup", scope: !3, file: !3, line: 97, type: !3591, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "str", arg: 1, scope: !3790, file: !3, line: 97, type: !377)
!3793 = !DILocation(line: 97, column: 41, scope: !3790)
!3794 = !DILocation(line: 99, column: 19, scope: !3790)
!3795 = !DILocation(line: 100, column: 2, scope: !3790)
!3796 = distinct !DISubprogram(name: "pat_cpu_init", scope: !3, file: !3, line: 232, type: !2360, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3797 = !DILocation(line: 234, column: 6, scope: !3796)
!3798 = !DILocation(line: 234, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 234, column: 6)
!3800 = !DILocation(line: 239, column: 3, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 234, column: 38)
!3802 = !DILocation(line: 242, column: 26, scope: !3796)
!3803 = !DILocation(line: 242, column: 2, scope: !3796)
!3804 = !DILocation(line: 243, column: 1, scope: !3796)
!3805 = distinct !DISubprogram(name: "arch_test_bit", scope: !3806, file: !3806, line: 237, type: !3807, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3806 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!776, !151, !3565}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "nr", arg: 1, scope: !3805, file: !3806, line: 237, type: !151)
!3811 = !DILocalVariable(name: "addr", arg: 2, scope: !3805, file: !3806, line: 237, type: !3565)
!3812 = !DILocation(line: 237, column: 29, scope: !3805)
!3813 = !DILocation(line: 237, column: 63, scope: !3805)
!3814 = !DILocation(line: 239, column: 30, scope: !3805)
!3815 = !DILocation(line: 239, column: 9, scope: !3805)
!3816 = !DILocation(line: 239, column: 54, scope: !3805)
!3817 = !DILocation(line: 239, column: 58, scope: !3805)
!3818 = !DILocation(line: 239, column: 36, scope: !3805)
!3819 = !DILocation(line: 240, column: 26, scope: !3805)
!3820 = !DILocation(line: 240, column: 30, scope: !3805)
!3821 = !DILocation(line: 240, column: 8, scope: !3805)
!3822 = !DILocation(line: 239, column: 2, scope: !3805)
!3823 = !DISubprogram(name: "panic", scope: !3824, file: !3824, line: 12, type: !3825, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3824 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !165, null}
!3827 = distinct !DISubprogram(name: "wrmsrl", scope: !3828, file: !3828, line: 260, type: !3829, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3831)
!3828 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !6, !152}
!3831 = !{!3832, !3833}
!3832 = !DILocalVariable(name: "msr", arg: 1, scope: !3827, file: !3828, line: 260, type: !6)
!3833 = !DILocalVariable(name: "val", arg: 2, scope: !3827, file: !3828, line: 260, type: !152)
!3834 = !DILocation(line: 260, column: 40, scope: !3827)
!3835 = !DILocation(line: 260, column: 49, scope: !3827)
!3836 = !DILocation(line: 262, column: 19, scope: !3827)
!3837 = !DILocation(line: 262, column: 30, scope: !3827)
!3838 = !DILocation(line: 262, column: 34, scope: !3827)
!3839 = !DILocation(line: 262, column: 24, scope: !3827)
!3840 = !DILocation(line: 262, column: 58, scope: !3827)
!3841 = !DILocation(line: 262, column: 62, scope: !3827)
!3842 = !DILocation(line: 262, column: 52, scope: !3827)
!3843 = !DILocation(line: 262, column: 2, scope: !3827)
!3844 = !DILocation(line: 263, column: 1, scope: !3827)
!3845 = distinct !DISubprogram(name: "pat_bp_init", scope: !3, file: !3, line: 254, type: !2360, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3846)
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "c", scope: !3845, file: !3, line: 256, type: !3848)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !2741, line: 83, size: 2368, elements: !3850)
!3850 = !{!3851, !3862, !3863, !3864, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !2741, line: 84, baseType: !3852, size: 32)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3849, file: !2741, line: 84, size: 32, elements: !3853)
!3853 = !{!3854, !3861}
!3854 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !2741, line: 90, baseType: !3855, size: 32)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !2741, line: 90, size: 32, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !3855, file: !2741, line: 91, baseType: !323, size: 8)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !3855, file: !2741, line: 93, baseType: !323, size: 8, offset: 8)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !3855, file: !2741, line: 95, baseType: !323, size: 8, offset: 16)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !3855, file: !2741, line: 96, baseType: !323, size: 8, offset: 24)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !3852, file: !2741, line: 99, baseType: !164, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !3849, file: !2741, line: 101, baseType: !323, size: 8, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !3849, file: !2741, line: 104, baseType: !149, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !3849, file: !2741, line: 107, baseType: !3865, size: 160, offset: 96)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 160, elements: !3690)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !3849, file: !2741, line: 109, baseType: !323, size: 8, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !3849, file: !2741, line: 110, baseType: !323, size: 8, offset: 264)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !3849, file: !2741, line: 112, baseType: !323, size: 8, offset: 272)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !3849, file: !2741, line: 113, baseType: !323, size: 8, offset: 280)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !3849, file: !2741, line: 115, baseType: !164, size: 32, offset: 288)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !3849, file: !2741, line: 117, baseType: !149, size: 32, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !2741, line: 123, baseType: !3873, size: 768, offset: 384)
!3873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3849, file: !2741, line: 123, size: 768, elements: !3874)
!3874 = !{!3875, !3879}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !3873, file: !2741, line: 124, baseType: !3876, size: 768)
!3876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 768, elements: !3877)
!3877 = !{!3878}
!3878 = !DISubrange(count: 24)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !3873, file: !2741, line: 125, baseType: !151, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !3849, file: !2741, line: 127, baseType: !2164, size: 128, offset: 1152)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !3849, file: !2741, line: 128, baseType: !3641, size: 512, offset: 1280)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !3849, file: !2741, line: 130, baseType: !6, size: 32, offset: 1792)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !3849, file: !2741, line: 131, baseType: !149, size: 32, offset: 1824)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !3849, file: !2741, line: 133, baseType: !149, size: 32, offset: 1856)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !3849, file: !2741, line: 134, baseType: !149, size: 32, offset: 1888)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !3849, file: !2741, line: 135, baseType: !149, size: 32, offset: 1920)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !3849, file: !2741, line: 136, baseType: !149, size: 32, offset: 1952)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !3849, file: !2741, line: 137, baseType: !151, size: 64, offset: 1984)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !3849, file: !2741, line: 139, baseType: !152, size: 64, offset: 2048)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !3849, file: !2741, line: 141, baseType: !329, size: 16, offset: 2112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !3849, file: !2741, line: 142, baseType: !329, size: 16, offset: 2128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !3849, file: !2741, line: 143, baseType: !329, size: 16, offset: 2144)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !3849, file: !2741, line: 144, baseType: !329, size: 16, offset: 2160)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !3849, file: !2741, line: 146, baseType: !329, size: 16, offset: 2176)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !3849, file: !2741, line: 148, baseType: !329, size: 16, offset: 2192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !3849, file: !2741, line: 150, baseType: !329, size: 16, offset: 2208)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !3849, file: !2741, line: 152, baseType: !329, size: 16, offset: 2224)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !3849, file: !2741, line: 153, baseType: !329, size: 16, offset: 2240)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !3849, file: !2741, line: 154, baseType: !329, size: 16, offset: 2256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !3849, file: !2741, line: 156, baseType: !329, size: 16, offset: 2272)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !3849, file: !2741, line: 158, baseType: !776, size: 8, offset: 2288)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !3849, file: !2741, line: 159, baseType: !163, size: 32, offset: 2304)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !3849, file: !2741, line: 161, baseType: !322, size: 8, offset: 2336)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3849, file: !2741, line: 162, baseType: !6, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!3905 = !DILocation(line: 256, column: 2, scope: !3845)
!3906 = !DILocation(line: 256, column: 22, scope: !3845)
!3907 = !DILocation(line: 267, column: 6, scope: !3845)
!3908 = !DILocation(line: 267, column: 7, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 267, column: 6)
!3910 = !DILocation(line: 268, column: 3, scope: !3909)
!3911 = !DILocation(line: 270, column: 3, scope: !3909)
!3912 = !DILocation(line: 272, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 272, column: 6)
!3914 = !DILocation(line: 272, column: 6, scope: !3845)
!3915 = !DILocation(line: 273, column: 3, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 272, column: 20)
!3917 = !DILocation(line: 293, column: 15, scope: !3916)
!3918 = !DILocation(line: 294, column: 2, scope: !3916)
!3919 = !DILocation(line: 303, column: 6, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 303, column: 6)
!3921 = !DILocation(line: 303, column: 6, scope: !3845)
!3922 = !DILocation(line: 306, column: 20, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 305, column: 50)
!3924 = !DILocation(line: 306, column: 3, scope: !3923)
!3925 = !DILocation(line: 307, column: 3, scope: !3923)
!3926 = !DILocation(line: 310, column: 7, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 310, column: 6)
!3928 = !DILocation(line: 310, column: 10, scope: !3927)
!3929 = !DILocation(line: 310, column: 21, scope: !3927)
!3930 = !DILocation(line: 310, column: 42, scope: !3927)
!3931 = !DILocation(line: 311, column: 9, scope: !3927)
!3932 = !DILocation(line: 311, column: 12, scope: !3927)
!3933 = !DILocation(line: 311, column: 16, scope: !3927)
!3934 = !DILocation(line: 311, column: 24, scope: !3927)
!3935 = !DILocation(line: 311, column: 28, scope: !3927)
!3936 = !DILocation(line: 311, column: 31, scope: !3927)
!3937 = !DILocation(line: 311, column: 41, scope: !3927)
!3938 = !DILocation(line: 311, column: 50, scope: !3927)
!3939 = !DILocation(line: 312, column: 9, scope: !3927)
!3940 = !DILocation(line: 312, column: 12, scope: !3927)
!3941 = !DILocation(line: 312, column: 16, scope: !3927)
!3942 = !DILocation(line: 312, column: 24, scope: !3927)
!3943 = !DILocation(line: 312, column: 28, scope: !3927)
!3944 = !DILocation(line: 312, column: 31, scope: !3927)
!3945 = !DILocation(line: 312, column: 41, scope: !3927)
!3946 = !DILocation(line: 310, column: 6, scope: !3845)
!3947 = !DILocation(line: 333, column: 15, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 312, column: 52)
!3949 = !DILocation(line: 334, column: 2, scope: !3948)
!3950 = !DILocation(line: 361, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 334, column: 9)
!3952 = !DILocation(line: 364, column: 25, scope: !3845)
!3953 = !DILocation(line: 366, column: 19, scope: !3845)
!3954 = !DILocation(line: 366, column: 2, scope: !3845)
!3955 = !DILocation(line: 368, column: 1, scope: !3845)
!3956 = distinct !DISubprogram(name: "_static_cpu_has", scope: !3957, file: !3957, line: 173, type: !3958, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3960)
!3957 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!776, !329}
!3960 = !{!3961, !3962, !3963}
!3961 = !DILocalVariable(name: "bit", arg: 1, scope: !3956, file: !3957, line: 173, type: !329)
!3962 = !DILabel(scope: !3956, name: "t_yes", file: !3957, line: 187)
!3963 = !DILabel(scope: !3956, name: "t_no", file: !3957, line: 189)
!3964 = !DILocation(line: 173, column: 49, scope: !3956)
!3965 = !DILocation(line: 183, column: 24, scope: !3956)
!3966 = !DILocation(line: 184, column: 30, scope: !3956)
!3967 = !DILocation(line: 184, column: 34, scope: !3956)
!3968 = !DILocation(line: 184, column: 26, scope: !3956)
!3969 = !DILocation(line: 185, column: 70, scope: !3956)
!3970 = !DILocation(line: 185, column: 74, scope: !3956)
!3971 = !DILocation(line: 185, column: 25, scope: !3956)
!3972 = !DILocation(line: 175, column: 2, scope: !3956)
!3973 = !{i64 2149523932, i64 2149523965, i64 2149523971, i64 2149523987, i64 2149524006, i64 2149524037, i64 2149524990, i64 2149523579, i64 2149524996, i64 2149525044, i64 2149525108, i64 2149525172, i64 2149525229, i64 2149525436, i64 2149525484, i64 2149525548, i64 2149525612, i64 2149525669, i64 2149523697, i64 2149523722, i64 2149525879, i64 2149526007, i64 2149525940, i64 2149526021, i64 2149526035, i64 2149526151, i64 2149526096, i64 2149526165, i64 2149523856, i64 1705189, i64 1705229, i64 1705238, i64 1705288, i64 1705309, i64 1705329}
!3974 = !DILocation(line: 187, column: 1, scope: !3956)
!3975 = !DILocation(line: 188, column: 2, scope: !3956)
!3976 = !DILocation(line: 189, column: 1, scope: !3956)
!3977 = !DILocation(line: 190, column: 2, scope: !3956)
!3978 = !DILocation(line: 191, column: 1, scope: !3956)
!3979 = distinct !DISubprogram(name: "pat_disable", scope: !3, file: !3, line: 71, type: !3980, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !165}
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "msg_reason", arg: 1, scope: !3979, file: !3, line: 71, type: !165)
!3984 = !DILocation(line: 71, column: 44, scope: !3979)
!3985 = !DILocation(line: 73, column: 6, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 73, column: 6)
!3987 = !DILocation(line: 73, column: 6, scope: !3979)
!3988 = !DILocation(line: 74, column: 3, scope: !3986)
!3989 = !DILocation(line: 76, column: 15, scope: !3979)
!3990 = !DILocation(line: 77, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 77, column: 2)
!3992 = !DILocation(line: 77, column: 2, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 77, column: 2)
!3994 = !DILocation(line: 79, column: 25, scope: !3979)
!3995 = !DILocation(line: 80, column: 1, scope: !3979)
!3996 = distinct !DISubprogram(name: "native_read_msr", scope: !3828, file: !3828, line: 114, type: !3997, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!156, !6}
!3999 = !{!4000, !4001}
!4000 = !DILocalVariable(name: "msr", arg: 1, scope: !3996, file: !3828, line: 114, type: !6)
!4001 = !DILocalVariable(name: "val", scope: !3996, file: !3828, line: 116, type: !156)
!4002 = !DILocation(line: 114, column: 63, scope: !3996)
!4003 = !DILocation(line: 116, column: 2, scope: !3996)
!4004 = !DILocation(line: 116, column: 21, scope: !3996)
!4005 = !DILocation(line: 118, column: 16, scope: !3996)
!4006 = !DILocation(line: 118, column: 8, scope: !3996)
!4007 = !DILocation(line: 118, column: 6, scope: !3996)
!4008 = !DILocation(line: 120, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3996, file: !3828, line: 120, column: 6)
!4010 = !DILocation(line: 120, column: 6, scope: !3996)
!4011 = !DILocation(line: 121, column: 21, scope: !4009)
!4012 = !DILocation(line: 121, column: 26, scope: !4009)
!4013 = !DILocation(line: 121, column: 3, scope: !4009)
!4014 = !DILocation(line: 123, column: 9, scope: !3996)
!4015 = !DILocation(line: 124, column: 1, scope: !3996)
!4016 = !DILocation(line: 123, column: 2, scope: !3996)
!4017 = distinct !DISubprogram(name: "init_cache_modes", scope: !3, file: !3, line: 217, type: !4018, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !152}
!4020 = !{!4021, !4022, !4023, !4024}
!4021 = !DILocalVariable(name: "pat", arg: 1, scope: !4017, file: !3, line: 217, type: !152)
!4022 = !DILocalVariable(name: "cache", scope: !4017, file: !3, line: 219, type: !14)
!4023 = !DILocalVariable(name: "pat_msg", scope: !4017, file: !3, line: 220, type: !3764)
!4024 = !DILocalVariable(name: "i", scope: !4017, file: !3, line: 221, type: !149)
!4025 = !DILocation(line: 217, column: 41, scope: !4017)
!4026 = !DILocation(line: 219, column: 2, scope: !4017)
!4027 = !DILocation(line: 219, column: 23, scope: !4017)
!4028 = !DILocation(line: 220, column: 2, scope: !4017)
!4029 = !DILocation(line: 220, column: 7, scope: !4017)
!4030 = !DILocation(line: 221, column: 2, scope: !4017)
!4031 = !DILocation(line: 221, column: 6, scope: !4017)
!4032 = !DILocation(line: 223, column: 2, scope: !4017)
!4033 = !DILocation(line: 223, column: 14, scope: !4017)
!4034 = !DILocation(line: 224, column: 9, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 224, column: 2)
!4036 = !DILocation(line: 224, column: 7, scope: !4035)
!4037 = !DILocation(line: 224, column: 14, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 224, column: 2)
!4039 = !DILocation(line: 224, column: 16, scope: !4038)
!4040 = !DILocation(line: 224, column: 2, scope: !4035)
!4041 = !DILocation(line: 225, column: 31, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 224, column: 27)
!4043 = !DILocation(line: 225, column: 39, scope: !4042)
!4044 = !DILocation(line: 225, column: 41, scope: !4042)
!4045 = !DILocation(line: 225, column: 35, scope: !4042)
!4046 = !DILocation(line: 225, column: 47, scope: !4042)
!4047 = !DILocation(line: 225, column: 30, scope: !4042)
!4048 = !DILocation(line: 226, column: 9, scope: !4042)
!4049 = !DILocation(line: 226, column: 23, scope: !4042)
!4050 = !DILocation(line: 226, column: 21, scope: !4042)
!4051 = !DILocation(line: 226, column: 17, scope: !4042)
!4052 = !DILocation(line: 225, column: 11, scope: !4042)
!4053 = !DILocation(line: 225, column: 9, scope: !4042)
!4054 = !DILocation(line: 227, column: 27, scope: !4042)
!4055 = !DILocation(line: 227, column: 30, scope: !4042)
!4056 = !DILocation(line: 227, column: 3, scope: !4042)
!4057 = !DILocation(line: 228, column: 2, scope: !4042)
!4058 = !DILocation(line: 224, column: 23, scope: !4038)
!4059 = !DILocation(line: 224, column: 2, scope: !4038)
!4060 = distinct !{!4060, !4040, !4061, !4062, !4063}
!4061 = !DILocation(line: 228, column: 2, scope: !4035)
!4062 = !{!"llvm.loop.mustprogress"}
!4063 = !{!"llvm.loop.unroll.disable"}
!4064 = !DILocation(line: 229, column: 2, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 229, column: 2)
!4066 = !DILocation(line: 229, column: 2, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 229, column: 2)
!4068 = !DILocation(line: 230, column: 1, scope: !4017)
!4069 = distinct !DISubprogram(name: "memtype_reserve", scope: !3, file: !3, line: 538, type: !4070, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4073)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!149, !152, !152, !14, !4072}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4086}
!4074 = !DILocalVariable(name: "start", arg: 1, scope: !4069, file: !3, line: 538, type: !152)
!4075 = !DILocalVariable(name: "end", arg: 2, scope: !4069, file: !3, line: 538, type: !152)
!4076 = !DILocalVariable(name: "req_type", arg: 3, scope: !4069, file: !3, line: 538, type: !14)
!4077 = !DILocalVariable(name: "new_type", arg: 4, scope: !4069, file: !3, line: 539, type: !4072)
!4078 = !DILocalVariable(name: "entry_new", scope: !4069, file: !3, line: 541, type: !3573)
!4079 = !DILocalVariable(name: "actual_type", scope: !4069, file: !3, line: 542, type: !14)
!4080 = !DILocalVariable(name: "is_range_ram", scope: !4069, file: !3, line: 543, type: !149)
!4081 = !DILocalVariable(name: "err", scope: !4069, file: !3, line: 544, type: !149)
!4082 = !DILocalVariable(name: "__ret_warn_on", scope: !4083, file: !3, line: 554, type: !149)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 554, column: 3)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 553, column: 20)
!4085 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 553, column: 6)
!4086 = !DILocalVariable(name: "__flags", scope: !4087, file: !3, line: 554, type: !149)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 554, column: 3)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 554, column: 3)
!4089 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 554, column: 3)
!4090 = !DILocation(line: 538, column: 25, scope: !4069)
!4091 = !DILocation(line: 538, column: 36, scope: !4069)
!4092 = !DILocation(line: 538, column: 62, scope: !4069)
!4093 = !DILocation(line: 539, column: 29, scope: !4069)
!4094 = !DILocation(line: 541, column: 2, scope: !4069)
!4095 = !DILocation(line: 541, column: 18, scope: !4069)
!4096 = !DILocation(line: 542, column: 2, scope: !4069)
!4097 = !DILocation(line: 542, column: 23, scope: !4069)
!4098 = !DILocation(line: 543, column: 2, scope: !4069)
!4099 = !DILocation(line: 543, column: 6, scope: !4069)
!4100 = !DILocation(line: 544, column: 2, scope: !4069)
!4101 = !DILocation(line: 544, column: 6, scope: !4069)
!4102 = !DILocation(line: 546, column: 24, scope: !4069)
!4103 = !DILocation(line: 546, column: 10, scope: !4069)
!4104 = !DILocation(line: 546, column: 8, scope: !4069)
!4105 = !DILocation(line: 552, column: 22, scope: !4069)
!4106 = !DILocation(line: 552, column: 26, scope: !4069)
!4107 = !DILocation(line: 552, column: 8, scope: !4069)
!4108 = !DILocation(line: 552, column: 31, scope: !4069)
!4109 = !DILocation(line: 552, column: 6, scope: !4069)
!4110 = !DILocation(line: 553, column: 6, scope: !4085)
!4111 = !DILocation(line: 553, column: 15, scope: !4085)
!4112 = !DILocation(line: 553, column: 12, scope: !4085)
!4113 = !DILocation(line: 553, column: 6, scope: !4069)
!4114 = !DILocation(line: 554, column: 3, scope: !4083)
!4115 = !DILocation(line: 554, column: 3, scope: !4089)
!4116 = !DILocation(line: 554, column: 3, scope: !4088)
!4117 = !DILocation(line: 554, column: 3, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 554, column: 3)
!4119 = !DILocation(line: 554, column: 3, scope: !4087)
!4120 = !DILocation(line: 554, column: 3, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 554, column: 3)
!4122 = !DILocation(line: 554, column: 3, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 554, column: 3)
!4124 = !{i64 2154334916, i64 2154334945, i64 2154334991, i64 2154335049, i64 2154335103, i64 2154335157, i64 2154335212, i64 2154335243, i64 2154335551, i64 2154335557, i64 2154335604, i64 2154335627, i64 2154335653}
!4125 = !DILocation(line: 554, column: 3, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 554, column: 3)
!4127 = !DILocation(line: 554, column: 3, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 554, column: 3)
!4129 = !DILocation(line: 554, column: 3, scope: !4084)
!4130 = !DILocation(line: 556, column: 3, scope: !4084)
!4131 = !DILocation(line: 559, column: 7, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 559, column: 6)
!4133 = !DILocation(line: 559, column: 6, scope: !4069)
!4134 = !DILocation(line: 561, column: 7, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 561, column: 7)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 559, column: 22)
!4137 = !DILocation(line: 561, column: 7, scope: !4136)
!4138 = !DILocation(line: 562, column: 16, scope: !4135)
!4139 = !DILocation(line: 562, column: 5, scope: !4135)
!4140 = !DILocation(line: 562, column: 14, scope: !4135)
!4141 = !DILocation(line: 562, column: 4, scope: !4135)
!4142 = !DILocation(line: 563, column: 3, scope: !4136)
!4143 = !DILocation(line: 567, column: 19, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 567, column: 6)
!4145 = !DILocation(line: 567, column: 42, scope: !4144)
!4146 = !DILocation(line: 567, column: 49, scope: !4144)
!4147 = !DILocation(line: 567, column: 6, scope: !4144)
!4148 = !DILocation(line: 567, column: 6, scope: !4069)
!4149 = !DILocation(line: 568, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 568, column: 7)
!4151 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 567, column: 55)
!4152 = !DILocation(line: 568, column: 7, scope: !4151)
!4153 = !DILocation(line: 569, column: 5, scope: !4150)
!4154 = !DILocation(line: 569, column: 14, scope: !4150)
!4155 = !DILocation(line: 569, column: 4, scope: !4150)
!4156 = !DILocation(line: 570, column: 3, scope: !4151)
!4157 = !DILocation(line: 579, column: 32, scope: !4069)
!4158 = !DILocation(line: 579, column: 39, scope: !4069)
!4159 = !DILocation(line: 579, column: 44, scope: !4069)
!4160 = !DILocation(line: 579, column: 16, scope: !4069)
!4161 = !DILocation(line: 579, column: 14, scope: !4069)
!4162 = !DILocation(line: 581, column: 6, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 581, column: 6)
!4164 = !DILocation(line: 581, column: 6, scope: !4069)
!4165 = !DILocation(line: 582, column: 15, scope: !4163)
!4166 = !DILocation(line: 582, column: 4, scope: !4163)
!4167 = !DILocation(line: 582, column: 13, scope: !4163)
!4168 = !DILocation(line: 582, column: 3, scope: !4163)
!4169 = !DILocation(line: 584, column: 38, scope: !4069)
!4170 = !DILocation(line: 584, column: 45, scope: !4069)
!4171 = !DILocation(line: 584, column: 17, scope: !4069)
!4172 = !DILocation(line: 584, column: 15, scope: !4069)
!4173 = !DILocation(line: 585, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 585, column: 6)
!4175 = !DILocation(line: 585, column: 19, scope: !4174)
!4176 = !DILocation(line: 585, column: 6, scope: !4069)
!4177 = !DILocation(line: 587, column: 32, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 585, column: 25)
!4179 = !DILocation(line: 587, column: 39, scope: !4178)
!4180 = !DILocation(line: 587, column: 44, scope: !4178)
!4181 = !DILocation(line: 587, column: 54, scope: !4178)
!4182 = !DILocation(line: 587, column: 9, scope: !4178)
!4183 = !DILocation(line: 587, column: 7, scope: !4178)
!4184 = !DILocation(line: 589, column: 10, scope: !4178)
!4185 = !DILocation(line: 589, column: 3, scope: !4178)
!4186 = !DILocation(line: 590, column: 13, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 590, column: 13)
!4188 = !DILocation(line: 590, column: 26, scope: !4187)
!4189 = !DILocation(line: 590, column: 13, scope: !4174)
!4190 = !DILocation(line: 591, column: 3, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 590, column: 31)
!4192 = !DILocation(line: 594, column: 14, scope: !4069)
!4193 = !DILocation(line: 594, column: 12, scope: !4069)
!4194 = !DILocation(line: 595, column: 7, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 595, column: 6)
!4196 = !DILocation(line: 595, column: 6, scope: !4069)
!4197 = !DILocation(line: 596, column: 3, scope: !4195)
!4198 = !DILocation(line: 598, column: 21, scope: !4069)
!4199 = !DILocation(line: 598, column: 2, scope: !4069)
!4200 = !DILocation(line: 598, column: 13, scope: !4069)
!4201 = !DILocation(line: 598, column: 19, scope: !4069)
!4202 = !DILocation(line: 599, column: 20, scope: !4069)
!4203 = !DILocation(line: 599, column: 2, scope: !4069)
!4204 = !DILocation(line: 599, column: 13, scope: !4069)
!4205 = !DILocation(line: 599, column: 18, scope: !4069)
!4206 = !DILocation(line: 600, column: 21, scope: !4069)
!4207 = !DILocation(line: 600, column: 2, scope: !4069)
!4208 = !DILocation(line: 600, column: 13, scope: !4069)
!4209 = !DILocation(line: 600, column: 19, scope: !4069)
!4210 = !DILocation(line: 602, column: 2, scope: !4069)
!4211 = !DILocation(line: 604, column: 29, scope: !4069)
!4212 = !DILocation(line: 604, column: 40, scope: !4069)
!4213 = !DILocation(line: 604, column: 8, scope: !4069)
!4214 = !DILocation(line: 604, column: 6, scope: !4069)
!4215 = !DILocation(line: 605, column: 6, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 605, column: 6)
!4217 = !DILocation(line: 605, column: 6, scope: !4069)
!4218 = !DILocation(line: 606, column: 3, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 606, column: 3)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 605, column: 11)
!4221 = !DILocation(line: 606, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 606, column: 3)
!4223 = !DILocation(line: 609, column: 9, scope: !4220)
!4224 = !DILocation(line: 609, column: 3, scope: !4220)
!4225 = !DILocation(line: 610, column: 3, scope: !4220)
!4226 = !DILocation(line: 612, column: 10, scope: !4220)
!4227 = !DILocation(line: 612, column: 3, scope: !4220)
!4228 = !DILocation(line: 615, column: 2, scope: !4069)
!4229 = !DILocation(line: 617, column: 2, scope: !4069)
!4230 = !DILocation(line: 617, column: 2, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 617, column: 2)
!4232 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 617, column: 2)
!4233 = !DILocation(line: 617, column: 2, scope: !4232)
!4234 = !DILocation(line: 617, column: 2, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 617, column: 2)
!4236 = !DILocation(line: 617, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 617, column: 2)
!4238 = !DILocation(line: 621, column: 9, scope: !4069)
!4239 = !DILocation(line: 621, column: 2, scope: !4069)
!4240 = !DILocation(line: 622, column: 1, scope: !4069)
!4241 = distinct !DISubprogram(name: "sanitize_phys", scope: !3, file: !3, line: 509, type: !4242, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!152, !152}
!4244 = !{!4245}
!4245 = !DILocalVariable(name: "address", arg: 1, scope: !4241, file: !3, line: 509, type: !152)
!4246 = !DILocation(line: 509, column: 30, scope: !4241)
!4247 = !DILocation(line: 521, column: 10, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 520, column: 6)
!4249 = !DILocation(line: 521, column: 18, scope: !4248)
!4250 = !DILocation(line: 521, column: 3, scope: !4248)
!4251 = !DISubprogram(name: "__warn_printk", scope: !4252, file: !4252, line: 93, type: !3825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4252 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4253 = distinct !DISubprogram(name: "cattr_name", scope: !3575, file: !3575, line: 18, type: !4254, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!377, !14}
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "pcm", arg: 1, scope: !4253, file: !3575, line: 18, type: !14)
!4258 = !DILocation(line: 18, column: 53, scope: !4253)
!4259 = !DILocation(line: 20, column: 10, scope: !4253)
!4260 = !DILocation(line: 20, column: 2, scope: !4253)
!4261 = !DILocation(line: 21, column: 29, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4253, file: !3575, line: 20, column: 15)
!4263 = !DILocation(line: 22, column: 35, scope: !4262)
!4264 = !DILocation(line: 23, column: 29, scope: !4262)
!4265 = !DILocation(line: 24, column: 29, scope: !4262)
!4266 = !DILocation(line: 25, column: 29, scope: !4262)
!4267 = !DILocation(line: 26, column: 29, scope: !4262)
!4268 = !DILocation(line: 27, column: 14, scope: !4262)
!4269 = !DILocation(line: 29, column: 1, scope: !4253)
!4270 = distinct !DISubprogram(name: "pat_x_mtrr_type", scope: !3, file: !3, line: 379, type: !4271, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!151, !152, !152, !14}
!4273 = !{!4274, !4275, !4276, !4277, !4280}
!4274 = !DILocalVariable(name: "start", arg: 1, scope: !4270, file: !3, line: 379, type: !152)
!4275 = !DILocalVariable(name: "end", arg: 2, scope: !4270, file: !3, line: 379, type: !152)
!4276 = !DILocalVariable(name: "req_type", arg: 3, scope: !4270, file: !3, line: 380, type: !14)
!4277 = !DILocalVariable(name: "mtrr_type", scope: !4278, file: !3, line: 387, type: !322)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 386, column: 39)
!4279 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 386, column: 6)
!4280 = !DILocalVariable(name: "uniform", scope: !4278, file: !3, line: 387, type: !322)
!4281 = !DILocation(line: 379, column: 42, scope: !4270)
!4282 = !DILocation(line: 379, column: 53, scope: !4270)
!4283 = !DILocation(line: 380, column: 31, scope: !4270)
!4284 = !DILocation(line: 386, column: 6, scope: !4279)
!4285 = !DILocation(line: 386, column: 15, scope: !4279)
!4286 = !DILocation(line: 386, column: 6, scope: !4270)
!4287 = !DILocation(line: 387, column: 3, scope: !4278)
!4288 = !DILocation(line: 387, column: 6, scope: !4278)
!4289 = !DILocation(line: 387, column: 17, scope: !4278)
!4290 = !DILocation(line: 389, column: 32, scope: !4278)
!4291 = !DILocation(line: 389, column: 39, scope: !4278)
!4292 = !DILocation(line: 389, column: 15, scope: !4278)
!4293 = !DILocation(line: 389, column: 13, scope: !4278)
!4294 = !DILocation(line: 390, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 390, column: 7)
!4296 = !DILocation(line: 390, column: 17, scope: !4295)
!4297 = !DILocation(line: 390, column: 7, scope: !4278)
!4298 = !DILocation(line: 391, column: 4, scope: !4295)
!4299 = !DILocation(line: 393, column: 3, scope: !4278)
!4300 = !DILocation(line: 394, column: 2, scope: !4279)
!4301 = !DILocation(line: 396, column: 9, scope: !4270)
!4302 = !DILocation(line: 396, column: 2, scope: !4270)
!4303 = !DILocation(line: 397, column: 1, scope: !4270)
!4304 = distinct !DISubprogram(name: "pat_pagerange_is_ram", scope: !3, file: !3, line: 417, type: !4305, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!149, !162, !162}
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313}
!4308 = !DILocalVariable(name: "start", arg: 1, scope: !4304, file: !3, line: 417, type: !162)
!4309 = !DILocalVariable(name: "end", arg: 2, scope: !4304, file: !3, line: 417, type: !162)
!4310 = !DILocalVariable(name: "ret", scope: !4304, file: !3, line: 419, type: !149)
!4311 = !DILocalVariable(name: "start_pfn", scope: !4304, file: !3, line: 420, type: !151)
!4312 = !DILocalVariable(name: "end_pfn", scope: !4304, file: !3, line: 421, type: !151)
!4313 = !DILocalVariable(name: "state", scope: !4304, file: !3, line: 422, type: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pagerange_state", file: !3, line: 399, size: 128, elements: !4315)
!4315 = !{!4316, !4317, !4318}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "cur_pfn", scope: !4314, file: !3, line: 400, baseType: !151, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ram", scope: !4314, file: !3, line: 401, baseType: !149, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "not_ram", scope: !4314, file: !3, line: 402, baseType: !149, size: 32, offset: 96)
!4319 = !DILocation(line: 417, column: 49, scope: !4304)
!4320 = !DILocation(line: 417, column: 72, scope: !4304)
!4321 = !DILocation(line: 419, column: 2, scope: !4304)
!4322 = !DILocation(line: 419, column: 6, scope: !4304)
!4323 = !DILocation(line: 420, column: 2, scope: !4304)
!4324 = !DILocation(line: 420, column: 16, scope: !4304)
!4325 = !DILocation(line: 420, column: 28, scope: !4304)
!4326 = !DILocation(line: 420, column: 34, scope: !4304)
!4327 = !DILocation(line: 421, column: 2, scope: !4304)
!4328 = !DILocation(line: 421, column: 16, scope: !4304)
!4329 = !DILocation(line: 421, column: 27, scope: !4304)
!4330 = !DILocation(line: 421, column: 31, scope: !4304)
!4331 = !DILocation(line: 421, column: 43, scope: !4304)
!4332 = !DILocation(line: 421, column: 48, scope: !4304)
!4333 = !DILocation(line: 422, column: 2, scope: !4304)
!4334 = !DILocation(line: 422, column: 25, scope: !4304)
!4335 = !DILocation(line: 422, column: 33, scope: !4304)
!4336 = !DILocation(line: 422, column: 34, scope: !4304)
!4337 = !DILocation(line: 431, column: 6, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 431, column: 6)
!4339 = !DILocation(line: 431, column: 16, scope: !4338)
!4340 = !DILocation(line: 431, column: 6, scope: !4304)
!4341 = !DILocation(line: 432, column: 13, scope: !4338)
!4342 = !DILocation(line: 432, column: 3, scope: !4338)
!4343 = !DILocation(line: 434, column: 6, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 434, column: 6)
!4345 = !DILocation(line: 434, column: 18, scope: !4344)
!4346 = !DILocation(line: 434, column: 16, scope: !4344)
!4347 = !DILocation(line: 434, column: 6, scope: !4304)
!4348 = !DILocation(line: 435, column: 31, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 434, column: 27)
!4350 = !DILocation(line: 435, column: 42, scope: !4349)
!4351 = !DILocation(line: 435, column: 52, scope: !4349)
!4352 = !DILocation(line: 435, column: 50, scope: !4349)
!4353 = !DILocation(line: 435, column: 9, scope: !4349)
!4354 = !DILocation(line: 435, column: 7, scope: !4349)
!4355 = !DILocation(line: 437, column: 2, scope: !4349)
!4356 = !DILocation(line: 439, column: 10, scope: !4304)
!4357 = !DILocation(line: 439, column: 14, scope: !4304)
!4358 = !DILocation(line: 439, column: 9, scope: !4304)
!4359 = !DILocation(line: 439, column: 33, scope: !4304)
!4360 = !DILocation(line: 439, column: 27, scope: !4304)
!4361 = !DILocation(line: 440, column: 1, scope: !4304)
!4362 = !DILocation(line: 439, column: 2, scope: !4304)
!4363 = distinct !DISubprogram(name: "reserve_ram_pages_type", scope: !3, file: !3, line: 453, type: !4070, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4364)
!4364 = !{!4365, !4366, !4367, !4368, !4369, !4370, !4371, !4375, !4378}
!4365 = !DILocalVariable(name: "start", arg: 1, scope: !4363, file: !3, line: 453, type: !152)
!4366 = !DILocalVariable(name: "end", arg: 2, scope: !4363, file: !3, line: 453, type: !152)
!4367 = !DILocalVariable(name: "req_type", arg: 3, scope: !4363, file: !3, line: 454, type: !14)
!4368 = !DILocalVariable(name: "new_type", arg: 4, scope: !4363, file: !3, line: 455, type: !4072)
!4369 = !DILocalVariable(name: "page", scope: !4363, file: !3, line: 457, type: !168)
!4370 = !DILocalVariable(name: "pfn", scope: !4363, file: !3, line: 458, type: !152)
!4371 = !DILocalVariable(name: "__ret_warn_on", scope: !4372, file: !3, line: 468, type: !149)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 468, column: 3)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 466, column: 39)
!4374 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 466, column: 6)
!4375 = !DILocalVariable(name: "__flags", scope: !4376, file: !3, line: 468, type: !149)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 468, column: 3)
!4377 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 468, column: 3)
!4378 = !DILocalVariable(name: "type", scope: !4379, file: !3, line: 473, type: !14)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 472, column: 70)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 472, column: 2)
!4381 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 472, column: 2)
!4382 = !DILocation(line: 453, column: 39, scope: !4363)
!4383 = !DILocation(line: 453, column: 50, scope: !4363)
!4384 = !DILocation(line: 454, column: 28, scope: !4363)
!4385 = !DILocation(line: 455, column: 29, scope: !4363)
!4386 = !DILocation(line: 457, column: 2, scope: !4363)
!4387 = !DILocation(line: 457, column: 15, scope: !4363)
!4388 = !DILocation(line: 458, column: 2, scope: !4363)
!4389 = !DILocation(line: 458, column: 6, scope: !4363)
!4390 = !DILocation(line: 460, column: 6, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 460, column: 6)
!4392 = !DILocation(line: 460, column: 15, scope: !4391)
!4393 = !DILocation(line: 460, column: 6, scope: !4363)
!4394 = !DILocation(line: 461, column: 7, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 461, column: 7)
!4396 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 460, column: 39)
!4397 = !DILocation(line: 461, column: 7, scope: !4396)
!4398 = !DILocation(line: 462, column: 5, scope: !4395)
!4399 = !DILocation(line: 462, column: 14, scope: !4395)
!4400 = !DILocation(line: 462, column: 4, scope: !4395)
!4401 = !DILocation(line: 463, column: 3, scope: !4396)
!4402 = !DILocation(line: 466, column: 6, scope: !4374)
!4403 = !DILocation(line: 466, column: 15, scope: !4374)
!4404 = !DILocation(line: 466, column: 6, scope: !4363)
!4405 = !DILocation(line: 468, column: 3, scope: !4372)
!4406 = !DILocation(line: 468, column: 3, scope: !4377)
!4407 = !DILocation(line: 468, column: 3, scope: !4376)
!4408 = !DILocation(line: 468, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 468, column: 3)
!4410 = !DILocation(line: 468, column: 3, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 468, column: 3)
!4412 = !{i64 2154331370, i64 2154331399, i64 2154331445, i64 2154331503, i64 2154331557, i64 2154331611, i64 2154331666, i64 2154331697, i64 2154332005, i64 2154332011, i64 2154332058, i64 2154332081, i64 2154332107}
!4413 = !DILocation(line: 468, column: 3, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 468, column: 3)
!4415 = !DILocation(line: 468, column: 3, scope: !4373)
!4416 = !DILocation(line: 469, column: 12, scope: !4373)
!4417 = !DILocation(line: 470, column: 2, scope: !4373)
!4418 = !DILocation(line: 472, column: 14, scope: !4381)
!4419 = !DILocation(line: 472, column: 20, scope: !4381)
!4420 = !DILocation(line: 472, column: 11, scope: !4381)
!4421 = !DILocation(line: 472, column: 7, scope: !4381)
!4422 = !DILocation(line: 472, column: 36, scope: !4380)
!4423 = !DILocation(line: 472, column: 43, scope: !4380)
!4424 = !DILocation(line: 472, column: 47, scope: !4380)
!4425 = !DILocation(line: 472, column: 40, scope: !4380)
!4426 = !DILocation(line: 472, column: 2, scope: !4381)
!4427 = !DILocation(line: 473, column: 3, scope: !4379)
!4428 = !DILocation(line: 473, column: 24, scope: !4379)
!4429 = !DILocation(line: 475, column: 10, scope: !4379)
!4430 = !DILocation(line: 475, column: 8, scope: !4379)
!4431 = !DILocation(line: 476, column: 27, scope: !4379)
!4432 = !DILocation(line: 476, column: 10, scope: !4379)
!4433 = !DILocation(line: 476, column: 8, scope: !4379)
!4434 = !DILocation(line: 477, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 477, column: 7)
!4436 = !DILocation(line: 477, column: 12, scope: !4435)
!4437 = !DILocation(line: 477, column: 7, scope: !4379)
!4438 = !DILocation(line: 478, column: 4, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 478, column: 4)
!4440 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 477, column: 36)
!4441 = !DILocation(line: 478, column: 4, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 478, column: 4)
!4443 = !DILocation(line: 480, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 480, column: 8)
!4445 = !DILocation(line: 480, column: 8, scope: !4440)
!4446 = !DILocation(line: 481, column: 17, scope: !4444)
!4447 = !DILocation(line: 481, column: 6, scope: !4444)
!4448 = !DILocation(line: 481, column: 15, scope: !4444)
!4449 = !DILocation(line: 481, column: 5, scope: !4444)
!4450 = !DILocation(line: 483, column: 4, scope: !4440)
!4451 = !DILocation(line: 485, column: 2, scope: !4380)
!4452 = !DILocation(line: 485, column: 2, scope: !4379)
!4453 = !DILocation(line: 472, column: 63, scope: !4380)
!4454 = !DILocation(line: 472, column: 2, scope: !4380)
!4455 = distinct !{!4455, !4426, !4456, !4062, !4063}
!4456 = !DILocation(line: 485, column: 2, scope: !4381)
!4457 = !DILocation(line: 487, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 487, column: 6)
!4459 = !DILocation(line: 487, column: 6, scope: !4363)
!4460 = !DILocation(line: 488, column: 15, scope: !4458)
!4461 = !DILocation(line: 488, column: 4, scope: !4458)
!4462 = !DILocation(line: 488, column: 13, scope: !4458)
!4463 = !DILocation(line: 488, column: 3, scope: !4458)
!4464 = !DILocation(line: 490, column: 14, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 490, column: 2)
!4466 = !DILocation(line: 490, column: 20, scope: !4465)
!4467 = !DILocation(line: 490, column: 11, scope: !4465)
!4468 = !DILocation(line: 490, column: 7, scope: !4465)
!4469 = !DILocation(line: 490, column: 36, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 490, column: 2)
!4471 = !DILocation(line: 490, column: 43, scope: !4470)
!4472 = !DILocation(line: 490, column: 47, scope: !4470)
!4473 = !DILocation(line: 490, column: 40, scope: !4470)
!4474 = !DILocation(line: 490, column: 2, scope: !4465)
!4475 = !DILocation(line: 491, column: 10, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 490, column: 70)
!4477 = !DILocation(line: 491, column: 8, scope: !4476)
!4478 = !DILocation(line: 492, column: 20, scope: !4476)
!4479 = !DILocation(line: 492, column: 26, scope: !4476)
!4480 = !DILocation(line: 492, column: 3, scope: !4476)
!4481 = !DILocation(line: 493, column: 2, scope: !4476)
!4482 = !DILocation(line: 490, column: 63, scope: !4470)
!4483 = !DILocation(line: 490, column: 2, scope: !4470)
!4484 = distinct !{!4484, !4474, !4485, !4062, !4063}
!4485 = !DILocation(line: 493, column: 2, scope: !4465)
!4486 = !DILocation(line: 494, column: 2, scope: !4363)
!4487 = !DILocation(line: 495, column: 1, scope: !4363)
!4488 = distinct !DISubprogram(name: "kzalloc", scope: !138, file: !138, line: 719, type: !4489, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!148, !520, !157}
!4491 = !{!4492, !4493}
!4492 = !DILocalVariable(name: "size", arg: 1, scope: !4488, file: !138, line: 719, type: !520)
!4493 = !DILocalVariable(name: "flags", arg: 2, scope: !4488, file: !138, line: 719, type: !157)
!4494 = !DILocation(line: 719, column: 52, scope: !4488)
!4495 = !DILocation(line: 719, column: 64, scope: !4488)
!4496 = !DILocation(line: 721, column: 17, scope: !4488)
!4497 = !DILocation(line: 721, column: 23, scope: !4488)
!4498 = !DILocation(line: 721, column: 29, scope: !4488)
!4499 = !DILocation(line: 721, column: 9, scope: !4488)
!4500 = !DILocation(line: 721, column: 2, scope: !4488)
!4501 = distinct !DISubprogram(name: "spin_lock", scope: !4502, file: !4502, line: 349, type: !4503, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4502 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4503 = !DISubroutineType(types: !4504)
!4504 = !{null, !1290}
!4505 = !{!4506}
!4506 = !DILocalVariable(name: "lock", arg: 1, scope: !4501, file: !4502, line: 349, type: !1290)
!4507 = !DILocation(line: 349, column: 51, scope: !4501)
!4508 = !DILocation(line: 351, column: 2, scope: !4501)
!4509 = !DILocation(line: 352, column: 1, scope: !4501)
!4510 = !DISubprogram(name: "memtype_check_insert", scope: !3575, file: !3575, line: 32, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!149, !3573, !4072}
!4513 = !DISubprogram(name: "_printk", scope: !4514, file: !4514, line: 153, type: !4515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!149, !165, null}
!4517 = !DISubprogram(name: "kfree", scope: !138, file: !138, line: 227, type: !4518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !2721}
!4520 = distinct !DISubprogram(name: "spin_unlock", scope: !4502, file: !4502, line: 389, type: !4503, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4521)
!4521 = !{!4522}
!4522 = !DILocalVariable(name: "lock", arg: 1, scope: !4520, file: !4502, line: 389, type: !1290)
!4523 = !DILocation(line: 389, column: 53, scope: !4520)
!4524 = !DILocation(line: 391, column: 2, scope: !4520)
!4525 = !DILocation(line: 392, column: 1, scope: !4520)
!4526 = distinct !DISubprogram(name: "memtype_free", scope: !3, file: !3, line: 624, type: !4527, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!149, !152, !152}
!4529 = !{!4530, !4531, !4532, !4533}
!4530 = !DILocalVariable(name: "start", arg: 1, scope: !4526, file: !3, line: 624, type: !152)
!4531 = !DILocalVariable(name: "end", arg: 2, scope: !4526, file: !3, line: 624, type: !152)
!4532 = !DILocalVariable(name: "is_range_ram", scope: !4526, file: !3, line: 626, type: !149)
!4533 = !DILocalVariable(name: "entry_old", scope: !4526, file: !3, line: 627, type: !3573)
!4534 = !DILocation(line: 624, column: 22, scope: !4526)
!4535 = !DILocation(line: 624, column: 33, scope: !4526)
!4536 = !DILocation(line: 626, column: 2, scope: !4526)
!4537 = !DILocation(line: 626, column: 6, scope: !4526)
!4538 = !DILocation(line: 627, column: 2, scope: !4526)
!4539 = !DILocation(line: 627, column: 18, scope: !4526)
!4540 = !DILocation(line: 629, column: 7, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 629, column: 6)
!4542 = !DILocation(line: 629, column: 6, scope: !4526)
!4543 = !DILocation(line: 630, column: 3, scope: !4541)
!4544 = !DILocation(line: 632, column: 24, scope: !4526)
!4545 = !DILocation(line: 632, column: 10, scope: !4526)
!4546 = !DILocation(line: 632, column: 8, scope: !4526)
!4547 = !DILocation(line: 633, column: 22, scope: !4526)
!4548 = !DILocation(line: 633, column: 8, scope: !4526)
!4549 = !DILocation(line: 633, column: 6, scope: !4526)
!4550 = !DILocation(line: 636, column: 19, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 636, column: 6)
!4552 = !DILocation(line: 636, column: 42, scope: !4551)
!4553 = !DILocation(line: 636, column: 49, scope: !4551)
!4554 = !DILocation(line: 636, column: 6, scope: !4551)
!4555 = !DILocation(line: 636, column: 6, scope: !4526)
!4556 = !DILocation(line: 637, column: 3, scope: !4551)
!4557 = !DILocation(line: 639, column: 38, scope: !4526)
!4558 = !DILocation(line: 639, column: 45, scope: !4526)
!4559 = !DILocation(line: 639, column: 17, scope: !4526)
!4560 = !DILocation(line: 639, column: 15, scope: !4526)
!4561 = !DILocation(line: 640, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 640, column: 6)
!4563 = !DILocation(line: 640, column: 19, scope: !4562)
!4564 = !DILocation(line: 640, column: 6, scope: !4526)
!4565 = !DILocation(line: 641, column: 30, scope: !4562)
!4566 = !DILocation(line: 641, column: 37, scope: !4562)
!4567 = !DILocation(line: 641, column: 10, scope: !4562)
!4568 = !DILocation(line: 641, column: 3, scope: !4562)
!4569 = !DILocation(line: 642, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 642, column: 6)
!4571 = !DILocation(line: 642, column: 19, scope: !4570)
!4572 = !DILocation(line: 642, column: 6, scope: !4526)
!4573 = !DILocation(line: 643, column: 3, scope: !4570)
!4574 = !DILocation(line: 645, column: 2, scope: !4526)
!4575 = !DILocation(line: 646, column: 28, scope: !4526)
!4576 = !DILocation(line: 646, column: 35, scope: !4526)
!4577 = !DILocation(line: 646, column: 14, scope: !4526)
!4578 = !DILocation(line: 646, column: 12, scope: !4526)
!4579 = !DILocation(line: 647, column: 2, scope: !4526)
!4580 = !DILocation(line: 649, column: 13, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 649, column: 6)
!4582 = !DILocation(line: 649, column: 6, scope: !4581)
!4583 = !DILocation(line: 649, column: 6, scope: !4526)
!4584 = !DILocation(line: 650, column: 3, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 650, column: 3)
!4586 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 649, column: 25)
!4587 = !DILocation(line: 650, column: 3, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 650, column: 3)
!4589 = !DILocation(line: 652, column: 3, scope: !4586)
!4590 = !DILocation(line: 655, column: 8, scope: !4526)
!4591 = !DILocation(line: 655, column: 2, scope: !4526)
!4592 = !DILocation(line: 657, column: 2, scope: !4526)
!4593 = !DILocation(line: 657, column: 2, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 657, column: 2)
!4595 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 657, column: 2)
!4596 = !DILocation(line: 657, column: 2, scope: !4595)
!4597 = !DILocation(line: 657, column: 2, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 657, column: 2)
!4599 = !DILocation(line: 657, column: 2, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 657, column: 2)
!4601 = !DILocation(line: 659, column: 2, scope: !4526)
!4602 = !DILocation(line: 660, column: 1, scope: !4526)
!4603 = distinct !DISubprogram(name: "free_ram_pages_type", scope: !3, file: !3, line: 497, type: !4527, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4604)
!4604 = !{!4605, !4606, !4607, !4608}
!4605 = !DILocalVariable(name: "start", arg: 1, scope: !4603, file: !3, line: 497, type: !152)
!4606 = !DILocalVariable(name: "end", arg: 2, scope: !4603, file: !3, line: 497, type: !152)
!4607 = !DILocalVariable(name: "page", scope: !4603, file: !3, line: 499, type: !168)
!4608 = !DILocalVariable(name: "pfn", scope: !4603, file: !3, line: 500, type: !152)
!4609 = !DILocation(line: 497, column: 36, scope: !4603)
!4610 = !DILocation(line: 497, column: 47, scope: !4603)
!4611 = !DILocation(line: 499, column: 2, scope: !4603)
!4612 = !DILocation(line: 499, column: 15, scope: !4603)
!4613 = !DILocation(line: 500, column: 2, scope: !4603)
!4614 = !DILocation(line: 500, column: 6, scope: !4603)
!4615 = !DILocation(line: 502, column: 14, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 502, column: 2)
!4617 = !DILocation(line: 502, column: 20, scope: !4616)
!4618 = !DILocation(line: 502, column: 11, scope: !4616)
!4619 = !DILocation(line: 502, column: 7, scope: !4616)
!4620 = !DILocation(line: 502, column: 36, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 502, column: 2)
!4622 = !DILocation(line: 502, column: 43, scope: !4621)
!4623 = !DILocation(line: 502, column: 47, scope: !4621)
!4624 = !DILocation(line: 502, column: 40, scope: !4621)
!4625 = !DILocation(line: 502, column: 2, scope: !4616)
!4626 = !DILocation(line: 503, column: 10, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 502, column: 70)
!4628 = !DILocation(line: 503, column: 8, scope: !4627)
!4629 = !DILocation(line: 504, column: 20, scope: !4627)
!4630 = !DILocation(line: 504, column: 3, scope: !4627)
!4631 = !DILocation(line: 505, column: 2, scope: !4627)
!4632 = !DILocation(line: 502, column: 63, scope: !4621)
!4633 = !DILocation(line: 502, column: 2, scope: !4621)
!4634 = distinct !{!4634, !4625, !4635, !4062, !4063}
!4635 = !DILocation(line: 505, column: 2, scope: !4616)
!4636 = !DILocation(line: 507, column: 1, scope: !4603)
!4637 = !DILocation(line: 506, column: 2, scope: !4603)
!4638 = !DISubprogram(name: "memtype_erase", scope: !3575, file: !3575, line: 34, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!3573, !152, !152}
!4641 = distinct !DISubprogram(name: "IS_ERR", scope: !4642, file: !4642, line: 59, type: !4643, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4645)
!4642 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!776, !2721}
!4645 = !{!4646}
!4646 = !DILocalVariable(name: "ptr", arg: 1, scope: !4641, file: !4642, line: 59, type: !2721)
!4647 = !DILocation(line: 59, column: 60, scope: !4641)
!4648 = !DILocation(line: 61, column: 9, scope: !4641)
!4649 = !DILocation(line: 61, column: 2, scope: !4641)
!4650 = distinct !DISubprogram(name: "get_current", scope: !4651, file: !4651, line: 39, type: !4652, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4654)
!4651 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!1728}
!4654 = !{!4655, !4657, !4659}
!4655 = !DILocalVariable(name: "pscr_ret__", scope: !4656, file: !4651, line: 41, type: !1728)
!4656 = distinct !DILexicalBlock(scope: !4650, file: !4651, line: 41, column: 9)
!4657 = !DILocalVariable(name: "__vpp_verify", scope: !4658, file: !4651, line: 41, type: !2721)
!4658 = distinct !DILexicalBlock(scope: !4656, file: !4651, line: 41, column: 9)
!4659 = !DILocalVariable(name: "pfo_val__", scope: !4660, file: !4651, line: 41, type: !152)
!4660 = distinct !DILexicalBlock(scope: !4656, file: !4651, line: 41, column: 9)
!4661 = !DILocation(line: 41, column: 9, scope: !4656)
!4662 = !DILocation(line: 41, column: 9, scope: !4658)
!4663 = !DILocation(line: 41, column: 9, scope: !4660)
!4664 = !{i64 2148258519}
!4665 = !DILocation(line: 41, column: 9, scope: !4650)
!4666 = !DILocation(line: 41, column: 2, scope: !4650)
!4667 = distinct !DISubprogram(name: "pat_pfn_immune_to_uc_mtrr", scope: !3, file: !3, line: 709, type: !4668, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!776, !151}
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "pfn", arg: 1, scope: !4667, file: !3, line: 709, type: !151)
!4672 = !DILocalVariable(name: "cm", scope: !4667, file: !3, line: 711, type: !14)
!4673 = !DILocation(line: 709, column: 46, scope: !4667)
!4674 = !DILocation(line: 711, column: 2, scope: !4667)
!4675 = !DILocation(line: 711, column: 23, scope: !4667)
!4676 = !DILocation(line: 711, column: 43, scope: !4667)
!4677 = !DILocation(line: 711, column: 28, scope: !4667)
!4678 = !DILocation(line: 713, column: 9, scope: !4667)
!4679 = !DILocation(line: 713, column: 12, scope: !4667)
!4680 = !DILocation(line: 713, column: 35, scope: !4667)
!4681 = !DILocation(line: 714, column: 9, scope: !4667)
!4682 = !DILocation(line: 714, column: 12, scope: !4667)
!4683 = !DILocation(line: 714, column: 41, scope: !4667)
!4684 = !DILocation(line: 715, column: 9, scope: !4667)
!4685 = !DILocation(line: 715, column: 12, scope: !4667)
!4686 = !DILocation(line: 716, column: 1, scope: !4667)
!4687 = !DILocation(line: 713, column: 2, scope: !4667)
!4688 = distinct !DISubprogram(name: "lookup_memtype", scope: !3, file: !3, line: 672, type: !4689, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4691)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!14, !152}
!4691 = !{!4692, !4693, !4694, !4695}
!4692 = !DILocalVariable(name: "paddr", arg: 1, scope: !4688, file: !3, line: 672, type: !152)
!4693 = !DILocalVariable(name: "rettype", scope: !4688, file: !3, line: 674, type: !14)
!4694 = !DILocalVariable(name: "entry", scope: !4688, file: !3, line: 675, type: !3573)
!4695 = !DILocalVariable(name: "page", scope: !4696, file: !3, line: 681, type: !168)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 680, column: 54)
!4697 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 680, column: 6)
!4698 = !DILocation(line: 672, column: 48, scope: !4688)
!4699 = !DILocation(line: 674, column: 2, scope: !4688)
!4700 = !DILocation(line: 674, column: 23, scope: !4688)
!4701 = !DILocation(line: 675, column: 2, scope: !4688)
!4702 = !DILocation(line: 675, column: 18, scope: !4688)
!4703 = !DILocation(line: 677, column: 19, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 677, column: 6)
!4705 = !DILocation(line: 677, column: 42, scope: !4704)
!4706 = !DILocation(line: 677, column: 49, scope: !4704)
!4707 = !DILocation(line: 677, column: 55, scope: !4704)
!4708 = !DILocation(line: 677, column: 6, scope: !4704)
!4709 = !DILocation(line: 677, column: 6, scope: !4688)
!4710 = !DILocation(line: 678, column: 10, scope: !4704)
!4711 = !DILocation(line: 678, column: 3, scope: !4704)
!4712 = !DILocation(line: 680, column: 27, scope: !4697)
!4713 = !DILocation(line: 680, column: 34, scope: !4697)
!4714 = !DILocation(line: 680, column: 40, scope: !4697)
!4715 = !DILocation(line: 680, column: 6, scope: !4697)
!4716 = !DILocation(line: 680, column: 6, scope: !4688)
!4717 = !DILocation(line: 681, column: 3, scope: !4696)
!4718 = !DILocation(line: 681, column: 16, scope: !4696)
!4719 = !DILocation(line: 683, column: 10, scope: !4696)
!4720 = !DILocation(line: 683, column: 8, scope: !4696)
!4721 = !DILocation(line: 684, column: 27, scope: !4696)
!4722 = !DILocation(line: 684, column: 10, scope: !4696)
!4723 = !DILocation(line: 684, column: 3, scope: !4696)
!4724 = !DILocation(line: 685, column: 2, scope: !4697)
!4725 = !DILocation(line: 687, column: 2, scope: !4688)
!4726 = !DILocation(line: 689, column: 25, scope: !4688)
!4727 = !DILocation(line: 689, column: 10, scope: !4688)
!4728 = !DILocation(line: 689, column: 8, scope: !4688)
!4729 = !DILocation(line: 690, column: 6, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 690, column: 6)
!4731 = !DILocation(line: 690, column: 12, scope: !4730)
!4732 = !DILocation(line: 690, column: 6, scope: !4688)
!4733 = !DILocation(line: 691, column: 13, scope: !4730)
!4734 = !DILocation(line: 691, column: 20, scope: !4730)
!4735 = !DILocation(line: 691, column: 11, scope: !4730)
!4736 = !DILocation(line: 691, column: 3, scope: !4730)
!4737 = !DILocation(line: 693, column: 11, scope: !4730)
!4738 = !DILocation(line: 695, column: 2, scope: !4688)
!4739 = !DILocation(line: 697, column: 9, scope: !4688)
!4740 = !DILocation(line: 697, column: 2, scope: !4688)
!4741 = !DILocation(line: 698, column: 1, scope: !4688)
!4742 = distinct !DISubprogram(name: "memtype_reserve_io", scope: !3, file: !3, line: 729, type: !4743, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4745)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!149, !162, !162, !4072}
!4745 = !{!4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4755, !4758, !4759}
!4746 = !DILocalVariable(name: "start", arg: 1, scope: !4742, file: !3, line: 729, type: !162)
!4747 = !DILocalVariable(name: "end", arg: 2, scope: !4742, file: !3, line: 729, type: !162)
!4748 = !DILocalVariable(name: "type", arg: 3, scope: !4742, file: !3, line: 730, type: !4072)
!4749 = !DILocalVariable(name: "size", scope: !4742, file: !3, line: 732, type: !162)
!4750 = !DILocalVariable(name: "req_type", scope: !4742, file: !3, line: 733, type: !14)
!4751 = !DILocalVariable(name: "new_type", scope: !4742, file: !3, line: 734, type: !14)
!4752 = !DILocalVariable(name: "ret", scope: !4742, file: !3, line: 735, type: !149)
!4753 = !DILocalVariable(name: "__ret_warn_on", scope: !4754, file: !3, line: 737, type: !149)
!4754 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 737, column: 2)
!4755 = !DILocalVariable(name: "__flags", scope: !4756, file: !3, line: 737, type: !149)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 737, column: 2)
!4757 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 737, column: 2)
!4758 = !DILabel(scope: !4742, name: "out_free", file: !3, line: 752)
!4759 = !DILabel(scope: !4742, name: "out_err", file: !3, line: 755)
!4760 = !DILocation(line: 729, column: 40, scope: !4742)
!4761 = !DILocation(line: 729, column: 63, scope: !4742)
!4762 = !DILocation(line: 730, column: 26, scope: !4742)
!4763 = !DILocation(line: 732, column: 2, scope: !4742)
!4764 = !DILocation(line: 732, column: 18, scope: !4742)
!4765 = !DILocation(line: 732, column: 25, scope: !4742)
!4766 = !DILocation(line: 732, column: 31, scope: !4742)
!4767 = !DILocation(line: 732, column: 29, scope: !4742)
!4768 = !DILocation(line: 733, column: 2, scope: !4742)
!4769 = !DILocation(line: 733, column: 23, scope: !4742)
!4770 = !DILocation(line: 733, column: 35, scope: !4742)
!4771 = !DILocation(line: 733, column: 34, scope: !4742)
!4772 = !DILocation(line: 734, column: 2, scope: !4742)
!4773 = !DILocation(line: 734, column: 23, scope: !4742)
!4774 = !DILocation(line: 735, column: 2, scope: !4742)
!4775 = !DILocation(line: 735, column: 6, scope: !4742)
!4776 = !DILocation(line: 737, column: 2, scope: !4754)
!4777 = !DILocation(line: 737, column: 2, scope: !4757)
!4778 = !DILocation(line: 737, column: 2, scope: !4756)
!4779 = !DILocation(line: 737, column: 2, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 737, column: 2)
!4781 = !DILocation(line: 737, column: 2, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 737, column: 2)
!4783 = !{i64 2154342639, i64 2154342668, i64 2154342714, i64 2154342772, i64 2154342826, i64 2154342880, i64 2154342935, i64 2154342966, i64 2154343274, i64 2154343280, i64 2154343327, i64 2154343350, i64 2154343376}
!4784 = !DILocation(line: 737, column: 2, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 737, column: 2)
!4786 = !DILocation(line: 737, column: 2, scope: !4742)
!4787 = !DILocation(line: 739, column: 24, scope: !4742)
!4788 = !DILocation(line: 739, column: 31, scope: !4742)
!4789 = !DILocation(line: 739, column: 36, scope: !4742)
!4790 = !DILocation(line: 739, column: 8, scope: !4742)
!4791 = !DILocation(line: 739, column: 6, scope: !4742)
!4792 = !DILocation(line: 740, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 740, column: 6)
!4794 = !DILocation(line: 740, column: 6, scope: !4742)
!4795 = !DILocation(line: 741, column: 3, scope: !4793)
!4796 = !DILocation(line: 743, column: 30, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 743, column: 6)
!4798 = !DILocation(line: 743, column: 37, scope: !4797)
!4799 = !DILocation(line: 743, column: 43, scope: !4797)
!4800 = !DILocation(line: 743, column: 53, scope: !4797)
!4801 = !DILocation(line: 743, column: 7, scope: !4797)
!4802 = !DILocation(line: 743, column: 6, scope: !4742)
!4803 = !DILocation(line: 744, column: 3, scope: !4797)
!4804 = !DILocation(line: 746, column: 30, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 746, column: 6)
!4806 = !DILocation(line: 746, column: 37, scope: !4805)
!4807 = !DILocation(line: 746, column: 43, scope: !4805)
!4808 = !DILocation(line: 746, column: 6, scope: !4805)
!4809 = !DILocation(line: 746, column: 53, scope: !4805)
!4810 = !DILocation(line: 746, column: 6, scope: !4742)
!4811 = !DILocation(line: 747, column: 3, scope: !4805)
!4812 = !DILocation(line: 749, column: 10, scope: !4742)
!4813 = !DILocation(line: 749, column: 3, scope: !4742)
!4814 = !DILocation(line: 749, column: 8, scope: !4742)
!4815 = !DILocation(line: 750, column: 2, scope: !4742)
!4816 = !DILocation(line: 752, column: 1, scope: !4742)
!4817 = !DILocation(line: 753, column: 15, scope: !4742)
!4818 = !DILocation(line: 753, column: 22, scope: !4742)
!4819 = !DILocation(line: 753, column: 2, scope: !4742)
!4820 = !DILocation(line: 754, column: 6, scope: !4742)
!4821 = !DILocation(line: 754, column: 2, scope: !4742)
!4822 = !DILocation(line: 755, column: 1, scope: !4742)
!4823 = !DILocation(line: 756, column: 9, scope: !4742)
!4824 = !DILocation(line: 756, column: 2, scope: !4742)
!4825 = !DILocation(line: 757, column: 1, scope: !4742)
!4826 = !DISubprogram(name: "iomem_map_sanity_check", scope: !4827, file: !4827, line: 319, type: !4828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4827 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!149, !162, !151}
!4830 = distinct !DISubprogram(name: "is_new_memtype_allowed", scope: !4831, file: !4831, line: 860, type: !4832, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4834)
!4831 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!149, !152, !151, !14, !14}
!4834 = !{!4835, !4836, !4837, !4838}
!4835 = !DILocalVariable(name: "paddr", arg: 1, scope: !4830, file: !4831, line: 860, type: !152)
!4836 = !DILocalVariable(name: "size", arg: 2, scope: !4830, file: !4831, line: 860, type: !151)
!4837 = !DILocalVariable(name: "pcm", arg: 3, scope: !4830, file: !4831, line: 861, type: !14)
!4838 = !DILocalVariable(name: "new_pcm", arg: 4, scope: !4830, file: !4831, line: 862, type: !14)
!4839 = !DILocation(line: 860, column: 46, scope: !4830)
!4840 = !DILocation(line: 860, column: 67, scope: !4830)
!4841 = !DILocation(line: 861, column: 28, scope: !4830)
!4842 = !DILocation(line: 862, column: 28, scope: !4830)
!4843 = !DILocation(line: 867, column: 19, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4830, file: !4831, line: 867, column: 6)
!4845 = !DILocation(line: 867, column: 42, scope: !4844)
!4846 = !DILocation(line: 867, column: 49, scope: !4844)
!4847 = !DILocation(line: 867, column: 57, scope: !4844)
!4848 = !DILocation(line: 867, column: 55, scope: !4844)
!4849 = !DILocation(line: 867, column: 6, scope: !4844)
!4850 = !DILocation(line: 867, column: 6, scope: !4830)
!4851 = !DILocation(line: 868, column: 3, scope: !4844)
!4852 = !DILocation(line: 878, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4830, file: !4831, line: 878, column: 6)
!4854 = !DILocation(line: 878, column: 11, scope: !4853)
!4855 = !DILocation(line: 878, column: 40, scope: !4853)
!4856 = !DILocation(line: 879, column: 7, scope: !4853)
!4857 = !DILocation(line: 879, column: 15, scope: !4853)
!4858 = !DILocation(line: 879, column: 39, scope: !4853)
!4859 = !DILocation(line: 880, column: 7, scope: !4853)
!4860 = !DILocation(line: 880, column: 11, scope: !4853)
!4861 = !DILocation(line: 880, column: 34, scope: !4853)
!4862 = !DILocation(line: 881, column: 7, scope: !4853)
!4863 = !DILocation(line: 881, column: 15, scope: !4853)
!4864 = !DILocation(line: 881, column: 39, scope: !4853)
!4865 = !DILocation(line: 882, column: 7, scope: !4853)
!4866 = !DILocation(line: 882, column: 11, scope: !4853)
!4867 = !DILocation(line: 882, column: 34, scope: !4853)
!4868 = !DILocation(line: 883, column: 7, scope: !4853)
!4869 = !DILocation(line: 883, column: 15, scope: !4853)
!4870 = !DILocation(line: 883, column: 39, scope: !4853)
!4871 = !DILocation(line: 884, column: 7, scope: !4853)
!4872 = !DILocation(line: 884, column: 11, scope: !4853)
!4873 = !DILocation(line: 884, column: 34, scope: !4853)
!4874 = !DILocation(line: 885, column: 7, scope: !4853)
!4875 = !DILocation(line: 885, column: 15, scope: !4853)
!4876 = !DILocation(line: 878, column: 6, scope: !4830)
!4877 = !DILocation(line: 886, column: 3, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4853, file: !4831, line: 885, column: 40)
!4879 = !DILocation(line: 889, column: 2, scope: !4830)
!4880 = !DILocation(line: 890, column: 1, scope: !4830)
!4881 = distinct !DISubprogram(name: "memtype_kernel_map_sync", scope: !3, file: !3, line: 841, type: !4882, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!149, !152, !151, !14}
!4884 = !{!4885, !4886, !4887, !4888}
!4885 = !DILocalVariable(name: "base", arg: 1, scope: !4881, file: !3, line: 841, type: !152)
!4886 = !DILocalVariable(name: "size", arg: 2, scope: !4881, file: !3, line: 841, type: !151)
!4887 = !DILocalVariable(name: "pcm", arg: 3, scope: !4881, file: !3, line: 842, type: !14)
!4888 = !DILocalVariable(name: "id_sz", scope: !4881, file: !3, line: 844, type: !151)
!4889 = !DILocation(line: 841, column: 33, scope: !4881)
!4890 = !DILocation(line: 841, column: 53, scope: !4881)
!4891 = !DILocation(line: 842, column: 29, scope: !4881)
!4892 = !DILocation(line: 844, column: 2, scope: !4881)
!4893 = !DILocation(line: 844, column: 16, scope: !4881)
!4894 = !DILocation(line: 846, column: 6, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 846, column: 6)
!4896 = !DILocation(line: 846, column: 13, scope: !4895)
!4897 = !DILocation(line: 846, column: 11, scope: !4895)
!4898 = !DILocation(line: 846, column: 6, scope: !4881)
!4899 = !DILocation(line: 847, column: 3, scope: !4895)
!4900 = !DILocation(line: 853, column: 19, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 853, column: 6)
!4902 = !DILocation(line: 853, column: 24, scope: !4901)
!4903 = !DILocation(line: 853, column: 7, scope: !4901)
!4904 = !DILocation(line: 853, column: 6, scope: !4881)
!4905 = !DILocation(line: 854, column: 3, scope: !4901)
!4906 = !DILocation(line: 856, column: 11, scope: !4881)
!4907 = !DILocation(line: 856, column: 34, scope: !4881)
!4908 = !DILocation(line: 856, column: 41, scope: !4881)
!4909 = !DILocation(line: 856, column: 39, scope: !4881)
!4910 = !DILocation(line: 856, column: 31, scope: !4881)
!4911 = !DILocation(line: 856, column: 10, scope: !4881)
!4912 = !DILocation(line: 857, column: 5, scope: !4881)
!4913 = !DILocation(line: 857, column: 25, scope: !4881)
!4914 = !DILocation(line: 857, column: 23, scope: !4881)
!4915 = !DILocation(line: 857, column: 32, scope: !4881)
!4916 = !DILocation(line: 856, column: 8, scope: !4881)
!4917 = !DILocation(line: 859, column: 41, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 859, column: 6)
!4919 = !DILocation(line: 859, column: 26, scope: !4918)
!4920 = !DILocation(line: 859, column: 53, scope: !4918)
!4921 = !DILocation(line: 859, column: 60, scope: !4918)
!4922 = !DILocation(line: 859, column: 6, scope: !4918)
!4923 = !DILocation(line: 859, column: 65, scope: !4918)
!4924 = !DILocation(line: 859, column: 6, scope: !4881)
!4925 = !DILocation(line: 860, column: 3, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 860, column: 3)
!4927 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 859, column: 70)
!4928 = !DILocation(line: 860, column: 3, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 860, column: 3)
!4930 = !DILocation(line: 864, column: 3, scope: !4927)
!4931 = !DILocation(line: 866, column: 2, scope: !4881)
!4932 = !DILocation(line: 867, column: 1, scope: !4881)
!4933 = distinct !DISubprogram(name: "memtype_free_io", scope: !3, file: !3, line: 764, type: !4934, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4936)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{null, !162, !162}
!4936 = !{!4937, !4938}
!4937 = !DILocalVariable(name: "start", arg: 1, scope: !4933, file: !3, line: 764, type: !162)
!4938 = !DILocalVariable(name: "end", arg: 2, scope: !4933, file: !3, line: 764, type: !162)
!4939 = !DILocation(line: 764, column: 38, scope: !4933)
!4940 = !DILocation(line: 764, column: 61, scope: !4933)
!4941 = !DILocation(line: 766, column: 15, scope: !4933)
!4942 = !DILocation(line: 766, column: 22, scope: !4933)
!4943 = !DILocation(line: 766, column: 2, scope: !4933)
!4944 = !DILocation(line: 767, column: 1, scope: !4933)
!4945 = distinct !DISubprogram(name: "arch_io_reserve_memtype_wc", scope: !3, file: !3, line: 770, type: !4305, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4946)
!4946 = !{!4947, !4948, !4949}
!4947 = !DILocalVariable(name: "start", arg: 1, scope: !4945, file: !3, line: 770, type: !162)
!4948 = !DILocalVariable(name: "size", arg: 2, scope: !4945, file: !3, line: 770, type: !162)
!4949 = !DILocalVariable(name: "type", scope: !4945, file: !3, line: 772, type: !14)
!4950 = !DILocation(line: 770, column: 48, scope: !4945)
!4951 = !DILocation(line: 770, column: 71, scope: !4945)
!4952 = !DILocation(line: 772, column: 2, scope: !4945)
!4953 = !DILocation(line: 772, column: 23, scope: !4945)
!4954 = !DILocation(line: 774, column: 28, scope: !4945)
!4955 = !DILocation(line: 774, column: 35, scope: !4945)
!4956 = !DILocation(line: 774, column: 43, scope: !4945)
!4957 = !DILocation(line: 774, column: 41, scope: !4945)
!4958 = !DILocation(line: 774, column: 9, scope: !4945)
!4959 = !DILocation(line: 775, column: 1, scope: !4945)
!4960 = !DILocation(line: 774, column: 2, scope: !4945)
!4961 = distinct !DISubprogram(name: "arch_io_free_memtype_wc", scope: !3, file: !3, line: 778, type: !4934, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4962)
!4962 = !{!4963, !4964}
!4963 = !DILocalVariable(name: "start", arg: 1, scope: !4961, file: !3, line: 778, type: !162)
!4964 = !DILocalVariable(name: "size", arg: 2, scope: !4961, file: !3, line: 778, type: !162)
!4965 = !DILocation(line: 778, column: 46, scope: !4961)
!4966 = !DILocation(line: 778, column: 69, scope: !4961)
!4967 = !DILocation(line: 780, column: 18, scope: !4961)
!4968 = !DILocation(line: 780, column: 25, scope: !4961)
!4969 = !DILocation(line: 780, column: 33, scope: !4961)
!4970 = !DILocation(line: 780, column: 31, scope: !4961)
!4971 = !DILocation(line: 780, column: 2, scope: !4961)
!4972 = !DILocation(line: 781, column: 1, scope: !4961)
!4973 = distinct !DISubprogram(name: "phys_mem_access_prot", scope: !3, file: !3, line: 785, type: !4974, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4976)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!1194, !904, !151, !151, !1194}
!4976 = !{!4977, !4978, !4979, !4980}
!4977 = !DILocalVariable(name: "file", arg: 1, scope: !4973, file: !3, line: 785, type: !904)
!4978 = !DILocalVariable(name: "pfn", arg: 2, scope: !4973, file: !3, line: 785, type: !151)
!4979 = !DILocalVariable(name: "size", arg: 3, scope: !4973, file: !3, line: 786, type: !151)
!4980 = !DILocalVariable(name: "vma_prot", arg: 4, scope: !4973, file: !3, line: 786, type: !1194)
!4981 = !DILocation(line: 785, column: 44, scope: !4973)
!4982 = !DILocation(line: 785, column: 64, scope: !4973)
!4983 = !DILocation(line: 786, column: 19, scope: !4973)
!4984 = !DILocation(line: 786, column: 34, scope: !4973)
!4985 = !DILocation(line: 788, column: 33, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 788, column: 6)
!4987 = !DILocation(line: 788, column: 37, scope: !4986)
!4988 = !DILocation(line: 788, column: 52, scope: !4986)
!4989 = !DILocation(line: 788, column: 7, scope: !4986)
!4990 = !DILocation(line: 788, column: 6, scope: !4973)
!4991 = !DILocation(line: 789, column: 14, scope: !4986)
!4992 = !DILocation(line: 789, column: 3, scope: !4986)
!4993 = !DILocation(line: 791, column: 9, scope: !4973)
!4994 = !DILocation(line: 791, column: 2, scope: !4973)
!4995 = distinct !DISubprogram(name: "phys_mem_access_encrypted", scope: !4996, file: !4996, line: 355, type: !4997, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4999)
!4996 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!776, !151, !151}
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !4995, file: !4996, line: 355, type: !151)
!5001 = !DILocalVariable(name: "size", arg: 2, scope: !4995, file: !4996, line: 356, type: !151)
!5002 = !DILocation(line: 355, column: 60, scope: !4995)
!5003 = !DILocation(line: 356, column: 25, scope: !4995)
!5004 = !DILocation(line: 358, column: 2, scope: !4995)
!5005 = distinct !DISubprogram(name: "cc_mkdec", scope: !5006, file: !5006, line: 35, type: !4242, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5006 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!5007 = !{!5008}
!5008 = !DILocalVariable(name: "val", arg: 1, scope: !5005, file: !5006, line: 35, type: !152)
!5009 = !DILocation(line: 35, column: 32, scope: !5005)
!5010 = !DILocation(line: 37, column: 9, scope: !5005)
!5011 = !DILocation(line: 37, column: 2, scope: !5005)
!5012 = distinct !DISubprogram(name: "phys_mem_access_prot_allowed", scope: !3, file: !3, line: 821, type: !5013, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!149, !904, !151, !151, !5015}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!5016 = !{!5017, !5018, !5019, !5020, !5021}
!5017 = !DILocalVariable(name: "file", arg: 1, scope: !5012, file: !3, line: 821, type: !904)
!5018 = !DILocalVariable(name: "pfn", arg: 2, scope: !5012, file: !3, line: 821, type: !151)
!5019 = !DILocalVariable(name: "size", arg: 3, scope: !5012, file: !3, line: 822, type: !151)
!5020 = !DILocalVariable(name: "vma_prot", arg: 4, scope: !5012, file: !3, line: 822, type: !5015)
!5021 = !DILocalVariable(name: "pcm", scope: !5012, file: !3, line: 824, type: !14)
!5022 = !DILocation(line: 821, column: 47, scope: !5012)
!5023 = !DILocation(line: 821, column: 67, scope: !5012)
!5024 = !DILocation(line: 822, column: 19, scope: !5012)
!5025 = !DILocation(line: 822, column: 35, scope: !5012)
!5026 = !DILocation(line: 824, column: 2, scope: !5012)
!5027 = !DILocation(line: 824, column: 23, scope: !5012)
!5028 = !DILocation(line: 826, column: 24, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 826, column: 6)
!5030 = !DILocation(line: 826, column: 29, scope: !5029)
!5031 = !DILocation(line: 826, column: 7, scope: !5029)
!5032 = !DILocation(line: 826, column: 6, scope: !5012)
!5033 = !DILocation(line: 827, column: 3, scope: !5029)
!5034 = !DILocation(line: 829, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 829, column: 6)
!5036 = !DILocation(line: 829, column: 12, scope: !5035)
!5037 = !DILocation(line: 829, column: 20, scope: !5035)
!5038 = !DILocation(line: 829, column: 6, scope: !5012)
!5039 = !DILocation(line: 830, column: 7, scope: !5035)
!5040 = !DILocation(line: 830, column: 3, scope: !5035)
!5041 = !DILocation(line: 832, column: 3, scope: !5012)
!5042 = !DILocation(line: 832, column: 14, scope: !5012)
!5043 = !DILocation(line: 834, column: 2, scope: !5012)
!5044 = !DILocation(line: 835, column: 1, scope: !5012)
!5045 = distinct !DISubprogram(name: "range_is_allowed", scope: !3, file: !3, line: 796, type: !5046, scopeLine: 797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!149, !151, !151}
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "pfn", arg: 1, scope: !5045, file: !3, line: 796, type: !151)
!5050 = !DILocalVariable(name: "size", arg: 2, scope: !5045, file: !3, line: 796, type: !151)
!5051 = !DILocation(line: 796, column: 50, scope: !5045)
!5052 = !DILocation(line: 796, column: 69, scope: !5045)
!5053 = !DILocation(line: 798, column: 2, scope: !5045)
!5054 = !DISubprogram(name: "cachemode2protval", scope: !15, file: !15, line: 497, type: !5055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!151, !14}
!5057 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5058, file: !5058, line: 22, type: !5059, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5061)
!5058 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!151, !151}
!5061 = !{!5062, !5063}
!5062 = !DILocalVariable(name: "x", arg: 1, scope: !5057, file: !5058, line: 22, type: !151)
!5063 = !DILocalVariable(name: "y", scope: !5057, file: !5058, line: 24, type: !151)
!5064 = !DILocation(line: 22, column: 72, scope: !5057)
!5065 = !DILocation(line: 24, column: 2, scope: !5057)
!5066 = !DILocation(line: 24, column: 16, scope: !5057)
!5067 = !DILocation(line: 24, column: 20, scope: !5057)
!5068 = !DILocation(line: 24, column: 22, scope: !5057)
!5069 = !DILocation(line: 27, column: 6, scope: !5057)
!5070 = !DILocation(line: 27, column: 12, scope: !5057)
!5071 = !DILocation(line: 27, column: 16, scope: !5057)
!5072 = !DILocation(line: 27, column: 14, scope: !5057)
!5073 = !DILocation(line: 27, column: 11, scope: !5057)
!5074 = !DILocation(line: 27, column: 21, scope: !5057)
!5075 = !DILocation(line: 27, column: 55, scope: !5057)
!5076 = !DILocation(line: 27, column: 53, scope: !5057)
!5077 = !DILocation(line: 27, column: 8, scope: !5057)
!5078 = !DILocation(line: 27, column: 4, scope: !5057)
!5079 = !DILocation(line: 29, column: 9, scope: !5057)
!5080 = !DILocation(line: 30, column: 1, scope: !5057)
!5081 = !DILocation(line: 29, column: 2, scope: !5057)
!5082 = !DISubprogram(name: "page_is_ram", scope: !1226, file: !1226, line: 1126, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!149, !151}
!5085 = !DISubprogram(name: "ioremap_change_attr", scope: !4996, file: !4996, line: 316, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!149, !151, !151, !14}
!5088 = distinct !DISubprogram(name: "track_pfn_copy", scope: !3, file: !3, line: 992, type: !1239, scopeLine: 993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5089)
!5089 = !{!5090, !5091, !5092, !5093}
!5090 = !DILocalVariable(name: "vma", arg: 1, scope: !5088, file: !3, line: 992, type: !1038)
!5091 = !DILocalVariable(name: "paddr", scope: !5088, file: !3, line: 994, type: !162)
!5092 = !DILocalVariable(name: "vma_size", scope: !5088, file: !3, line: 995, type: !151)
!5093 = !DILocalVariable(name: "pgprot", scope: !5088, file: !3, line: 996, type: !1194)
!5094 = !DILocation(line: 992, column: 43, scope: !5088)
!5095 = !DILocation(line: 994, column: 2, scope: !5088)
!5096 = !DILocation(line: 994, column: 18, scope: !5088)
!5097 = !DILocation(line: 995, column: 2, scope: !5088)
!5098 = !DILocation(line: 995, column: 16, scope: !5088)
!5099 = !DILocation(line: 995, column: 27, scope: !5088)
!5100 = !DILocation(line: 995, column: 32, scope: !5088)
!5101 = !DILocation(line: 995, column: 41, scope: !5088)
!5102 = !DILocation(line: 995, column: 46, scope: !5088)
!5103 = !DILocation(line: 995, column: 39, scope: !5088)
!5104 = !DILocation(line: 996, column: 2, scope: !5088)
!5105 = !DILocation(line: 996, column: 11, scope: !5088)
!5106 = !DILocation(line: 998, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 998, column: 6)
!5108 = !DILocation(line: 998, column: 11, scope: !5107)
!5109 = !DILocation(line: 998, column: 20, scope: !5107)
!5110 = !DILocation(line: 998, column: 6, scope: !5088)
!5111 = !DILocation(line: 999, column: 20, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 999, column: 7)
!5113 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 998, column: 30)
!5114 = !DILocation(line: 999, column: 7, scope: !5112)
!5115 = !DILocation(line: 999, column: 7, scope: !5113)
!5116 = !DILocation(line: 1000, column: 4, scope: !5112)
!5117 = !DILocation(line: 1002, column: 28, scope: !5113)
!5118 = !DILocation(line: 1002, column: 35, scope: !5113)
!5119 = !DILocation(line: 1002, column: 10, scope: !5113)
!5120 = !DILocation(line: 1002, column: 3, scope: !5113)
!5121 = !DILocation(line: 1005, column: 2, scope: !5088)
!5122 = !DILocation(line: 1006, column: 1, scope: !5088)
!5123 = distinct !DISubprogram(name: "get_pat_info", scope: !3, file: !3, line: 953, type: !5124, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5127)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!149, !1038, !5126, !5015}
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5134}
!5128 = !DILocalVariable(name: "vma", arg: 1, scope: !5123, file: !3, line: 953, type: !1038)
!5129 = !DILocalVariable(name: "paddr", arg: 2, scope: !5123, file: !3, line: 953, type: !5126)
!5130 = !DILocalVariable(name: "pgprot", arg: 3, scope: !5123, file: !3, line: 954, type: !5015)
!5131 = !DILocalVariable(name: "prot", scope: !5123, file: !3, line: 956, type: !151)
!5132 = !DILocalVariable(name: "__ret_warn_on", scope: !5133, file: !3, line: 981, type: !149)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 981, column: 2)
!5134 = !DILocalVariable(name: "__flags", scope: !5135, file: !3, line: 981, type: !149)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 981, column: 2)
!5136 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 981, column: 2)
!5137 = !DILocation(line: 953, column: 48, scope: !5123)
!5138 = !DILocation(line: 953, column: 70, scope: !5123)
!5139 = !DILocation(line: 954, column: 13, scope: !5123)
!5140 = !DILocation(line: 956, column: 2, scope: !5123)
!5141 = !DILocation(line: 956, column: 16, scope: !5123)
!5142 = !DILocation(line: 970, column: 19, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 970, column: 6)
!5144 = !DILocation(line: 970, column: 24, scope: !5143)
!5145 = !DILocation(line: 970, column: 29, scope: !5143)
!5146 = !DILocation(line: 970, column: 49, scope: !5143)
!5147 = !DILocation(line: 970, column: 7, scope: !5143)
!5148 = !DILocation(line: 970, column: 6, scope: !5123)
!5149 = !DILocation(line: 971, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 971, column: 7)
!5151 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 970, column: 57)
!5152 = !DILocation(line: 971, column: 7, scope: !5151)
!5153 = !DILocation(line: 972, column: 5, scope: !5150)
!5154 = !DILocation(line: 972, column: 14, scope: !5150)
!5155 = !DILocation(line: 972, column: 4, scope: !5150)
!5156 = !DILocation(line: 973, column: 3, scope: !5151)
!5157 = !DILocation(line: 975, column: 21, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 975, column: 6)
!5159 = !DILocation(line: 975, column: 26, scope: !5158)
!5160 = !DILocation(line: 975, column: 6, scope: !5158)
!5161 = !DILocation(line: 975, column: 6, scope: !5123)
!5162 = !DILocation(line: 976, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 976, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 975, column: 37)
!5165 = !DILocation(line: 976, column: 7, scope: !5164)
!5166 = !DILocation(line: 977, column: 4, scope: !5163)
!5167 = !DILocation(line: 978, column: 29, scope: !5164)
!5168 = !DILocation(line: 978, column: 34, scope: !5164)
!5169 = !DILocation(line: 978, column: 43, scope: !5164)
!5170 = !DILocation(line: 978, column: 4, scope: !5164)
!5171 = !DILocation(line: 978, column: 10, scope: !5164)
!5172 = !DILocation(line: 979, column: 3, scope: !5164)
!5173 = !DILocation(line: 981, column: 2, scope: !5133)
!5174 = !DILocation(line: 981, column: 2, scope: !5136)
!5175 = !DILocation(line: 981, column: 2, scope: !5135)
!5176 = !DILocation(line: 981, column: 2, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 981, column: 2)
!5178 = !DILocation(line: 981, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 981, column: 2)
!5180 = !{i64 2154353714, i64 2154353743, i64 2154353789, i64 2154353847, i64 2154353901, i64 2154353955, i64 2154354010, i64 2154354041, i64 2154354349, i64 2154354355, i64 2154354402, i64 2154354425, i64 2154354451}
!5181 = !DILocation(line: 981, column: 2, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 981, column: 2)
!5183 = !DILocation(line: 981, column: 2, scope: !5123)
!5184 = !DILocation(line: 982, column: 2, scope: !5123)
!5185 = !DILocation(line: 983, column: 1, scope: !5123)
!5186 = distinct !DISubprogram(name: "reserve_pfn_range", scope: !3, file: !3, line: 874, type: !5187, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!149, !152, !151, !5015, !149}
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197}
!5190 = !DILocalVariable(name: "paddr", arg: 1, scope: !5186, file: !3, line: 874, type: !152)
!5191 = !DILocalVariable(name: "size", arg: 2, scope: !5186, file: !3, line: 874, type: !151)
!5192 = !DILocalVariable(name: "vma_prot", arg: 3, scope: !5186, file: !3, line: 874, type: !5015)
!5193 = !DILocalVariable(name: "strict_prot", arg: 4, scope: !5186, file: !3, line: 875, type: !149)
!5194 = !DILocalVariable(name: "is_ram", scope: !5186, file: !3, line: 877, type: !149)
!5195 = !DILocalVariable(name: "ret", scope: !5186, file: !3, line: 878, type: !149)
!5196 = !DILocalVariable(name: "want_pcm", scope: !5186, file: !3, line: 879, type: !14)
!5197 = !DILocalVariable(name: "pcm", scope: !5186, file: !3, line: 880, type: !14)
!5198 = !DILocation(line: 874, column: 34, scope: !5186)
!5199 = !DILocation(line: 874, column: 55, scope: !5186)
!5200 = !DILocation(line: 874, column: 71, scope: !5186)
!5201 = !DILocation(line: 875, column: 9, scope: !5186)
!5202 = !DILocation(line: 877, column: 2, scope: !5186)
!5203 = !DILocation(line: 877, column: 6, scope: !5186)
!5204 = !DILocation(line: 878, column: 2, scope: !5186)
!5205 = !DILocation(line: 878, column: 6, scope: !5186)
!5206 = !DILocation(line: 879, column: 2, scope: !5186)
!5207 = !DILocation(line: 879, column: 23, scope: !5186)
!5208 = !DILocation(line: 879, column: 52, scope: !5186)
!5209 = !DILocation(line: 879, column: 34, scope: !5186)
!5210 = !DILocation(line: 880, column: 2, scope: !5186)
!5211 = !DILocation(line: 880, column: 23, scope: !5186)
!5212 = !DILocation(line: 880, column: 29, scope: !5186)
!5213 = !DILocation(line: 882, column: 32, scope: !5186)
!5214 = !DILocation(line: 882, column: 39, scope: !5186)
!5215 = !DILocation(line: 882, column: 47, scope: !5186)
!5216 = !DILocation(line: 882, column: 45, scope: !5186)
!5217 = !DILocation(line: 882, column: 11, scope: !5186)
!5218 = !DILocation(line: 882, column: 9, scope: !5186)
!5219 = !DILocation(line: 889, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 889, column: 6)
!5221 = !DILocation(line: 889, column: 6, scope: !5186)
!5222 = !DILocation(line: 890, column: 8, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 890, column: 7)
!5224 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 889, column: 14)
!5225 = !DILocation(line: 890, column: 7, scope: !5224)
!5226 = !DILocation(line: 891, column: 4, scope: !5223)
!5227 = !DILocation(line: 893, column: 24, scope: !5224)
!5228 = !DILocation(line: 893, column: 9, scope: !5224)
!5229 = !DILocation(line: 893, column: 7, scope: !5224)
!5230 = !DILocation(line: 894, column: 7, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 894, column: 7)
!5232 = !DILocation(line: 894, column: 19, scope: !5231)
!5233 = !DILocation(line: 894, column: 16, scope: !5231)
!5234 = !DILocation(line: 894, column: 7, scope: !5224)
!5235 = !DILocation(line: 895, column: 4, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 895, column: 4)
!5237 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 894, column: 24)
!5238 = !DILocation(line: 895, column: 4, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 895, column: 4)
!5240 = !DILocation(line: 901, column: 5, scope: !5237)
!5241 = !DILocation(line: 901, column: 16, scope: !5237)
!5242 = !DILocation(line: 904, column: 3, scope: !5237)
!5243 = !DILocation(line: 905, column: 3, scope: !5224)
!5244 = !DILocation(line: 908, column: 24, scope: !5186)
!5245 = !DILocation(line: 908, column: 31, scope: !5186)
!5246 = !DILocation(line: 908, column: 39, scope: !5186)
!5247 = !DILocation(line: 908, column: 37, scope: !5186)
!5248 = !DILocation(line: 908, column: 45, scope: !5186)
!5249 = !DILocation(line: 908, column: 8, scope: !5186)
!5250 = !DILocation(line: 908, column: 6, scope: !5186)
!5251 = !DILocation(line: 909, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 909, column: 6)
!5253 = !DILocation(line: 909, column: 6, scope: !5186)
!5254 = !DILocation(line: 910, column: 10, scope: !5252)
!5255 = !DILocation(line: 910, column: 3, scope: !5252)
!5256 = !DILocation(line: 912, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 912, column: 6)
!5258 = !DILocation(line: 912, column: 13, scope: !5257)
!5259 = !DILocation(line: 912, column: 10, scope: !5257)
!5260 = !DILocation(line: 912, column: 6, scope: !5186)
!5261 = !DILocation(line: 913, column: 7, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 913, column: 7)
!5263 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 912, column: 23)
!5264 = !DILocation(line: 913, column: 19, scope: !5262)
!5265 = !DILocation(line: 914, column: 31, scope: !5262)
!5266 = !DILocation(line: 914, column: 38, scope: !5262)
!5267 = !DILocation(line: 914, column: 44, scope: !5262)
!5268 = !DILocation(line: 914, column: 54, scope: !5262)
!5269 = !DILocation(line: 914, column: 8, scope: !5262)
!5270 = !DILocation(line: 913, column: 7, scope: !5263)
!5271 = !DILocation(line: 915, column: 17, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 914, column: 60)
!5273 = !DILocation(line: 915, column: 24, scope: !5272)
!5274 = !DILocation(line: 915, column: 32, scope: !5272)
!5275 = !DILocation(line: 915, column: 30, scope: !5272)
!5276 = !DILocation(line: 915, column: 4, scope: !5272)
!5277 = !DILocation(line: 916, column: 4, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 916, column: 4)
!5279 = !DILocation(line: 916, column: 4, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 916, column: 4)
!5281 = !DILocation(line: 922, column: 4, scope: !5272)
!5282 = !DILocation(line: 928, column: 4, scope: !5263)
!5283 = !DILocation(line: 928, column: 15, scope: !5263)
!5284 = !DILocation(line: 931, column: 2, scope: !5263)
!5285 = !DILocation(line: 933, column: 30, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 933, column: 6)
!5287 = !DILocation(line: 933, column: 37, scope: !5286)
!5288 = !DILocation(line: 933, column: 43, scope: !5286)
!5289 = !DILocation(line: 933, column: 6, scope: !5286)
!5290 = !DILocation(line: 933, column: 48, scope: !5286)
!5291 = !DILocation(line: 933, column: 6, scope: !5186)
!5292 = !DILocation(line: 934, column: 16, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 933, column: 53)
!5294 = !DILocation(line: 934, column: 23, scope: !5293)
!5295 = !DILocation(line: 934, column: 31, scope: !5293)
!5296 = !DILocation(line: 934, column: 29, scope: !5293)
!5297 = !DILocation(line: 934, column: 3, scope: !5293)
!5298 = !DILocation(line: 935, column: 3, scope: !5293)
!5299 = !DILocation(line: 937, column: 2, scope: !5186)
!5300 = !DILocation(line: 938, column: 1, scope: !5186)
!5301 = distinct !DISubprogram(name: "track_pfn_remap", scope: !3, file: !3, line: 1014, type: !5302, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!149, !1038, !5015, !151, !151, !151}
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312}
!5305 = !DILocalVariable(name: "vma", arg: 1, scope: !5301, file: !3, line: 1014, type: !1038)
!5306 = !DILocalVariable(name: "prot", arg: 2, scope: !5301, file: !3, line: 1014, type: !5015)
!5307 = !DILocalVariable(name: "pfn", arg: 3, scope: !5301, file: !3, line: 1015, type: !151)
!5308 = !DILocalVariable(name: "addr", arg: 4, scope: !5301, file: !3, line: 1015, type: !151)
!5309 = !DILocalVariable(name: "size", arg: 5, scope: !5301, file: !3, line: 1015, type: !151)
!5310 = !DILocalVariable(name: "paddr", scope: !5301, file: !3, line: 1017, type: !162)
!5311 = !DILocalVariable(name: "pcm", scope: !5301, file: !3, line: 1018, type: !14)
!5312 = !DILocalVariable(name: "ret", scope: !5313, file: !3, line: 1023, type: !149)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 1022, column: 48)
!5314 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 1021, column: 6)
!5315 = !DILocation(line: 1014, column: 44, scope: !5301)
!5316 = !DILocation(line: 1014, column: 59, scope: !5301)
!5317 = !DILocation(line: 1015, column: 21, scope: !5301)
!5318 = !DILocation(line: 1015, column: 40, scope: !5301)
!5319 = !DILocation(line: 1015, column: 60, scope: !5301)
!5320 = !DILocation(line: 1017, column: 2, scope: !5301)
!5321 = !DILocation(line: 1017, column: 18, scope: !5301)
!5322 = !DILocation(line: 1017, column: 43, scope: !5301)
!5323 = !DILocation(line: 1017, column: 47, scope: !5301)
!5324 = !DILocation(line: 1018, column: 2, scope: !5301)
!5325 = !DILocation(line: 1018, column: 23, scope: !5301)
!5326 = !DILocation(line: 1021, column: 7, scope: !5314)
!5327 = !DILocation(line: 1021, column: 11, scope: !5314)
!5328 = !DILocation(line: 1021, column: 15, scope: !5314)
!5329 = !DILocation(line: 1021, column: 23, scope: !5314)
!5330 = !DILocation(line: 1021, column: 28, scope: !5314)
!5331 = !DILocation(line: 1021, column: 20, scope: !5314)
!5332 = !DILocation(line: 1022, column: 5, scope: !5314)
!5333 = !DILocation(line: 1022, column: 8, scope: !5314)
!5334 = !DILocation(line: 1022, column: 17, scope: !5314)
!5335 = !DILocation(line: 1022, column: 22, scope: !5314)
!5336 = !DILocation(line: 1022, column: 31, scope: !5314)
!5337 = !DILocation(line: 1022, column: 36, scope: !5314)
!5338 = !DILocation(line: 1022, column: 29, scope: !5314)
!5339 = !DILocation(line: 1022, column: 13, scope: !5314)
!5340 = !DILocation(line: 1021, column: 6, scope: !5301)
!5341 = !DILocation(line: 1023, column: 3, scope: !5313)
!5342 = !DILocation(line: 1023, column: 7, scope: !5313)
!5343 = !DILocation(line: 1025, column: 27, scope: !5313)
!5344 = !DILocation(line: 1025, column: 34, scope: !5313)
!5345 = !DILocation(line: 1025, column: 40, scope: !5313)
!5346 = !DILocation(line: 1025, column: 9, scope: !5313)
!5347 = !DILocation(line: 1025, column: 7, scope: !5313)
!5348 = !DILocation(line: 1026, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 1026, column: 7)
!5350 = !DILocation(line: 1026, column: 11, scope: !5349)
!5351 = !DILocation(line: 1026, column: 16, scope: !5349)
!5352 = !DILocation(line: 1026, column: 19, scope: !5349)
!5353 = !DILocation(line: 1026, column: 7, scope: !5313)
!5354 = !DILocation(line: 1027, column: 17, scope: !5349)
!5355 = !DILocation(line: 1027, column: 4, scope: !5349)
!5356 = !DILocation(line: 1028, column: 10, scope: !5313)
!5357 = !DILocation(line: 1028, column: 3, scope: !5313)
!5358 = !DILocation(line: 1029, column: 2, scope: !5314)
!5359 = !DILocation(line: 1031, column: 7, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 1031, column: 6)
!5361 = !DILocation(line: 1031, column: 6, scope: !5301)
!5362 = !DILocation(line: 1032, column: 3, scope: !5360)
!5363 = !DILocation(line: 1038, column: 23, scope: !5301)
!5364 = !DILocation(line: 1038, column: 8, scope: !5301)
!5365 = !DILocation(line: 1038, column: 6, scope: !5301)
!5366 = !DILocation(line: 1041, column: 2, scope: !5301)
!5367 = !DILocation(line: 1041, column: 9, scope: !5301)
!5368 = !DILocation(line: 1041, column: 14, scope: !5301)
!5369 = !DILocation(line: 1042, column: 8, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 1041, column: 27)
!5371 = !DILocation(line: 1043, column: 9, scope: !5370)
!5372 = !DILocation(line: 1044, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 1044, column: 7)
!5374 = !DILocation(line: 1044, column: 29, scope: !5373)
!5375 = !DILocation(line: 1044, column: 14, scope: !5373)
!5376 = !DILocation(line: 1044, column: 11, scope: !5373)
!5377 = !DILocation(line: 1044, column: 7, scope: !5370)
!5378 = !DILocation(line: 1045, column: 4, scope: !5373)
!5379 = distinct !{!5379, !5366, !5380, !4062, !4063}
!5380 = !DILocation(line: 1046, column: 2, scope: !5301)
!5381 = !DILocation(line: 1048, column: 3, scope: !5301)
!5382 = !DILocation(line: 1048, column: 10, scope: !5301)
!5383 = !DILocation(line: 1051, column: 2, scope: !5301)
!5384 = !DILocation(line: 1052, column: 1, scope: !5301)
!5385 = distinct !DISubprogram(name: "vm_flags_set", scope: !1226, file: !1226, line: 844, type: !5386, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !1038, !1204}
!5388 = !{!5389, !5390}
!5389 = !DILocalVariable(name: "vma", arg: 1, scope: !5385, file: !1226, line: 844, type: !1038)
!5390 = !DILocalVariable(name: "flags", arg: 2, scope: !5385, file: !1226, line: 845, type: !1204)
!5391 = !DILocation(line: 844, column: 56, scope: !5385)
!5392 = !DILocation(line: 845, column: 16, scope: !5385)
!5393 = !DILocation(line: 847, column: 18, scope: !5385)
!5394 = !DILocation(line: 847, column: 2, scope: !5385)
!5395 = !DILocation(line: 848, column: 37, scope: !5385)
!5396 = !DILocation(line: 848, column: 2, scope: !5385)
!5397 = !DILocation(line: 848, column: 34, scope: !5385)
!5398 = !DILocation(line: 849, column: 1, scope: !5385)
!5399 = distinct !DISubprogram(name: "track_pfn_insert", scope: !3, file: !3, line: 1054, type: !5400, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5407)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{null, !1038, !5015, !5402}
!5402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pfn_t", file: !5403, line: 15, baseType: !5404)
!5403 = !DIFile(filename: "./include/linux/pfn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a693dd30ba9d1ee94200d6721457a015")
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5403, line: 13, size: 64, elements: !5405)
!5405 = !{!5406}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5404, file: !5403, line: 14, baseType: !152, size: 64)
!5407 = !{!5408, !5409, !5410, !5411}
!5408 = !DILocalVariable(name: "vma", arg: 1, scope: !5399, file: !3, line: 1054, type: !1038)
!5409 = !DILocalVariable(name: "prot", arg: 2, scope: !5399, file: !3, line: 1054, type: !5015)
!5410 = !DILocalVariable(name: "pfn", arg: 3, scope: !5399, file: !3, line: 1054, type: !5402)
!5411 = !DILocalVariable(name: "pcm", scope: !5399, file: !3, line: 1056, type: !14)
!5412 = !DILocation(line: 1054, column: 46, scope: !5399)
!5413 = !DILocation(line: 1054, column: 61, scope: !5399)
!5414 = !DILocation(line: 1054, column: 73, scope: !5399)
!5415 = !DILocation(line: 1056, column: 2, scope: !5399)
!5416 = !DILocation(line: 1056, column: 23, scope: !5399)
!5417 = !DILocation(line: 1058, column: 7, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 1058, column: 6)
!5419 = !DILocation(line: 1058, column: 6, scope: !5399)
!5420 = !DILocation(line: 1059, column: 3, scope: !5418)
!5421 = !DILocation(line: 1062, column: 23, scope: !5399)
!5422 = !DILocation(line: 1062, column: 8, scope: !5399)
!5423 = !DILocation(line: 1062, column: 6, scope: !5399)
!5424 = !DILocation(line: 1063, column: 3, scope: !5399)
!5425 = !DILocation(line: 1063, column: 10, scope: !5399)
!5426 = !DILocation(line: 1065, column: 1, scope: !5399)
!5427 = distinct !DISubprogram(name: "pfn_t_to_phys", scope: !5428, file: !5428, line: 64, type: !5429, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5431)
!5428 = !DIFile(filename: "./include/linux/pfn_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6724286265327f32f4d75df8bb2f5a0b")
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!159, !5402}
!5431 = !{!5432}
!5432 = !DILocalVariable(name: "pfn", arg: 1, scope: !5427, file: !5428, line: 64, type: !5402)
!5433 = !DILocation(line: 64, column: 47, scope: !5427)
!5434 = !DILocation(line: 66, column: 9, scope: !5427)
!5435 = !DILocation(line: 66, column: 2, scope: !5427)
!5436 = distinct !DISubprogram(name: "untrack_pfn", scope: !3, file: !3, line: 1072, type: !5437, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5439)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{null, !1038, !151, !151, !776}
!5439 = !{!5440, !5441, !5442, !5443, !5444}
!5440 = !DILocalVariable(name: "vma", arg: 1, scope: !5436, file: !3, line: 1072, type: !1038)
!5441 = !DILocalVariable(name: "pfn", arg: 2, scope: !5436, file: !3, line: 1072, type: !151)
!5442 = !DILocalVariable(name: "size", arg: 3, scope: !5436, file: !3, line: 1073, type: !151)
!5443 = !DILocalVariable(name: "mm_wr_locked", arg: 4, scope: !5436, file: !3, line: 1073, type: !776)
!5444 = !DILocalVariable(name: "paddr", scope: !5436, file: !3, line: 1075, type: !162)
!5445 = !DILocation(line: 1072, column: 41, scope: !5436)
!5446 = !DILocation(line: 1072, column: 60, scope: !5436)
!5447 = !DILocation(line: 1073, column: 18, scope: !5436)
!5448 = !DILocation(line: 1073, column: 29, scope: !5436)
!5449 = !DILocation(line: 1075, column: 2, scope: !5436)
!5450 = !DILocation(line: 1075, column: 18, scope: !5436)
!5451 = !DILocation(line: 1077, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 1077, column: 6)
!5453 = !DILocation(line: 1077, column: 10, scope: !5452)
!5454 = !DILocation(line: 1077, column: 15, scope: !5452)
!5455 = !DILocation(line: 1077, column: 20, scope: !5452)
!5456 = !DILocation(line: 1077, column: 29, scope: !5452)
!5457 = !DILocation(line: 1077, column: 6, scope: !5436)
!5458 = !DILocation(line: 1078, column: 3, scope: !5452)
!5459 = !DILocation(line: 1081, column: 27, scope: !5436)
!5460 = !DILocation(line: 1081, column: 31, scope: !5436)
!5461 = !DILocation(line: 1081, column: 8, scope: !5436)
!5462 = !DILocation(line: 1082, column: 7, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 1082, column: 6)
!5464 = !DILocation(line: 1082, column: 13, scope: !5463)
!5465 = !DILocation(line: 1082, column: 17, scope: !5463)
!5466 = !DILocation(line: 1082, column: 6, scope: !5436)
!5467 = !DILocation(line: 1083, column: 20, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 1083, column: 7)
!5469 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 1082, column: 23)
!5470 = !DILocation(line: 1083, column: 7, scope: !5468)
!5471 = !DILocation(line: 1083, column: 7, scope: !5469)
!5472 = !DILocation(line: 1084, column: 4, scope: !5468)
!5473 = !DILocation(line: 1085, column: 10, scope: !5469)
!5474 = !DILocation(line: 1085, column: 15, scope: !5469)
!5475 = !DILocation(line: 1085, column: 24, scope: !5469)
!5476 = !DILocation(line: 1085, column: 29, scope: !5469)
!5477 = !DILocation(line: 1085, column: 22, scope: !5469)
!5478 = !DILocation(line: 1085, column: 8, scope: !5469)
!5479 = !DILocation(line: 1086, column: 2, scope: !5469)
!5480 = !DILocation(line: 1087, column: 17, scope: !5436)
!5481 = !DILocation(line: 1087, column: 24, scope: !5436)
!5482 = !DILocation(line: 1087, column: 2, scope: !5436)
!5483 = !DILocation(line: 1088, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 1088, column: 6)
!5485 = !DILocation(line: 1088, column: 6, scope: !5436)
!5486 = !DILocation(line: 1089, column: 7, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 1089, column: 7)
!5488 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 1088, column: 11)
!5489 = !DILocation(line: 1089, column: 7, scope: !5488)
!5490 = !DILocation(line: 1090, column: 19, scope: !5487)
!5491 = !DILocation(line: 1090, column: 4, scope: !5487)
!5492 = !DILocation(line: 1092, column: 19, scope: !5487)
!5493 = !DILocation(line: 1092, column: 4, scope: !5487)
!5494 = !DILocation(line: 1093, column: 2, scope: !5488)
!5495 = !DILocation(line: 1094, column: 1, scope: !5436)
!5496 = distinct !DISubprogram(name: "free_pfn_range", scope: !3, file: !3, line: 944, type: !5497, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5499)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{null, !152, !151}
!5499 = !{!5500, !5501, !5502}
!5500 = !DILocalVariable(name: "paddr", arg: 1, scope: !5496, file: !3, line: 944, type: !152)
!5501 = !DILocalVariable(name: "size", arg: 2, scope: !5496, file: !3, line: 944, type: !151)
!5502 = !DILocalVariable(name: "is_ram", scope: !5496, file: !3, line: 946, type: !149)
!5503 = !DILocation(line: 944, column: 32, scope: !5496)
!5504 = !DILocation(line: 944, column: 53, scope: !5496)
!5505 = !DILocation(line: 946, column: 2, scope: !5496)
!5506 = !DILocation(line: 946, column: 6, scope: !5496)
!5507 = !DILocation(line: 948, column: 32, scope: !5496)
!5508 = !DILocation(line: 948, column: 39, scope: !5496)
!5509 = !DILocation(line: 948, column: 47, scope: !5496)
!5510 = !DILocation(line: 948, column: 45, scope: !5496)
!5511 = !DILocation(line: 948, column: 11, scope: !5496)
!5512 = !DILocation(line: 948, column: 9, scope: !5496)
!5513 = !DILocation(line: 949, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 949, column: 6)
!5515 = !DILocation(line: 949, column: 13, scope: !5514)
!5516 = !DILocation(line: 949, column: 6, scope: !5496)
!5517 = !DILocation(line: 950, column: 16, scope: !5514)
!5518 = !DILocation(line: 950, column: 23, scope: !5514)
!5519 = !DILocation(line: 950, column: 31, scope: !5514)
!5520 = !DILocation(line: 950, column: 29, scope: !5514)
!5521 = !DILocation(line: 950, column: 3, scope: !5514)
!5522 = !DILocation(line: 951, column: 1, scope: !5496)
!5523 = distinct !DISubprogram(name: "vm_flags_clear", scope: !1226, file: !1226, line: 851, type: !5386, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5524)
!5524 = !{!5525, !5526}
!5525 = !DILocalVariable(name: "vma", arg: 1, scope: !5523, file: !1226, line: 851, type: !1038)
!5526 = !DILocalVariable(name: "flags", arg: 2, scope: !5523, file: !1226, line: 852, type: !1204)
!5527 = !DILocation(line: 851, column: 58, scope: !5523)
!5528 = !DILocation(line: 852, column: 18, scope: !5523)
!5529 = !DILocation(line: 854, column: 18, scope: !5523)
!5530 = !DILocation(line: 854, column: 2, scope: !5523)
!5531 = !DILocation(line: 855, column: 38, scope: !5523)
!5532 = !DILocation(line: 855, column: 37, scope: !5523)
!5533 = !DILocation(line: 855, column: 2, scope: !5523)
!5534 = !DILocation(line: 855, column: 34, scope: !5523)
!5535 = !DILocation(line: 856, column: 1, scope: !5523)
!5536 = distinct !DISubprogram(name: "__vm_flags_mod", scope: !1226, file: !1226, line: 862, type: !5537, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !1038, !1204, !1204}
!5539 = !{!5540, !5541, !5542}
!5540 = !DILocalVariable(name: "vma", arg: 1, scope: !5536, file: !1226, line: 862, type: !1038)
!5541 = !DILocalVariable(name: "set", arg: 2, scope: !5536, file: !1226, line: 863, type: !1204)
!5542 = !DILocalVariable(name: "clear", arg: 3, scope: !5536, file: !1226, line: 863, type: !1204)
!5543 = !DILocation(line: 862, column: 58, scope: !5536)
!5544 = !DILocation(line: 863, column: 18, scope: !5536)
!5545 = !DILocation(line: 863, column: 34, scope: !5536)
!5546 = !DILocation(line: 865, column: 16, scope: !5536)
!5547 = !DILocation(line: 865, column: 22, scope: !5536)
!5548 = !DILocation(line: 865, column: 27, scope: !5536)
!5549 = !DILocation(line: 865, column: 38, scope: !5536)
!5550 = !DILocation(line: 865, column: 36, scope: !5536)
!5551 = !DILocation(line: 865, column: 46, scope: !5536)
!5552 = !DILocation(line: 865, column: 45, scope: !5536)
!5553 = !DILocation(line: 865, column: 43, scope: !5536)
!5554 = !DILocation(line: 865, column: 2, scope: !5536)
!5555 = !DILocation(line: 866, column: 1, scope: !5536)
!5556 = distinct !DISubprogram(name: "untrack_pfn_clear", scope: !3, file: !3, line: 1105, type: !1230, scopeLine: 1106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5557)
!5557 = !{!5558}
!5558 = !DILocalVariable(name: "vma", arg: 1, scope: !5556, file: !3, line: 1105, type: !1038)
!5559 = !DILocation(line: 1105, column: 47, scope: !5556)
!5560 = !DILocation(line: 1107, column: 17, scope: !5556)
!5561 = !DILocation(line: 1107, column: 2, scope: !5556)
!5562 = !DILocation(line: 1108, column: 1, scope: !5556)
!5563 = distinct !DISubprogram(name: "pgprot_writecombine", scope: !3, file: !3, line: 1110, type: !5564, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!1194, !1194}
!5566 = !{!5567}
!5567 = !DILocalVariable(name: "prot", arg: 1, scope: !5563, file: !3, line: 1110, type: !1194)
!5568 = !DILocation(line: 1110, column: 39, scope: !5563)
!5569 = !DILocation(line: 1112, column: 9, scope: !5563)
!5570 = !DILocation(line: 1112, column: 2, scope: !5563)
!5571 = distinct !DISubprogram(name: "pgprot_writethrough", scope: !3, file: !3, line: 1117, type: !5564, scopeLine: 1118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5572)
!5572 = !{!5573}
!5573 = !DILocalVariable(name: "prot", arg: 1, scope: !5571, file: !3, line: 1117, type: !1194)
!5574 = !DILocation(line: 1117, column: 39, scope: !5571)
!5575 = !DILocation(line: 1119, column: 9, scope: !5571)
!5576 = !DILocation(line: 1119, column: 2, scope: !5571)
!5577 = distinct !DISubprogram(name: "__initstub__kmod_memtype__284_1213_pat_memtype_list_init7", scope: !3, file: !3, line: 1213, type: !5578, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!149}
!5580 = !DILocation(line: 1213, column: 1, scope: !5577)
!5581 = distinct !DISubprogram(name: "pat_memtype_list_init", scope: !3, file: !3, line: 1205, type: !5578, scopeLine: 1206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5582 = !DILocation(line: 1207, column: 6, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 1207, column: 6)
!5584 = !DILocation(line: 1207, column: 6, scope: !5581)
!5585 = !DILocation(line: 1209, column: 9, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 1207, column: 21)
!5587 = !DILocation(line: 1208, column: 3, scope: !5586)
!5588 = !DILocation(line: 1210, column: 2, scope: !5586)
!5589 = !DILocation(line: 1211, column: 2, scope: !5581)
!5590 = distinct !DISubprogram(name: "constant_test_bit", scope: !3806, file: !3806, line: 204, type: !5591, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5593)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!776, !912, !3565}
!5593 = !{!5594, !5595}
!5594 = !DILocalVariable(name: "nr", arg: 1, scope: !5590, file: !3806, line: 204, type: !912)
!5595 = !DILocalVariable(name: "addr", arg: 2, scope: !5590, file: !3806, line: 204, type: !3565)
!5596 = !DILocation(line: 204, column: 52, scope: !5590)
!5597 = !DILocation(line: 204, column: 86, scope: !5590)
!5598 = !DILocation(line: 206, column: 19, scope: !5590)
!5599 = !DILocation(line: 206, column: 22, scope: !5590)
!5600 = !DILocation(line: 206, column: 15, scope: !5590)
!5601 = !DILocation(line: 207, column: 4, scope: !5590)
!5602 = !DILocation(line: 207, column: 9, scope: !5590)
!5603 = !DILocation(line: 207, column: 12, scope: !5590)
!5604 = !DILocation(line: 206, column: 44, scope: !5590)
!5605 = !DILocation(line: 207, column: 37, scope: !5590)
!5606 = !DILocation(line: 206, column: 2, scope: !5590)
!5607 = distinct !DISubprogram(name: "variable_test_bit", scope: !3806, file: !3806, line: 224, type: !5591, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5608)
!5608 = !{!5609, !5610, !5611}
!5609 = !DILocalVariable(name: "nr", arg: 1, scope: !5607, file: !3806, line: 224, type: !912)
!5610 = !DILocalVariable(name: "addr", arg: 2, scope: !5607, file: !3806, line: 224, type: !3565)
!5611 = !DILocalVariable(name: "oldbit", scope: !5607, file: !3806, line: 226, type: !776)
!5612 = !DILocation(line: 224, column: 52, scope: !5607)
!5613 = !DILocation(line: 224, column: 86, scope: !5607)
!5614 = !DILocation(line: 226, column: 2, scope: !5607)
!5615 = !DILocation(line: 226, column: 7, scope: !5607)
!5616 = !DILocation(line: 231, column: 33, scope: !5607)
!5617 = !DILocation(line: 231, column: 46, scope: !5607)
!5618 = !DILocation(line: 228, column: 2, scope: !5607)
!5619 = !{i64 2148052671, i64 2148052745}
!5620 = !DILocation(line: 233, column: 9, scope: !5607)
!5621 = !DILocation(line: 234, column: 1, scope: !5607)
!5622 = !DILocation(line: 233, column: 2, scope: !5607)
!5623 = distinct !DISubprogram(name: "native_write_msr", scope: !3828, file: !3828, line: 143, type: !5624, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !6, !163, !163}
!5626 = !{!5627, !5628, !5629}
!5627 = !DILocalVariable(name: "msr", arg: 1, scope: !5623, file: !3828, line: 143, type: !6)
!5628 = !DILocalVariable(name: "low", arg: 2, scope: !5623, file: !3828, line: 143, type: !163)
!5629 = !DILocalVariable(name: "high", arg: 3, scope: !5623, file: !3828, line: 143, type: !163)
!5630 = !DILocation(line: 143, column: 31, scope: !5623)
!5631 = !DILocation(line: 143, column: 40, scope: !5623)
!5632 = !DILocation(line: 143, column: 49, scope: !5623)
!5633 = !DILocation(line: 145, column: 10, scope: !5623)
!5634 = !DILocation(line: 145, column: 15, scope: !5623)
!5635 = !DILocation(line: 145, column: 20, scope: !5623)
!5636 = !DILocation(line: 145, column: 2, scope: !5623)
!5637 = !DILocation(line: 147, column: 6, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5623, file: !3828, line: 147, column: 6)
!5639 = !DILocation(line: 147, column: 6, scope: !5623)
!5640 = !DILocation(line: 148, column: 22, scope: !5638)
!5641 = !DILocation(line: 148, column: 33, scope: !5638)
!5642 = !DILocation(line: 148, column: 28, scope: !5638)
!5643 = !DILocation(line: 148, column: 38, scope: !5638)
!5644 = !DILocation(line: 148, column: 46, scope: !5638)
!5645 = !DILocation(line: 148, column: 44, scope: !5638)
!5646 = !DILocation(line: 148, column: 3, scope: !5638)
!5647 = !DILocation(line: 149, column: 1, scope: !5623)
!5648 = distinct !DISubprogram(name: "__wrmsr", scope: !3828, file: !3828, line: 92, type: !5624, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651, !5652}
!5650 = !DILocalVariable(name: "msr", arg: 1, scope: !5648, file: !3828, line: 92, type: !6)
!5651 = !DILocalVariable(name: "low", arg: 2, scope: !5648, file: !3828, line: 92, type: !163)
!5652 = !DILocalVariable(name: "high", arg: 3, scope: !5648, file: !3828, line: 92, type: !163)
!5653 = !DILocation(line: 92, column: 50, scope: !5648)
!5654 = !DILocation(line: 92, column: 59, scope: !5648)
!5655 = !DILocation(line: 92, column: 68, scope: !5648)
!5656 = !DILocation(line: 97, column: 17, scope: !5648)
!5657 = !DILocation(line: 97, column: 27, scope: !5648)
!5658 = !DILocation(line: 97, column: 38, scope: !5648)
!5659 = !DILocation(line: 94, column: 2, scope: !5648)
!5660 = !{i64 1929266, i64 1929287, i64 2149430995, i64 2149431039, i64 2149431062, i64 2149431095, i64 2149431126, i64 2149431165}
!5661 = !DILocation(line: 98, column: 1, scope: !5648)
!5662 = distinct !DISubprogram(name: "static_key_false", scope: !428, file: !428, line: 205, type: !5663, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!776, !5665}
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !428, line: 85, size: 128, elements: !5667)
!5667 = !{!5668, !5669}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5666, file: !428, line: 86, baseType: !314, size: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, scope: !5666, file: !428, line: 101, baseType: !5670, size: 64, offset: 64)
!5670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5666, file: !428, line: 101, size: 64, elements: !5671)
!5671 = !{!5672, !5673, !5680}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5670, file: !428, line: 102, baseType: !151, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5670, file: !428, line: 103, baseType: !5674, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !428, line: 117, size: 128, elements: !5676)
!5676 = !{!5677, !5678, !5679}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5675, file: !428, line: 118, baseType: !702, size: 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5675, file: !428, line: 119, baseType: !702, size: 32, offset: 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5675, file: !428, line: 120, baseType: !912, size: 64, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5670, file: !428, line: 104, baseType: !5681, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !428, line: 104, flags: DIFlagFwdDecl)
!5683 = !{!5684}
!5684 = !DILocalVariable(name: "key", arg: 1, scope: !5662, file: !428, line: 205, type: !5665)
!5685 = !DILocation(line: 205, column: 65, scope: !5662)
!5686 = !DILocation(line: 207, column: 28, scope: !5662)
!5687 = !DILocation(line: 207, column: 9, scope: !5662)
!5688 = !DILocation(line: 207, column: 2, scope: !5662)
!5689 = !DISubprogram(name: "do_trace_write_msr", scope: !3828, file: !3828, line: 64, type: !5690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{null, !6, !152, !149}
!5692 = distinct !DISubprogram(name: "arch_static_branch", scope: !5693, file: !5693, line: 25, type: !5694, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5696)
!5693 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!776, !5665, !776}
!5696 = !{!5697, !5698, !5699}
!5697 = !DILocalVariable(name: "key", arg: 1, scope: !5692, file: !5693, line: 25, type: !5665)
!5698 = !DILocalVariable(name: "branch", arg: 2, scope: !5692, file: !5693, line: 25, type: !776)
!5699 = !DILabel(scope: !5692, name: "l_yes", file: !5693, line: 33)
!5700 = !DILocation(line: 25, column: 67, scope: !5692)
!5701 = !DILocation(line: 25, column: 77, scope: !5692)
!5702 = !DILocation(line: 30, column: 13, scope: !5692)
!5703 = !DILocation(line: 30, column: 28, scope: !5692)
!5704 = !DILocation(line: 30, column: 26, scope: !5692)
!5705 = !DILocation(line: 27, column: 2, scope: !5692)
!5706 = !{i64 275764, i64 275808, i64 2147772196, i64 2147772217, i64 2147772243, i64 2147772276, i64 2147772310, i64 2147772334}
!5707 = !DILocation(line: 32, column: 2, scope: !5692)
!5708 = !DILocation(line: 33, column: 1, scope: !5692)
!5709 = !DILocation(line: 34, column: 2, scope: !5692)
!5710 = !DILocation(line: 35, column: 1, scope: !5692)
!5711 = distinct !DISubprogram(name: "__rdmsr", scope: !3828, file: !3828, line: 80, type: !3997, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5712 = !{!5713, !5714, !5715}
!5713 = !DILocalVariable(name: "msr", arg: 1, scope: !5711, file: !3828, line: 80, type: !6)
!5714 = !DILocalVariable(name: "low", scope: !5711, file: !3828, line: 82, type: !151)
!5715 = !DILocalVariable(name: "high", scope: !5711, file: !3828, line: 82, type: !151)
!5716 = !DILocation(line: 80, column: 64, scope: !5711)
!5717 = !DILocation(line: 82, column: 2, scope: !5711)
!5718 = !DILocation(line: 87, column: 45, scope: !5711)
!5719 = !DILocation(line: 84, column: 2, scope: !5711)
!5720 = !{i64 1929010, i64 1929031, i64 2149430496, i64 2149430540, i64 2149430563, i64 2149430596, i64 2149430627, i64 2149430666}
!5721 = !DILocation(line: 89, column: 9, scope: !5711)
!5722 = !DILocation(line: 90, column: 1, scope: !5711)
!5723 = !DILocation(line: 89, column: 2, scope: !5711)
!5724 = !DISubprogram(name: "do_trace_read_msr", scope: !3828, file: !3828, line: 65, type: !5690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5725 = distinct !DISubprogram(name: "pat_get_cache_mode", scope: !3, file: !3, line: 189, type: !5726, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!14, !6, !377}
!5728 = !{!5729, !5730, !5731, !5732}
!5729 = !DILocalVariable(name: "pat_val", arg: 1, scope: !5725, file: !3, line: 189, type: !6)
!5730 = !DILocalVariable(name: "msg", arg: 2, scope: !5725, file: !3, line: 190, type: !377)
!5731 = !DILocalVariable(name: "cache", scope: !5725, file: !3, line: 192, type: !14)
!5732 = !DILocalVariable(name: "cache_mode", scope: !5725, file: !3, line: 193, type: !377)
!5733 = !DILocation(line: 189, column: 68, scope: !5725)
!5734 = !DILocation(line: 190, column: 19, scope: !5725)
!5735 = !DILocation(line: 192, column: 2, scope: !5725)
!5736 = !DILocation(line: 192, column: 23, scope: !5725)
!5737 = !DILocation(line: 193, column: 2, scope: !5725)
!5738 = !DILocation(line: 193, column: 8, scope: !5725)
!5739 = !DILocation(line: 195, column: 10, scope: !5725)
!5740 = !DILocation(line: 195, column: 2, scope: !5725)
!5741 = !DILocation(line: 196, column: 27, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 195, column: 19)
!5743 = !DILocation(line: 196, column: 54, scope: !5742)
!5744 = !DILocation(line: 196, column: 64, scope: !5742)
!5745 = !DILocation(line: 197, column: 27, scope: !5742)
!5746 = !DILocation(line: 197, column: 54, scope: !5742)
!5747 = !DILocation(line: 197, column: 64, scope: !5742)
!5748 = !DILocation(line: 198, column: 27, scope: !5742)
!5749 = !DILocation(line: 198, column: 54, scope: !5742)
!5750 = !DILocation(line: 198, column: 64, scope: !5742)
!5751 = !DILocation(line: 199, column: 27, scope: !5742)
!5752 = !DILocation(line: 199, column: 54, scope: !5742)
!5753 = !DILocation(line: 199, column: 64, scope: !5742)
!5754 = !DILocation(line: 200, column: 27, scope: !5742)
!5755 = !DILocation(line: 200, column: 54, scope: !5742)
!5756 = !DILocation(line: 200, column: 64, scope: !5742)
!5757 = !DILocation(line: 201, column: 27, scope: !5742)
!5758 = !DILocation(line: 201, column: 54, scope: !5742)
!5759 = !DILocation(line: 201, column: 64, scope: !5742)
!5760 = !DILocation(line: 202, column: 27, scope: !5742)
!5761 = !DILocation(line: 202, column: 54, scope: !5742)
!5762 = !DILocation(line: 202, column: 64, scope: !5742)
!5763 = !DILocation(line: 205, column: 9, scope: !5725)
!5764 = !DILocation(line: 205, column: 14, scope: !5725)
!5765 = !DILocation(line: 205, column: 2, scope: !5725)
!5766 = !DILocation(line: 207, column: 9, scope: !5725)
!5767 = !DILocation(line: 208, column: 1, scope: !5725)
!5768 = !DILocation(line: 207, column: 2, scope: !5725)
!5769 = !DISubprogram(name: "update_cache_mode_entry", scope: !5770, file: !5770, line: 24, type: !5771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5770 = !DIFile(filename: "arch/x86/mm/pat/../mm_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e63d1ab12d99960be380d0c04b48484")
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !6, !14}
!5773 = !DISubprogram(name: "mtrr_type_lookup", scope: !5774, file: !5774, line: 63, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5774 = !DIFile(filename: "./arch/x86/include/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7c890308cdc14a3bfc2cc2c920505da")
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!322, !152, !152, !5777}
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!5778 = !DISubprogram(name: "walk_system_ram_range", scope: !4827, file: !4827, line: 325, type: !5779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!149, !151, !151, !148, !5781}
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!149, !151, !151, !148}
!5784 = distinct !DISubprogram(name: "pagerange_is_ram_callback", scope: !3, file: !3, line: 406, type: !5782, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5785 = !{!5786, !5787, !5788, !5789}
!5786 = !DILocalVariable(name: "initial_pfn", arg: 1, scope: !5784, file: !3, line: 406, type: !151)
!5787 = !DILocalVariable(name: "total_nr_pages", arg: 2, scope: !5784, file: !3, line: 406, type: !151)
!5788 = !DILocalVariable(name: "arg", arg: 3, scope: !5784, file: !3, line: 406, type: !148)
!5789 = !DILocalVariable(name: "state", scope: !5784, file: !3, line: 408, type: !5790)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!5791 = !DILocation(line: 406, column: 41, scope: !5784)
!5792 = !DILocation(line: 406, column: 68, scope: !5784)
!5793 = !DILocation(line: 406, column: 90, scope: !5784)
!5794 = !DILocation(line: 408, column: 2, scope: !5784)
!5795 = !DILocation(line: 408, column: 26, scope: !5784)
!5796 = !DILocation(line: 408, column: 34, scope: !5784)
!5797 = !DILocation(line: 410, column: 20, scope: !5784)
!5798 = !DILocation(line: 410, column: 34, scope: !5784)
!5799 = !DILocation(line: 410, column: 41, scope: !5784)
!5800 = !DILocation(line: 410, column: 32, scope: !5784)
!5801 = !DILocation(line: 410, column: 2, scope: !5784)
!5802 = !DILocation(line: 410, column: 9, scope: !5784)
!5803 = !DILocation(line: 410, column: 17, scope: !5784)
!5804 = !DILocation(line: 411, column: 16, scope: !5784)
!5805 = !DILocation(line: 411, column: 31, scope: !5784)
!5806 = !DILocation(line: 411, column: 2, scope: !5784)
!5807 = !DILocation(line: 411, column: 9, scope: !5784)
!5808 = !DILocation(line: 411, column: 13, scope: !5784)
!5809 = !DILocation(line: 412, column: 20, scope: !5784)
!5810 = !DILocation(line: 412, column: 34, scope: !5784)
!5811 = !DILocation(line: 412, column: 32, scope: !5784)
!5812 = !DILocation(line: 412, column: 2, scope: !5784)
!5813 = !DILocation(line: 412, column: 9, scope: !5784)
!5814 = !DILocation(line: 412, column: 18, scope: !5784)
!5815 = !DILocation(line: 414, column: 9, scope: !5784)
!5816 = !DILocation(line: 414, column: 16, scope: !5784)
!5817 = !DILocation(line: 414, column: 20, scope: !5784)
!5818 = !DILocation(line: 414, column: 23, scope: !5784)
!5819 = !DILocation(line: 414, column: 30, scope: !5784)
!5820 = !DILocation(line: 0, scope: !5784)
!5821 = !DILocation(line: 415, column: 1, scope: !5784)
!5822 = !DILocation(line: 414, column: 2, scope: !5784)
!5823 = distinct !DISubprogram(name: "get_page_memtype", scope: !3, file: !3, line: 125, type: !5824, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!14, !168}
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "pg", arg: 1, scope: !5823, file: !3, line: 125, type: !168)
!5828 = !DILocalVariable(name: "pg_flags", scope: !5823, file: !3, line: 127, type: !151)
!5829 = !DILocation(line: 125, column: 66, scope: !5823)
!5830 = !DILocation(line: 127, column: 2, scope: !5823)
!5831 = !DILocation(line: 127, column: 16, scope: !5823)
!5832 = !DILocation(line: 127, column: 27, scope: !5823)
!5833 = !DILocation(line: 127, column: 31, scope: !5823)
!5834 = !DILocation(line: 127, column: 37, scope: !5823)
!5835 = !DILocation(line: 129, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 129, column: 6)
!5837 = !DILocation(line: 129, column: 15, scope: !5836)
!5838 = !DILocation(line: 129, column: 6, scope: !5823)
!5839 = !DILocation(line: 130, column: 3, scope: !5836)
!5840 = !DILocation(line: 131, column: 11, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 131, column: 11)
!5842 = !DILocation(line: 131, column: 20, scope: !5841)
!5843 = !DILocation(line: 131, column: 11, scope: !5836)
!5844 = !DILocation(line: 132, column: 3, scope: !5841)
!5845 = !DILocation(line: 133, column: 11, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 133, column: 11)
!5847 = !DILocation(line: 133, column: 20, scope: !5846)
!5848 = !DILocation(line: 133, column: 11, scope: !5841)
!5849 = !DILocation(line: 134, column: 3, scope: !5846)
!5850 = !DILocation(line: 136, column: 3, scope: !5846)
!5851 = !DILocation(line: 137, column: 1, scope: !5823)
!5852 = distinct !DISubprogram(name: "set_page_memtype", scope: !3, file: !3, line: 139, type: !5853, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !168, !14}
!5855 = !{!5856, !5857, !5858, !5859, !5860, !5861, !5863, !5864, !5866, !5867, !5868, !5869}
!5856 = !DILocalVariable(name: "pg", arg: 1, scope: !5852, file: !3, line: 139, type: !168)
!5857 = !DILocalVariable(name: "memtype", arg: 2, scope: !5852, file: !3, line: 140, type: !14)
!5858 = !DILocalVariable(name: "memtype_flags", scope: !5852, file: !3, line: 142, type: !151)
!5859 = !DILocalVariable(name: "old_flags", scope: !5852, file: !3, line: 143, type: !151)
!5860 = !DILocalVariable(name: "new_flags", scope: !5852, file: !3, line: 144, type: !151)
!5861 = !DILocalVariable(name: "__ai_ptr", scope: !5862, file: !3, line: 165, type: !150)
!5862 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 165, column: 12)
!5863 = !DILocalVariable(name: "__ai_oldp", scope: !5862, file: !3, line: 165, type: !150)
!5864 = !DILocalVariable(name: "success", scope: !5865, file: !3, line: 165, type: !776)
!5865 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 165, column: 12)
!5866 = !DILocalVariable(name: "_old", scope: !5865, file: !3, line: 165, type: !150)
!5867 = !DILocalVariable(name: "__old", scope: !5865, file: !3, line: 165, type: !151)
!5868 = !DILocalVariable(name: "__new", scope: !5865, file: !3, line: 165, type: !151)
!5869 = !DILocalVariable(name: "__ptr", scope: !5865, file: !3, line: 165, type: !3568)
!5870 = !DILocation(line: 139, column: 50, scope: !5852)
!5871 = !DILocation(line: 140, column: 30, scope: !5852)
!5872 = !DILocation(line: 142, column: 2, scope: !5852)
!5873 = !DILocation(line: 142, column: 16, scope: !5852)
!5874 = !DILocation(line: 143, column: 2, scope: !5852)
!5875 = !DILocation(line: 143, column: 16, scope: !5852)
!5876 = !DILocation(line: 144, column: 2, scope: !5852)
!5877 = !DILocation(line: 144, column: 16, scope: !5852)
!5878 = !DILocation(line: 146, column: 10, scope: !5852)
!5879 = !DILocation(line: 146, column: 2, scope: !5852)
!5880 = !DILocation(line: 148, column: 17, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 146, column: 19)
!5882 = !DILocation(line: 149, column: 3, scope: !5881)
!5883 = !DILocation(line: 151, column: 17, scope: !5881)
!5884 = !DILocation(line: 152, column: 3, scope: !5881)
!5885 = !DILocation(line: 154, column: 17, scope: !5881)
!5886 = !DILocation(line: 155, column: 3, scope: !5881)
!5887 = !DILocation(line: 156, column: 2, scope: !5881)
!5888 = !DILocation(line: 158, column: 17, scope: !5881)
!5889 = !DILocation(line: 159, column: 3, scope: !5881)
!5890 = !DILocation(line: 162, column: 14, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 162, column: 14)
!5892 = !DILocation(line: 162, column: 14, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 162, column: 14)
!5894 = !DILocation(line: 162, column: 12, scope: !5852)
!5895 = !DILocation(line: 163, column: 2, scope: !5852)
!5896 = !DILocation(line: 164, column: 16, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 163, column: 5)
!5898 = !DILocation(line: 164, column: 26, scope: !5897)
!5899 = !DILocation(line: 164, column: 48, scope: !5897)
!5900 = !DILocation(line: 164, column: 46, scope: !5897)
!5901 = !DILocation(line: 164, column: 13, scope: !5897)
!5902 = !DILocation(line: 165, column: 2, scope: !5897)
!5903 = !DILocation(line: 165, column: 12, scope: !5862)
!5904 = !DILocation(line: 165, column: 12, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 165, column: 12)
!5906 = !DILocation(line: 165, column: 12, scope: !5865)
!5907 = !{i64 2154267072, i64 2154267111, i64 2154267132, i64 2154267169, i64 2154267192, i64 2154267201, i64 2154267402}
!5908 = !DILocation(line: 165, column: 12, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 165, column: 12)
!5910 = !DILocation(line: 165, column: 12, scope: !5852)
!5911 = !DILocation(line: 165, column: 11, scope: !5852)
!5912 = distinct !{!5912, !5895, !5913, !4062, !4063}
!5913 = !DILocation(line: 165, column: 58, scope: !5852)
!5914 = !DILocation(line: 166, column: 1, scope: !5852)
!5915 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5916, file: !5916, line: 94, type: !5917, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5916 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5917 = !DISubroutineType(types: !5918)
!5918 = !{null, !5919, !520}
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5921)
!5921 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5922 = !{!5923, !5924}
!5923 = !DILocalVariable(name: "v", arg: 1, scope: !5915, file: !5916, line: 94, type: !5919)
!5924 = !DILocalVariable(name: "size", arg: 2, scope: !5915, file: !5916, line: 94, type: !520)
!5925 = !DILocation(line: 94, column: 79, scope: !5915)
!5926 = !DILocation(line: 94, column: 89, scope: !5915)
!5927 = !DILocation(line: 96, column: 20, scope: !5915)
!5928 = !DILocation(line: 96, column: 23, scope: !5915)
!5929 = !DILocation(line: 96, column: 2, scope: !5915)
!5930 = !DILocation(line: 97, column: 2, scope: !5915)
!5931 = !DILocation(line: 98, column: 1, scope: !5915)
!5932 = distinct !DISubprogram(name: "instrument_read_write", scope: !5916, file: !5916, line: 52, type: !5917, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5933)
!5933 = !{!5934, !5935}
!5934 = !DILocalVariable(name: "v", arg: 1, scope: !5932, file: !5916, line: 52, type: !5919)
!5935 = !DILocalVariable(name: "size", arg: 2, scope: !5932, file: !5916, line: 52, type: !520)
!5936 = !DILocation(line: 52, column: 72, scope: !5932)
!5937 = !DILocation(line: 52, column: 82, scope: !5932)
!5938 = !DILocation(line: 54, column: 20, scope: !5932)
!5939 = !DILocation(line: 54, column: 23, scope: !5932)
!5940 = !DILocation(line: 54, column: 2, scope: !5932)
!5941 = !DILocation(line: 55, column: 2, scope: !5932)
!5942 = !DILocation(line: 56, column: 1, scope: !5932)
!5943 = distinct !DISubprogram(name: "kasan_check_write", scope: !5944, file: !5944, line: 44, type: !5945, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5947)
!5944 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!776, !5919, !6}
!5947 = !{!5948, !5949}
!5948 = !DILocalVariable(name: "p", arg: 1, scope: !5943, file: !5944, line: 44, type: !5919)
!5949 = !DILocalVariable(name: "size", arg: 2, scope: !5943, file: !5944, line: 44, type: !6)
!5950 = !DILocation(line: 44, column: 59, scope: !5943)
!5951 = !DILocation(line: 44, column: 75, scope: !5943)
!5952 = !DILocation(line: 46, column: 2, scope: !5943)
!5953 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5954, file: !5954, line: 229, type: !5955, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5954 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !5919, !520, !149}
!5957 = !{!5958, !5959, !5960}
!5958 = !DILocalVariable(name: "ptr", arg: 1, scope: !5953, file: !5954, line: 229, type: !5919)
!5959 = !DILocalVariable(name: "size", arg: 2, scope: !5953, file: !5954, line: 229, type: !520)
!5960 = !DILocalVariable(name: "type", arg: 3, scope: !5953, file: !5954, line: 230, type: !149)
!5961 = !DILocation(line: 229, column: 60, scope: !5953)
!5962 = !DILocation(line: 229, column: 72, scope: !5953)
!5963 = !DILocation(line: 230, column: 15, scope: !5953)
!5964 = !DILocation(line: 230, column: 23, scope: !5953)
!5965 = distinct !DISubprogram(name: "kmalloc", scope: !138, file: !138, line: 591, type: !4489, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5966 = !{!5967, !5968, !5969}
!5967 = !DILocalVariable(name: "size", arg: 1, scope: !5965, file: !138, line: 591, type: !520)
!5968 = !DILocalVariable(name: "flags", arg: 2, scope: !5965, file: !138, line: 591, type: !157)
!5969 = !DILocalVariable(name: "index", scope: !5970, file: !138, line: 594, type: !6)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !138, line: 593, column: 42)
!5971 = distinct !DILexicalBlock(scope: !5965, file: !138, line: 593, column: 6)
!5972 = !DILocation(line: 591, column: 61, scope: !5965)
!5973 = !DILocation(line: 591, column: 73, scope: !5965)
!5974 = !DILocation(line: 593, column: 27, scope: !5971)
!5975 = !DILocation(line: 593, column: 6, scope: !5971)
!5976 = !DILocation(line: 593, column: 33, scope: !5971)
!5977 = !DILocation(line: 593, column: 36, scope: !5971)
!5978 = !DILocation(line: 593, column: 6, scope: !5965)
!5979 = !DILocation(line: 594, column: 3, scope: !5970)
!5980 = !DILocation(line: 594, column: 16, scope: !5970)
!5981 = !DILocation(line: 596, column: 7, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5970, file: !138, line: 596, column: 7)
!5983 = !DILocation(line: 596, column: 12, scope: !5982)
!5984 = !DILocation(line: 596, column: 7, scope: !5970)
!5985 = !DILocation(line: 597, column: 25, scope: !5982)
!5986 = !DILocation(line: 597, column: 31, scope: !5982)
!5987 = !DILocation(line: 597, column: 11, scope: !5982)
!5988 = !DILocation(line: 597, column: 4, scope: !5982)
!5989 = !DILocation(line: 599, column: 11, scope: !5970)
!5990 = !DILocation(line: 599, column: 9, scope: !5970)
!5991 = !DILocation(line: 601, column: 33, scope: !5970)
!5992 = !DILocation(line: 601, column: 40, scope: !5970)
!5993 = !DILocation(line: 601, column: 20, scope: !5970)
!5994 = !DILocation(line: 601, column: 5, scope: !5970)
!5995 = !DILocation(line: 601, column: 51, scope: !5970)
!5996 = !DILocation(line: 602, column: 5, scope: !5970)
!5997 = !DILocation(line: 602, column: 12, scope: !5970)
!5998 = !DILocation(line: 600, column: 10, scope: !5970)
!5999 = !DILocation(line: 600, column: 3, scope: !5970)
!6000 = !DILocation(line: 603, column: 2, scope: !5971)
!6001 = !DILocation(line: 604, column: 19, scope: !5965)
!6002 = !DILocation(line: 604, column: 25, scope: !5965)
!6003 = !DILocation(line: 604, column: 9, scope: !5965)
!6004 = !DILocation(line: 604, column: 2, scope: !5965)
!6005 = !DILocation(line: 605, column: 1, scope: !5965)
!6006 = !DISubprogram(name: "kmalloc_large", scope: !138, file: !138, line: 531, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6007 = distinct !DISubprogram(name: "__kmalloc_index", scope: !138, file: !138, line: 444, type: !6008, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!6, !520, !776}
!6010 = !{!6011, !6012}
!6011 = !DILocalVariable(name: "size", arg: 1, scope: !6007, file: !138, line: 444, type: !520)
!6012 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6007, file: !138, line: 445, type: !776)
!6013 = !DILocation(line: 444, column: 60, scope: !6007)
!6014 = !DILocation(line: 445, column: 16, scope: !6007)
!6015 = !DILocation(line: 447, column: 7, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 447, column: 6)
!6017 = !DILocation(line: 447, column: 6, scope: !6007)
!6018 = !DILocation(line: 448, column: 3, scope: !6016)
!6019 = !DILocation(line: 450, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 450, column: 6)
!6021 = !DILocation(line: 450, column: 11, scope: !6020)
!6022 = !DILocation(line: 450, column: 6, scope: !6007)
!6023 = !DILocation(line: 451, column: 3, scope: !6020)
!6024 = !DILocation(line: 453, column: 32, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 453, column: 6)
!6026 = !DILocation(line: 453, column: 37, scope: !6025)
!6027 = !DILocation(line: 453, column: 42, scope: !6025)
!6028 = !DILocation(line: 453, column: 45, scope: !6025)
!6029 = !DILocation(line: 453, column: 50, scope: !6025)
!6030 = !DILocation(line: 453, column: 6, scope: !6007)
!6031 = !DILocation(line: 454, column: 3, scope: !6025)
!6032 = !DILocation(line: 455, column: 32, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 455, column: 6)
!6034 = !DILocation(line: 455, column: 37, scope: !6033)
!6035 = !DILocation(line: 455, column: 43, scope: !6033)
!6036 = !DILocation(line: 455, column: 46, scope: !6033)
!6037 = !DILocation(line: 455, column: 51, scope: !6033)
!6038 = !DILocation(line: 455, column: 6, scope: !6007)
!6039 = !DILocation(line: 456, column: 3, scope: !6033)
!6040 = !DILocation(line: 457, column: 6, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 457, column: 6)
!6042 = !DILocation(line: 457, column: 11, scope: !6041)
!6043 = !DILocation(line: 457, column: 6, scope: !6007)
!6044 = !DILocation(line: 457, column: 26, scope: !6041)
!6045 = !DILocation(line: 458, column: 6, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 458, column: 6)
!6047 = !DILocation(line: 458, column: 11, scope: !6046)
!6048 = !DILocation(line: 458, column: 6, scope: !6007)
!6049 = !DILocation(line: 458, column: 26, scope: !6046)
!6050 = !DILocation(line: 459, column: 6, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 459, column: 6)
!6052 = !DILocation(line: 459, column: 11, scope: !6051)
!6053 = !DILocation(line: 459, column: 6, scope: !6007)
!6054 = !DILocation(line: 459, column: 26, scope: !6051)
!6055 = !DILocation(line: 460, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 460, column: 6)
!6057 = !DILocation(line: 460, column: 11, scope: !6056)
!6058 = !DILocation(line: 460, column: 6, scope: !6007)
!6059 = !DILocation(line: 460, column: 26, scope: !6056)
!6060 = !DILocation(line: 461, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 461, column: 6)
!6062 = !DILocation(line: 461, column: 11, scope: !6061)
!6063 = !DILocation(line: 461, column: 6, scope: !6007)
!6064 = !DILocation(line: 461, column: 26, scope: !6061)
!6065 = !DILocation(line: 462, column: 6, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 462, column: 6)
!6067 = !DILocation(line: 462, column: 11, scope: !6066)
!6068 = !DILocation(line: 462, column: 6, scope: !6007)
!6069 = !DILocation(line: 462, column: 26, scope: !6066)
!6070 = !DILocation(line: 463, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 463, column: 6)
!6072 = !DILocation(line: 463, column: 11, scope: !6071)
!6073 = !DILocation(line: 463, column: 6, scope: !6007)
!6074 = !DILocation(line: 463, column: 26, scope: !6071)
!6075 = !DILocation(line: 464, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 464, column: 6)
!6077 = !DILocation(line: 464, column: 11, scope: !6076)
!6078 = !DILocation(line: 464, column: 6, scope: !6007)
!6079 = !DILocation(line: 464, column: 26, scope: !6076)
!6080 = !DILocation(line: 465, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 465, column: 6)
!6082 = !DILocation(line: 465, column: 11, scope: !6081)
!6083 = !DILocation(line: 465, column: 6, scope: !6007)
!6084 = !DILocation(line: 465, column: 26, scope: !6081)
!6085 = !DILocation(line: 466, column: 6, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 466, column: 6)
!6087 = !DILocation(line: 466, column: 11, scope: !6086)
!6088 = !DILocation(line: 466, column: 6, scope: !6007)
!6089 = !DILocation(line: 466, column: 26, scope: !6086)
!6090 = !DILocation(line: 467, column: 6, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 467, column: 6)
!6092 = !DILocation(line: 467, column: 11, scope: !6091)
!6093 = !DILocation(line: 467, column: 6, scope: !6007)
!6094 = !DILocation(line: 467, column: 26, scope: !6091)
!6095 = !DILocation(line: 468, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 468, column: 6)
!6097 = !DILocation(line: 468, column: 11, scope: !6096)
!6098 = !DILocation(line: 468, column: 6, scope: !6007)
!6099 = !DILocation(line: 468, column: 26, scope: !6096)
!6100 = !DILocation(line: 469, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 469, column: 6)
!6102 = !DILocation(line: 469, column: 11, scope: !6101)
!6103 = !DILocation(line: 469, column: 6, scope: !6007)
!6104 = !DILocation(line: 469, column: 26, scope: !6101)
!6105 = !DILocation(line: 470, column: 6, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 470, column: 6)
!6107 = !DILocation(line: 470, column: 11, scope: !6106)
!6108 = !DILocation(line: 470, column: 6, scope: !6007)
!6109 = !DILocation(line: 470, column: 26, scope: !6106)
!6110 = !DILocation(line: 471, column: 6, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 471, column: 6)
!6112 = !DILocation(line: 471, column: 11, scope: !6111)
!6113 = !DILocation(line: 471, column: 6, scope: !6007)
!6114 = !DILocation(line: 471, column: 26, scope: !6111)
!6115 = !DILocation(line: 472, column: 6, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 472, column: 6)
!6117 = !DILocation(line: 472, column: 11, scope: !6116)
!6118 = !DILocation(line: 472, column: 6, scope: !6007)
!6119 = !DILocation(line: 472, column: 26, scope: !6116)
!6120 = !DILocation(line: 473, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 473, column: 6)
!6122 = !DILocation(line: 473, column: 11, scope: !6121)
!6123 = !DILocation(line: 473, column: 6, scope: !6007)
!6124 = !DILocation(line: 473, column: 26, scope: !6121)
!6125 = !DILocation(line: 474, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 474, column: 6)
!6127 = !DILocation(line: 474, column: 11, scope: !6126)
!6128 = !DILocation(line: 474, column: 6, scope: !6007)
!6129 = !DILocation(line: 474, column: 27, scope: !6126)
!6130 = !DILocation(line: 475, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 475, column: 6)
!6132 = !DILocation(line: 475, column: 11, scope: !6131)
!6133 = !DILocation(line: 475, column: 6, scope: !6007)
!6134 = !DILocation(line: 475, column: 32, scope: !6131)
!6135 = !DILocation(line: 477, column: 50, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6007, file: !138, line: 477, column: 6)
!6137 = !DILocation(line: 477, column: 6, scope: !6007)
!6138 = !DILocation(line: 478, column: 3, scope: !6136)
!6139 = !DILocation(line: 478, column: 3, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6141, file: !138, line: 478, column: 3)
!6141 = distinct !DILexicalBlock(scope: !6136, file: !138, line: 478, column: 3)
!6142 = !{i32 -2141671552}
!6143 = !DILocation(line: 478, column: 3, scope: !6141)
!6144 = !DILocation(line: 480, column: 3, scope: !6136)
!6145 = !DILocation(line: 480, column: 3, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6136, file: !138, line: 480, column: 3)
!6147 = !DILocation(line: 480, column: 3, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6146, file: !138, line: 480, column: 3)
!6149 = !DILocation(line: 480, column: 3, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !138, line: 480, column: 3)
!6151 = !{i64 2153295947, i64 2153295976, i64 2153296022, i64 2153296080, i64 2153296134, i64 2153296188, i64 2153296243, i64 2153296274}
!6152 = !DILocation(line: 483, column: 2, scope: !6007)
!6153 = !DILocation(line: 484, column: 1, scope: !6007)
!6154 = !DISubprogram(name: "kmalloc_trace", scope: !138, file: !138, line: 525, type: !6155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!148, !6157, !157, !520}
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6159, line: 325, flags: DIFlagFwdDecl)
!6159 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6160 = distinct !DISubprogram(name: "kmalloc_type", scope: !138, file: !138, line: 401, type: !6161, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{!137, !157, !151}
!6163 = !{!6164, !6165}
!6164 = !DILocalVariable(name: "flags", arg: 1, scope: !6160, file: !138, line: 401, type: !157)
!6165 = !DILocalVariable(name: "caller", arg: 2, scope: !6160, file: !138, line: 401, type: !151)
!6166 = !DILocation(line: 401, column: 67, scope: !6160)
!6167 = !DILocation(line: 401, column: 88, scope: !6160)
!6168 = !DILocation(line: 407, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6160, file: !138, line: 407, column: 6)
!6170 = !DILocation(line: 407, column: 6, scope: !6160)
!6171 = !DILocation(line: 413, column: 3, scope: !6169)
!6172 = !DILocation(line: 423, column: 38, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6160, file: !138, line: 423, column: 6)
!6174 = !DILocation(line: 423, column: 44, scope: !6173)
!6175 = !DILocation(line: 423, column: 6, scope: !6160)
!6176 = !DILocation(line: 424, column: 3, scope: !6173)
!6177 = !DILocation(line: 426, column: 3, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6160, file: !138, line: 425, column: 6)
!6179 = !DILocation(line: 429, column: 1, scope: !6160)
!6180 = !DISubprogram(name: "__kmalloc", scope: !138, file: !138, line: 488, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6181 = !DISubprogram(name: "__compiletime_assert_245", scope: !138, file: !138, line: 478, type: !2360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6182 = !DISubprogram(name: "_raw_spin_lock", scope: !6183, file: !6183, line: 22, type: !6184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6183 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6184 = !DISubroutineType(types: !6185)
!6185 = !{null, !6186}
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!6187 = !DISubprogram(name: "_raw_spin_unlock", scope: !6183, file: !6183, line: 39, type: !6184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6188 = !DISubprogram(name: "memtype_lookup", scope: !3575, file: !3575, line: 35, type: !6189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!3573, !152}
!6191 = !DISubprogram(name: "follow_phys", scope: !1226, file: !1226, line: 2362, type: !6192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!149, !1038, !151, !6, !150, !5126}
!6194 = distinct !DISubprogram(name: "is_cow_mapping", scope: !1226, file: !1226, line: 1592, type: !6195, scopeLine: 1593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!776, !1204}
!6197 = !{!6198}
!6198 = !DILocalVariable(name: "flags", arg: 1, scope: !6194, file: !1226, line: 1592, type: !1204)
!6199 = !DILocation(line: 1592, column: 46, scope: !6194)
!6200 = !DILocation(line: 1594, column: 10, scope: !6194)
!6201 = !DILocation(line: 1594, column: 16, scope: !6194)
!6202 = !DILocation(line: 1594, column: 45, scope: !6194)
!6203 = !DILocation(line: 1594, column: 2, scope: !6194)
!6204 = !DISubprogram(name: "pgprot2cachemode", scope: !6205, file: !6205, line: 27, type: !6206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6205 = !DIFile(filename: "./arch/x86/include/asm/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83be40d1830a400be9fbb1fd435851b8")
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!14, !1194}
!6208 = distinct !DISubprogram(name: "vma_start_write", scope: !1226, file: !1226, line: 715, type: !1230, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6209)
!6209 = !{!6210, !6211}
!6210 = !DILocalVariable(name: "vma", arg: 1, scope: !6208, file: !1226, line: 715, type: !1038)
!6211 = !DILocalVariable(name: "mm_lock_seq", scope: !6208, file: !1226, line: 717, type: !149)
!6212 = !DILocation(line: 715, column: 59, scope: !6208)
!6213 = !DILocation(line: 717, column: 2, scope: !6208)
!6214 = !DILocation(line: 717, column: 6, scope: !6208)
!6215 = !DILocation(line: 719, column: 28, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6208, file: !1226, line: 719, column: 6)
!6217 = !DILocation(line: 719, column: 6, scope: !6216)
!6218 = !DILocation(line: 719, column: 6, scope: !6208)
!6219 = !DILocation(line: 720, column: 3, scope: !6216)
!6220 = !DILocation(line: 722, column: 14, scope: !6208)
!6221 = !DILocation(line: 722, column: 19, scope: !6208)
!6222 = !DILocation(line: 722, column: 28, scope: !6208)
!6223 = !DILocation(line: 722, column: 2, scope: !6208)
!6224 = !DILocation(line: 729, column: 2, scope: !6208)
!6225 = !DILocation(line: 729, column: 2, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6208, file: !1226, line: 729, column: 2)
!6227 = !DILocation(line: 729, column: 2, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6226, file: !1226, line: 729, column: 2)
!6229 = !DILocation(line: 729, column: 2, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6226, file: !1226, line: 729, column: 2)
!6231 = !DILocation(line: 730, column: 12, scope: !6208)
!6232 = !DILocation(line: 730, column: 17, scope: !6208)
!6233 = !DILocation(line: 730, column: 26, scope: !6208)
!6234 = !DILocation(line: 730, column: 2, scope: !6208)
!6235 = !DILocation(line: 731, column: 1, scope: !6208)
!6236 = distinct !DISubprogram(name: "__is_vma_write_locked", scope: !1226, file: !1226, line: 698, type: !6237, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!776, !1038, !508}
!6239 = !{!6240, !6241}
!6240 = !DILocalVariable(name: "vma", arg: 1, scope: !6236, file: !1226, line: 698, type: !1038)
!6241 = !DILocalVariable(name: "mm_lock_seq", arg: 2, scope: !6236, file: !1226, line: 698, type: !508)
!6242 = !DILocation(line: 698, column: 58, scope: !6236)
!6243 = !DILocation(line: 698, column: 68, scope: !6236)
!6244 = !DILocation(line: 700, column: 27, scope: !6236)
!6245 = !DILocation(line: 700, column: 32, scope: !6236)
!6246 = !DILocation(line: 700, column: 2, scope: !6236)
!6247 = !DILocation(line: 706, column: 17, scope: !6236)
!6248 = !DILocation(line: 706, column: 22, scope: !6236)
!6249 = !DILocation(line: 706, column: 29, scope: !6236)
!6250 = !DILocation(line: 706, column: 3, scope: !6236)
!6251 = !DILocation(line: 706, column: 15, scope: !6236)
!6252 = !DILocation(line: 707, column: 10, scope: !6236)
!6253 = !DILocation(line: 707, column: 15, scope: !6236)
!6254 = !DILocation(line: 707, column: 31, scope: !6236)
!6255 = !DILocation(line: 707, column: 30, scope: !6236)
!6256 = !DILocation(line: 707, column: 27, scope: !6236)
!6257 = !DILocation(line: 707, column: 2, scope: !6236)
!6258 = !DISubprogram(name: "down_write", scope: !718, file: !718, line: 187, type: !6259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6259 = !DISubroutineType(types: !6260)
!6260 = !{null, !6261}
!6261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!6262 = !DISubprogram(name: "up_write", scope: !718, file: !718, line: 203, type: !6259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6263 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !6264, file: !6264, line: 69, type: !6265, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6264 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!6265 = !DISubroutineType(types: !6266)
!6266 = !{null, !1051}
!6267 = !{!6268}
!6268 = !DILocalVariable(name: "mm", arg: 1, scope: !6263, file: !6264, line: 69, type: !1051)
!6269 = !DILocation(line: 69, column: 63, scope: !6263)
!6270 = !DILocation(line: 71, column: 2, scope: !6263)
!6271 = !DILocation(line: 71, column: 2, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6263, file: !6264, line: 71, column: 2)
!6273 = !DILocation(line: 73, column: 1, scope: !6263)
!6274 = distinct !DISubprogram(name: "pfn_t_to_pfn", scope: !5428, file: !5428, line: 52, type: !6275, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!151, !5402}
!6277 = !{!6278}
!6278 = !DILocalVariable(name: "pfn", arg: 1, scope: !6274, file: !5428, line: 52, type: !5402)
!6279 = !DILocation(line: 52, column: 48, scope: !6274)
!6280 = !DILocation(line: 54, column: 13, scope: !6274)
!6281 = !DILocation(line: 54, column: 17, scope: !6274)
!6282 = !DILocation(line: 54, column: 2, scope: !6274)
!6283 = distinct !DISubprogram(name: "vm_flags_init", scope: !1226, file: !1226, line: 819, type: !5386, scopeLine: 821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6284)
!6284 = !{!6285, !6286}
!6285 = !DILocalVariable(name: "vma", arg: 1, scope: !6283, file: !1226, line: 819, type: !1038)
!6286 = !DILocalVariable(name: "flags", arg: 2, scope: !6283, file: !1226, line: 820, type: !1204)
!6287 = !DILocation(line: 819, column: 57, scope: !6283)
!6288 = !DILocation(line: 820, column: 17, scope: !6283)
!6289 = !DILocation(line: 822, column: 36, scope: !6283)
!6290 = !DILocation(line: 822, column: 2, scope: !6283)
!6291 = !DILocation(line: 822, column: 34, scope: !6283)
!6292 = !DILocation(line: 823, column: 1, scope: !6283)
!6293 = !DISubprogram(name: "debugfs_create_file", scope: !6294, file: !6294, line: 75, type: !6295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6294 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!237, !165, !203, !237, !148, !895}
!6297 = distinct !DISubprogram(name: "memtype_seq_open", scope: !3, file: !3, line: 1193, type: !1339, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6298)
!6298 = !{!6299, !6300}
!6299 = !DILocalVariable(name: "inode", arg: 1, scope: !6297, file: !3, line: 1193, type: !199)
!6300 = !DILocalVariable(name: "file", arg: 2, scope: !6297, file: !3, line: 1193, type: !904)
!6301 = !DILocation(line: 1193, column: 43, scope: !6297)
!6302 = !DILocation(line: 1193, column: 63, scope: !6297)
!6303 = !DILocation(line: 1195, column: 18, scope: !6297)
!6304 = !DILocation(line: 1195, column: 9, scope: !6297)
!6305 = !DILocation(line: 1195, column: 2, scope: !6297)
!6306 = !DISubprogram(name: "seq_open", scope: !516, file: !516, line: 109, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!149, !904, !550}
!6309 = distinct !DISubprogram(name: "memtype_seq_start", scope: !3, file: !3, line: 1152, type: !556, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6310 = !{!6311, !6312}
!6311 = !DILocalVariable(name: "seq", arg: 1, scope: !6309, file: !3, line: 1152, type: !514)
!6312 = !DILocalVariable(name: "pos", arg: 2, scope: !6309, file: !3, line: 1152, type: !558)
!6313 = !DILocation(line: 1152, column: 49, scope: !6309)
!6314 = !DILocation(line: 1152, column: 62, scope: !6309)
!6315 = !DILocation(line: 1154, column: 7, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 1154, column: 6)
!6317 = !DILocation(line: 1154, column: 6, scope: !6316)
!6318 = !DILocation(line: 1154, column: 11, scope: !6316)
!6319 = !DILocation(line: 1154, column: 6, scope: !6309)
!6320 = !DILocation(line: 1155, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 1154, column: 17)
!6322 = !DILocation(line: 1155, column: 3, scope: !6321)
!6323 = !DILocation(line: 1156, column: 12, scope: !6321)
!6324 = !DILocation(line: 1156, column: 3, scope: !6321)
!6325 = !DILocation(line: 1157, column: 2, scope: !6321)
!6326 = !DILocation(line: 1159, column: 26, scope: !6309)
!6327 = !DILocation(line: 1159, column: 25, scope: !6309)
!6328 = !DILocation(line: 1159, column: 9, scope: !6309)
!6329 = !DILocation(line: 1159, column: 2, scope: !6309)
!6330 = distinct !DISubprogram(name: "memtype_seq_stop", scope: !3, file: !3, line: 1169, type: !561, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6331 = !{!6332, !6333}
!6332 = !DILocalVariable(name: "seq", arg: 1, scope: !6330, file: !3, line: 1169, type: !514)
!6333 = !DILocalVariable(name: "v", arg: 2, scope: !6330, file: !3, line: 1169, type: !148)
!6334 = !DILocation(line: 1169, column: 47, scope: !6330)
!6335 = !DILocation(line: 1169, column: 58, scope: !6330)
!6336 = !DILocation(line: 1171, column: 8, scope: !6330)
!6337 = !DILocation(line: 1171, column: 2, scope: !6330)
!6338 = !DILocation(line: 1172, column: 1, scope: !6330)
!6339 = distinct !DISubprogram(name: "memtype_seq_next", scope: !3, file: !3, line: 1162, type: !565, scopeLine: 1163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6340 = !{!6341, !6342, !6343}
!6341 = !DILocalVariable(name: "seq", arg: 1, scope: !6339, file: !3, line: 1162, type: !514)
!6342 = !DILocalVariable(name: "v", arg: 2, scope: !6339, file: !3, line: 1162, type: !148)
!6343 = !DILocalVariable(name: "pos", arg: 3, scope: !6339, file: !3, line: 1162, type: !558)
!6344 = !DILocation(line: 1162, column: 48, scope: !6339)
!6345 = !DILocation(line: 1162, column: 59, scope: !6339)
!6346 = !DILocation(line: 1162, column: 70, scope: !6339)
!6347 = !DILocation(line: 1164, column: 8, scope: !6339)
!6348 = !DILocation(line: 1164, column: 2, scope: !6339)
!6349 = !DILocation(line: 1165, column: 5, scope: !6339)
!6350 = !DILocation(line: 1165, column: 2, scope: !6339)
!6351 = !DILocation(line: 1166, column: 26, scope: !6339)
!6352 = !DILocation(line: 1166, column: 25, scope: !6339)
!6353 = !DILocation(line: 1166, column: 9, scope: !6339)
!6354 = !DILocation(line: 1166, column: 2, scope: !6339)
!6355 = distinct !DISubprogram(name: "memtype_seq_show", scope: !3, file: !3, line: 1174, type: !569, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6356)
!6356 = !{!6357, !6358, !6359}
!6357 = !DILocalVariable(name: "seq", arg: 1, scope: !6355, file: !3, line: 1174, type: !514)
!6358 = !DILocalVariable(name: "v", arg: 2, scope: !6355, file: !3, line: 1174, type: !148)
!6359 = !DILocalVariable(name: "entry_print", scope: !6355, file: !3, line: 1176, type: !3573)
!6360 = !DILocation(line: 1174, column: 46, scope: !6355)
!6361 = !DILocation(line: 1174, column: 57, scope: !6355)
!6362 = !DILocation(line: 1176, column: 2, scope: !6355)
!6363 = !DILocation(line: 1176, column: 18, scope: !6355)
!6364 = !DILocation(line: 1176, column: 50, scope: !6355)
!6365 = !DILocation(line: 1178, column: 13, scope: !6355)
!6366 = !DILocation(line: 1179, column: 4, scope: !6355)
!6367 = !DILocation(line: 1179, column: 17, scope: !6355)
!6368 = !DILocation(line: 1180, column: 4, scope: !6355)
!6369 = !DILocation(line: 1180, column: 17, scope: !6355)
!6370 = !DILocation(line: 1181, column: 15, scope: !6355)
!6371 = !DILocation(line: 1181, column: 28, scope: !6355)
!6372 = !DILocation(line: 1181, column: 4, scope: !6355)
!6373 = !DILocation(line: 1178, column: 2, scope: !6355)
!6374 = !DILocation(line: 1184, column: 1, scope: !6355)
!6375 = !DILocation(line: 1183, column: 2, scope: !6355)
!6376 = !DISubprogram(name: "seq_puts", scope: !516, file: !516, line: 121, type: !6377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6377 = !DISubroutineType(types: !6378)
!6378 = !{null, !514, !165}
!6379 = distinct !DISubprogram(name: "memtype_get_idx", scope: !3, file: !3, line: 1130, type: !6380, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6382)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!3573, !398}
!6382 = !{!6383, !6384, !6385}
!6383 = !DILocalVariable(name: "pos", arg: 1, scope: !6379, file: !3, line: 1130, type: !398)
!6384 = !DILocalVariable(name: "entry_print", scope: !6379, file: !3, line: 1132, type: !3573)
!6385 = !DILocalVariable(name: "ret", scope: !6379, file: !3, line: 1133, type: !149)
!6386 = !DILocation(line: 1130, column: 47, scope: !6379)
!6387 = !DILocation(line: 1132, column: 2, scope: !6379)
!6388 = !DILocation(line: 1132, column: 18, scope: !6379)
!6389 = !DILocation(line: 1133, column: 2, scope: !6379)
!6390 = !DILocation(line: 1133, column: 6, scope: !6379)
!6391 = !DILocation(line: 1135, column: 17, scope: !6379)
!6392 = !DILocation(line: 1135, column: 15, scope: !6379)
!6393 = !DILocation(line: 1136, column: 7, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 1136, column: 6)
!6395 = !DILocation(line: 1136, column: 6, scope: !6379)
!6396 = !DILocation(line: 1137, column: 3, scope: !6394)
!6397 = !DILocation(line: 1139, column: 2, scope: !6379)
!6398 = !DILocation(line: 1140, column: 33, scope: !6379)
!6399 = !DILocation(line: 1140, column: 46, scope: !6379)
!6400 = !DILocation(line: 1140, column: 8, scope: !6379)
!6401 = !DILocation(line: 1140, column: 6, scope: !6379)
!6402 = !DILocation(line: 1141, column: 2, scope: !6379)
!6403 = !DILocation(line: 1144, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 1144, column: 6)
!6405 = !DILocation(line: 1144, column: 6, scope: !6379)
!6406 = !DILocation(line: 1145, column: 9, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 1144, column: 11)
!6408 = !DILocation(line: 1145, column: 3, scope: !6407)
!6409 = !DILocation(line: 1146, column: 3, scope: !6407)
!6410 = !DILocation(line: 1149, column: 9, scope: !6379)
!6411 = !DILocation(line: 1149, column: 2, scope: !6379)
!6412 = !DILocation(line: 1150, column: 1, scope: !6379)
!6413 = !DISubprogram(name: "memtype_copy_nth_element", scope: !3575, file: !3575, line: 36, type: !6414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!149, !3573, !398}
!6416 = !DISubprogram(name: "seq_printf", scope: !516, file: !516, line: 119, type: !6417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6417 = !DISubroutineType(types: !6418)
!6418 = !{null, !514, !165, null}
