; ModuleID = 'fs/proc/proc_net.c'
source_filename = "fs/proc/proc_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_proc_create_net_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad proc_create_net_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_proc_create_net_data_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad proc_create_net_data_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_proc_create_net_single: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad proc_create_net_single ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_proc_create_net_single_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad proc_create_net_single_write ; .previous"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.43 }
%union.anon.43 = type { %struct.anon.44, [16 x i8] }
%struct.anon.44 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.mnt_idmap = type opaque
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.36, ptr, %union.anon.37, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i64, ptr, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_net_private = type { ptr, %struct.netns_tracker }
%struct.netns_tracker = type {}
%struct.net = type { %struct.refcount_struct, %struct.spinlock, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [48 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_nf, %struct.netns_ct, ptr, %struct.netns_bpf, [16 x i8], %struct.netns_xfrm, i64, ptr, [48 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, i8, ptr, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { %struct.unix_table, i32, ptr }
%struct.unix_table = type { ptr, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i64, i64, i32, i32, ptr, ptr, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i32, ptr, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t }
%struct.inet_timewait_death_row = type { %struct.refcount_struct, [60 x i8], ptr, i32, [52 x i8] }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.atomic_t, i64, i8, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.42, ptr, [32 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.percpu_counter, [24 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [4 x i64], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.anon.42 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_nf = type { ptr, [11 x ptr], ptr, [5 x ptr], [5 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, ptr, ptr, %struct.nf_ip_net }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8 }
%struct.nf_udp_net = type { [2 x i32] }
%struct.nf_icmp_net = type { i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, [3 x i8], ptr, [24 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [16 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.file = type { %union.anon.45, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.45 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.46, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.47, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.48, ptr, %struct.address_space, %struct.list_head, %union.anon.49, i32, i32, ptr, ptr }
%union.anon.46 = type { i32 }
%union.anon.47 = type { %struct.callback_head }
%union.anon.48 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.49 = type { ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.50, ptr }
%union.anon.50 = type { i64 }
%struct.lockref = type { %union.anon.52 }
%union.anon.52 = type { i64 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }

@proc_net_seq_ops = internal constant %struct.proc_ops { i32 0, ptr @seq_open_net, ptr @seq_read, ptr null, ptr @proc_simple_write, ptr @seq_lseek, ptr @seq_release_net, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@__UNIQUE_ID___addressable_proc_create_net_data343 = internal global ptr @proc_create_net_data, section ".discard.addressable", align 8, !dbg !5466
@__UNIQUE_ID___addressable_proc_create_net_data_write344 = internal global ptr @proc_create_net_data_write, section ".discard.addressable", align 8, !dbg !5468
@proc_net_single_ops = internal constant %struct.proc_ops { i32 0, ptr @single_open_net, ptr @seq_read, ptr null, ptr @proc_simple_write, ptr @seq_lseek, ptr @single_release_net, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5491
@__UNIQUE_ID___addressable_proc_create_net_single345 = internal global ptr @proc_create_net_single, section ".discard.addressable", align 8, !dbg !5470
@__UNIQUE_ID___addressable_proc_create_net_single_write346 = internal global ptr @proc_create_net_single_write, section ".discard.addressable", align 8, !dbg !5472
@proc_net_inode_operations = hidden constant %struct.inode_operations { ptr @proc_tgid_net_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @proc_tgid_net_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !5474
@proc_net_operations = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_tgid_net_readdir, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5476
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1, !dbg !5478
@.str.1 = private unnamed_addr constant [9 x i8] c"self/net\00", align 1, !dbg !5481
@proc_net_ns_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @proc_net_ns_init, ptr null, ptr @proc_net_ns_exit, ptr null, ptr null, ptr null, i64 0 }, align 8, !dbg !5493
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@proc_net_dentry_ops = external dso_local constant %struct.dentry_operations, align 64
@.str.2 = private unnamed_addr constant [19 x i8] c"fs/proc/proc_net.c\00", align 1, !dbg !5486
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@proc_dir_entry_cache = external dso_local global ptr, align 8
@proc_root = external dso_local global %struct.proc_dir_entry, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1, !dbg !5517
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_proc_create_net_data343, ptr @__UNIQUE_ID___addressable_proc_create_net_data_write344, ptr @__UNIQUE_ID___addressable_proc_create_net_single345, ptr @__UNIQUE_ID___addressable_proc_create_net_single_write346], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bpf_iter_init_seq_net(ptr noundef %priv_data, ptr noundef %aux) #0 align 16 !dbg !5529 {
entry:
  %priv_data.addr = alloca ptr, align 8
  %aux.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %priv_data, ptr %priv_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv_data.addr, metadata !5535, metadata !DIExpression()), !dbg !5547
  store ptr %aux, ptr %aux.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aux.addr, metadata !5536, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5537, metadata !DIExpression()), !dbg !5550
  %0 = load ptr, ptr %priv_data.addr, align 8, !dbg !5551
  store ptr %0, ptr %p, align 8, !dbg !5550
  %call = call ptr @get_current() #11, !dbg !5552
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !5553
  %1 = load ptr, ptr %nsproxy, align 8, !dbg !5553
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 5, !dbg !5554
  %2 = load ptr, ptr %net_ns, align 8, !dbg !5554
  %3 = load ptr, ptr %p, align 8, !dbg !5555
  %ns_tracker = getelementptr inbounds %struct.seq_net_private, ptr %3, i32 0, i32 1, !dbg !5556
  %call1 = call ptr @get_net_track(ptr noundef %2, ptr noundef %ns_tracker, i32 noundef 3264) #11, !dbg !5557
  %4 = load ptr, ptr %p, align 8, !dbg !5558
  %net = getelementptr inbounds %struct.seq_net_private, ptr %4, i32 0, i32 0, !dbg !5559
  store ptr %call1, ptr %net, align 8, !dbg !5560
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5561
  ret i32 0, !dbg !5562
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_net_track(ptr noundef %net, ptr noundef %tracker, i32 noundef %gfp) #3 align 16 !dbg !5563 {
entry:
  %net.addr = alloca ptr, align 8
  %tracker.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !5568, metadata !DIExpression()), !dbg !5571
  store ptr %tracker, ptr %tracker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tracker.addr, metadata !5569, metadata !DIExpression()), !dbg !5572
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5570, metadata !DIExpression()), !dbg !5573
  %0 = load ptr, ptr %net.addr, align 8, !dbg !5574
  %call = call ptr @get_net(ptr noundef %0) #11, !dbg !5575
  %1 = load ptr, ptr %net.addr, align 8, !dbg !5576
  %2 = load ptr, ptr %tracker.addr, align 8, !dbg !5577
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !5578
  call void @netns_tracker_alloc(ptr noundef %1, ptr noundef %2, i32 noundef %3) #11, !dbg !5579
  %4 = load ptr, ptr %net.addr, align 8, !dbg !5580
  ret ptr %4, !dbg !5581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5582 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5587, metadata !DIExpression()), !dbg !5593
  br label %do.body, !dbg !5593

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5589, metadata !DIExpression()), !dbg !5594
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5594
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5593
  br label %do.cond, !dbg !5594

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5594

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5591, metadata !DIExpression()), !dbg !5595
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #12, !dbg !5595, !srcloc !5596
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5595
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5595
  %3 = inttoptr i64 %2 to ptr, !dbg !5595
  store ptr %3, ptr %tmp, align 8, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !5593
  %4 = load ptr, ptr %tmp, align 8, !dbg !5595
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5593
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5593
  store ptr %5, ptr %tmp1, align 8, !dbg !5593
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5597
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5593
  ret ptr %6, !dbg !5598
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bpf_iter_fini_seq_net(ptr noundef %priv_data) #0 align 16 !dbg !5599 {
entry:
  %priv_data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %priv_data, ptr %priv_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv_data.addr, metadata !5601, metadata !DIExpression()), !dbg !5603
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5604
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5602, metadata !DIExpression()), !dbg !5605
  %0 = load ptr, ptr %priv_data.addr, align 8, !dbg !5606
  store ptr %0, ptr %p, align 8, !dbg !5605
  %1 = load ptr, ptr %p, align 8, !dbg !5607
  %net = getelementptr inbounds %struct.seq_net_private, ptr %1, i32 0, i32 0, !dbg !5608
  %2 = load ptr, ptr %net, align 8, !dbg !5608
  %3 = load ptr, ptr %p, align 8, !dbg !5609
  %ns_tracker = getelementptr inbounds %struct.seq_net_private, ptr %3, i32 0, i32 1, !dbg !5610
  call void @put_net_track(ptr noundef %2, ptr noundef %ns_tracker) #11, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5612
  ret void, !dbg !5612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_net_track(ptr noundef %net, ptr noundef %tracker) #3 align 16 !dbg !5613 {
entry:
  %net.addr = alloca ptr, align 8
  %tracker.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !5617, metadata !DIExpression()), !dbg !5619
  store ptr %tracker, ptr %tracker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tracker.addr, metadata !5618, metadata !DIExpression()), !dbg !5620
  %0 = load ptr, ptr %net.addr, align 8, !dbg !5621
  %1 = load ptr, ptr %tracker.addr, align 8, !dbg !5622
  call void @__netns_tracker_free(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #11, !dbg !5623
  %2 = load ptr, ptr %net.addr, align 8, !dbg !5624
  call void @put_net(ptr noundef %2) #11, !dbg !5625
  ret void, !dbg !5626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @proc_create_net_data(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %ops, i32 noundef %state_size, ptr noundef %data) #0 align 16 !dbg !5627 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %state_size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5631, metadata !DIExpression()), !dbg !5638
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5632, metadata !DIExpression()), !dbg !5639
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5633, metadata !DIExpression()), !dbg !5640
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5634, metadata !DIExpression()), !dbg !5641
  store i32 %state_size, ptr %state_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state_size.addr, metadata !5635, metadata !DIExpression()), !dbg !5642
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5636, metadata !DIExpression()), !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5644
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5637, metadata !DIExpression()), !dbg !5645
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5646
  %1 = load i16, ptr %mode.addr, align 2, !dbg !5647
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5648
  %call = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %parent.addr, ptr noundef %2) #11, !dbg !5649
  store ptr %call, ptr %p, align 8, !dbg !5650
  %3 = load ptr, ptr %p, align 8, !dbg !5651
  %tobool = icmp ne ptr %3, null, !dbg !5651
  br i1 %tobool, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5654

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5655
  call void @pde_force_lookup(ptr noundef %4) #11, !dbg !5656
  %5 = load ptr, ptr %p, align 8, !dbg !5657
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6, !dbg !5658
  store ptr @proc_net_seq_ops, ptr %6, align 8, !dbg !5659
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5660
  %8 = load ptr, ptr %p, align 8, !dbg !5661
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8, !dbg !5662
  store ptr %7, ptr %9, align 8, !dbg !5663
  %10 = load i32, ptr %state_size.addr, align 4, !dbg !5664
  %11 = load ptr, ptr %p, align 8, !dbg !5665
  %state_size1 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 11, !dbg !5666
  store i32 %10, ptr %state_size1, align 8, !dbg !5667
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !5668
  %13 = load ptr, ptr %p, align 8, !dbg !5669
  %call2 = call ptr @proc_register(ptr noundef %12, ptr noundef %13) #11, !dbg !5670
  store ptr %call2, ptr %retval, align 8, !dbg !5671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5671

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5672
  %14 = load ptr, ptr %retval, align 8, !dbg !5672
  ret ptr %14, !dbg !5672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local ptr @proc_create_reg(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pde_force_lookup(ptr noundef %pde) #3 align 16 !dbg !5677 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !5683
  %proc_dops = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 7, !dbg !5684
  store ptr @proc_net_dentry_ops, ptr %proc_dops, align 8, !dbg !5685
  ret void, !dbg !5686
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5687 dso_local ptr @proc_register(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @proc_create_net_data_write(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %ops, ptr noundef %write, i32 noundef %state_size, ptr noundef %data) #0 align 16 !dbg !5690 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %write.addr = alloca ptr, align 8
  %state_size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5694, metadata !DIExpression()), !dbg !5702
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5695, metadata !DIExpression()), !dbg !5703
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5696, metadata !DIExpression()), !dbg !5704
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5697, metadata !DIExpression()), !dbg !5705
  store ptr %write, ptr %write.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5698, metadata !DIExpression()), !dbg !5706
  store i32 %state_size, ptr %state_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state_size.addr, metadata !5699, metadata !DIExpression()), !dbg !5707
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5700, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5701, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5711
  %1 = load i16, ptr %mode.addr, align 2, !dbg !5712
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5713
  %call = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %parent.addr, ptr noundef %2) #11, !dbg !5714
  store ptr %call, ptr %p, align 8, !dbg !5715
  %3 = load ptr, ptr %p, align 8, !dbg !5716
  %tobool = icmp ne ptr %3, null, !dbg !5716
  br i1 %tobool, label %if.end, label %if.then, !dbg !5718

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5719

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5720
  call void @pde_force_lookup(ptr noundef %4) #11, !dbg !5721
  %5 = load ptr, ptr %p, align 8, !dbg !5722
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6, !dbg !5723
  store ptr @proc_net_seq_ops, ptr %6, align 8, !dbg !5724
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5725
  %8 = load ptr, ptr %p, align 8, !dbg !5726
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8, !dbg !5727
  store ptr %7, ptr %9, align 8, !dbg !5728
  %10 = load i32, ptr %state_size.addr, align 4, !dbg !5729
  %11 = load ptr, ptr %p, align 8, !dbg !5730
  %state_size1 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 11, !dbg !5731
  store i32 %10, ptr %state_size1, align 8, !dbg !5732
  %12 = load ptr, ptr %write.addr, align 8, !dbg !5733
  %13 = load ptr, ptr %p, align 8, !dbg !5734
  %write2 = getelementptr inbounds %struct.proc_dir_entry, ptr %13, i32 0, i32 9, !dbg !5735
  store ptr %12, ptr %write2, align 8, !dbg !5736
  %14 = load ptr, ptr %parent.addr, align 8, !dbg !5737
  %15 = load ptr, ptr %p, align 8, !dbg !5738
  %call3 = call ptr @proc_register(ptr noundef %14, ptr noundef %15) #11, !dbg !5739
  store ptr %call3, ptr %retval, align 8, !dbg !5740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5740

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5741
  %16 = load ptr, ptr %retval, align 8, !dbg !5741
  ret ptr %16, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @proc_create_net_single(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %show, ptr noundef %data) #0 align 16 !dbg !5742 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %show.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5746, metadata !DIExpression()), !dbg !5752
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5747, metadata !DIExpression()), !dbg !5753
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5748, metadata !DIExpression()), !dbg !5754
  store ptr %show, ptr %show.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %show.addr, metadata !5749, metadata !DIExpression()), !dbg !5755
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5750, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5751, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5759
  %1 = load i16, ptr %mode.addr, align 2, !dbg !5760
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5761
  %call = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %parent.addr, ptr noundef %2) #11, !dbg !5762
  store ptr %call, ptr %p, align 8, !dbg !5763
  %3 = load ptr, ptr %p, align 8, !dbg !5764
  %tobool = icmp ne ptr %3, null, !dbg !5764
  br i1 %tobool, label %if.end, label %if.then, !dbg !5766

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5767

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5768
  call void @pde_force_lookup(ptr noundef %4) #11, !dbg !5769
  %5 = load ptr, ptr %p, align 8, !dbg !5770
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6, !dbg !5771
  store ptr @proc_net_single_ops, ptr %6, align 8, !dbg !5772
  %7 = load ptr, ptr %show.addr, align 8, !dbg !5773
  %8 = load ptr, ptr %p, align 8, !dbg !5774
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8, !dbg !5775
  store ptr %7, ptr %9, align 8, !dbg !5776
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !5777
  %11 = load ptr, ptr %p, align 8, !dbg !5778
  %call1 = call ptr @proc_register(ptr noundef %10, ptr noundef %11) #11, !dbg !5779
  store ptr %call1, ptr %retval, align 8, !dbg !5780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5780

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5781
  %12 = load ptr, ptr %retval, align 8, !dbg !5781
  ret ptr %12, !dbg !5781
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @proc_create_net_single_write(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %show, ptr noundef %write, ptr noundef %data) #0 align 16 !dbg !5782 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %show.addr = alloca ptr, align 8
  %write.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5786, metadata !DIExpression()), !dbg !5793
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5787, metadata !DIExpression()), !dbg !5794
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5788, metadata !DIExpression()), !dbg !5795
  store ptr %show, ptr %show.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %show.addr, metadata !5789, metadata !DIExpression()), !dbg !5796
  store ptr %write, ptr %write.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5790, metadata !DIExpression()), !dbg !5797
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5791, metadata !DIExpression()), !dbg !5798
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5792, metadata !DIExpression()), !dbg !5800
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5801
  %1 = load i16, ptr %mode.addr, align 2, !dbg !5802
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5803
  %call = call ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %parent.addr, ptr noundef %2) #11, !dbg !5804
  store ptr %call, ptr %p, align 8, !dbg !5805
  %3 = load ptr, ptr %p, align 8, !dbg !5806
  %tobool = icmp ne ptr %3, null, !dbg !5806
  br i1 %tobool, label %if.end, label %if.then, !dbg !5808

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5809

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5810
  call void @pde_force_lookup(ptr noundef %4) #11, !dbg !5811
  %5 = load ptr, ptr %p, align 8, !dbg !5812
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6, !dbg !5813
  store ptr @proc_net_single_ops, ptr %6, align 8, !dbg !5814
  %7 = load ptr, ptr %show.addr, align 8, !dbg !5815
  %8 = load ptr, ptr %p, align 8, !dbg !5816
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 8, !dbg !5817
  store ptr %7, ptr %9, align 8, !dbg !5818
  %10 = load ptr, ptr %write.addr, align 8, !dbg !5819
  %11 = load ptr, ptr %p, align 8, !dbg !5820
  %write1 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 9, !dbg !5821
  store ptr %10, ptr %write1, align 8, !dbg !5822
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !5823
  %13 = load ptr, ptr %p, align 8, !dbg !5824
  %call2 = call ptr @proc_register(ptr noundef %12, ptr noundef %13) #11, !dbg !5825
  store ptr %call2, ptr %retval, align 8, !dbg !5826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5826

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !5827
  %14 = load ptr, ptr %retval, align 8, !dbg !5827
  ret ptr %14, !dbg !5827
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_tgid_net_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 16 !dbg !5828 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %de = alloca ptr, align 8
  %net = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5830, metadata !DIExpression()), !dbg !5835
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5831, metadata !DIExpression()), !dbg !5836
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5832, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #10, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %de, metadata !5833, metadata !DIExpression()), !dbg !5839
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !5840
  call void @llvm.dbg.declare(metadata ptr %net, metadata !5834, metadata !DIExpression()), !dbg !5841
  %call = call ptr @ERR_PTR(i64 noundef -2) #11, !dbg !5842
  store ptr %call, ptr %de, align 8, !dbg !5843
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5844
  %call1 = call ptr @get_proc_task_net(ptr noundef %0) #11, !dbg !5845
  store ptr %call1, ptr %net, align 8, !dbg !5846
  %1 = load ptr, ptr %net, align 8, !dbg !5847
  %cmp = icmp ne ptr %1, null, !dbg !5849
  br i1 %cmp, label %if.then, label %if.end, !dbg !5850

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5851
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5853
  %4 = load ptr, ptr %net, align 8, !dbg !5854
  %proc_net = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 19, !dbg !5855
  %5 = load ptr, ptr %proc_net, align 8, !dbg !5855
  %call2 = call ptr @proc_lookup_de(ptr noundef %2, ptr noundef %3, ptr noundef %5) #11, !dbg !5856
  store ptr %call2, ptr %de, align 8, !dbg !5857
  %6 = load ptr, ptr %net, align 8, !dbg !5858
  call void @put_net(ptr noundef %6) #11, !dbg !5859
  br label %if.end, !dbg !5860

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %de, align 8, !dbg !5861
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #10, !dbg !5862
  ret ptr %7, !dbg !5863
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_tgid_net_getattr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 16 !dbg !5864 {
entry:
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %query_flags.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %net = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5866, metadata !DIExpression()), !dbg !5873
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5867, metadata !DIExpression()), !dbg !5874
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !5868, metadata !DIExpression()), !dbg !5875
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !5869, metadata !DIExpression()), !dbg !5876
  store i32 %query_flags, ptr %query_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %query_flags.addr, metadata !5870, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #10, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5871, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %path.addr, align 8, !dbg !5880
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !5881
  %1 = load ptr, ptr %dentry, align 8, !dbg !5881
  %call = call ptr @d_inode(ptr noundef %1) #11, !dbg !5882
  store ptr %call, ptr %inode, align 8, !dbg !5879
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %net, metadata !5872, metadata !DIExpression()), !dbg !5884
  %2 = load ptr, ptr %inode, align 8, !dbg !5885
  %call1 = call ptr @get_proc_task_net(ptr noundef %2) #11, !dbg !5886
  store ptr %call1, ptr %net, align 8, !dbg !5887
  %3 = load i32, ptr %request_mask.addr, align 4, !dbg !5888
  %4 = load ptr, ptr %inode, align 8, !dbg !5889
  %5 = load ptr, ptr %stat.addr, align 8, !dbg !5890
  call void @generic_fillattr(ptr noundef @nop_mnt_idmap, i32 noundef %3, ptr noundef %4, ptr noundef %5) #11, !dbg !5891
  %6 = load ptr, ptr %net, align 8, !dbg !5892
  %cmp = icmp ne ptr %6, null, !dbg !5894
  br i1 %cmp, label %if.then, label %if.end, !dbg !5895

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %net, align 8, !dbg !5896
  %proc_net = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 19, !dbg !5898
  %8 = load ptr, ptr %proc_net, align 8, !dbg !5898
  %nlink = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 13, !dbg !5899
  %9 = load i32, ptr %nlink, align 8, !dbg !5899
  %10 = load ptr, ptr %stat.addr, align 8, !dbg !5900
  %nlink2 = getelementptr inbounds %struct.kstat, ptr %10, i32 0, i32 2, !dbg !5901
  store i32 %9, ptr %nlink2, align 8, !dbg !5902
  %11 = load ptr, ptr %net, align 8, !dbg !5903
  call void @put_net(ptr noundef %11) #11, !dbg !5904
  br label %if.end, !dbg !5905

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #10, !dbg !5906
  ret i32 0, !dbg !5907
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_tgid_net_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 16 !dbg !5908 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %net = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5910, metadata !DIExpression()), !dbg !5914
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !5911, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5912, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %net, metadata !5913, metadata !DIExpression()), !dbg !5919
  store i32 -22, ptr %ret, align 4, !dbg !5920
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5921
  %call = call ptr @file_inode(ptr noundef %0) #11, !dbg !5922
  %call1 = call ptr @get_proc_task_net(ptr noundef %call) #11, !dbg !5923
  store ptr %call1, ptr %net, align 8, !dbg !5924
  %1 = load ptr, ptr %net, align 8, !dbg !5925
  %cmp = icmp ne ptr %1, null, !dbg !5927
  br i1 %cmp, label %if.then, label %if.end, !dbg !5928

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5929
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !5931
  %4 = load ptr, ptr %net, align 8, !dbg !5932
  %proc_net = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 19, !dbg !5933
  %5 = load ptr, ptr %proc_net, align 8, !dbg !5933
  %call2 = call i32 @proc_readdir_de(ptr noundef %2, ptr noundef %3, ptr noundef %5) #11, !dbg !5934
  store i32 %call2, ptr %ret, align 4, !dbg !5935
  %6 = load ptr, ptr %net, align 8, !dbg !5936
  call void @put_net(ptr noundef %6) #11, !dbg !5937
  br label %if.end, !dbg !5938

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5940
  ret i32 %7, !dbg !5941
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @proc_net_init() #6 section ".init.text" align 16 !dbg !5942 {
entry:
  %call = call ptr @proc_symlink(ptr noundef @.str, ptr noundef null, ptr noundef @.str.1) #11, !dbg !5943
  %call1 = call i32 @register_pernet_subsys(ptr noundef @proc_net_ns_ops) #11, !dbg !5944
  ret i32 %call1, !dbg !5945
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5946 dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5949 dso_local i32 @register_pernet_subsys(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_net(ptr noundef %net) #3 align 16 !dbg !5953 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load ptr, ptr %net.addr, align 8, !dbg !5959
  %ns = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 15, !dbg !5960
  %count = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3, !dbg !5961
  call void @refcount_inc(ptr noundef %count) #11, !dbg !5962
  %1 = load ptr, ptr %net.addr, align 8, !dbg !5963
  ret ptr %1, !dbg !5964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netns_tracker_alloc(ptr noundef %net, ptr noundef %tracker, i32 noundef %gfp) #3 align 16 !dbg !5965 {
entry:
  %net.addr = alloca ptr, align 8
  %tracker.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !5969, metadata !DIExpression()), !dbg !5972
  store ptr %tracker, ptr %tracker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tracker.addr, metadata !5970, metadata !DIExpression()), !dbg !5973
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5971, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %net.addr, align 8, !dbg !5975
  %1 = load ptr, ptr %tracker.addr, align 8, !dbg !5976
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5977
  call void @__netns_tracker_alloc(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i32 noundef %2) #11, !dbg !5978
  ret void, !dbg !5979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !5980 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5987
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #11, !dbg !5988
  ret void, !dbg !5989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5990 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5994, metadata !DIExpression()), !dbg !5996
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5995, metadata !DIExpression()), !dbg !5997
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5998
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5999
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6000
  ret void, !dbg !6001
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6002 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6006, metadata !DIExpression()), !dbg !6010
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6007, metadata !DIExpression()), !dbg !6011
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6008, metadata !DIExpression()), !dbg !6012
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !6013
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6009, metadata !DIExpression()), !dbg !6014
  %0 = load i32, ptr %i.addr, align 4, !dbg !6015
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6016
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6017
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #11, !dbg !6018
  store i32 %call, ptr %old, align 4, !dbg !6014
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6019
  %tobool = icmp ne ptr %2, null, !dbg !6019
  br i1 %tobool, label %if.then, label %if.end, !dbg !6021

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6022
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6023
  store i32 %3, ptr %4, align 4, !dbg !6024
  br label %if.end, !dbg !6025

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6026
  %tobool1 = icmp ne i32 %5, 0, !dbg !6026
  %lnot = xor i1 %tobool1, true, !dbg !6026
  %lnot2 = xor i1 %lnot, true, !dbg !6026
  %lnot3 = xor i1 %lnot2, true, !dbg !6026
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6026
  %conv = sext i32 %lnot.ext to i64, !dbg !6026
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6026
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6026
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6028

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6029
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #11, !dbg !6030
  br label %if.end18, !dbg !6030

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6031
  %cmp = icmp slt i32 %7, 0, !dbg !6031
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6031

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6031
  %9 = load i32, ptr %i.addr, align 4, !dbg !6031
  %add = add i32 %8, %9, !dbg !6031
  %cmp7 = icmp slt i32 %add, 0, !dbg !6031
  br label %lor.end, !dbg !6031

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6031
  %lnot11 = xor i1 %lnot9, true, !dbg !6031
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6031
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6031
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6031
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6031
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6033

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6034
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #11, !dbg !6035
  br label %if.end17, !dbg !6035

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !6036
  ret void, !dbg !6036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6037 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6043, metadata !DIExpression()), !dbg !6045
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6044, metadata !DIExpression()), !dbg !6046
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6047
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6048
  %1 = load i32, ptr %i.addr, align 4, !dbg !6049
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6050
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #11, !dbg !6051
  ret i32 %call, !dbg !6052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6053 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6056 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6065, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6068
  %1 = load i64, ptr %size.addr, align 8, !dbg !6069
  %conv = trunc i64 %1 to i32, !dbg !6069
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6070
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6071
  %3 = load i64, ptr %size.addr, align 8, !dbg !6071
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6071
  ret void, !dbg !6072
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6073 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6076, metadata !DIExpression()), !dbg !6078
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  %0 = load i32, ptr %i.addr, align 4, !dbg !6080
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6081
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #11, !dbg !6082
  ret i32 %call, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6084 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6089, metadata !DIExpression()), !dbg !6091
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6090, metadata !DIExpression()), !dbg !6092
  ret i1 true, !dbg !6093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6094 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6099, metadata !DIExpression()), !dbg !6102
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6100, metadata !DIExpression()), !dbg !6103
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6101, metadata !DIExpression()), !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6106 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6109, metadata !DIExpression()), !dbg !6113
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6110, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6111, metadata !DIExpression()), !dbg !6115
  %0 = load i32, ptr %i.addr, align 4, !dbg !6115
  store i32 %0, ptr %__ret, align 4, !dbg !6115
  %1 = load i32, ptr %__ret, align 4, !dbg !6115
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6115
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6115
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !6115, !srcloc !6116
  store i32 %3, ptr %__ret, align 4, !dbg !6115
  %4 = load i32, ptr %__ret, align 4, !dbg !6115
  store i32 %4, ptr %tmp, align 4, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6117
  %5 = load i32, ptr %tmp, align 4, !dbg !6115
  ret i32 %5, !dbg !6118
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__netns_tracker_alloc(ptr noundef %net, ptr noundef %tracker, i1 noundef zeroext %refcounted, i32 noundef %gfp) #3 align 16 !dbg !6119 {
entry:
  %net.addr = alloca ptr, align 8
  %tracker.addr = alloca ptr, align 8
  %refcounted.addr = alloca i8, align 1
  %gfp.addr = alloca i32, align 4
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6123, metadata !DIExpression()), !dbg !6127
  store ptr %tracker, ptr %tracker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tracker.addr, metadata !6124, metadata !DIExpression()), !dbg !6128
  %frombool = zext i1 %refcounted to i8
  store i8 %frombool, ptr %refcounted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %refcounted.addr, metadata !6125, metadata !DIExpression()), !dbg !6129
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6126, metadata !DIExpression()), !dbg !6130
  ret void, !dbg !6131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__netns_tracker_free(ptr noundef %net, ptr noundef %tracker, i1 noundef zeroext %refcounted) #3 align 16 !dbg !6132 {
entry:
  %net.addr = alloca ptr, align 8
  %tracker.addr = alloca ptr, align 8
  %refcounted.addr = alloca i8, align 1
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6136, metadata !DIExpression()), !dbg !6139
  store ptr %tracker, ptr %tracker.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tracker.addr, metadata !6137, metadata !DIExpression()), !dbg !6140
  %frombool = zext i1 %refcounted to i8
  store i8 %frombool, ptr %refcounted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %refcounted.addr, metadata !6138, metadata !DIExpression()), !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_net(ptr noundef %net) #3 align 16 !dbg !6143 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6145, metadata !DIExpression()), !dbg !6146
  %0 = load ptr, ptr %net.addr, align 8, !dbg !6147
  %ns = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 15, !dbg !6149
  %count = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3, !dbg !6150
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #11, !dbg !6151
  br i1 %call, label %if.then, label %if.end, !dbg !6152

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %net.addr, align 8, !dbg !6153
  call void @__put_net(ptr noundef %1) #11, !dbg !6154
  br label %if.end, !dbg !6154

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !6156 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6162
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #11, !dbg !6163
  ret i1 %call, !dbg !6164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local void @__put_net(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6166 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6171, metadata !DIExpression()), !dbg !6173
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6174
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6175
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6176
  ret i1 %call, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6178 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6182, metadata !DIExpression()), !dbg !6186
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6183, metadata !DIExpression()), !dbg !6187
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6184, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6185, metadata !DIExpression()), !dbg !6190
  %0 = load i32, ptr %i.addr, align 4, !dbg !6191
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6192
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6193
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #11, !dbg !6194
  store i32 %call, ptr %old, align 4, !dbg !6190
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6195
  %tobool = icmp ne ptr %2, null, !dbg !6195
  br i1 %tobool, label %if.then, label %if.end, !dbg !6197

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6198
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6199
  store i32 %3, ptr %4, align 4, !dbg !6200
  br label %if.end, !dbg !6201

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6202
  %6 = load i32, ptr %i.addr, align 4, !dbg !6204
  %cmp = icmp eq i32 %5, %6, !dbg !6205
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6206

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6207

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6209

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6211

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6211

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6209

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6213

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6215

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6215

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6213, !srcloc !6217
  br label %do.cond7, !dbg !6213

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6213

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6209

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6209

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6218

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6219
  %cmp12 = icmp slt i32 %7, 0, !dbg !6219
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6219

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6219
  %9 = load i32, ptr %i.addr, align 4, !dbg !6219
  %sub = sub i32 %8, %9, !dbg !6219
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6219
  br label %lor.end, !dbg !6219

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6219
  %lnot14 = xor i1 %lnot, true, !dbg !6219
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6219
  %conv = sext i32 %lnot.ext to i64, !dbg !6219
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6219
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6219
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6221

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6222
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #11, !dbg !6223
  br label %if.end17, !dbg !6223

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6224

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !6225
  %12 = load i1, ptr %retval, align 1, !dbg !6225
  ret i1 %12, !dbg !6225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6226 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6228, metadata !DIExpression()), !dbg !6230
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6229, metadata !DIExpression()), !dbg !6231
  br label %do.body, !dbg !6232

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6233

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6235
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6236
  %1 = load i32, ptr %i.addr, align 4, !dbg !6237
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6238
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #11, !dbg !6239
  ret i32 %call, !dbg !6240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6241 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6243, metadata !DIExpression()), !dbg !6245
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6244, metadata !DIExpression()), !dbg !6246
  %0 = load i32, ptr %i.addr, align 4, !dbg !6247
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6248
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #11, !dbg !6249
  ret i32 %call, !dbg !6250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !6251 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6253, metadata !DIExpression()), !dbg !6257
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6254, metadata !DIExpression()), !dbg !6258
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6255, metadata !DIExpression()), !dbg !6259
  %0 = load i32, ptr %i.addr, align 4, !dbg !6259
  %sub = sub i32 0, %0, !dbg !6259
  store i32 %sub, ptr %__ret, align 4, !dbg !6259
  %1 = load i32, ptr %__ret, align 4, !dbg !6259
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6259
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6259
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !6259, !srcloc !6260
  store i32 %3, ptr %__ret, align 4, !dbg !6259
  %4 = load i32, ptr %__ret, align 4, !dbg !6259
  store i32 %4, ptr %tmp, align 4, !dbg !6259
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !6261
  %5 = load i32, ptr %tmp, align 4, !dbg !6259
  ret i32 %5, !dbg !6262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_open_net(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6263 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %state_size = alloca i32, align 4
  %p = alloca ptr, align 8
  %net = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6265, metadata !DIExpression()), !dbg !6275
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6266, metadata !DIExpression()), !dbg !6276
  call void @llvm.lifetime.start.p0(i64 4, ptr %state_size) #10, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %state_size, metadata !6267, metadata !DIExpression()), !dbg !6278
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6279
  %call = call ptr @PDE(ptr noundef %0) #11, !dbg !6280
  %state_size1 = getelementptr inbounds %struct.proc_dir_entry, ptr %call, i32 0, i32 11, !dbg !6281
  %1 = load i32, ptr %state_size1, align 8, !dbg !6281
  store i32 %1, ptr %state_size, align 4, !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6268, metadata !DIExpression()), !dbg !6283
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %net, metadata !6269, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6270, metadata !DIExpression()), !dbg !6286
  %2 = load i32, ptr %state_size, align 4, !dbg !6286
  %conv = zext i32 %2 to i64, !dbg !6286
  %cmp = icmp ult i64 %conv, 8, !dbg !6286
  %lnot = xor i1 %cmp, true, !dbg !6286
  %lnot3 = xor i1 %lnot, true, !dbg !6286
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6286
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6286
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6287
  %tobool = icmp ne i32 %3, 0, !dbg !6287
  %lnot4 = xor i1 %tobool, true, !dbg !6287
  %lnot6 = xor i1 %lnot4, true, !dbg !6287
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6287
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !6287
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6287
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6287
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6286

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6287

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6272, metadata !DIExpression()), !dbg !6288
  store i32 2307, ptr %__flags, align 4, !dbg !6288
  br label %do.body10, !dbg !6288

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6289

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6289

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6288

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6291
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 45, i32 %4, i64 12) #10, !dbg !6291, !srcloc !6293
  br label %do.cond12, !dbg !6291

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6291

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6288

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !6294

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6294

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6287
  br label %do.cond17, !dbg !6288

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6288

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6288

if.end:                                           ; preds = %do.end18, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6286
  %tobool19 = icmp ne i32 %5, 0, !dbg !6286
  %lnot20 = xor i1 %tobool19, true, !dbg !6286
  %lnot22 = xor i1 %lnot20, true, !dbg !6286
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6286
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6286
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6286
  store i64 %expval25, ptr %tmp, align 8, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6296
  %6 = load i64, ptr %tmp, align 8, !dbg !6286
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6297
  %f_mode = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2, !dbg !6299
  %8 = load i32, ptr %f_mode, align 4, !dbg !6299
  %and = and i32 %8, 2, !dbg !6300
  %tobool26 = icmp ne i32 %and, 0, !dbg !6300
  br i1 %tobool26, label %land.lhs.true, label %if.end30, !dbg !6301

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !6302
  %call27 = call ptr @PDE(ptr noundef %9) #11, !dbg !6303
  %write = getelementptr inbounds %struct.proc_dir_entry, ptr %call27, i32 0, i32 9, !dbg !6304
  %10 = load ptr, ptr %write, align 8, !dbg !6304
  %tobool28 = icmp ne ptr %10, null, !dbg !6303
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !6305

if.then29:                                        ; preds = %land.lhs.true
  store i32 -13, ptr %retval, align 4, !dbg !6306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6306

if.end30:                                         ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !6307
  %call31 = call ptr @get_proc_net(ptr noundef %11) #11, !dbg !6308
  store ptr %call31, ptr %net, align 8, !dbg !6309
  %12 = load ptr, ptr %net, align 8, !dbg !6310
  %tobool32 = icmp ne ptr %12, null, !dbg !6310
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !6312

if.then33:                                        ; preds = %if.end30
  store i32 -6, ptr %retval, align 4, !dbg !6313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6313

if.end34:                                         ; preds = %if.end30
  %13 = load ptr, ptr %file.addr, align 8, !dbg !6314
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !6315
  %call35 = call ptr @PDE(ptr noundef %14) #11, !dbg !6316
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %call35, i32 0, i32 8, !dbg !6317
  %16 = load ptr, ptr %15, align 8, !dbg !6317
  %17 = load i32, ptr %state_size, align 4, !dbg !6318
  %call36 = call ptr @__seq_open_private(ptr noundef %13, ptr noundef %16, i32 noundef %17) #11, !dbg !6319
  store ptr %call36, ptr %p, align 8, !dbg !6320
  %18 = load ptr, ptr %p, align 8, !dbg !6321
  %tobool37 = icmp ne ptr %18, null, !dbg !6321
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !6323

if.then38:                                        ; preds = %if.end34
  %19 = load ptr, ptr %net, align 8, !dbg !6324
  call void @put_net(ptr noundef %19) #11, !dbg !6326
  store i32 -12, ptr %retval, align 4, !dbg !6327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end39:                                         ; preds = %if.end34
  %20 = load ptr, ptr %net, align 8, !dbg !6328
  %21 = load ptr, ptr %p, align 8, !dbg !6329
  %net40 = getelementptr inbounds %struct.seq_net_private, ptr %21, i32 0, i32 0, !dbg !6330
  store ptr %20, ptr %net40, align 8, !dbg !6331
  %22 = load ptr, ptr %net, align 8, !dbg !6332
  %23 = load ptr, ptr %p, align 8, !dbg !6333
  %ns_tracker = getelementptr inbounds %struct.seq_net_private, ptr %23, i32 0, i32 1, !dbg !6334
  call void @netns_tracker_alloc(ptr noundef %22, ptr noundef %ns_tracker, i32 noundef 3264) #11, !dbg !6335
  store i32 0, ptr %retval, align 4, !dbg !6336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6336

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then33, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 4, ptr %state_size) #10, !dbg !6337
  %24 = load i32, ptr %retval, align 4, !dbg !6337
  ret i32 %24, !dbg !6337
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @proc_simple_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_release_net(ptr noundef %ino, ptr noundef %f) #0 align 16 !dbg !6338 {
entry:
  %ino.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %seq = alloca ptr, align 8
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !6340, metadata !DIExpression()), !dbg !6343
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #10, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6342, metadata !DIExpression()), !dbg !6346
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6347
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6348
  %1 = load ptr, ptr %private_data, align 8, !dbg !6348
  store ptr %1, ptr %seq, align 8, !dbg !6346
  %2 = load ptr, ptr %seq, align 8, !dbg !6349
  call void @seq_file_net_put_net(ptr noundef %2) #11, !dbg !6350
  %3 = load ptr, ptr %ino.addr, align 8, !dbg !6351
  %4 = load ptr, ptr %f.addr, align 8, !dbg !6352
  %call = call i32 @seq_release_private(ptr noundef %3, ptr noundef %4) #11, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #10, !dbg !6354
  ret i32 0, !dbg !6355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PDE(ptr noundef %inode) #3 align 16 !dbg !6356 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6362
  %call = call ptr @PROC_I(ptr noundef %0) #11, !dbg !6363
  %pde = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 3, !dbg !6364
  %1 = load ptr, ptr %pde, align 8, !dbg !6364
  ret ptr %1, !dbg !6365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_proc_net(ptr noundef %inode) #0 align 16 !dbg !6366 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6372
  %call = call ptr @PDE(ptr noundef %0) #11, !dbg !6373
  %call1 = call ptr @PDE_NET(ptr noundef %call) #11, !dbg !6374
  %call2 = call ptr @maybe_get_net(ptr noundef %call1) #11, !dbg !6375
  ret ptr %call2, !dbg !6376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6377 dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PROC_I(ptr noundef %inode) #3 align 16 !dbg !6380 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6384, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6385, metadata !DIExpression()), !dbg !6388
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6388
  store ptr %0, ptr %__mptr, align 8, !dbg !6388
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6388
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !6388
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6389
  %2 = load ptr, ptr %tmp, align 8, !dbg !6388
  ret ptr %2, !dbg !6390
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @maybe_get_net(ptr noundef %net) #3 align 16 !dbg !6391 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  %0 = load ptr, ptr %net.addr, align 8, !dbg !6395
  %ns = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 15, !dbg !6397
  %count = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3, !dbg !6398
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %count) #11, !dbg !6399
  br i1 %call, label %if.end, label %if.then, !dbg !6400

if.then:                                          ; preds = %entry
  store ptr null, ptr %net.addr, align 8, !dbg !6401
  br label %if.end, !dbg !6402

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %net.addr, align 8, !dbg !6403
  ret ptr %1, !dbg !6404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PDE_NET(ptr noundef %pde) #3 align 16 !dbg !6405 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6409, metadata !DIExpression()), !dbg !6410
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6411
  %parent = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 17, !dbg !6412
  %1 = load ptr, ptr %parent, align 8, !dbg !6412
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 10, !dbg !6413
  %2 = load ptr, ptr %data, align 8, !dbg !6413
  ret ptr %2, !dbg !6414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #3 align 16 !dbg !6415 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6419
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #11, !dbg !6420
  ret i1 %call, !dbg !6421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6422 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6424, metadata !DIExpression()), !dbg !6426
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6425, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6428
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6429
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6430
  ret i1 %call, !dbg !6431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6432 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6434, metadata !DIExpression()), !dbg !6438
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6435, metadata !DIExpression()), !dbg !6439
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6436, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6437, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6443
  %call = call i32 @refcount_read(ptr noundef %0) #11, !dbg !6444
  store i32 %call, ptr %old, align 4, !dbg !6442
  br label %do.body, !dbg !6445

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !6446
  %tobool = icmp ne i32 %1, 0, !dbg !6446
  br i1 %tobool, label %if.end, label %if.then, !dbg !6449

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6450

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6451

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !6452
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !6453
  %3 = load i32, ptr %old, align 4, !dbg !6454
  %4 = load i32, ptr %i.addr, align 4, !dbg !6455
  %add = add i32 %3, %4, !dbg !6456
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #11, !dbg !6457
  %lnot = xor i1 %call1, true, !dbg !6458
  br i1 %lnot, label %do.body, label %do.end, !dbg !6451, !llvm.loop !6459

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !6463
  %tobool2 = icmp ne ptr %5, null, !dbg !6463
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6465

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !6466
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !6467
  store i32 %6, ptr %7, align 4, !dbg !6468
  br label %if.end4, !dbg !6469

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !6470
  %cmp = icmp slt i32 %8, 0, !dbg !6470
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6470

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !6470
  %10 = load i32, ptr %i.addr, align 4, !dbg !6470
  %add5 = add i32 %9, %10, !dbg !6470
  %cmp6 = icmp slt i32 %add5, 0, !dbg !6470
  br label %lor.end, !dbg !6470

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !6470
  %lnot8 = xor i1 %lnot7, true, !dbg !6470
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6470
  %conv = sext i32 %lnot.ext to i64, !dbg !6470
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6470
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6470
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6472

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !6473
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #11, !dbg !6474
  br label %if.end11, !dbg !6474

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !6475
  %tobool12 = icmp ne i32 %13, 0, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !6476
  ret i1 %tobool12, !dbg !6477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #3 align 16 !dbg !6478 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6484, metadata !DIExpression()), !dbg !6485
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6486
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6487
  %call = call i32 @atomic_read(ptr noundef %refs) #11, !dbg !6488
  ret i32 %call, !dbg !6489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !6490 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6494, metadata !DIExpression()), !dbg !6497
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6495, metadata !DIExpression()), !dbg !6498
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6496, metadata !DIExpression()), !dbg !6499
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6500
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6501
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6502
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #11, !dbg !6503
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6504
  %3 = load ptr, ptr %old.addr, align 8, !dbg !6505
  %4 = load i32, ptr %new.addr, align 4, !dbg !6506
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #11, !dbg !6507
  ret i1 %call, !dbg !6508
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !6509 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6515, metadata !DIExpression()), !dbg !6516
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6517
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !6518
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6519
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !6520
  ret i32 %call, !dbg !6521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6522 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6524, metadata !DIExpression()), !dbg !6526
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6525, metadata !DIExpression()), !dbg !6527
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6528
  %1 = load i64, ptr %size.addr, align 8, !dbg !6529
  %conv = trunc i64 %1 to i32, !dbg !6529
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6530
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6531
  %3 = load i64, ptr %size.addr, align 8, !dbg !6531
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6531
  ret void, !dbg !6532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6533 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6537
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !6538
  ret i32 %call, !dbg !6539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6540 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6543, metadata !DIExpression()), !dbg !6545
  ret i1 true, !dbg !6546
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6547 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6551
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6551
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6551
  ret i32 %1, !dbg !6552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !6553 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6556, metadata !DIExpression()), !dbg !6559
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6557, metadata !DIExpression()), !dbg !6560
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6561
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6562
  %2 = load i32, ptr %new.addr, align 4, !dbg !6563
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !dbg !6564
  ret i1 %call, !dbg !6565
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !6566 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6568, metadata !DIExpression()), !dbg !6577
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6569, metadata !DIExpression()), !dbg !6578
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6570, metadata !DIExpression()), !dbg !6579
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6571, metadata !DIExpression()), !dbg !6580
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6573, metadata !DIExpression()), !dbg !6580
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6580
  store ptr %0, ptr %_old, align 8, !dbg !6580
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6574, metadata !DIExpression()), !dbg !6580
  %1 = load ptr, ptr %_old, align 8, !dbg !6580
  %2 = load i32, ptr %1, align 4, !dbg !6580
  store i32 %2, ptr %__old, align 4, !dbg !6580
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6575, metadata !DIExpression()), !dbg !6580
  %3 = load i32, ptr %new.addr, align 4, !dbg !6580
  store i32 %3, ptr %__new, align 4, !dbg !6580
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6576, metadata !DIExpression()), !dbg !6580
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6580
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6580
  store ptr %counter, ptr %__ptr, align 8, !dbg !6580
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6580
  %6 = load i32, ptr %__old, align 4, !dbg !6580
  %7 = load i32, ptr %__new, align 4, !dbg !6580
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #10, !dbg !6580, !srcloc !6581
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6580
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6580
  %9 = icmp ult i8 %asmresult, 2, !dbg !6580
  call void @llvm.assume(i1 %9), !dbg !6580
  store i8 %asmresult, ptr %success, align 1, !dbg !6580
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !6580
  %10 = load i8, ptr %success, align 1, !dbg !6582, !range !6584, !noundef !537
  %tobool = trunc i8 %10 to i1, !dbg !6582
  %lnot = xor i1 %tobool, true, !dbg !6582
  %lnot2 = xor i1 %lnot, true, !dbg !6582
  %lnot3 = xor i1 %lnot2, true, !dbg !6582
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6582
  %conv = sext i32 %lnot.ext to i64, !dbg !6582
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6582
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6582
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6580

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6582
  %12 = load ptr, ptr %_old, align 8, !dbg !6582
  store i32 %11, ptr %12, align 4, !dbg !6582
  br label %if.end, !dbg !6582

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6580, !range !6584, !noundef !537
  %tobool5 = trunc i8 %13 to i1, !dbg !6580
  %lnot6 = xor i1 %tobool5, true, !dbg !6580
  %lnot8 = xor i1 %lnot6, true, !dbg !6580
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6580
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6580
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6580
  store i64 %expval11, ptr %tmp, align 8, !dbg !6582
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #10, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #10, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #10, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #10, !dbg !6585
  %14 = load i64, ptr %tmp, align 8, !dbg !6580
  %tobool12 = icmp ne i64 %14, 0, !dbg !6585
  ret i1 %tobool12, !dbg !6586
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_file_net_put_net(ptr noundef %seq) #0 align 16 !dbg !6587 {
entry:
  %seq.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6591, metadata !DIExpression()), !dbg !6593
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #10, !dbg !6594
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !6592, metadata !DIExpression()), !dbg !6595
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !6596
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6597
  %1 = load ptr, ptr %private, align 8, !dbg !6597
  store ptr %1, ptr %priv, align 8, !dbg !6595
  %2 = load ptr, ptr %priv, align 8, !dbg !6598
  %net = getelementptr inbounds %struct.seq_net_private, ptr %2, i32 0, i32 0, !dbg !6599
  %3 = load ptr, ptr %net, align 8, !dbg !6599
  %4 = load ptr, ptr %priv, align 8, !dbg !6600
  %ns_tracker = getelementptr inbounds %struct.seq_net_private, ptr %4, i32 0, i32 1, !dbg !6601
  call void @put_net_track(ptr noundef %3, ptr noundef %ns_tracker) #11, !dbg !6602
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #10, !dbg !6603
  ret void, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6604 dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @single_open_net(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6605 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %de = alloca ptr, align 8
  %net = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6607, metadata !DIExpression()), !dbg !6612
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6608, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #10, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %de, metadata !6609, metadata !DIExpression()), !dbg !6615
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6616
  %call = call ptr @PDE(ptr noundef %0) #11, !dbg !6617
  store ptr %call, ptr %de, align 8, !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !6618
  call void @llvm.dbg.declare(metadata ptr %net, metadata !6610, metadata !DIExpression()), !dbg !6619
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6611, metadata !DIExpression()), !dbg !6621
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6622
  %call1 = call ptr @get_proc_net(ptr noundef %1) #11, !dbg !6623
  store ptr %call1, ptr %net, align 8, !dbg !6624
  %2 = load ptr, ptr %net, align 8, !dbg !6625
  %tobool = icmp ne ptr %2, null, !dbg !6625
  br i1 %tobool, label %if.end, label %if.then, !dbg !6627

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !6628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6628

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6629
  %4 = load ptr, ptr %de, align 8, !dbg !6630
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 8, !dbg !6631
  %6 = load ptr, ptr %5, align 8, !dbg !6631
  %7 = load ptr, ptr %net, align 8, !dbg !6632
  %call2 = call i32 @single_open(ptr noundef %3, ptr noundef %6, ptr noundef %7) #11, !dbg !6633
  store i32 %call2, ptr %err, align 4, !dbg !6634
  %8 = load i32, ptr %err, align 4, !dbg !6635
  %tobool3 = icmp ne i32 %8, 0, !dbg !6635
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6637

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %net, align 8, !dbg !6638
  call void @put_net(ptr noundef %9) #11, !dbg !6639
  br label %if.end5, !dbg !6639

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load i32, ptr %err, align 4, !dbg !6640
  store i32 %10, ptr %retval, align 4, !dbg !6641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6641

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !6642
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !6642
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #10, !dbg !6642
  %11 = load i32, ptr %retval, align 4, !dbg !6642
  ret i32 %11, !dbg !6642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @single_release_net(ptr noundef %ino, ptr noundef %f) #0 align 16 !dbg !6643 {
entry:
  %ino.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %seq = alloca ptr, align 8
  store ptr %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !6645, metadata !DIExpression()), !dbg !6648
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6646, metadata !DIExpression()), !dbg !6649
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #10, !dbg !6650
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6647, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6652
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6653
  %1 = load ptr, ptr %private_data, align 8, !dbg !6653
  store ptr %1, ptr %seq, align 8, !dbg !6651
  %2 = load ptr, ptr %seq, align 8, !dbg !6654
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !6655
  %3 = load ptr, ptr %private, align 8, !dbg !6655
  call void @put_net(ptr noundef %3) #11, !dbg !6656
  %4 = load ptr, ptr %ino.addr, align 8, !dbg !6657
  %5 = load ptr, ptr %f.addr, align 8, !dbg !6658
  %call = call i32 @single_release(ptr noundef %4, ptr noundef %5) #11, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #10, !dbg !6660
  ret i32 %call, !dbg !6661
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6662 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6665 dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !6666 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6671, metadata !DIExpression()), !dbg !6672
  %0 = load i64, ptr %error.addr, align 8, !dbg !6673
  %1 = inttoptr i64 %0 to ptr, !dbg !6674
  ret ptr %1, !dbg !6675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_proc_task_net(ptr noundef %dir) #0 align 16 !dbg !6676 {
entry:
  %dir.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %net = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6680, metadata !DIExpression()), !dbg !6684
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #10, !dbg !6685
  call void @llvm.dbg.declare(metadata ptr %task, metadata !6681, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #10, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6682, metadata !DIExpression()), !dbg !6688
  call void @llvm.lifetime.start.p0(i64 8, ptr %net) #10, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %net, metadata !6683, metadata !DIExpression()), !dbg !6690
  store ptr null, ptr %net, align 8, !dbg !6690
  call void @rcu_read_lock() #11, !dbg !6691
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6692
  %call = call ptr @proc_pid(ptr noundef %0) #11, !dbg !6693
  %call1 = call ptr @pid_task(ptr noundef %call, i32 noundef 0) #11, !dbg !6694
  store ptr %call1, ptr %task, align 8, !dbg !6695
  %1 = load ptr, ptr %task, align 8, !dbg !6696
  %cmp = icmp ne ptr %1, null, !dbg !6698
  br i1 %cmp, label %if.then, label %if.end5, !dbg !6699

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %task, align 8, !dbg !6700
  call void @task_lock(ptr noundef %2) #11, !dbg !6702
  %3 = load ptr, ptr %task, align 8, !dbg !6703
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103, !dbg !6704
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !6704
  store ptr %4, ptr %ns, align 8, !dbg !6705
  %5 = load ptr, ptr %ns, align 8, !dbg !6706
  %cmp2 = icmp ne ptr %5, null, !dbg !6708
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !6709

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %ns, align 8, !dbg !6710
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 5, !dbg !6711
  %7 = load ptr, ptr %net_ns, align 8, !dbg !6711
  %call4 = call ptr @get_net(ptr noundef %7) #11, !dbg !6712
  store ptr %call4, ptr %net, align 8, !dbg !6713
  br label %if.end, !dbg !6714

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load ptr, ptr %task, align 8, !dbg !6715
  call void @task_unlock(ptr noundef %8) #11, !dbg !6716
  br label %if.end5, !dbg !6717

if.end5:                                          ; preds = %if.end, %entry
  call void @rcu_read_unlock() #11, !dbg !6718
  %9 = load ptr, ptr %net, align 8, !dbg !6719
  call void @llvm.lifetime.end.p0(i64 8, ptr %net) #10, !dbg !6720
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #10, !dbg !6720
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #10, !dbg !6720
  ret ptr %9, !dbg !6721
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6722 dso_local ptr @proc_lookup_de(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !6725 {
entry:
  call void @__rcu_read_lock() #11, !dbg !6727
  br label %do.body, !dbg !6728

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6729

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6731

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6732

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6734
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6735 dso_local ptr @pid_task(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_pid(ptr noundef %inode) #3 align 16 !dbg !6738 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6744
  %call = call ptr @PROC_I(ptr noundef %0) #11, !dbg !6745
  %pid = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 0, !dbg !6746
  %1 = load ptr, ptr %pid, align 8, !dbg !6746
  ret ptr %1, !dbg !6747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #3 align 16 !dbg !6748 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6753, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6755
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !6756
  call void @spin_lock(ptr noundef %alloc_lock) #11, !dbg !6757
  ret void, !dbg !6758
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #3 align 16 !dbg !6759 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6761, metadata !DIExpression()), !dbg !6762
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6763
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !6764
  call void @spin_unlock(ptr noundef %alloc_lock) #11, !dbg !6765
  ret void, !dbg !6766
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !6767 {
entry:
  br label %do.body, !dbg !6768

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6769

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !6771
  br label %do.body1, !dbg !6772

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6773

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6776 dso_local void @__rcu_read_lock() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !6777 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6784
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6784
  call void @_raw_spin_lock(ptr noundef %1) #11, !dbg !6784
  ret void, !dbg !6785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6786 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !6791 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6793, metadata !DIExpression()), !dbg !6794
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6795
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6795
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !6795
  ret void, !dbg !6796
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6797 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6798 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !6799 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6805
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6806
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6806
  ret ptr %1, !dbg !6807
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6808 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6811 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6815, metadata !DIExpression()), !dbg !6816
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6817
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6818
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6818
  ret ptr %1, !dbg !6819
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6820 dso_local i32 @proc_readdir_de(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_net_ns_init(ptr noundef %net) #0 align 16 !dbg !6823 {
entry:
  %retval = alloca i32, align 4
  %net.addr = alloca ptr, align 8
  %netd = alloca ptr, align 8
  %net_statd = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.rb_root, align 8
  %tmp = alloca %struct.kuid_t, align 4
  %tmp8 = alloca %struct.kgid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6825, metadata !DIExpression()), !dbg !6833
  call void @llvm.lifetime.start.p0(i64 8, ptr %netd) #10, !dbg !6834
  call void @llvm.dbg.declare(metadata ptr %netd, metadata !6826, metadata !DIExpression()), !dbg !6835
  call void @llvm.lifetime.start.p0(i64 8, ptr %net_statd) #10, !dbg !6834
  call void @llvm.dbg.declare(metadata ptr %net_statd, metadata !6827, metadata !DIExpression()), !dbg !6836
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #10, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6828, metadata !DIExpression()), !dbg !6838
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #10, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6829, metadata !DIExpression()), !dbg !6840
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6830, metadata !DIExpression()), !dbg !6842
  store i32 -12, ptr %err, align 4, !dbg !6843
  %0 = load ptr, ptr @proc_dir_entry_cache, align 8, !dbg !6844
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 3264) #11, !dbg !6845
  store ptr %call, ptr %netd, align 8, !dbg !6846
  %1 = load ptr, ptr %netd, align 8, !dbg !6847
  %tobool = icmp ne ptr %1, null, !dbg !6847
  br i1 %tobool, label %if.end, label %if.then, !dbg !6849

if.then:                                          ; preds = %entry
  br label %out, !dbg !6850

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %netd, align 8, !dbg !6851
  %subdir = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 18, !dbg !6852
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral, i32 0, i32 0, !dbg !6853
  store ptr null, ptr %rb_node, align 8, !dbg !6853
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %subdir, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6853
  %3 = load ptr, ptr %net.addr, align 8, !dbg !6854
  %4 = load ptr, ptr %netd, align 8, !dbg !6855
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 10, !dbg !6856
  store ptr %3, ptr %data, align 8, !dbg !6857
  %5 = load ptr, ptr %netd, align 8, !dbg !6858
  %nlink = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 13, !dbg !6859
  store i32 2, ptr %nlink, align 8, !dbg !6860
  %6 = load ptr, ptr %netd, align 8, !dbg !6861
  %namelen = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 23, !dbg !6862
  store i8 3, ptr %namelen, align 1, !dbg !6863
  %7 = load ptr, ptr %netd, align 8, !dbg !6864
  %parent = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 17, !dbg !6865
  store ptr @proc_root, ptr %parent, align 8, !dbg !6866
  %8 = load ptr, ptr %netd, align 8, !dbg !6867
  %inline_name = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 24, !dbg !6868
  %arraydecay = getelementptr inbounds [0 x i8], ptr %inline_name, i64 0, i64 0, !dbg !6867
  %9 = load ptr, ptr %netd, align 8, !dbg !6869
  %name = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 20, !dbg !6870
  store ptr %arraydecay, ptr %name, align 8, !dbg !6871
  %10 = load ptr, ptr %netd, align 8, !dbg !6872
  %name1 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 20, !dbg !6873
  %11 = load ptr, ptr %name1, align 8, !dbg !6873
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 @.str, i64 4, i1 false), !dbg !6874
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !6875
  %12 = load ptr, ptr %net.addr, align 8, !dbg !6876
  %user_ns = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 12, !dbg !6877
  %13 = load ptr, ptr %user_ns, align 8, !dbg !6877
  %call2 = call i32 @make_kuid(ptr noundef %13, i32 noundef 0) #11, !dbg !6875
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !6875
  store i32 %call2, ptr %coerce.dive, align 4, !dbg !6875
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !6875
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !6875
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6878
  %14 = load i32, ptr %coerce.dive3, align 4, !dbg !6878
  %call4 = call zeroext i1 @uid_valid(i32 %14) #11, !dbg !6878
  br i1 %call4, label %if.end7, label %if.then5, !dbg !6880

if.then5:                                         ; preds = %if.end
  %15 = load ptr, ptr %netd, align 8, !dbg !6881
  %uid6 = getelementptr inbounds %struct.proc_dir_entry, ptr %15, i32 0, i32 14, !dbg !6882
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %uid6, i64 4, i1 false), !dbg !6882
  br label %if.end7, !dbg !6883

if.end7:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp8) #10, !dbg !6884
  %16 = load ptr, ptr %net.addr, align 8, !dbg !6885
  %user_ns9 = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 12, !dbg !6886
  %17 = load ptr, ptr %user_ns9, align 8, !dbg !6886
  %call10 = call i32 @make_kgid(ptr noundef %17, i32 noundef 0) #11, !dbg !6884
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, ptr %tmp8, i32 0, i32 0, !dbg !6884
  store i32 %call10, ptr %coerce.dive11, align 4, !dbg !6884
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %tmp8, i64 4, i1 false), !dbg !6884
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp8) #10, !dbg !6884
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6887
  %18 = load i32, ptr %coerce.dive12, align 4, !dbg !6887
  %call13 = call zeroext i1 @gid_valid(i32 %18) #11, !dbg !6887
  br i1 %call13, label %if.end16, label %if.then14, !dbg !6889

if.then14:                                        ; preds = %if.end7
  %19 = load ptr, ptr %netd, align 8, !dbg !6890
  %gid15 = getelementptr inbounds %struct.proc_dir_entry, ptr %19, i32 0, i32 15, !dbg !6891
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 8 %gid15, i64 4, i1 false), !dbg !6891
  br label %if.end16, !dbg !6892

if.end16:                                         ; preds = %if.then14, %if.end7
  %20 = load ptr, ptr %netd, align 8, !dbg !6893
  %coerce.dive17 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6894
  %21 = load i32, ptr %coerce.dive17, align 4, !dbg !6894
  %coerce.dive18 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6894
  %22 = load i32, ptr %coerce.dive18, align 4, !dbg !6894
  call void @proc_set_user(ptr noundef %20, i32 %21, i32 %22) #11, !dbg !6894
  %23 = load ptr, ptr %netd, align 8, !dbg !6895
  call void @pde_force_lookup(ptr noundef %23) #11, !dbg !6896
  store i32 -17, ptr %err, align 4, !dbg !6897
  %24 = load ptr, ptr %net.addr, align 8, !dbg !6898
  %25 = load ptr, ptr %netd, align 8, !dbg !6899
  %call19 = call ptr @proc_net_mkdir(ptr noundef %24, ptr noundef @.str.3, ptr noundef %25) #11, !dbg !6900
  store ptr %call19, ptr %net_statd, align 8, !dbg !6901
  %26 = load ptr, ptr %net_statd, align 8, !dbg !6902
  %tobool20 = icmp ne ptr %26, null, !dbg !6902
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6904

if.then21:                                        ; preds = %if.end16
  br label %free_net, !dbg !6905

if.end22:                                         ; preds = %if.end16
  %27 = load ptr, ptr %netd, align 8, !dbg !6906
  %28 = load ptr, ptr %net.addr, align 8, !dbg !6907
  %proc_net = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 19, !dbg !6908
  store ptr %27, ptr %proc_net, align 8, !dbg !6909
  %29 = load ptr, ptr %net_statd, align 8, !dbg !6910
  %30 = load ptr, ptr %net.addr, align 8, !dbg !6911
  %proc_net_stat = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 20, !dbg !6912
  store ptr %29, ptr %proc_net_stat, align 16, !dbg !6913
  store i32 0, ptr %retval, align 4, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

free_net:                                         ; preds = %if.then21
  call void @llvm.dbg.label(metadata !6831), !dbg !6915
  %31 = load ptr, ptr %netd, align 8, !dbg !6916
  call void @pde_free(ptr noundef %31) #11, !dbg !6917
  br label %out, !dbg !6917

out:                                              ; preds = %free_net, %if.then
  call void @llvm.dbg.label(metadata !6832), !dbg !6918
  %32 = load i32, ptr %err, align 4, !dbg !6919
  store i32 %32, ptr %retval, align 4, !dbg !6920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6920

cleanup:                                          ; preds = %out, %if.end22
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !6921
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #10, !dbg !6921
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #10, !dbg !6921
  call void @llvm.lifetime.end.p0(i64 8, ptr %net_statd) #10, !dbg !6921
  call void @llvm.lifetime.end.p0(i64 8, ptr %netd) #10, !dbg !6921
  %33 = load i32, ptr %retval, align 4, !dbg !6921
  ret i32 %33, !dbg !6921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_net_ns_exit(ptr noundef %net) #0 align 16 !dbg !6922 {
entry:
  %net.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6924, metadata !DIExpression()), !dbg !6925
  %0 = load ptr, ptr %net.addr, align 8, !dbg !6926
  %proc_net = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 19, !dbg !6927
  %1 = load ptr, ptr %proc_net, align 8, !dbg !6927
  call void @remove_proc_entry(ptr noundef @.str.3, ptr noundef %1) #11, !dbg !6928
  %2 = load ptr, ptr %net.addr, align 8, !dbg !6929
  %proc_net1 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 19, !dbg !6930
  %3 = load ptr, ptr %proc_net1, align 8, !dbg !6930
  call void @pde_free(ptr noundef %3) #11, !dbg !6931
  ret void, !dbg !6932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #3 align 16 !dbg !6933 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6939, metadata !DIExpression()), !dbg !6941
  %0 = load ptr, ptr %k.addr, align 8, !dbg !6942
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6943
  %or = or i32 %1, 256, !dbg !6944
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #11, !dbg !6945
  ret ptr %call, !dbg !6946
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #3 align 16 !dbg !6947 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6951, metadata !DIExpression()), !dbg !6953
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6955
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6955
  store i32 %0, ptr %val, align 4, !dbg !6955
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6956
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6956
  ret i32 %1, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #3 align 16 !dbg !6957 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6961, metadata !DIExpression()), !dbg !6962
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6963
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6963
  %call = call i32 @__kuid_val(i32 %0) #11, !dbg !6963
  %cmp = icmp ne i32 %call, -1, !dbg !6964
  ret i1 %cmp, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !6966 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6970, metadata !DIExpression()), !dbg !6972
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6971, metadata !DIExpression()), !dbg !6973
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6974
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6974
  store i32 %0, ptr %val, align 4, !dbg !6974
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6975
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6975
  ret i32 %1, !dbg !6975
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #3 align 16 !dbg !6976 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6980, metadata !DIExpression()), !dbg !6981
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6982
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6982
  %call = call i32 @__kgid_val(i32 %0) #11, !dbg !6982
  %cmp = icmp ne i32 %call, -1, !dbg !6983
  ret i1 %cmp, !dbg !6984
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6985 dso_local void @proc_set_user(ptr noundef, i32, i32) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_net_mkdir(ptr noundef %net, ptr noundef %name, ptr noundef %parent) #3 align 16 !dbg !6988 {
entry:
  %net.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %net, ptr %net.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %net.addr, metadata !6992, metadata !DIExpression()), !dbg !6995
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6993, metadata !DIExpression()), !dbg !6996
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6994, metadata !DIExpression()), !dbg !6997
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6998
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !6999
  %2 = load ptr, ptr %net.addr, align 8, !dbg !7000
  %call = call ptr @_proc_mkdir(ptr noundef %0, i16 noundef zeroext 0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #11, !dbg !7001
  ret ptr %call, !dbg !7002
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7003 dso_local void @pde_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7004 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !7005 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7009, metadata !DIExpression()), !dbg !7010
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7011
  %0 = load i32, ptr %val, align 4, !dbg !7011
  ret i32 %0, !dbg !7012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !7013 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7017, metadata !DIExpression()), !dbg !7018
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7019
  %0 = load i32, ptr %val, align 4, !dbg !7019
  ret i32 %0, !dbg !7020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7021 dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7024 dso_local void @remove_proc_entry(ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527}
!llvm.ident = !{!5528}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "proc_net_seq_ops", scope: !2, file: !3, line: 86, type: !3581, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.proc_net.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22proc_net\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/proc_net.ll fs/proc/proc_net.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196, globals: !5465, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/proc/proc_net.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff29edcc724c6e40dffe5f1531798201")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !80, !87, !183, !191}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !89, file: !88, line: 147, baseType: !7, size: 32, elements: !180)
!88 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !88, line: 135, size: 512, elements: !90)
!90 = !{!91, !95, !97, !99, !103, !104, !120, !178, !179}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !89, file: !88, line: 136, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 137, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !89, file: !88, line: 138, baseType: !98, size: 32, offset: 128)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !89, file: !88, line: 139, baseType: !100, size: 16, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 24, baseType: !102)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !88, line: 150, baseType: !87, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !89, file: !88, line: 151, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !88, line: 64, baseType: !107)
!107 = !DISubroutineType(types: !108)
!108 = !{!98, !109, !98, !96, !110, !116}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 61, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !113, line: 72, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !113, line: 16, baseType: !115)
!115 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 52, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !113, line: 88, baseType: !119)
!119 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !89, file: !88, line: 152, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !88, line: 117, size: 256, elements: !123)
!123 = !{!124, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !122, file: !88, line: 118, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 174, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 172, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !126, file: !101, line: 173, baseType: !98, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !122, file: !88, line: 119, baseType: !130, size: 192, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !131, line: 41, baseType: !132)
!131 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !131, line: 37, size: 192, elements: !133)
!133 = !{!134, !172}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !132, file: !131, line: 38, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !136, line: 29, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !136, line: 17, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 18, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 18, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !140, file: !136, line: 19, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !144, line: 14, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !143, file: !144, line: 15, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !148, line: 44, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !148, line: 14, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 15, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 15, size: 32, elements: !153)
!153 = !{!154, !155, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !148, line: 16, baseType: !125, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 24, baseType: !156, size: 16)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 24, size: 16, elements: !157)
!157 = !{!158, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !156, file: !148, line: 25, baseType: !159, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !156, file: !148, line: 26, baseType: !159, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 28, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 28, size: 32, elements: !167)
!167 = !{!168, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !166, file: !148, line: 29, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !162, line: 24, baseType: !102)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !166, file: !148, line: 30, baseType: !169, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !132, file: !131, line: 39, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 190, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !101, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !101, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !89, file: !88, line: 153, baseType: !96, size: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !89, file: !88, line: 154, baseType: !96, size: 64, offset: 448)
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!182 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !184, line: 119, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!185 = !{!186, !187, !188, !189, !190}
!186 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!187 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!188 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!189 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!190 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 10, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!193 = !{!194, !195}
!194 = !DIEnumerator(name: "false", value: 0)
!195 = !DIEnumerator(name: "true", value: 1)
!196 = !{!197, !96, !198, !199, !115, !563, !5437, !5460, !2176, !5463, !651, !668}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !201, line: 746, size: 58368, elements: !202)
!201 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!202 = !{!203, !213, !214, !215, !220, !221, !222, !223, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !306, !317, !418, !422, !425, !456, !457, !458, !459, !470, !472, !473, !474, !475, !476, !477, !488, !489, !492, !493, !494, !495, !496, !497, !498, !499, !506, !507, !514, !515, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3390, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3438, !3444, !3445, !3446, !3447, !3448, !3450, !3453, !3460, !3465, !3468, !3471, !3474, !4712, !4840, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4878, !4879, !4880, !4889, !4897, !4898, !4899, !4900, !4901, !4906, !4907, !4908, !4911, !4912, !4915, !4918, !4921, !4929, !4932, !4933, !5019, !5020, !5021, !5022, !5023, !5029, !5030, !5031, !5032, !5035, !5036, !5039, !5042, !5043, !5046, !5047, !5048, !5051, !5052, !5053, !5054, !5055, !5056, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5087, !5088, !5094, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5106, !5178, !5180, !5181, !5182, !5183, !5184, !5185, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5214, !5215, !5216}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !200, file: !201, line: 752, baseType: !204, size: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !205, line: 56, size: 192, elements: !206)
!205 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!206 = !{!207, !208, !209, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !205, line: 57, baseType: !115, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !204, file: !205, line: 58, baseType: !115, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !204, file: !205, line: 59, baseType: !210, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !162, line: 27, baseType: !7)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !204, file: !205, line: 61, baseType: !210, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !200, file: !201, line: 754, baseType: !7, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !200, file: !201, line: 767, baseType: !96, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !200, file: !201, line: 768, baseType: !216, size: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !184, line: 113, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !184, line: 111, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !217, file: !184, line: 112, baseType: !125, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !201, line: 770, baseType: !7, size: 32, offset: 352)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !200, file: !201, line: 771, baseType: !7, size: 32, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !200, file: !201, line: 774, baseType: !98, size: 32, offset: 416)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !200, file: !201, line: 775, baseType: !224, size: 128, offset: 448)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !225, line: 58, size: 128, elements: !226)
!225 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!226 = !{!227, !233, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !224, file: !225, line: 59, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !229, line: 60, size: 64, elements: !230)
!229 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !229, line: 61, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !225, line: 60, baseType: !234, size: 32, offset: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !225, line: 60, size: 32, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !234, file: !225, line: 61, baseType: !7, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !234, file: !225, line: 62, baseType: !125, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !224, file: !225, line: 65, baseType: !169, size: 16, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !224, file: !225, line: 65, baseType: !169, size: 16, offset: 112)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !200, file: !201, line: 776, baseType: !7, size: 32, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !200, file: !201, line: 777, baseType: !115, size: 64, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !200, file: !201, line: 778, baseType: !199, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !200, file: !201, line: 787, baseType: !98, size: 32, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !200, file: !201, line: 788, baseType: !98, size: 32, offset: 800)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !200, file: !201, line: 790, baseType: !98, size: 32, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !200, file: !201, line: 792, baseType: !98, size: 32, offset: 864)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !200, file: !201, line: 793, baseType: !98, size: 32, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !200, file: !201, line: 794, baseType: !98, size: 32, offset: 928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !200, file: !201, line: 795, baseType: !7, size: 32, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !200, file: !201, line: 797, baseType: !251, size: 2048, offset: 1024)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !201, line: 551, size: 2048, elements: !252)
!252 = !{!253, !258, !266, !270, !271, !272, !273, !274, !275, !276, !277, !280, !281, !282, !283, !285, !288, !289, !290}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !251, file: !201, line: 553, baseType: !254, size: 128)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !201, line: 411, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !254, file: !201, line: 412, baseType: !115, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !254, file: !201, line: 413, baseType: !210, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !251, file: !201, line: 554, baseType: !259, size: 192, align: 64, offset: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !260, line: 5, size: 192, align: 64, elements: !261)
!260 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!261 = !{!262, !263, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !259, file: !260, line: 6, baseType: !115, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !259, file: !260, line: 7, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !259, file: !260, line: 8, baseType: !264, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !251, file: !201, line: 555, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !162, line: 31, baseType: !269)
!269 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !251, file: !201, line: 556, baseType: !267, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !251, file: !201, line: 558, baseType: !173, size: 128, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !251, file: !201, line: 559, baseType: !7, size: 32, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !251, file: !201, line: 561, baseType: !267, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !251, file: !201, line: 562, baseType: !267, size: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !251, file: !201, line: 563, baseType: !267, size: 64, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !251, file: !201, line: 564, baseType: !267, size: 64, offset: 832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !251, file: !201, line: 565, baseType: !278, size: 64, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !162, line: 30, baseType: !119)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !251, file: !201, line: 566, baseType: !267, size: 64, offset: 960)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !251, file: !201, line: 568, baseType: !267, size: 64, offset: 1024)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !251, file: !201, line: 571, baseType: !98, size: 32, offset: 1088)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !201, line: 572, baseType: !284, size: 64, offset: 1152)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !251, file: !201, line: 574, baseType: !286, size: 64, offset: 1216)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !201, line: 49, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !251, file: !201, line: 576, baseType: !286, size: 64, offset: 1280)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !251, file: !201, line: 578, baseType: !115, size: 64, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !251, file: !201, line: 588, baseType: !291, size: 512, align: 512, offset: 1536)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !201, line: 497, size: 512, align: 512, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !291, file: !201, line: 498, baseType: !267, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !291, file: !201, line: 499, baseType: !267, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !291, file: !201, line: 500, baseType: !267, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !291, file: !201, line: 501, baseType: !210, size: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !291, file: !201, line: 502, baseType: !210, size: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !291, file: !201, line: 503, baseType: !115, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !291, file: !201, line: 504, baseType: !115, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !291, file: !201, line: 505, baseType: !115, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !291, file: !201, line: 506, baseType: !302, size: 64, align: 64, offset: 448)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !201, line: 445, size: 64, align: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !302, file: !201, line: 446, baseType: !7, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !302, file: !201, line: 447, baseType: !7, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !200, file: !201, line: 798, baseType: !307, size: 384, offset: 3072)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !201, line: 592, size: 384, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !307, file: !201, line: 593, baseType: !173, size: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !307, file: !201, line: 594, baseType: !115, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !307, file: !201, line: 595, baseType: !115, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !307, file: !201, line: 596, baseType: !7, size: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !307, file: !201, line: 597, baseType: !102, size: 16, offset: 288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !307, file: !201, line: 598, baseType: !102, size: 16, offset: 304)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !307, file: !201, line: 600, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !200, file: !201, line: 799, baseType: !318, size: 1792, offset: 3456)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !201, line: 610, size: 1792, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !415, !416}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !318, file: !201, line: 611, baseType: !259, size: 192, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !318, file: !201, line: 618, baseType: !267, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !318, file: !201, line: 619, baseType: !267, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !318, file: !201, line: 620, baseType: !267, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !318, file: !201, line: 621, baseType: !267, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !318, file: !201, line: 622, baseType: !267, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !318, file: !201, line: 629, baseType: !278, size: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !318, file: !201, line: 630, baseType: !267, size: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !201, line: 631, baseType: !7, size: 32, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !318, file: !201, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !318, file: !201, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !318, file: !201, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !318, file: !201, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !318, file: !201, line: 662, baseType: !334, size: 512, offset: 704)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !335)
!335 = !{!336, !344, !345, !350, !411, !412, !413, !414}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !334, file: !6, line: 119, baseType: !337, size: 256)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !338, line: 9, size: 256, elements: !339)
!338 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !338, line: 10, baseType: !259, size: 192, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !337, file: !338, line: 11, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !343, line: 29, baseType: !278)
!343 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !334, file: !6, line: 120, baseType: !342, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !334, file: !6, line: 121, baseType: !346, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!5, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !334, file: !6, line: 122, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !353)
!353 = !{!354, !380, !381, !384, !394, !395, !406, !410}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !352, file: !6, line: 160, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !357)
!357 = !{!358, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !356, file: !6, line: 216, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 23, baseType: !143)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !356, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !356, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !356, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !356, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !356, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !356, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !356, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !356, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !356, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !356, file: !6, line: 227, baseType: !102, size: 16, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !356, file: !6, line: 228, baseType: !102, size: 16, offset: 208)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !356, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !356, file: !6, line: 235, baseType: !342, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !356, file: !6, line: 236, baseType: !349, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !356, file: !6, line: 237, baseType: !342, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !356, file: !6, line: 238, baseType: !349, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !356, file: !6, line: 239, baseType: !377, size: 4096, align: 512, offset: 512)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 4096, align: 512, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 8)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !352, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !352, file: !6, line: 162, baseType: !382, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !113, line: 96, baseType: !98)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !352, file: !6, line: 163, baseType: !385, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !386, line: 274, baseType: !387)
!386 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !386, line: 274, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !387, file: !386, line: 274, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !386, line: 69, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !386, line: 64, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !391, file: !386, line: 65, baseType: !7, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !352, file: !6, line: 164, baseType: !349, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !352, file: !6, line: 165, baseType: !396, size: 128, offset: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !338, line: 14, size: 128, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !396, file: !338, line: 15, baseType: !399, size: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !260, line: 26, size: 128, elements: !400)
!400 = !{!401, !405}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !399, file: !260, line: 27, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !260, line: 12, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !402, file: !260, line: 13, baseType: !264, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !399, file: !260, line: 28, baseType: !264, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !352, file: !6, line: 166, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!342}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !352, file: !6, line: 167, baseType: !342, size: 64, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !6, line: 123, baseType: !159, size: 8, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !334, file: !6, line: 124, baseType: !159, size: 8, offset: 456)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !334, file: !6, line: 125, baseType: !159, size: 8, offset: 464)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !334, file: !6, line: 126, baseType: !159, size: 8, offset: 472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !318, file: !201, line: 671, baseType: !334, size: 512, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !318, file: !201, line: 679, baseType: !417, size: 64, offset: 1728)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !200, file: !201, line: 800, baseType: !419, size: 64, offset: 5248)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !201, line: 800, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !200, file: !201, line: 809, baseType: !423, size: 64, offset: 5312)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !201, line: 70, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !200, file: !201, line: 825, baseType: !426, size: 2048, align: 512, offset: 5632)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !201, line: 509, size: 2048, align: 512, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !426, file: !201, line: 511, baseType: !267, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !426, file: !201, line: 512, baseType: !267, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !426, file: !201, line: 513, baseType: !267, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !426, file: !201, line: 514, baseType: !267, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !426, file: !201, line: 515, baseType: !267, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !426, file: !201, line: 516, baseType: !267, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !426, file: !201, line: 518, baseType: !267, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !426, file: !201, line: 519, baseType: !267, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !426, file: !201, line: 520, baseType: !278, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !426, file: !201, line: 522, baseType: !267, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !426, file: !201, line: 523, baseType: !267, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !426, file: !201, line: 524, baseType: !278, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !426, file: !201, line: 526, baseType: !278, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !426, file: !201, line: 527, baseType: !267, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !426, file: !201, line: 529, baseType: !267, size: 64, offset: 896)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !426, file: !201, line: 530, baseType: !267, size: 64, offset: 960)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !426, file: !201, line: 531, baseType: !267, size: 64, offset: 1024)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !426, file: !201, line: 532, baseType: !267, size: 64, offset: 1088)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !426, file: !201, line: 533, baseType: !267, size: 64, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !426, file: !201, line: 535, baseType: !267, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !426, file: !201, line: 536, baseType: !267, size: 64, offset: 1280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !426, file: !201, line: 537, baseType: !267, size: 64, offset: 1344)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !426, file: !201, line: 538, baseType: !267, size: 64, offset: 1408)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !426, file: !201, line: 539, baseType: !267, size: 64, offset: 1472)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !426, file: !201, line: 540, baseType: !267, size: 64, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !426, file: !201, line: 541, baseType: !267, size: 64, offset: 1600)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !426, file: !201, line: 542, baseType: !267, size: 64, offset: 1664)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !426, file: !201, line: 543, baseType: !267, size: 64, offset: 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !200, file: !201, line: 833, baseType: !7, size: 32, offset: 7680)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !200, file: !201, line: 836, baseType: !7, size: 32, offset: 7712)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !200, file: !201, line: 837, baseType: !98, size: 32, offset: 7744)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !200, file: !201, line: 838, baseType: !460, size: 64, offset: 7808)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !463, line: 19, baseType: !464)
!463 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !463, line: 19, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !464, file: !463, line: 19, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 1)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !200, file: !201, line: 839, baseType: !471, size: 64, offset: 7872)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !200, file: !201, line: 840, baseType: !462, size: 64, offset: 7936)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !200, file: !201, line: 841, baseType: !96, size: 64, offset: 8000)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !200, file: !201, line: 843, baseType: !102, size: 16, offset: 8064)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !200, file: !201, line: 845, baseType: !102, size: 16, offset: 8080)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !200, file: !201, line: 848, baseType: !98, size: 32, offset: 8096)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !200, file: !201, line: 849, baseType: !478, size: 32, offset: 8128)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !201, line: 718, size: 32, elements: !479)
!479 = !{!480, !487}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !478, file: !201, line: 724, baseType: !481, size: 32)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !201, line: 719, size: 32, elements: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !481, file: !201, line: 720, baseType: !159, size: 8)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !481, file: !201, line: 721, baseType: !159, size: 8, offset: 8)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !481, file: !201, line: 722, baseType: !159, size: 8, offset: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !481, file: !201, line: 723, baseType: !159, size: 8, offset: 24)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !478, file: !201, line: 725, baseType: !210, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !200, file: !201, line: 850, baseType: !173, size: 128, offset: 8192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !200, file: !201, line: 851, baseType: !490, size: 64, offset: 8320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !201, line: 60, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !200, file: !201, line: 855, baseType: !115, size: 64, offset: 8384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !200, file: !201, line: 856, baseType: !159, size: 8, offset: 8448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !200, file: !201, line: 857, baseType: !159, size: 8, offset: 8456)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !200, file: !201, line: 858, baseType: !98, size: 32, offset: 8480)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !200, file: !201, line: 859, baseType: !173, size: 128, offset: 8512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !200, file: !201, line: 860, baseType: !98, size: 32, offset: 8640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !200, file: !201, line: 861, baseType: !173, size: 128, offset: 8704)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !200, file: !201, line: 873, baseType: !500, size: 256, offset: 8832)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !201, line: 376, size: 256, elements: !501)
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !500, file: !201, line: 381, baseType: !115, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !500, file: !201, line: 384, baseType: !269, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !500, file: !201, line: 389, baseType: !269, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !500, file: !201, line: 392, baseType: !269, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !200, file: !201, line: 875, baseType: !173, size: 128, offset: 9088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !200, file: !201, line: 877, baseType: !508, size: 320, offset: 9216)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !509, line: 86, size: 320, elements: !510)
!509 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !508, file: !509, line: 87, baseType: !98, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !508, file: !509, line: 88, baseType: !173, size: 128, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !508, file: !509, line: 89, baseType: !173, size: 128, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !200, file: !201, line: 878, baseType: !259, size: 192, align: 64, offset: 9536)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !200, file: !201, line: 881, baseType: !516, size: 64, offset: 9728)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !518)
!518 = !{!519, !3309}
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !35, line: 734, baseType: !520, size: 10240)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !517, file: !35, line: 734, size: 10240, elements: !521)
!521 = !{!522, !526, !540, !3129, !3130, !3131, !3132, !3133, !3134, !3141, !3142, !3143, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3182, !3184, !3246, !3289, !3290, !3291, !3294, !3295, !3296, !3299, !3300, !3301, !3307, !3308}
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !35, line: 739, baseType: !523, size: 512, align: 512)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !35, line: 739, size: 512, align: 512, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !523, file: !35, line: 747, baseType: !125, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !520, file: !35, line: 750, baseType: !527, size: 128, offset: 512)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !528, line: 218, size: 128, elements: !529)
!528 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!529 = !{!530, !538, !539}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !528, line: 219, baseType: !531, size: 32)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !528, line: 219, size: 32, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !531, file: !528, line: 220, baseType: !135, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !531, file: !528, line: 221, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !528, line: 197, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 197, elements: !537)
!537 = !{}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !527, file: !528, line: 223, baseType: !7, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !527, file: !528, line: 224, baseType: !96, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !520, file: !35, line: 752, baseType: !541, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!115, !544, !115, !115, !115, !115}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !546)
!546 = !{!547, !561, !562, !564, !571, !583, !584, !585, !655, !867, !876, !3119, !3120, !3121, !3122, !3123, !3124, !3126, !3127, !3128}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !64, line: 995, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !64, line: 995, size: 128, elements: !549)
!549 = !{!550, !551, !560}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !548, file: !64, line: 996, baseType: !228, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !548, file: !64, line: 997, baseType: !552, size: 128, align: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !553)
!553 = !{!554, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !101, line: 233, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !552, file: !101, line: 234, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !555}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !548, file: !64, line: 998, baseType: !7, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !545, file: !64, line: 1005, baseType: !135, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !545, file: !64, line: 1006, baseType: !563, size: 32, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !101, line: 156, baseType: !7)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !545, file: !64, line: 1007, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !566, line: 13, baseType: !567)
!566 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !568, file: !101, line: 180, baseType: !278, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !545, file: !64, line: 1008, baseType: !572, size: 256, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !573, line: 66, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!574 = !{!575, !576, !577, !582}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !572, file: !573, line: 67, baseType: !565, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !572, file: !573, line: 68, baseType: !359, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !572, file: !573, line: 70, baseType: !578, size: 32, offset: 96)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !579, line: 15, size: 32, elements: !580)
!579 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !578, file: !579, line: 20, baseType: !125, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !572, file: !573, line: 72, baseType: !173, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !545, file: !64, line: 1009, baseType: !117, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !545, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !545, file: !64, line: 1011, baseType: !586, size: 256, offset: 640)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !587)
!587 = !{!588, !611, !644, !645, !653, !654}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !586, file: !64, line: 949, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !590, line: 34, baseType: !591)
!590 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !590, line: 25, size: 64, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !591, file: !590, line: 26, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !595, line: 27, baseType: !596)
!595 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !595, line: 13, size: 64, elements: !597)
!597 = !{!598, !610}
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !595, line: 14, baseType: !599, size: 32)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !595, line: 14, size: 32, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !599, file: !595, line: 15, baseType: !125, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 16, baseType: !603, size: 32)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 16, size: 32, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !603, file: !595, line: 18, baseType: !159, size: 8)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !603, file: !595, line: 19, baseType: !607, size: 24, offset: 8)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 3)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !596, file: !595, line: 26, baseType: !147, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !586, file: !64, line: 950, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !614)
!614 = !{!615, !616, !617, !618, !631, !632, !633, !634}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !613, file: !12, line: 61, baseType: !216, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !613, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !12, line: 63, baseType: !135, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !613, file: !12, line: 65, baseType: !619, size: 256, offset: 128)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 256, elements: !629)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !101, line: 194, size: 64, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !620, file: !101, line: 195, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !101, line: 199, baseType: !623, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !624, file: !101, line: 199, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!629 = !{!630}
!630 = !DISubrange(count: 4)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !613, file: !12, line: 66, baseType: !620, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !613, file: !12, line: 68, baseType: !130, size: 192, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !12, line: 69, baseType: !552, size: 128, align: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !613, file: !12, line: 70, baseType: !635, offset: 768)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, elements: !642)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !636, file: !12, line: 55, baseType: !98, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !636, file: !12, line: 56, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!642 = !{!643}
!643 = !DISubrange(count: -1)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !586, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !586, file: !64, line: 952, baseType: !646, size: 32, offset: 160)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !647, line: 23, baseType: !648)
!647 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 21, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !648, file: !647, line: 22, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !113, line: 49, baseType: !7)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !586, file: !64, line: 952, baseType: !646, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !586, file: !64, line: 953, baseType: !98, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !545, file: !64, line: 1012, baseType: !656, size: 64, offset: 896)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !659, line: 110, size: 1472, elements: !660)
!659 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!660 = !{!661, !662, !663, !670, !671, !672, !673, !674, !675, !676, !677, !683, !684, !685, !686, !687, !688, !812, !813, !814, !815, !816, !847, !850, !854, !862}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !658, file: !659, line: 111, baseType: !565, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !658, file: !659, line: 112, baseType: !646, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !658, file: !659, line: 113, baseType: !664, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !647, line: 28, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 26, size: 32, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !647, line: 27, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !113, line: 50, baseType: !7)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !658, file: !659, line: 114, baseType: !646, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !658, file: !659, line: 115, baseType: !664, size: 32, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !658, file: !659, line: 116, baseType: !646, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !658, file: !659, line: 117, baseType: !664, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !658, file: !659, line: 118, baseType: !646, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !658, file: !659, line: 119, baseType: !664, size: 32, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !658, file: !659, line: 120, baseType: !7, size: 32, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !658, file: !659, line: 121, baseType: !678, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !679, line: 24, baseType: !680)
!679 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 24, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !680, file: !679, line: 24, baseType: !267, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !658, file: !659, line: 122, baseType: !678, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !658, file: !659, line: 123, baseType: !678, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !658, file: !659, line: 124, baseType: !678, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !658, file: !659, line: 125, baseType: !678, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !658, file: !659, line: 127, baseType: !163, size: 8, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !658, file: !659, line: 129, baseType: !689, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !691, line: 195, size: 1728, elements: !692)
!691 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!692 = !{!693, !694, !699, !704, !713, !716, !717, !724, !725, !726, !727, !730, !731, !732, !734, !735, !776, !797}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !690, file: !691, line: 196, baseType: !216, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !690, file: !691, line: 197, baseType: !695, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !691, line: 28, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !101, line: 104, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !162, line: 26, baseType: !98)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 198, baseType: !700, size: 192, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 198, size: 192, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !700, file: !691, line: 199, baseType: !173, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !700, file: !691, line: 200, baseType: !259, size: 192, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !690, file: !691, line: 205, baseType: !705, size: 320, offset: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !706, line: 48, size: 320, elements: !707)
!706 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!707 = !{!708, !709, !710, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !705, file: !706, line: 49, baseType: !565, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !705, file: !706, line: 55, baseType: !565, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !705, file: !706, line: 57, baseType: !578, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !705, file: !706, line: 59, baseType: !359, size: 32, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !705, file: !706, line: 60, baseType: !173, size: 128, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !690, file: !691, line: 206, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !691, line: 206, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !690, file: !691, line: 207, baseType: !96, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 208, baseType: !718, size: 64, offset: 704)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 208, size: 64, elements: !719)
!719 = !{!720, !723}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !718, file: !691, line: 209, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !722, line: 8, baseType: !279)
!722 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !718, file: !691, line: 210, baseType: !721, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !690, file: !691, line: 212, baseType: !721, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !690, file: !691, line: 213, baseType: !646, size: 32, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !690, file: !691, line: 214, baseType: !664, size: 32, offset: 864)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !690, file: !691, line: 215, baseType: !728, size: 32, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !691, line: 31, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 110, baseType: !210)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !690, file: !691, line: 216, baseType: !102, size: 16, offset: 928)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !690, file: !691, line: 217, baseType: !102, size: 16, offset: 944)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !690, file: !691, line: 221, baseType: !733, size: 16, offset: 960)
!733 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !691, line: 228, baseType: !115, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 245, baseType: !736, size: 320, offset: 1088)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 245, size: 320, elements: !737)
!737 = !{!738, !767}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !736, file: !691, line: 246, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !691, line: 114, size: 320, elements: !740)
!740 = !{!741, !742, !754, !757, !766}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !739, file: !691, line: 116, baseType: !115, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !691, line: 117, baseType: !743, size: 64, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !691, line: 117, size: 64, elements: !744)
!744 = !{!745, !753}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !691, line: 118, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !691, line: 118, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !746, file: !691, line: 120, baseType: !169, size: 16)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !746, file: !691, line: 121, baseType: !750, size: 48, offset: 16)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 6)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !743, file: !691, line: 127, baseType: !115, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !691, line: 129, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !691, line: 102, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !739, file: !691, line: 130, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !691, line: 108, size: 192, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !759, file: !691, line: 109, baseType: !552, size: 128, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !759, file: !691, line: 110, baseType: !216, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !759, file: !691, line: 111, baseType: !764, size: 8, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !765)
!765 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !739, file: !691, line: 131, baseType: !92, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !691, line: 247, baseType: !768, size: 320)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !691, line: 247, size: 320, elements: !769)
!769 = !{!770, !771, !772, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !768, file: !691, line: 248, baseType: !115, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !768, file: !691, line: 249, baseType: !115, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !691, line: 250, baseType: !755, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !768, file: !691, line: 251, baseType: !758, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !768, file: !691, line: 252, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 260, baseType: !777, size: 256, offset: 1408)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 260, size: 256, elements: !778)
!778 = !{!779, !785}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !777, file: !691, line: 261, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !691, line: 134, size: 256, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !780, file: !691, line: 135, baseType: !96, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !780, file: !691, line: 136, baseType: !784, size: 256)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !629)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !691, line: 262, baseType: !786, size: 256)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !691, line: 262, size: 256, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !786, file: !691, line: 264, baseType: !173, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !786, file: !691, line: 265, baseType: !790, size: 128, offset: 128)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !791, line: 22, size: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!792 = !{!793, !796}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !790, file: !791, line: 23, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !791, line: 23, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !790, file: !791, line: 24, baseType: !115, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !690, file: !691, line: 280, baseType: !798, size: 64, offset: 1664)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !691, line: 176, size: 192, elements: !800)
!800 = !{!801, !810, !811}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !799, file: !691, line: 177, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !691, line: 171, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!98, !689, !806, !808, !689}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !799, file: !691, line: 178, baseType: !689, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !799, file: !691, line: 179, baseType: !755, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !658, file: !659, line: 130, baseType: !689, size: 64, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !658, file: !659, line: 131, baseType: !689, size: 64, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !658, file: !659, line: 132, baseType: !689, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !658, file: !659, line: 135, baseType: !96, size: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !658, file: !659, line: 137, baseType: !817, size: 64, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !819, line: 14, size: 1088, elements: !820)
!819 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!820 = !{!821, !822, !831, !832, !833, !834, !835, !836}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !818, file: !819, line: 15, baseType: !216, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !818, file: !819, line: 17, baseType: !823, size: 320, offset: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !824, line: 22, size: 320, elements: !825)
!824 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!825 = !{!826, !827, !828, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !824, line: 23, baseType: !359, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !824, line: 24, baseType: !278, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !823, file: !824, line: 26, baseType: !173, size: 128, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !823, file: !824, line: 28, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !818, file: !819, line: 19, baseType: !115, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !818, file: !819, line: 20, baseType: !565, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !818, file: !819, line: 23, baseType: !624, size: 128, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !818, file: !819, line: 24, baseType: !646, size: 32, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !818, file: !819, line: 29, baseType: !565, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !818, file: !819, line: 36, baseType: !837, size: 320, offset: 768)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !838, line: 15, size: 320, elements: !839)
!838 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!839 = !{!840, !841, !842, !843, !844, !845, !846}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !838, line: 16, baseType: !359, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !837, file: !838, line: 18, baseType: !98, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !837, file: !838, line: 19, baseType: !98, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !837, file: !838, line: 20, baseType: !98, size: 32, offset: 96)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !837, file: !838, line: 21, baseType: !98, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !837, file: !838, line: 22, baseType: !115, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !838, line: 23, baseType: !115, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !658, file: !659, line: 138, baseType: !848, size: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !647, line: 18, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !658, file: !659, line: 139, baseType: !851, size: 64, offset: 1216)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !853, line: 16, flags: DIFlagFwdDecl)
!853 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!854 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !658, file: !659, line: 140, baseType: !855, size: 64, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !659, line: 25, size: 64, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !856, file: !659, line: 26, baseType: !125, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !856, file: !659, line: 27, baseType: !98, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !856, file: !659, line: 28, baseType: !861, offset: 64)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, elements: !642)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 142, baseType: !863, size: 128, offset: 1344)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 142, size: 128, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !863, file: !659, line: 143, baseType: !98, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !863, file: !659, line: 144, baseType: !552, size: 128, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !545, file: !64, line: 1013, baseType: !868, size: 256, offset: 960)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !868, file: !64, line: 971, baseType: !115, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !868, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !868, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !868, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !868, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !868, file: !64, line: 976, baseType: !117, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !545, file: !64, line: 1014, baseType: !877, size: 128, offset: 1216)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !878, line: 8, size: 128, elements: !879)
!878 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!879 = !{!880, !3118}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !877, file: !878, line: 9, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !883, line: 70, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!884 = !{!885, !3115, !3116, !3117}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !882, file: !883, line: 71, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !888, line: 82, size: 1536, elements: !889)
!888 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!889 = !{!890, !891, !896, !904, !905, !920, !3082, !3084, !3097, !3098, !3099, !3100, !3101, !3107, !3108, !3109}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !887, file: !888, line: 84, baseType: !7, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !887, file: !888, line: 85, baseType: !892, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !386, line: 275, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !386, line: 275, size: 32, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !893, file: !386, line: 275, baseType: !390, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !887, file: !888, line: 86, baseType: !897, size: 128, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !898, line: 38, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!899 = !{!900, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !898, line: 39, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !897, file: !898, line: 39, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !887, file: !888, line: 87, baseType: !886, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !887, file: !888, line: 88, baseType: !906, size: 128, offset: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !888, line: 49, size: 128, elements: !907)
!907 = !{!908, !917}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !888, line: 50, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !888, line: 50, size: 64, elements: !910)
!910 = !{!911, !916}
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !888, line: 51, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !888, line: 51, size: 64, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !912, file: !888, line: 52, baseType: !210, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !912, file: !888, line: 52, baseType: !210, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !909, file: !888, line: 54, baseType: !267, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !906, file: !888, line: 56, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !887, file: !888, line: 89, baseType: !921, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !923)
!923 = !{!924, !925, !926, !927, !928, !929, !930, !933, !934, !1128, !2896, !2897, !2898, !2899, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !3064, !3067, !3068, !3069, !3078, !3079, !3080, !3081}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !922, file: !64, line: 642, baseType: !100, size: 16)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !922, file: !64, line: 643, baseType: !102, size: 16, offset: 16)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !922, file: !64, line: 644, baseType: !646, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !922, file: !64, line: 645, baseType: !173, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !922, file: !64, line: 646, baseType: !664, size: 32, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !922, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !922, file: !64, line: 650, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !922, file: !64, line: 651, baseType: !931, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !922, file: !64, line: 654, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !938)
!938 = !{!939, !943, !956, !962, !966, !970, !974, !978, !982, !986, !990, !991, !997, !1001, !1039, !1070, !1077, !1083, !1087, !1091, !1095, !1099, !1103, !1109, !1113}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !937, file: !64, line: 1967, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!886, !921, !886, !7}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !937, file: !64, line: 1968, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!92, !886, !921, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !949, line: 10, size: 128, elements: !950)
!949 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!950 = !{!951, !955}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !948, file: !949, line: 11, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !96}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !948, file: !949, line: 12, baseType: !96, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !937, file: !64, line: 1969, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!98, !960, !921, !98}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !679, line: 42, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !937, file: !64, line: 1970, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!931, !921, !98, !764}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !937, file: !64, line: 1972, baseType: !967, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!98, !886, !775, !98}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !937, file: !64, line: 1974, baseType: !971, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!98, !960, !921, !886, !100, !764}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !937, file: !64, line: 1976, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!98, !886, !921, !886}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !937, file: !64, line: 1977, baseType: !979, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!98, !921, !886}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !937, file: !64, line: 1978, baseType: !983, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!98, !960, !921, !886, !92}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !937, file: !64, line: 1980, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!98, !960, !921, !886, !100}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !937, file: !64, line: 1982, baseType: !979, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !937, file: !64, line: 1983, baseType: !992, size: 64, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!98, !960, !921, !886, !100, !995}
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !210)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !937, file: !64, line: 1985, baseType: !998, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!98, !960, !921, !886, !921, !886, !7}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !937, file: !64, line: 1987, baseType: !1002, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!98, !960, !886, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1020, !1029, !1030, !1036, !1037, !1038}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1006, file: !64, line: 227, baseType: !7, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1006, file: !64, line: 228, baseType: !100, size: 16, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !64, line: 241, baseType: !1011, size: 32, offset: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !64, line: 241, size: 32, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1011, file: !64, line: 242, baseType: !646, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1011, file: !64, line: 243, baseType: !1015, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1016, line: 16, baseType: !1017)
!1016 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 14, size: 32, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1017, file: !1016, line: 15, baseType: !651, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !64, line: 245, baseType: !1021, size: 32, offset: 96)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !64, line: 245, size: 32, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1021, file: !64, line: 246, baseType: !664, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1021, file: !64, line: 247, baseType: !1025, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1016, line: 20, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 18, size: 32, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1026, file: !1016, line: 19, baseType: !668, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1006, file: !64, line: 249, baseType: !117, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1006, file: !64, line: 250, baseType: !1031, size: 128, offset: 192)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !722, line: 13, size: 128, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1031, file: !722, line: 14, baseType: !721, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1031, file: !722, line: 15, baseType: !1035, size: 64, offset: 64)
!1035 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1006, file: !64, line: 251, baseType: !1031, size: 128, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1006, file: !64, line: 252, baseType: !1031, size: 128, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1006, file: !64, line: 259, baseType: !544, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !937, file: !64, line: 1988, baseType: !1040, size: 64, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!98, !960, !1043, !1045, !210, !7}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1047, line: 22, size: 1280, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1046, file: !1047, line: 23, baseType: !210, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1046, file: !1047, line: 24, baseType: !100, size: 16, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1046, file: !1047, line: 25, baseType: !7, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1046, file: !1047, line: 26, baseType: !729, size: 32, offset: 96)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1046, file: !1047, line: 27, baseType: !267, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1046, file: !1047, line: 28, baseType: !267, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1046, file: !1047, line: 41, baseType: !267, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1046, file: !1047, line: 42, baseType: !995, size: 32, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1046, file: !1047, line: 43, baseType: !995, size: 32, offset: 352)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1046, file: !1047, line: 44, baseType: !646, size: 32, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1046, file: !1047, line: 45, baseType: !664, size: 32, offset: 416)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1046, file: !1047, line: 46, baseType: !117, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1046, file: !1047, line: 47, baseType: !1031, size: 128, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1046, file: !1047, line: 48, baseType: !1031, size: 128, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1046, file: !1047, line: 49, baseType: !1031, size: 128, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1046, file: !1047, line: 50, baseType: !1031, size: 128, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1046, file: !1047, line: 51, baseType: !267, size: 64, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1046, file: !1047, line: 52, baseType: !267, size: 64, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1046, file: !1047, line: 53, baseType: !210, size: 32, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1046, file: !1047, line: 54, baseType: !210, size: 32, offset: 1184)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1046, file: !1047, line: 55, baseType: !267, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !937, file: !64, line: 1990, baseType: !1071, size: 64, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1074, !886, !775, !111}
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !113, line: 73, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !113, line: 15, baseType: !1035)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !937, file: !64, line: 1991, baseType: !1078, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!98, !921, !1081, !267, !267}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !937, file: !64, line: 1993, baseType: !1084, size: 64, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!98, !921, !98}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !937, file: !64, line: 1994, baseType: !1088, size: 64, offset: 1152)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!98, !921, !886, !544, !7, !100}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !937, file: !64, line: 1997, baseType: !1092, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!98, !960, !921, !544, !100}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !937, file: !64, line: 1999, baseType: !1096, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!931, !960, !886, !98}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !937, file: !64, line: 2001, baseType: !1100, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!98, !960, !886, !931, !98}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !937, file: !64, line: 2003, baseType: !1104, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!98, !960, !886, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !937, file: !64, line: 2005, baseType: !1110, size: 64, offset: 1472)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!98, !886, !1107}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !937, file: !64, line: 2006, baseType: !1114, size: 64, offset: 1536)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1117, !921}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !1119)
!1119 = !{!1120, !1127}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1118, file: !64, line: 3193, baseType: !1121, size: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1122, line: 296, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1121, file: !1122, line: 297, baseType: !135, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1121, file: !1122, line: 299, baseType: !197, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1121, file: !1122, line: 300, baseType: !96, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1118, file: !64, line: 3194, baseType: !210, size: 32, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !922, file: !64, line: 655, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !2409, !2541, !2581, !2664, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2681, !2685, !2686, !2689, !2692, !2695, !2698, !2699, !2700, !2741, !2767, !2768, !2769, !2770, !2771, !2772, !2775, !2779, !2788, !2789, !2790, !2791, !2850, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1130, file: !64, line: 1191, baseType: !173, size: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1130, file: !64, line: 1192, baseType: !995, size: 32, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1130, file: !64, line: 1193, baseType: !163, size: 8, offset: 160)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1130, file: !64, line: 1194, baseType: !115, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1130, file: !64, line: 1195, baseType: !117, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1130, file: !64, line: 1196, baseType: !1138, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1149, !1153, !1157, !1161, !2397, !2398, !2399, !2401, !2402, !2403, !2405, !2406, !2407, !2408}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1139, file: !64, line: 2367, baseType: !92, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1139, file: !64, line: 2368, baseType: !98, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1139, file: !64, line: 2376, baseType: !1144, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!98, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !883, line: 21, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1139, file: !64, line: 2377, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1139, file: !64, line: 2378, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!886, !1138, !98, !92, !96}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1139, file: !64, line: 2380, baseType: !1158, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1129}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1139, file: !64, line: 2381, baseType: !1162, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1171, !2040, !2066, !2067, !2068, !2069, !2073, !2076, !2077, !2078, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2146, !2150, !2170, !2190, !2191, !2192, !2193, !2202, !2225, !2226, !2229, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2243, !2244, !2355, !2363, !2364, !2365, !2367, !2371, !2372, !2376, !2377, !2378, !2379, !2381, !2382, !2383, !2390, !2391, !2392, !2396}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1163, file: !20, line: 403, baseType: !19, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1163, file: !20, line: 406, baseType: !173, size: 128, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !20, line: 409, baseType: !1168, size: 448, offset: 192)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 56)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1163, file: !20, line: 417, baseType: !1172, size: 768, offset: 640)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1173)
!1173 = !{!1174, !2033, !2034, !2035, !2038}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1172, file: !20, line: 46, baseType: !1175, size: 512)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1176, line: 64, size: 512, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1177 = !{!1178, !1179, !1180, !1182, !1226, !1889, !2023, !2028, !2029, !2030, !2031, !2032}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1175, file: !1176, line: 65, baseType: !92, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1175, file: !1176, line: 66, baseType: !173, size: 128, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1175, file: !1176, line: 67, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1175, file: !1176, line: 68, baseType: !1183, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1176, line: 168, size: 768, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1184, file: !1176, line: 169, baseType: !173, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1184, file: !1176, line: 170, baseType: !135, size: 32, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1184, file: !1176, line: 171, baseType: !1175, size: 512, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1184, file: !1176, line: 172, baseType: !1190, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1176, line: 133, size: 192, elements: !1193)
!1193 = !{!1194, !1201, !1206}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1192, file: !1176, line: 134, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!98, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1192, file: !1176, line: 135, baseType: !1202, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!92, !1199}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1192, file: !1176, line: 136, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!98, !1199, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1176, line: 125, size: 20736, elements: !1213)
!1213 = !{!1214, !1216, !1220, !1221, !1225}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1212, file: !1176, line: 126, baseType: !1215, size: 192)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 192, elements: !608)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1212, file: !1176, line: 127, baseType: !1217, size: 4096, offset: 192)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 4096, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1212, file: !1176, line: 128, baseType: !98, size: 32, offset: 4288)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1212, file: !1176, line: 129, baseType: !1222, size: 16384, offset: 4320)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16384, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 2048)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1212, file: !1176, line: 130, baseType: !98, size: 32, offset: 20704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1175, file: !1176, line: 69, baseType: !1227, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1176, line: 116, size: 384, elements: !1230)
!1230 = !{!1231, !1235, !1254, !1849, !1879, !1883}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1229, file: !1176, line: 117, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1181}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1229, file: !1176, line: 118, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1239, line: 254, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1240 = !{!1241, !1250}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1238, file: !1239, line: 255, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1074, !1181, !1245, !775}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1239, line: 30, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1246, file: !1239, line: 31, baseType: !92, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1246, file: !1239, line: 32, baseType: !100, size: 16, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1238, file: !1239, line: 256, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1074, !1181, !1245, !92, !111}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1229, file: !1176, line: 119, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1239, line: 84, size: 320, elements: !1259)
!1259 = !{!1260, !1261, !1265, !1845, !1847}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1258, file: !1239, line: 85, baseType: !92, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1258, file: !1239, line: 86, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!100, !1181, !1245, !98}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1258, file: !1239, line: 88, baseType: !1266, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!100, !1181, !1269, !98}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1239, line: 175, size: 512, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1836, !1840, !1841}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1270, file: !1239, line: 176, baseType: !1246, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1270, file: !1239, line: 177, baseType: !111, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1270, file: !1239, line: 178, baseType: !96, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1270, file: !1239, line: 179, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1828, !1829, !1830, !1833, !1834, !1835}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1280, file: !64, line: 473, baseType: !921, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1280, file: !64, line: 474, baseType: !1121, size: 128, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1280, file: !64, line: 475, baseType: !705, size: 320, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1280, file: !64, line: 476, baseType: !197, size: 32, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1280, file: !64, line: 477, baseType: !125, size: 32, offset: 544)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1280, file: !64, line: 482, baseType: !399, size: 128, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1280, file: !64, line: 483, baseType: !115, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1280, file: !64, line: 484, baseType: !115, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1280, file: !64, line: 485, baseType: !1291, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1294)
!1294 = !{!1295, !1598, !1668, !1672, !1676, !1682, !1688, !1692, !1697, !1701, !1705, !1709, !1792, !1796, !1800, !1804, !1809, !1813, !1820, !1824}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1293, file: !64, line: 405, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!98, !1299, !1596}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1301)
!1301 = !{!1302, !1303, !1590, !1595}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1300, file: !35, line: 75, baseType: !115, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !35, line: 83, baseType: !1304, size: 320, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !35, line: 83, size: 320, elements: !1305)
!1305 = !{!1306, !1327, !1341, !1345, !1589}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !35, line: 84, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !35, line: 84, size: 320, elements: !1308)
!1308 = !{!1309, !1320, !1321, !1326}
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !35, line: 90, baseType: !1310, size: 128)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !35, line: 90, size: 128, elements: !1311)
!1311 = !{!1312, !1313, !1318, !1319}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1310, file: !35, line: 91, baseType: !173, size: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !35, line: 94, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !35, line: 94, size: 128, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1314, file: !35, line: 96, baseType: !96, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1314, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1310, file: !35, line: 102, baseType: !173, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1310, file: !35, line: 103, baseType: !173, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1307, file: !35, line: 106, baseType: !1279, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !35, line: 107, baseType: !1322, size: 64, offset: 192)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !35, line: 107, size: 64, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1322, file: !35, line: 108, baseType: !115, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1322, file: !35, line: 109, baseType: !115, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1307, file: !35, line: 117, baseType: !115, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !35, line: 119, baseType: !1328, size: 320)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !35, line: 119, size: 320, elements: !1329)
!1329 = !{!1330, !1331, !1334, !1335, !1336}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1328, file: !35, line: 124, baseType: !115, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1328, file: !35, line: 125, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1328, file: !35, line: 126, baseType: !115, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1328, file: !35, line: 127, baseType: !115, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !35, line: 128, baseType: !1337, size: 64, offset: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !35, line: 128, size: 64, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1337, file: !35, line: 133, baseType: !115, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1337, file: !35, line: 138, baseType: !565, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !35, line: 141, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !35, line: 141, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1342, file: !35, line: 142, baseType: !115, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !35, line: 144, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !35, line: 144, size: 128, elements: !1347)
!1347 = !{!1348, !1588}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1346, file: !35, line: 146, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1351)
!1351 = !{!1352, !1362, !1383, !1394, !1395, !1396, !1397, !1570, !1571, !1572}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1350, file: !27, line: 127, baseType: !1353, size: 384)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !1358, !1359, !1360, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1353, file: !27, line: 22, baseType: !115, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1353, file: !27, line: 23, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1353, file: !27, line: 24, baseType: !1357, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1353, file: !27, line: 25, baseType: !115, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1353, file: !27, line: 26, baseType: !115, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1353, file: !27, line: 27, baseType: !115, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1350, file: !27, line: 128, baseType: !1363, size: 128, offset: 384)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1364, line: 105, size: 128, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1363, file: !1364, line: 110, baseType: !115, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1363, file: !1364, line: 118, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1364, line: 95, size: 448, elements: !1370)
!1370 = !{!1371, !1372, !1378, !1379, !1380, !1381, !1382}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1369, file: !1364, line: 96, baseType: !565, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1369, file: !1364, line: 97, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1364, line: 60, baseType: !1375)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1369, file: !1364, line: 98, baseType: !1373, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1369, file: !1364, line: 99, baseType: !764, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1369, file: !1364, line: 100, baseType: !764, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1369, file: !1364, line: 101, baseType: !552, size: 128, align: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1369, file: !1364, line: 102, baseType: !1377, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1350, file: !27, line: 129, baseType: !1384, size: 256, offset: 512)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1385, line: 26, size: 256, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1384, file: !1385, line: 27, baseType: !7, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1384, file: !1385, line: 28, baseType: !1389, size: 192, offset: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1390, line: 43, size: 192, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !1390, line: 44, baseType: !359, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1389, file: !1390, line: 45, baseType: !173, size: 128, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1350, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1350, file: !27, line: 132, baseType: !115, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1350, file: !27, line: 133, baseType: !1398, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1401)
!1401 = !{!1402, !1406, !1566}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1400, file: !27, line: 83, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1299}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1400, file: !27, line: 89, baseType: !1407, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1413, line: 512, size: 896, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1414 = !{!1415, !1533, !1534, !1541, !1548, !1558, !1559, !1560, !1562, !1564}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 513, baseType: !1416, size: 320)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1413, line: 513, size: 320, elements: !1417)
!1417 = !{!1418, !1529, !1530, !1531, !1532}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1416, file: !1413, line: 514, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1421)
!1421 = !{!1422, !1431, !1432, !1440, !1447, !1448, !1453, !1454, !1459, !1460, !1463, !1522, !1523, !1524, !1525, !1526, !1527}
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !35, line: 628, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !35, line: 628, size: 128, elements: !1424)
!1424 = !{!1425, !1430}
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !35, line: 629, baseType: !1426, size: 128)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !35, line: 629, size: 128, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1426, file: !35, line: 631, baseType: !115, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1426, file: !35, line: 632, baseType: !115, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1423, file: !35, line: 635, baseType: !552, size: 128, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1420, file: !35, line: 639, baseType: !516, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1420, file: !35, line: 640, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1434, line: 297, baseType: !1435)
!1434 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1434, line: 297, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1435, file: !1434, line: 297, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1439, line: 19, baseType: !115)
!1439 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !35, line: 646, baseType: !1441, size: 64, offset: 256)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !35, line: 646, size: 64, elements: !1442)
!1442 = !{!1443, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1441, file: !35, line: 647, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !115)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1441, file: !35, line: 648, baseType: !1445, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1420, file: !35, line: 666, baseType: !98, size: 32, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1420, file: !35, line: 667, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !35, line: 580, baseType: !705, size: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1420, file: !35, line: 670, baseType: !764, size: 8, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1420, file: !35, line: 681, baseType: !1455, size: 256, offset: 512)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !35, line: 678, size: 256, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1455, file: !35, line: 679, baseType: !259, size: 192, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1455, file: !35, line: 680, baseType: !115, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1420, file: !35, line: 689, baseType: !173, size: 128, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1420, file: !35, line: 691, baseType: !1461, size: 64, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1420, file: !35, line: 694, baseType: !1464, size: 64, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1413, line: 563, size: 1024, elements: !1467)
!1467 = !{!1468, !1472, !1473, !1477, !1481, !1485, !1486, !1490, !1494, !1498, !1499, !1500, !1504, !1508, !1514, !1518}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1466, file: !1413, line: 564, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1419}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1466, file: !1413, line: 569, baseType: !1469, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1466, file: !1413, line: 571, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!98, !1419, !115}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1466, file: !1413, line: 572, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!98, !1419}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1466, file: !1413, line: 578, baseType: !1482, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!98, !1419, !115, !115, !115}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1466, file: !1413, line: 580, baseType: !1407, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1466, file: !1413, line: 581, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1410, !1411, !7}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1466, file: !1413, line: 582, baseType: !1491, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1410, !1411, !115, !115}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1466, file: !1413, line: 584, baseType: !1495, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!115, !1419}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1466, file: !1413, line: 588, baseType: !1407, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1466, file: !1413, line: 591, baseType: !1407, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1466, file: !1413, line: 597, baseType: !1501, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!98, !1419, !115, !96, !98, !98}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1466, file: !1413, line: 603, baseType: !1505, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!92, !1419}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1466, file: !1413, line: 613, baseType: !1509, size: 64, offset: 832)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!98, !1419, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1466, file: !1413, line: 625, baseType: !1515, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1512, !1419, !115}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1466, file: !1413, line: 633, baseType: !1519, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1299, !1419, !115}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1420, file: !35, line: 697, baseType: !115, size: 64, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1420, file: !35, line: 699, baseType: !544, size: 64, offset: 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1420, file: !35, line: 700, baseType: !96, size: 64, offset: 1152)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1420, file: !35, line: 711, baseType: !565, size: 64, offset: 1216)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1420, file: !35, line: 717, baseType: !1512, size: 64, offset: 1280)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1420, file: !35, line: 722, baseType: !1528, offset: 1344)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !537)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1416, file: !1413, line: 515, baseType: !197, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1416, file: !1413, line: 516, baseType: !115, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1416, file: !1413, line: 517, baseType: !115, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1416, file: !1413, line: 518, baseType: !115, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !1413, line: 520, baseType: !34, size: 32, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1412, file: !1413, line: 522, baseType: !1535, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1439, line: 22, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 22, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1537, file: !1439, line: 22, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1439, line: 15, baseType: !115)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1412, file: !1413, line: 524, baseType: !1542, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1434, line: 372, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 372, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1544, file: !1434, line: 372, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1439, line: 16, baseType: !115)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 527, baseType: !1549, size: 64, offset: 512)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 527, size: 64, elements: !1550)
!1550 = !{!1551, !1557}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1549, file: !1413, line: 528, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1439, line: 21, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 21, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1553, file: !1439, line: 21, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1439, line: 14, baseType: !115)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1549, file: !1413, line: 529, baseType: !1536, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1412, file: !1413, line: 534, baseType: !1299, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1412, file: !1413, line: 535, baseType: !1299, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1412, file: !1413, line: 541, baseType: !1561, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1412, file: !1413, line: 545, baseType: !1563, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1412, file: !1413, line: 549, baseType: !1565, size: 64, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1434, line: 520, baseType: !1299)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1400, file: !27, line: 100, baseType: !1567, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!98, !1349, !115, !115, !98}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1350, file: !27, line: 134, baseType: !96, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1350, file: !27, line: 135, baseType: !98, size: 32, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !27, line: 136, baseType: !1573, size: 128, offset: 1088)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !27, line: 136, size: 128, elements: !1574)
!1574 = !{!1575, !1581}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1573, file: !27, line: 137, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1577, line: 6, size: 128, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1576, file: !1577, line: 7, baseType: !267, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1576, file: !1577, line: 8, baseType: !267, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !27, line: 138, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !27, line: 138, elements: !1583)
!1583 = !{!1584, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1582, file: !27, line: 138, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !27, line: 138, elements: !537)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1582, file: !27, line: 138, baseType: !1587)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1576, elements: !642)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1346, file: !35, line: 147, baseType: !96, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1304, file: !35, line: 161, baseType: !552, size: 128, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !35, line: 164, baseType: !1591, size: 32, offset: 384)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !35, line: 164, size: 32, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1591, file: !35, line: 169, baseType: !125, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1591, file: !35, line: 177, baseType: !7, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1300, file: !35, line: 181, baseType: !125, size: 32, offset: 416)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1293, file: !64, line: 406, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!98, !544, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1604)
!1604 = !{!1605, !1635, !1649}
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !35, line: 295, baseType: !1606, size: 512)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !35, line: 295, size: 512, elements: !1607)
!1607 = !{!1608, !1634}
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !35, line: 296, baseType: !1609, size: 448)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !35, line: 296, size: 448, elements: !1610)
!1610 = !{!1611, !1612, !1621, !1622, !1623, !1632, !1633}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !35, line: 298, baseType: !115, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !35, line: 299, baseType: !1613, size: 128, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !35, line: 299, size: 128, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1613, file: !35, line: 300, baseType: !173, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !35, line: 302, baseType: !1617, size: 128)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !35, line: 302, size: 128, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1617, file: !35, line: 303, baseType: !96, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1617, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1609, file: !35, line: 310, baseType: !1279, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1609, file: !35, line: 311, baseType: !115, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !35, line: 312, baseType: !1624, size: 64, offset: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !35, line: 312, size: 64, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1624, file: !35, line: 313, baseType: !96, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1624, file: !35, line: 314, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1630)
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1629, file: !35, line: 256, baseType: !115, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1609, file: !35, line: 316, baseType: !125, size: 32, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1609, file: !35, line: 317, baseType: !125, size: 32, offset: 416)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1606, file: !35, line: 323, baseType: !1300, size: 512, align: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !35, line: 325, baseType: !1636, size: 512, offset: 512)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !35, line: 325, size: 512, elements: !1637)
!1637 = !{!1638, !1648}
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !35, line: 326, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !35, line: 326, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1639, file: !35, line: 327, baseType: !115, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1639, file: !35, line: 328, baseType: !115, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1639, file: !35, line: 329, baseType: !115, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1639, file: !35, line: 331, baseType: !125, size: 32, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1639, file: !35, line: 332, baseType: !125, size: 32, offset: 224)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1639, file: !35, line: 333, baseType: !125, size: 32, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1639, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1636, file: !35, line: 339, baseType: !1300, size: 512, align: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !35, line: 341, baseType: !1650, size: 512, offset: 1024)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !35, line: 341, size: 512, elements: !1651)
!1651 = !{!1652, !1661, !1667}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !35, line: 342, baseType: !1653, size: 384)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !35, line: 342, size: 384, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1653, file: !35, line: 343, baseType: !115, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1653, file: !35, line: 344, baseType: !115, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1653, file: !35, line: 346, baseType: !96, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1653, file: !35, line: 347, baseType: !96, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1653, file: !35, line: 348, baseType: !96, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1653, file: !35, line: 349, baseType: !96, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !35, line: 352, baseType: !1662, size: 256)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !35, line: 352, size: 256, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1662, file: !35, line: 353, baseType: !115, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1662, file: !35, line: 354, baseType: !115, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1662, file: !35, line: 356, baseType: !173, size: 128, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1650, file: !35, line: 359, baseType: !1300, size: 512, align: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1293, file: !64, line: 409, baseType: !1669, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!98, !1279, !1596}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1293, file: !64, line: 412, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!764, !1279, !1602}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1293, file: !64, line: 414, baseType: !1677, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1293, file: !64, line: 416, baseType: !1683, size: 64, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!98, !544, !1279, !117, !7, !1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1293, file: !64, line: 419, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!98, !544, !1279, !117, !7, !7, !1299, !96}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1293, file: !64, line: 424, baseType: !1693, size: 64, offset: 448)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1696, !1279, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !101, line: 131, baseType: !267)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1293, file: !64, line: 425, baseType: !1698, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1602, !111, !111}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1293, file: !64, line: 426, baseType: !1702, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!764, !1602, !197}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1293, file: !64, line: 427, baseType: !1706, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1602}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1293, file: !64, line: 428, baseType: !1710, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1074, !1713, !1735}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1722, !1723, !1724, !1725}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1714, file: !64, line: 374, baseType: !544, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1714, file: !64, line: 375, baseType: !117, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1714, file: !64, line: 376, baseType: !1719, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1713, !1035}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1714, file: !64, line: 377, baseType: !96, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1714, file: !64, line: 378, baseType: !98, size: 32, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1714, file: !64, line: 379, baseType: !169, size: 16, offset: 288)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !64, line: 380, baseType: !1726, size: 64, offset: 320)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !64, line: 380, size: 64, elements: !1727)
!1727 = !{!1728, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1726, file: !64, line: 386, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1726, file: !64, line: 395, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!1074, !96}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1737, line: 41, size: 320, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1749, !1787}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1736, file: !1737, line: 42, baseType: !159, size: 8)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1736, file: !1737, line: 43, baseType: !764, size: 8, offset: 8)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1736, file: !1737, line: 44, baseType: !764, size: 8, offset: 16)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1736, file: !1737, line: 45, baseType: !764, size: 8, offset: 24)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1736, file: !1737, line: 46, baseType: !764, size: 8, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !1737, line: 47, baseType: !1745, size: 64, offset: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !1737, line: 47, size: 64, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1745, file: !1737, line: 48, baseType: !111, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1745, file: !1737, line: 49, baseType: !98, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !1737, line: 61, baseType: !1750, size: 128, offset: 128)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !1737, line: 61, size: 128, elements: !1751)
!1751 = !{!1752, !1758}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1750, file: !1737, line: 67, baseType: !1753, size: 128)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1754, line: 17, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1753, file: !1754, line: 19, baseType: !96, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1753, file: !1754, line: 20, baseType: !112, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !1737, line: 68, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !1737, line: 68, size: 128, elements: !1760)
!1760 = !{!1761, !1786}
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1737, line: 69, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1737, line: 69, size: 64, elements: !1763)
!1763 = !{!1764, !1767, !1774, !1783, !1785}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1762, file: !1737, line: 71, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1762, file: !1737, line: 72, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1737, line: 17, size: 128, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1770, file: !1737, line: 18, baseType: !96, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1770, file: !1737, line: 19, baseType: !111, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1762, file: !1737, line: 73, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1778, line: 31, size: 128, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1777, file: !1778, line: 32, baseType: !1299, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1777, file: !1778, line: 33, baseType: !7, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1777, file: !1778, line: 34, baseType: !7, size: 32, offset: 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1762, file: !1737, line: 74, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1762, file: !1737, line: 75, baseType: !96, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1759, file: !1737, line: 77, baseType: !111, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1736, file: !1737, line: 80, baseType: !1788, size: 64, offset: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !1737, line: 80, size: 64, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1788, file: !1737, line: 81, baseType: !115, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1788, file: !1737, line: 82, baseType: !117, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1293, file: !64, line: 433, baseType: !1793, size: 64, offset: 768)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!98, !1279, !1602, !1602, !50}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1293, file: !64, line: 435, baseType: !1797, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!98, !1602}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1293, file: !64, line: 436, baseType: !1801, size: 64, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!764, !1602, !111, !111}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1293, file: !64, line: 438, baseType: !1805, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1602, !1808, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1293, file: !64, line: 439, baseType: !1810, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!98, !1279, !1299}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1293, file: !64, line: 442, baseType: !1814, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!98, !1817, !544, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1293, file: !64, line: 444, baseType: !1821, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !544}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1293, file: !64, line: 445, baseType: !1825, size: 64, offset: 1216)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!98, !1713, !1735}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !64, line: 486, baseType: !115, size: 64, offset: 896)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1280, file: !64, line: 487, baseType: !705, size: 320, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1280, file: !64, line: 488, baseType: !1831, size: 32, offset: 1280)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1832, line: 8, baseType: !210)
!1832 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1280, file: !64, line: 489, baseType: !135, size: 32, offset: 1312)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1280, file: !64, line: 490, baseType: !173, size: 128, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1280, file: !64, line: 491, baseType: !96, size: 64, offset: 1472)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1270, file: !1239, line: 180, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1074, !544, !1181, !1269, !775, !117, !111}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1270, file: !1239, line: 182, baseType: !1837, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1270, file: !1239, line: 184, baseType: !1842, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!98, !544, !1181, !1269, !1419}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1258, file: !1239, line: 90, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1258, file: !1239, line: 91, baseType: !1848, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1229, file: !1176, line: 120, baseType: !1850, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1853, !1199}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1856)
!1856 = !{!1857, !1858, !1862, !1866, !1874, !1878}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1855, file: !58, line: 40, baseType: !57, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1855, file: !58, line: 41, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!764}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1855, file: !58, line: 42, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!96}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1855, file: !58, line: 43, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1870, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1855, file: !58, line: 44, baseType: !1875, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1870}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1855, file: !58, line: 45, baseType: !952, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1229, file: !1176, line: 121, baseType: !1880, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1870, !1199}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1229, file: !1176, line: 122, baseType: !1884, size: 64, offset: 320)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1199, !1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1175, file: !1176, line: 70, baseType: !1890, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1892, line: 190, size: 1152, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !2015, !2016, !2017, !2018, !2019, !2022}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1891, file: !1892, line: 191, baseType: !125, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1891, file: !1892, line: 192, baseType: !125, size: 32, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1891, file: !1892, line: 202, baseType: !1890, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1891, file: !1892, line: 203, baseType: !92, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1891, file: !1892, line: 205, baseType: !259, size: 192, align: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1891, file: !1892, line: 207, baseType: !1870, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1891, file: !1892, line: 208, baseType: !7, size: 32, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1892, line: 209, baseType: !1902, size: 256, offset: 512)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1892, line: 209, size: 256, elements: !1903)
!1903 = !{!1904, !1913, !1917}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1902, file: !1892, line: 210, baseType: !1905, size: 256)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1892, line: 153, size: 256, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1912}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1905, file: !1892, line: 154, baseType: !115, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1905, file: !1892, line: 156, baseType: !402, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1905, file: !1892, line: 162, baseType: !1910, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1892, line: 162, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1905, file: !1892, line: 167, baseType: !115, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1902, file: !1892, line: 211, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1892, line: 170, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1914, file: !1892, line: 171, baseType: !1890, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1902, file: !1892, line: 212, baseType: !1918, size: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1892, line: 174, size: 256, elements: !1919)
!1919 = !{!1920, !2010, !2013, !2014}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1918, file: !1892, line: 175, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1892, line: 271, size: 768, elements: !1924)
!1924 = !{!1925, !1983, !1987, !1988, !1989, !1990, !1991, !1995, !1996, !1997, !1998, !2006}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1923, file: !1892, line: 276, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!98, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1892, line: 251, size: 1216, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1930, file: !1892, line: 253, baseType: !1890, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1930, file: !1892, line: 254, baseType: !544, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1930, file: !1892, line: 255, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1937, line: 17, size: 960, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1968, !1969, !1972}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1936, file: !1937, line: 18, baseType: !775, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1936, file: !1937, line: 19, baseType: !111, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1936, file: !1937, line: 20, baseType: !111, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1936, file: !1937, line: 21, baseType: !111, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1936, file: !1937, line: 22, baseType: !111, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1936, file: !1937, line: 23, baseType: !117, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1936, file: !1937, line: 24, baseType: !117, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1936, file: !1937, line: 25, baseType: !572, size: 256, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1936, file: !1937, line: 26, baseType: !1948, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1937, line: 32, size: 256, elements: !1951)
!1951 = !{!1952, !1956, !1960, !1964}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1950, file: !1937, line: 33, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!96, !1935, !116}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1950, file: !1937, line: 34, baseType: !1957, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1935, !96}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1950, file: !1937, line: 35, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!96, !1935, !96, !116}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1950, file: !1937, line: 36, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!98, !1935, !96}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1936, file: !1937, line: 27, baseType: !98, size: 32, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1936, file: !1937, line: 28, baseType: !1970, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1936, file: !1937, line: 29, baseType: !96, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1930, file: !1892, line: 256, baseType: !96, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1930, file: !1892, line: 259, baseType: !572, size: 256, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1930, file: !1892, line: 260, baseType: !572, size: 256, offset: 512)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1930, file: !1892, line: 261, baseType: !98, size: 32, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1930, file: !1892, line: 262, baseType: !173, size: 128, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1930, file: !1892, line: 263, baseType: !775, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1930, file: !1892, line: 265, baseType: !111, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1930, file: !1892, line: 266, baseType: !764, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1930, file: !1892, line: 267, baseType: !764, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1930, file: !1892, line: 268, baseType: !1464, size: 64, offset: 1152)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1923, file: !1892, line: 277, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1929}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1923, file: !1892, line: 290, baseType: !1965, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1923, file: !1892, line: 292, baseType: !1953, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1923, file: !1892, line: 293, baseType: !1961, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1923, file: !1892, line: 294, baseType: !1957, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1923, file: !1892, line: 296, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1074, !1929, !775, !111, !117}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1923, file: !1892, line: 306, baseType: !111, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1923, file: !1892, line: 313, baseType: !764, size: 8, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1923, file: !1892, line: 314, baseType: !1992, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1923, file: !1892, line: 317, baseType: !1999, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!2002, !1929, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2003, line: 59, baseType: !7)
!2003 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !64, line: 61, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1923, file: !1892, line: 320, baseType: !2007, size: 64, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!98, !1929, !1419}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1918, file: !1892, line: 176, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1892, line: 35, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1918, file: !1892, line: 177, baseType: !117, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1918, file: !1892, line: 178, baseType: !1890, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1891, file: !1892, line: 215, baseType: !96, size: 64, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1891, file: !1892, line: 221, baseType: !267, size: 64, offset: 832)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !1892, line: 223, baseType: !102, size: 16, offset: 896)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1891, file: !1892, line: 224, baseType: !100, size: 16, offset: 912)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1891, file: !1892, line: 225, baseType: !2020, size: 64, offset: 960)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1892, line: 36, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1891, file: !1892, line: 227, baseType: !552, size: 128, align: 64, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1175, file: !1176, line: 71, baseType: !2024, size: 32, offset: 448)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2025, line: 19, size: 32, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2024, file: !2025, line: 20, baseType: !216, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1175, file: !1176, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1175, file: !1176, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1175, file: !1176, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1175, file: !1176, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1175, file: !1176, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1172, file: !20, line: 47, baseType: !1162, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1172, file: !20, line: 48, baseType: !1181, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1172, file: !20, line: 49, baseType: !2036, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1172, file: !20, line: 50, baseType: !2039, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1163, file: !20, line: 418, baseType: !2041, size: 64, offset: 1408)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !2043)
!2043 = !{!2044, !2045, !2050, !2054, !2058, !2062}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2042, file: !20, line: 54, baseType: !1246, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2042, file: !20, line: 55, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!1074, !2041, !2049, !775}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2042, file: !20, line: 57, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1074, !2041, !2049, !92, !111}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2042, file: !20, line: 59, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1162, !92}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2042, file: !20, line: 60, baseType: !2059, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!98, !1162}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2042, file: !20, line: 61, baseType: !2063, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !1162}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1163, file: !20, line: 419, baseType: !92, size: 64, offset: 1472)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1163, file: !20, line: 420, baseType: !92, size: 64, offset: 1536)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1163, file: !20, line: 421, baseType: !1181, size: 64, offset: 1600)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1163, file: !20, line: 424, baseType: !2070, size: 64, offset: 1664)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1163, file: !20, line: 425, baseType: !2074, size: 64, offset: 1728)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1163, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1163, file: !20, line: 435, baseType: !572, size: 256, offset: 1856)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1163, file: !20, line: 437, baseType: !2079, size: 64, offset: 2112)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2081, line: 69, size: 320, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2082 = !{!2083, !2084, !2085, !2102, !2104, !2108, !2109}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2080, file: !2081, line: 70, baseType: !92, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2080, file: !2081, line: 71, baseType: !1162, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2080, file: !2081, line: 72, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2081, line: 47, size: 256, elements: !2089)
!2089 = !{!2090, !2091, !2097, !2101}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !2081, line: 49, baseType: !7, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2088, file: !2081, line: 51, baseType: !2092, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!98, !92, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2088, file: !2081, line: 53, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!98, !775, !2095}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2088, file: !2081, line: 55, baseType: !952, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2080, file: !2081, line: 73, baseType: !2103, size: 16, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2080, file: !2081, line: 74, baseType: !2105, size: 8, offset: 208)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !160, line: 16, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !162, line: 20, baseType: !2107)
!2107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 75, baseType: !159, size: 8, offset: 216)
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2081, line: 76, baseType: !2110, size: 64, offset: 256)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2081, line: 76, size: 64, elements: !2111)
!2111 = !{!2112, !2113, !2120}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2110, file: !2081, line: 77, baseType: !96, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2110, file: !2081, line: 78, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2081, line: 86, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2116, file: !2081, line: 87, baseType: !7, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2116, file: !2081, line: 88, baseType: !775, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2110, file: !2081, line: 79, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2081, line: 92, size: 256, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2129, !2130}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2123, file: !2081, line: 94, baseType: !7, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2123, file: !2081, line: 95, baseType: !7, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2123, file: !2081, line: 96, baseType: !2128, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2123, file: !2081, line: 97, baseType: !2086, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2123, file: !2081, line: 98, baseType: !96, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1163, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1163, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1163, file: !20, line: 442, baseType: !2070, size: 64, offset: 2240)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1163, file: !20, line: 443, baseType: !2074, size: 64, offset: 2304)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1163, file: !20, line: 444, baseType: !764, size: 8, offset: 2368)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1163, file: !20, line: 451, baseType: !764, size: 8, offset: 2376)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1163, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1163, file: !20, line: 455, baseType: !2139, size: 64, offset: 2432)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2141, line: 23, size: 96, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2140, file: !2141, line: 24, baseType: !98, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2140, file: !2141, line: 24, baseType: !98, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2140, file: !2141, line: 24, baseType: !98, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1163, file: !20, line: 458, baseType: !2147, size: 64, offset: 2496)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!98}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1163, file: !20, line: 460, baseType: !2151, size: 4032, align: 512, offset: 2560)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2152, size: 4032, elements: !2168)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2152, file: !20, line: 363, baseType: !96, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2152, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2152, file: !20, line: 367, baseType: !2157, size: 448, offset: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2157, file: !20, line: 320, baseType: !1162, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2157, file: !20, line: 321, baseType: !2161, size: 384, offset: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2162, line: 40, size: 384, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2163 = !{!2164}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2161, file: !2162, line: 41, baseType: !2165, size: 384, align: 64)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 384, align: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 2)
!2168 = !{!2169}
!2169 = !DISubrange(count: 7)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1163, file: !20, line: 463, baseType: !2171, size: 192, offset: 6592)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2172, line: 8, size: 192, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2173 = !{!2174, !2175, !2177}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2171, file: !2172, line: 10, baseType: !7, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2171, file: !2172, line: 11, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2171, file: !2172, line: 12, baseType: !2178, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2180, line: 59, size: 48, elements: !2181)
!2180 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2181 = !{!2182, !2185, !2186, !2187, !2188, !2189}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2179, file: !2180, line: 60, baseType: !2183, size: 16)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !162, line: 23, baseType: !733)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2179, file: !2180, line: 61, baseType: !2183, size: 16, offset: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2179, file: !2180, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2179, file: !2180, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2179, file: !2180, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2179, file: !2180, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1163, file: !20, line: 465, baseType: !115, size: 64, offset: 6784)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1163, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1163, file: !20, line: 470, baseType: !173, size: 128, offset: 6912)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1163, file: !20, line: 471, baseType: !2194, size: 64, offset: 7040)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2196, line: 33, size: 96, elements: !2197)
!2196 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2197 = !{!2198, !2199, !2200, !2201}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2195, file: !2196, line: 37, baseType: !98, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2195, file: !2196, line: 43, baseType: !98, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2195, file: !2196, line: 45, baseType: !102, size: 16, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2195, file: !2196, line: 47, baseType: !102, size: 16, offset: 80)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1163, file: !20, line: 476, baseType: !2203, size: 64, offset: 7104)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2205)
!2205 = !{!2206, !2222, !2223, !2224}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2204, file: !20, line: 379, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2209, line: 204, baseType: !2210)
!2209 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2209, line: 197, size: 192, elements: !2211)
!2211 = !{!2212, !2214, !2215, !2216, !2218, !2220}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2210, file: !2209, line: 198, baseType: !2213, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2209, line: 21, baseType: !211)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2210, file: !2209, line: 199, baseType: !163, size: 8, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2210, file: !2209, line: 200, baseType: !163, size: 8, offset: 40)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2210, file: !2209, line: 201, baseType: !2217, size: 16, offset: 48)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2209, line: 17, baseType: !170)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2210, file: !2209, line: 202, baseType: !2219, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2209, line: 16, baseType: !268)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2210, file: !2209, line: 203, baseType: !2221, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2209, line: 22, baseType: !268)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2204, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2204, file: !20, line: 381, baseType: !775, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2204, file: !20, line: 382, baseType: !775, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1163, file: !20, line: 477, baseType: !2204, size: 256, offset: 7168)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1163, file: !20, line: 480, baseType: !2227, size: 64, offset: 7424)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1163, file: !20, line: 483, baseType: !2230, size: 64, offset: 7488)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1163, file: !20, line: 488, baseType: !775, size: 64, offset: 7552)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1163, file: !20, line: 492, baseType: !96, size: 64, offset: 7616)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1163, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1163, file: !20, line: 495, baseType: !96, size: 64, offset: 7744)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1163, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1163, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1163, file: !20, line: 500, baseType: !2239, size: 64, offset: 7872)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2241, line: 45, baseType: !2242)
!2241 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1163, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1163, file: !20, line: 504, baseType: !2245, size: 64, offset: 8000)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2248, line: 96, size: 192, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2249 = !{!2250, !2251, !2316, !2319}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2247, file: !2248, line: 97, baseType: !7, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2247, file: !2248, line: 98, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2248, line: 24, size: 3072, elements: !2254)
!2254 = !{!2255, !2257, !2258, !2259, !2260, !2274, !2275, !2276, !2277, !2289, !2301, !2302, !2313, !2314, !2315}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2253, file: !2248, line: 26, baseType: !2256, size: 128)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 128, elements: !2166)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2253, file: !2248, line: 27, baseType: !2256, size: 128, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2253, file: !2248, line: 28, baseType: !98, size: 32, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2253, file: !2248, line: 31, baseType: !135, size: 32, align: 512, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2253, file: !2248, line: 32, baseType: !2261, size: 960, offset: 576)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2262, line: 206, size: 960, elements: !2263)
!2262 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2263 = !{!2264, !2265, !2268, !2270, !2271, !2273}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2261, file: !2262, line: 207, baseType: !555, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2261, file: !2262, line: 208, baseType: !2266, size: 256, offset: 64)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, size: 256, elements: !629)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2261, file: !2262, line: 209, baseType: !2269, size: 256, offset: 320)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !629)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2261, file: !2262, line: 213, baseType: !1035, size: 64, offset: 576)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2261, file: !2262, line: 215, baseType: !2272, size: 256, offset: 640)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !629)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2261, file: !2262, line: 216, baseType: !159, size: 8, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2253, file: !2248, line: 33, baseType: !115, size: 64, offset: 1536)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2253, file: !2248, line: 34, baseType: !115, size: 64, offset: 1600)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2253, file: !2248, line: 35, baseType: !764, size: 8, offset: 1664)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2253, file: !2248, line: 36, baseType: !2278, size: 320, offset: 1728)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2279, line: 11, size: 320, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2280 = !{!2281, !2282, !2283, !2288}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2278, file: !2279, line: 16, baseType: !624, size: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2278, file: !2279, line: 17, baseType: !115, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2278, file: !2279, line: 18, baseType: !2284, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2279, line: 19, baseType: !210, size: 32, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2253, file: !2248, line: 37, baseType: !2290, size: 256, offset: 2048)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2291, line: 98, size: 256, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2290, file: !2291, line: 99, baseType: !565, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2290, file: !2291, line: 100, baseType: !173, size: 128, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2290, file: !2291, line: 101, baseType: !2296, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2291, line: 21, baseType: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2253, file: !2248, line: 38, baseType: !552, size: 128, align: 64, offset: 2304)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2253, file: !2248, line: 39, baseType: !2303, size: 64, offset: 2432)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2248, line: 49, size: 768, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2304, file: !2248, line: 50, baseType: !135, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2304, file: !2248, line: 51, baseType: !2269, size: 256, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2304, file: !2248, line: 53, baseType: !2269, size: 256, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2304, file: !2248, line: 54, baseType: !115, size: 64, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2304, file: !2248, line: 55, baseType: !2303, size: 64, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2304, file: !2248, line: 56, baseType: !98, size: 32, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2304, file: !2248, line: 57, baseType: !98, size: 32, offset: 736)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2253, file: !2248, line: 40, baseType: !115, size: 64, offset: 2496)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2253, file: !2248, line: 42, baseType: !98, size: 32, offset: 2560)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2253, file: !2248, line: 43, baseType: !2246, size: 64, offset: 2624)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2247, file: !2248, line: 99, baseType: !2317, offset: 128)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2318, line: 211, elements: !537)
!2318 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2247, file: !2248, line: 100, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2248, line: 63, size: 3008, elements: !2322)
!2322 = !{!2323, !2324, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2354}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2321, file: !2248, line: 64, baseType: !2303, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2321, file: !2248, line: 65, baseType: !2325, size: 192, offset: 64)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 192, elements: !608)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2321, file: !2248, line: 67, baseType: !98, size: 32, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2321, file: !2248, line: 68, baseType: !572, size: 256, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2321, file: !2248, line: 69, baseType: !135, size: 32, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2321, file: !2248, line: 70, baseType: !572, size: 256, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2321, file: !2248, line: 71, baseType: !115, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2321, file: !2248, line: 72, baseType: !115, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2321, file: !2248, line: 73, baseType: !115, size: 64, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2321, file: !2248, line: 74, baseType: !115, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2321, file: !2248, line: 75, baseType: !115, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2321, file: !2248, line: 76, baseType: !115, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2321, file: !2248, line: 77, baseType: !115, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2321, file: !2248, line: 78, baseType: !115, size: 64, offset: 1344)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2321, file: !2248, line: 79, baseType: !764, size: 8, offset: 1408)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2321, file: !2248, line: 80, baseType: !115, size: 64, offset: 1472)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2321, file: !2248, line: 81, baseType: !572, size: 256, offset: 1536)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2321, file: !2248, line: 82, baseType: !1384, size: 256, offset: 1792)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2321, file: !2248, line: 84, baseType: !125, size: 32, offset: 2048)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2321, file: !2248, line: 87, baseType: !115, size: 64, offset: 2112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2321, file: !2248, line: 88, baseType: !115, size: 64, offset: 2176)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2321, file: !2248, line: 89, baseType: !2346, size: 704, offset: 2240)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2291, line: 111, size: 704, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2353}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2346, file: !2291, line: 112, baseType: !2290, size: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2346, file: !2291, line: 113, baseType: !2278, size: 320, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2346, file: !2291, line: 116, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2291, line: 18, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2346, file: !2291, line: 117, baseType: !98, size: 32, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2321, file: !2248, line: 90, baseType: !2246, size: 64, offset: 2944)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1163, file: !20, line: 515, baseType: !2356, size: 64, offset: 8064)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2358, line: 117, size: 128, elements: !2359)
!2358 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2359 = !{!2360, !2361, !2362}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2357, file: !2358, line: 118, baseType: !697, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2357, file: !2358, line: 119, baseType: !697, size: 32, offset: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2357, file: !2358, line: 120, baseType: !1035, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1163, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1163, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1163, file: !20, line: 520, baseType: !2366, size: 64, offset: 8192)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1163, file: !20, line: 523, baseType: !2368, size: 64, offset: 8256)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1163, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1163, file: !20, line: 525, baseType: !2373, size: 64, offset: 8384)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1163, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1163, file: !20, line: 533, baseType: !96, size: 64, offset: 8512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1163, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1163, file: !20, line: 535, baseType: !2380, size: 64, offset: 8640)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1163, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1163, file: !20, line: 539, baseType: !98, size: 32, offset: 8736)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1163, file: !20, line: 540, baseType: !2384, size: 64, offset: 8768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2386, line: 32, size: 64, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2385, file: !2386, line: 33, baseType: !697, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2385, file: !2386, line: 34, baseType: !697, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1163, file: !20, line: 563, baseType: !173, size: 128, offset: 8832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1163, file: !20, line: 565, baseType: !173, size: 128, offset: 8960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1163, file: !20, line: 568, baseType: !2393, size: 64, offset: 9088)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1163, file: !20, line: 570, baseType: !125, size: 32, offset: 9152)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1139, file: !64, line: 2382, baseType: !1138, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1139, file: !64, line: 2383, baseType: !620, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1139, file: !64, line: 2385, baseType: !2400, offset: 576)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2318, line: 206, elements: !537)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1139, file: !64, line: 2386, baseType: !2400, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1139, file: !64, line: 2387, baseType: !2400, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1139, file: !64, line: 2388, baseType: !2404, offset: 576)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, elements: !608)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1139, file: !64, line: 2390, baseType: !2400, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1139, file: !64, line: 2391, baseType: !2400, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1139, file: !64, line: 2392, baseType: !2400, offset: 576)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1139, file: !64, line: 2393, baseType: !2400, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1130, file: !64, line: 1197, baseType: !2410, size: 64, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2413)
!2413 = !{!2414, !2418, !2422, !2423, !2427, !2431, !2435, !2436, !2437, !2441, !2445, !2449, !2450, !2451, !2457, !2461, !2462, !2466, !2467, !2468, !2469, !2473, !2477, !2524, !2539, !2540}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2412, file: !64, line: 2058, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!921, !1129}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2412, file: !64, line: 2059, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !921}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2412, file: !64, line: 2060, baseType: !2419, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2412, file: !64, line: 2062, baseType: !2424, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{null, !921, !98}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2412, file: !64, line: 2063, baseType: !2428, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!98, !921, !1596}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2412, file: !64, line: 2064, baseType: !2432, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!98, !921}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2412, file: !64, line: 2065, baseType: !2419, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2412, file: !64, line: 2066, baseType: !1158, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2412, file: !64, line: 2067, baseType: !2438, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!98, !1129, !98}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2412, file: !64, line: 2068, baseType: !2442, size: 64, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!98, !1129, !63}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2412, file: !64, line: 2069, baseType: !2446, size: 64, offset: 640)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!98, !1129}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2412, file: !64, line: 2070, baseType: !2442, size: 64, offset: 704)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2412, file: !64, line: 2071, baseType: !2446, size: 64, offset: 768)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2412, file: !64, line: 2072, baseType: !2452, size: 64, offset: 832)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!98, !886, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2412, file: !64, line: 2073, baseType: !2458, size: 64, offset: 896)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!98, !1129, !2176, !775}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2412, file: !64, line: 2074, baseType: !1158, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2412, file: !64, line: 2076, baseType: !2463, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!98, !1935, !886}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2412, file: !64, line: 2077, baseType: !2463, size: 64, offset: 1088)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2412, file: !64, line: 2078, baseType: !2463, size: 64, offset: 1152)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2412, file: !64, line: 2079, baseType: !2463, size: 64, offset: 1216)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2412, file: !64, line: 2081, baseType: !2470, size: 64, offset: 1280)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!1074, !1129, !98, !775, !111, !117}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2412, file: !64, line: 2082, baseType: !2474, size: 64, offset: 1344)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!1074, !1129, !98, !92, !111, !117}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2412, file: !64, line: 2083, baseType: !2478, size: 64, offset: 1408)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2481, !921}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2509, !2510, !2511}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2483, file: !69, line: 297, baseType: !624, size: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2483, file: !69, line: 298, baseType: !173, size: 128, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2483, file: !69, line: 299, baseType: !173, size: 128, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2483, file: !69, line: 300, baseType: !173, size: 128, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2483, file: !69, line: 301, baseType: !572, size: 256, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2483, file: !69, line: 302, baseType: !135, size: 32, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2483, file: !69, line: 303, baseType: !125, size: 32, offset: 800)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2483, file: !69, line: 304, baseType: !1129, size: 64, offset: 832)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2483, file: !69, line: 305, baseType: !2494, size: 64, offset: 896)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2495)
!2495 = !{!2496, !2508}
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !69, line: 69, baseType: !2497, size: 32)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2494, file: !69, line: 69, size: 32, elements: !2498)
!2498 = !{!2499, !2500, !2501}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2497, file: !69, line: 70, baseType: !646, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2497, file: !69, line: 71, baseType: !664, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2497, file: !69, line: 72, baseType: !2502, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2503, line: 24, baseType: !2504)
!2503 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2503, line: 22, size: 32, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2504, file: !2503, line: 23, baseType: !2507, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2503, line: 20, baseType: !652)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2494, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2483, file: !69, line: 306, baseType: !117, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2483, file: !69, line: 307, baseType: !115, size: 64, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2483, file: !69, line: 308, baseType: !2512, size: 576, offset: 1088)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2513)
!2513 = !{!2514, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2512, file: !69, line: 206, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !119)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2512, file: !69, line: 207, baseType: !2515, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2512, file: !69, line: 208, baseType: !2515, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2512, file: !69, line: 209, baseType: !2515, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2512, file: !69, line: 210, baseType: !2515, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2512, file: !69, line: 211, baseType: !2515, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2512, file: !69, line: 212, baseType: !2515, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2512, file: !69, line: 213, baseType: !721, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2512, file: !69, line: 214, baseType: !721, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2412, file: !64, line: 2085, baseType: !2525, size: 64, offset: 1472)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!1035, !1129, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2530, line: 15, size: 256, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2531 = !{!2532, !2533, !2534, !2535, !2536}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2529, file: !2530, line: 16, baseType: !197, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2529, file: !2530, line: 19, baseType: !98, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2529, file: !2530, line: 26, baseType: !115, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2529, file: !2530, line: 33, baseType: !115, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2529, file: !2530, line: 36, baseType: !2537, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2530, line: 36, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2412, file: !64, line: 2087, baseType: !2525, size: 64, offset: 1536)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2412, file: !64, line: 2089, baseType: !1158, size: 64, offset: 1600)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1130, file: !64, line: 1198, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2545)
!2545 = !{!2546, !2550, !2554, !2558, !2559, !2560, !2561, !2562, !2567, !2572, !2576}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2544, file: !69, line: 325, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!98, !2482}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2544, file: !69, line: 326, baseType: !2551, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!2482, !1129, !98}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2544, file: !69, line: 327, baseType: !2555, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2482}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2544, file: !69, line: 328, baseType: !2547, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2544, file: !69, line: 329, baseType: !2547, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2544, file: !69, line: 330, baseType: !2547, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2544, file: !69, line: 331, baseType: !2438, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2544, file: !69, line: 334, baseType: !2563, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2566, !921}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2544, file: !69, line: 335, baseType: !2568, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!98, !921, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2544, file: !69, line: 337, baseType: !2573, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!98, !921, !2566}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2544, file: !69, line: 339, baseType: !2577, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!98, !1129, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1130, file: !64, line: 1199, baseType: !2582, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2585)
!2585 = !{!2586, !2590, !2591, !2595, !2596, !2597, !2612, !2635, !2639, !2640, !2663}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2584, file: !69, line: 431, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!98, !1129, !98, !98, !1043}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2584, file: !69, line: 432, baseType: !2438, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2584, file: !69, line: 433, baseType: !2592, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!98, !1129, !7}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2584, file: !69, line: 434, baseType: !2592, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2584, file: !69, line: 435, baseType: !2438, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2584, file: !69, line: 436, baseType: !2598, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!98, !1129, !98, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2602, file: !69, line: 418, baseType: !98, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2602, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2602, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2602, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2602, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2602, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2602, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2602, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2584, file: !69, line: 437, baseType: !2613, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!98, !1129, !2494, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2617, file: !69, line: 346, baseType: !98, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2617, file: !69, line: 347, baseType: !267, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2617, file: !69, line: 348, baseType: !267, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2617, file: !69, line: 349, baseType: !267, size: 64, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2617, file: !69, line: 350, baseType: !267, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2617, file: !69, line: 351, baseType: !267, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2617, file: !69, line: 352, baseType: !267, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2617, file: !69, line: 353, baseType: !278, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2617, file: !69, line: 355, baseType: !278, size: 64, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2617, file: !69, line: 356, baseType: !98, size: 32, offset: 576)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2617, file: !69, line: 357, baseType: !98, size: 32, offset: 608)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2617, file: !69, line: 358, baseType: !267, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2617, file: !69, line: 359, baseType: !267, size: 64, offset: 704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2617, file: !69, line: 360, baseType: !267, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2617, file: !69, line: 361, baseType: !278, size: 64, offset: 832)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2617, file: !69, line: 362, baseType: !98, size: 32, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2584, file: !69, line: 438, baseType: !2636, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!98, !1129, !2580, !2616}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2584, file: !69, line: 440, baseType: !2613, size: 64, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2584, file: !69, line: 441, baseType: !2641, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!98, !1129, !2644}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2645, file: !69, line: 412, baseType: !7, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2645, file: !69, line: 413, baseType: !2649, size: 1344, offset: 64)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 1344, elements: !608)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2662}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !69, line: 398, baseType: !7, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2650, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2650, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2650, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2650, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2650, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2650, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2650, file: !69, line: 406, baseType: !269, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2650, file: !69, line: 407, baseType: !2661, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !101, line: 132, baseType: !267)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2650, file: !69, line: 408, baseType: !2661, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2584, file: !69, line: 442, baseType: !2592, size: 64, offset: 640)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1130, file: !64, line: 1200, baseType: !2665, size: 64, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2667)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1130, file: !64, line: 1201, baseType: !115, size: 64, offset: 640)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1130, file: !64, line: 1202, baseType: !115, size: 64, offset: 704)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1130, file: !64, line: 1203, baseType: !115, size: 64, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1130, file: !64, line: 1204, baseType: !886, size: 64, offset: 832)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1130, file: !64, line: 1205, baseType: !705, size: 320, offset: 896)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1130, file: !64, line: 1206, baseType: !98, size: 32, offset: 1216)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1130, file: !64, line: 1207, baseType: !125, size: 32, offset: 1248)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1130, file: !64, line: 1209, baseType: !96, size: 64, offset: 1280)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1130, file: !64, line: 1211, baseType: !2677, size: 64, offset: 1344)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1130, file: !64, line: 1223, baseType: !2682, size: 64, offset: 1408)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !898, line: 34, size: 64, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2682, file: !898, line: 35, baseType: !901, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1130, file: !64, line: 1224, baseType: !173, size: 128, offset: 1472)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1130, file: !64, line: 1225, baseType: !2687, size: 64, offset: 1600)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1130, file: !64, line: 1226, baseType: !2690, size: 64, offset: 1664)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1130, file: !64, line: 1227, baseType: !2693, size: 64, offset: 1728)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1130, file: !64, line: 1228, baseType: !2696, size: 64, offset: 1792)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1130, file: !64, line: 1229, baseType: !624, size: 128, offset: 1856)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1130, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1130, file: !64, line: 1231, baseType: !2701, size: 2496, offset: 2048)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2707, !2739}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2701, file: !69, line: 522, baseType: !7, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2701, file: !69, line: 523, baseType: !705, size: 320, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2701, file: !69, line: 524, baseType: !2706, size: 192, offset: 384)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 192, elements: !608)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2701, file: !69, line: 525, baseType: !2708, size: 1728, offset: 576)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1728, elements: !608)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2710)
!2710 = !{!2711, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2709, file: !69, line: 223, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2714)
!2714 = !{!2715, !2716, !2729, !2730}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2713, file: !69, line: 446, baseType: !98, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2713, file: !69, line: 447, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2719, file: !69, line: 313, baseType: !2438, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2719, file: !69, line: 314, baseType: !2438, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2719, file: !69, line: 315, baseType: !2438, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2719, file: !69, line: 316, baseType: !2438, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2719, file: !69, line: 317, baseType: !2547, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2719, file: !69, line: 318, baseType: !2547, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2719, file: !69, line: 319, baseType: !2547, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2719, file: !69, line: 320, baseType: !2577, size: 64, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2713, file: !69, line: 448, baseType: !1162, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2713, file: !69, line: 449, baseType: !2712, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2709, file: !69, line: 224, baseType: !98, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2709, file: !69, line: 226, baseType: !173, size: 128, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2709, file: !69, line: 227, baseType: !115, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2709, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2709, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2709, file: !69, line: 230, baseType: !2515, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2709, file: !69, line: 231, baseType: !2515, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2709, file: !69, line: 232, baseType: !96, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2701, file: !69, line: 526, baseType: !2740, size: 192, offset: 2304)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2717, size: 192, elements: !608)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1130, file: !64, line: 1233, baseType: !2742, size: 2368, offset: 4544)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2743)
!2743 = !{!2744, !2745, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2742, file: !64, line: 1185, baseType: !102, size: 16)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2742, file: !64, line: 1186, baseType: !102, size: 16, offset: 16)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2742, file: !64, line: 1187, baseType: !2747, size: 2304, offset: 64)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2748, size: 2304, elements: !608)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2749, line: 12, size: 768, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2750 = !{!2751, !2759, !2760, !2765, !2766}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2748, file: !2749, line: 13, baseType: !2752, size: 384)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2753, line: 17, size: 384, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2752, file: !2753, line: 18, baseType: !98, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2752, file: !2753, line: 19, baseType: !98, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2752, file: !2753, line: 20, baseType: !130, size: 192, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2752, file: !2753, line: 22, baseType: !552, size: 128, align: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2748, file: !2749, line: 14, baseType: !2128, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2748, file: !2749, line: 15, baseType: !2761, size: 64, offset: 448)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2762, line: 16, size: 64, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2761, file: !2762, line: 17, baseType: !199, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2748, file: !2749, line: 16, baseType: !130, size: 192, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2748, file: !2749, line: 17, baseType: !125, size: 32, offset: 704)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1130, file: !64, line: 1240, baseType: !96, size: 64, offset: 6912)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1130, file: !64, line: 1243, baseType: !210, size: 32, offset: 6976)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1130, file: !64, line: 1245, baseType: !721, size: 64, offset: 7040)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1130, file: !64, line: 1246, baseType: !721, size: 64, offset: 7104)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1130, file: !64, line: 1248, baseType: !211, size: 32, offset: 7168)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1130, file: !64, line: 1249, baseType: !2773, size: 64, offset: 7232)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1130, file: !64, line: 1252, baseType: !2776, size: 256, offset: 7296)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !2777)
!2777 = !{!2778}
!2778 = !DISubrange(count: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1130, file: !64, line: 1253, baseType: !2780, size: 128, offset: 7552)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2781, line: 21, baseType: !2782)
!2781 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2781, line: 19, size: 128, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2782, file: !2781, line: 20, baseType: !2785, size: 128)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !2786)
!2786 = !{!2787}
!2787 = !DISubrange(count: 16)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1130, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1130, file: !64, line: 1261, baseType: !572, size: 256, offset: 7744)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1130, file: !64, line: 1267, baseType: !92, size: 64, offset: 8000)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1130, file: !64, line: 1269, baseType: !2792, size: 64, offset: 8064)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !888, line: 128, size: 1024, align: 512, elements: !2795)
!2795 = !{!2796, !2800, !2801, !2808, !2814, !2818, !2822, !2826, !2827, !2831, !2835, !2840, !2844}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2794, file: !888, line: 129, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!98, !886, !7}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2794, file: !888, line: 130, baseType: !2797, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2794, file: !888, line: 131, baseType: !2802, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!98, !2805, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2794, file: !888, line: 132, baseType: !2809, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!98, !2805, !7, !92, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2794, file: !888, line: 134, baseType: !2815, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!98, !2805}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2794, file: !888, line: 135, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!98, !886}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2794, file: !888, line: 136, baseType: !2823, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !886}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2794, file: !888, line: 137, baseType: !2823, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2794, file: !888, line: 138, baseType: !2828, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !886, !921}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2794, file: !888, line: 139, baseType: !2832, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!775, !886, !775, !98}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2794, file: !888, line: 140, baseType: !2836, size: 64, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!881, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2794, file: !888, line: 141, baseType: !2841, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!98, !1043, !764}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2794, file: !888, line: 142, baseType: !2845, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!886, !886, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1130, file: !64, line: 1271, baseType: !2851, size: 448, offset: 8128)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2530, line: 63, size: 448, elements: !2852)
!2852 = !{!2853, !2858, !2859, !2860, !2861, !2862, !2863}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2851, file: !2530, line: 64, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!115, !2857, !2528}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2851, file: !2530, line: 66, baseType: !2854, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2851, file: !2530, line: 69, baseType: !1035, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2851, file: !2530, line: 70, baseType: !98, size: 32, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2851, file: !2530, line: 71, baseType: !7, size: 32, offset: 224)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2851, file: !2530, line: 74, baseType: !173, size: 128, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2851, file: !2530, line: 85, baseType: !2864, size: 64, offset: 384)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1130, file: !64, line: 1274, baseType: !565, size: 64, offset: 8576)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1130, file: !64, line: 1280, baseType: !565, size: 64, offset: 8640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1130, file: !64, line: 1283, baseType: !98, size: 32, offset: 8704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1130, file: !64, line: 1286, baseType: !1831, size: 32, offset: 8736)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1130, file: !64, line: 1289, baseType: !2351, size: 64, offset: 8768)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1130, file: !64, line: 1290, baseType: !620, size: 64, offset: 8832)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1130, file: !64, line: 1297, baseType: !848, size: 64, offset: 8896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1130, file: !64, line: 1304, baseType: !2873, size: 64, offset: 8960)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2874, line: 49, size: 64, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2873, file: !2874, line: 50, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2874, line: 41, size: 512, align: 512, elements: !2879)
!2879 = !{!2880, !2881, !2886}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2878, file: !2874, line: 43, baseType: !135, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2878, file: !2874, line: 45, baseType: !2882, size: 192, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2874, line: 29, size: 192, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2882, file: !2874, line: 30, baseType: !173, size: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2882, file: !2874, line: 32, baseType: !1035, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2878, file: !2874, line: 46, baseType: !1035, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1130, file: !64, line: 1305, baseType: !2873, size: 64, offset: 9024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1130, file: !64, line: 1306, baseType: !552, size: 128, align: 64, offset: 9088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1130, file: !64, line: 1307, baseType: !2290, size: 256, offset: 9216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1130, file: !64, line: 1309, baseType: !572, size: 256, offset: 9472)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1130, file: !64, line: 1314, baseType: !98, size: 32, offset: 9728)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1130, file: !64, line: 1317, baseType: !135, size: 32, align: 512, offset: 10240)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1130, file: !64, line: 1318, baseType: !173, size: 128, offset: 10304)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1130, file: !64, line: 1320, baseType: !135, size: 32, offset: 10432)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1130, file: !64, line: 1321, baseType: !173, size: 128, offset: 10496)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !922, file: !64, line: 656, baseType: !1279, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !922, file: !64, line: 659, baseType: !96, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !922, file: !64, line: 663, baseType: !115, size: 64, offset: 640)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !64, line: 671, baseType: !2900, size: 32, offset: 704)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !64, line: 671, size: 32, elements: !2901)
!2901 = !{!2902, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2900, file: !64, line: 672, baseType: !2903, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2900, file: !64, line: 673, baseType: !7, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !922, file: !64, line: 675, baseType: !995, size: 32, offset: 736)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !922, file: !64, line: 676, baseType: !117, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !922, file: !64, line: 677, baseType: !1031, size: 128, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !922, file: !64, line: 678, baseType: !1031, size: 128, offset: 960)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !922, file: !64, line: 679, baseType: !1031, size: 128, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !922, file: !64, line: 680, baseType: !135, size: 32, offset: 1216)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !922, file: !64, line: 681, baseType: !102, size: 16, offset: 1248)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !922, file: !64, line: 682, baseType: !159, size: 8, offset: 1264)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !922, file: !64, line: 683, baseType: !159, size: 8, offset: 1272)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !922, file: !64, line: 684, baseType: !2661, size: 64, offset: 1280)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !922, file: !64, line: 691, baseType: !115, size: 64, offset: 1344)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !922, file: !64, line: 692, baseType: !705, size: 320, offset: 1408)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !922, file: !64, line: 694, baseType: !115, size: 64, offset: 1728)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !922, file: !64, line: 695, baseType: !115, size: 64, offset: 1792)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !922, file: !64, line: 697, baseType: !624, size: 128, offset: 1856)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !922, file: !64, line: 698, baseType: !173, size: 128, offset: 1984)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !922, file: !64, line: 707, baseType: !173, size: 128, offset: 2112)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !922, file: !64, line: 708, baseType: !173, size: 128, offset: 2240)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !64, line: 709, baseType: !2924, size: 128, offset: 2368)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !64, line: 709, size: 128, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2924, file: !64, line: 710, baseType: !620, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2924, file: !64, line: 711, baseType: !552, size: 128, align: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !922, file: !64, line: 713, baseType: !567, size: 64, offset: 2496)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !922, file: !64, line: 714, baseType: !567, size: 64, offset: 2560)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !922, file: !64, line: 715, baseType: !125, size: 32, offset: 2624)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !922, file: !64, line: 716, baseType: !125, size: 32, offset: 2656)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !922, file: !64, line: 717, baseType: !125, size: 32, offset: 2688)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !922, file: !64, line: 719, baseType: !125, size: 32, offset: 2720)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !64, line: 721, baseType: !2935, size: 64, offset: 2752)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !64, line: 721, size: 64, elements: !2936)
!2936 = !{!2937, !3063}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2935, file: !64, line: 722, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2940)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !2941)
!2941 = !{!2942, !2943, !2947, !2951, !2955, !2956, !2957, !2963, !2976, !2980, !2984, !2985, !2989, !2990, !2994, !2999, !3000, !3004, !3008, !3014, !3015, !3019, !3020, !3026, !3030, !3031, !3036, !3040, !3044, !3048, !3052, !3053, !3059}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2940, file: !64, line: 1915, baseType: !1162, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2940, file: !64, line: 1916, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!117, !544, !117, !98}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2940, file: !64, line: 1917, baseType: !2948, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!1074, !544, !775, !111, !116}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2940, file: !64, line: 1918, baseType: !2952, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!1074, !544, !92, !111, !116}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2940, file: !64, line: 1919, baseType: !1710, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2940, file: !64, line: 1920, baseType: !1710, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2940, file: !64, line: 1921, baseType: !2958, size: 64, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!98, !1713, !2961, !7}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2940, file: !64, line: 1923, baseType: !2964, size: 64, offset: 448)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!98, !544, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !2969)
!2969 = !{!2970, !2975}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2968, file: !64, line: 1859, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!764, !2967, !92, !98, !117, !267, !7}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2968, file: !64, line: 1860, baseType: !117, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2940, file: !64, line: 1924, baseType: !2977, size: 64, offset: 512)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!2002, !544, !2004}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2940, file: !64, line: 1925, baseType: !2981, size: 64, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!1035, !544, !7, !115}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2940, file: !64, line: 1926, baseType: !2981, size: 64, offset: 640)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2940, file: !64, line: 1927, baseType: !2986, size: 64, offset: 704)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!98, !544, !1419}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2940, file: !64, line: 1928, baseType: !115, size: 64, offset: 768)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2940, file: !64, line: 1929, baseType: !2991, size: 64, offset: 832)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!98, !921, !544}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2940, file: !64, line: 1930, baseType: !2995, size: 64, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!98, !544, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !96)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2940, file: !64, line: 1931, baseType: !2991, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2940, file: !64, line: 1932, baseType: !3001, size: 64, offset: 1024)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!98, !544, !117, !117, !98}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2940, file: !64, line: 1933, baseType: !3005, size: 64, offset: 1088)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!98, !98, !544, !98}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !64, line: 1934, baseType: !3009, size: 64, offset: 1152)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!98, !544, !98, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2940, file: !64, line: 1935, baseType: !541, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2940, file: !64, line: 1936, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!98, !98}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2940, file: !64, line: 1937, baseType: !3009, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2940, file: !64, line: 1938, baseType: !3021, size: 64, offset: 1408)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!1074, !3024, !544, !116, !111, !7}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !201, line: 59, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2940, file: !64, line: 1939, baseType: !3027, size: 64, offset: 1472)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!1074, !544, !116, !3024, !111, !7}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2940, file: !64, line: 1940, baseType: !1821, size: 64, offset: 1536)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2940, file: !64, line: 1941, baseType: !3032, size: 64, offset: 1600)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!98, !544, !98, !3035, !1687}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2940, file: !64, line: 1942, baseType: !3037, size: 64, offset: 1664)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1035, !544, !98, !117, !117}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2940, file: !64, line: 1944, baseType: !3041, size: 64, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !1935, !544}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2940, file: !64, line: 1948, baseType: !3045, size: 64, offset: 1792)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!1074, !544, !117, !544, !117, !111, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2940, file: !64, line: 1950, baseType: !3049, size: 64, offset: 1856)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!117, !544, !117, !544, !117, !117, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2940, file: !64, line: 1953, baseType: !3001, size: 64, offset: 1920)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2940, file: !64, line: 1954, baseType: !3054, size: 64, offset: 1984)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!98, !3057, !7}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2940, file: !64, line: 1955, baseType: !3060, size: 64, offset: 2048)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!98, !3057, !2961, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2935, file: !64, line: 723, baseType: !2419, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !922, file: !64, line: 725, baseType: !3065, size: 64, offset: 2816)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !922, file: !64, line: 726, baseType: !1280, size: 1536, align: 64, offset: 2880)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !922, file: !64, line: 727, baseType: !173, size: 128, offset: 4416)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !64, line: 728, baseType: !3070, size: 64, offset: 4544)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !64, line: 728, size: 64, elements: !3071)
!3071 = !{!3072, !3073, !3076, !3077}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3070, file: !64, line: 729, baseType: !3024, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3070, file: !64, line: 730, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3070, file: !64, line: 731, baseType: !775, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3070, file: !64, line: 732, baseType: !7, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !922, file: !64, line: 735, baseType: !211, size: 32, offset: 4608)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !922, file: !64, line: 738, baseType: !211, size: 32, offset: 4640)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !922, file: !64, line: 739, baseType: !2773, size: 64, offset: 4672)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !922, file: !64, line: 750, baseType: !96, size: 64, offset: 4736)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !887, file: !888, line: 91, baseType: !3083, size: 256, offset: 448)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !2777)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !887, file: !888, line: 94, baseType: !3085, size: 64, offset: 704)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3086, line: 25, size: 64, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3086, line: 26, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3086, line: 26, size: 64, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3089, file: !3086, line: 28, baseType: !268, size: 64, align: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3086, line: 30, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3086, line: 30, size: 64, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3093, file: !3086, line: 31, baseType: !135, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3093, file: !3086, line: 32, baseType: !98, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !887, file: !888, line: 95, baseType: !2792, size: 64, offset: 768)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !887, file: !888, line: 96, baseType: !1129, size: 64, offset: 832)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !887, file: !888, line: 97, baseType: !115, size: 64, offset: 896)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !887, file: !888, line: 98, baseType: !96, size: 64, offset: 960)
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 100, baseType: !3102, size: 128, offset: 1024)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 100, size: 128, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3102, file: !888, line: 101, baseType: !173, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3102, file: !888, line: 102, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !887, file: !888, line: 104, baseType: !173, size: 128, offset: 1152)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !887, file: !888, line: 105, baseType: !173, size: 128, offset: 1280)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !887, file: !888, line: 113, baseType: !3110, size: 128, offset: 1408)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 109, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3110, file: !888, line: 110, baseType: !624, size: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3110, file: !888, line: 111, baseType: !897, size: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3110, file: !888, line: 112, baseType: !552, size: 128, align: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !882, file: !883, line: 72, baseType: !1129, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !882, file: !883, line: 73, baseType: !98, size: 32, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !882, file: !883, line: 74, baseType: !960, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !877, file: !878, line: 10, baseType: !886, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !545, file: !64, line: 1015, baseType: !921, size: 64, offset: 1344)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !545, file: !64, line: 1016, baseType: !2938, size: 64, offset: 1408)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !545, file: !64, line: 1018, baseType: !267, size: 64, offset: 1472)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !545, file: !64, line: 1020, baseType: !96, size: 64, offset: 1536)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !545, file: !64, line: 1023, baseType: !96, size: 64, offset: 1600)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !545, file: !64, line: 1027, baseType: !3125, size: 64, offset: 1664)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !545, file: !64, line: 1029, baseType: !1279, size: 64, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !545, file: !64, line: 1030, baseType: !1831, size: 32, offset: 1792)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !545, file: !64, line: 1031, baseType: !1831, size: 32, offset: 1824)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !520, file: !35, line: 756, baseType: !115, size: 64, offset: 704)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !520, file: !35, line: 757, baseType: !115, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !520, file: !35, line: 760, baseType: !115, size: 64, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !520, file: !35, line: 761, baseType: !115, size: 64, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !520, file: !35, line: 763, baseType: !115, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !520, file: !35, line: 764, baseType: !3135, size: 64, offset: 1024)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1434, line: 299, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 299, size: 64, elements: !3138)
!3138 = !{!3139}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3137, file: !1434, line: 299, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1439, line: 18, baseType: !115)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !520, file: !35, line: 773, baseType: !125, size: 32, offset: 1088)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !520, file: !35, line: 785, baseType: !125, size: 32, offset: 1120)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !520, file: !35, line: 795, baseType: !3144, size: 64, offset: 1152)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3145, file: !35, line: 727, baseType: !267, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3145, file: !35, line: 728, baseType: !98, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !520, file: !35, line: 801, baseType: !115, size: 64, offset: 1216)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !520, file: !35, line: 804, baseType: !565, size: 64, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !520, file: !35, line: 806, baseType: !98, size: 32, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !520, file: !35, line: 808, baseType: !135, size: 32, offset: 1376)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !520, file: !35, line: 823, baseType: !705, size: 320, offset: 1408)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !520, file: !35, line: 825, baseType: !173, size: 128, offset: 1728)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !520, file: !35, line: 845, baseType: !98, size: 32, offset: 1856)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !520, file: !35, line: 849, baseType: !115, size: 64, offset: 1920)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !520, file: !35, line: 850, baseType: !115, size: 64, offset: 1984)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !520, file: !35, line: 852, baseType: !115, size: 64, offset: 2048)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !520, file: !35, line: 853, baseType: !115, size: 64, offset: 2112)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !520, file: !35, line: 854, baseType: !567, size: 64, offset: 2176)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !520, file: !35, line: 855, baseType: !115, size: 64, offset: 2240)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !520, file: !35, line: 856, baseType: !115, size: 64, offset: 2304)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !520, file: !35, line: 857, baseType: !115, size: 64, offset: 2368)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !520, file: !35, line: 858, baseType: !115, size: 64, offset: 2432)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !520, file: !35, line: 865, baseType: !390, size: 32, offset: 2496)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !520, file: !35, line: 867, baseType: !135, size: 32, offset: 2528)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !520, file: !35, line: 869, baseType: !115, size: 64, offset: 2560)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !520, file: !35, line: 869, baseType: !115, size: 64, offset: 2624)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !520, file: !35, line: 869, baseType: !115, size: 64, offset: 2688)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !520, file: !35, line: 869, baseType: !115, size: 64, offset: 2752)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !520, file: !35, line: 870, baseType: !115, size: 64, offset: 2816)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !520, file: !35, line: 870, baseType: !115, size: 64, offset: 2880)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !520, file: !35, line: 870, baseType: !115, size: 64, offset: 2944)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !520, file: !35, line: 871, baseType: !115, size: 64, offset: 3008)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !520, file: !35, line: 871, baseType: !115, size: 64, offset: 3072)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !520, file: !35, line: 871, baseType: !115, size: 64, offset: 3136)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !520, file: !35, line: 871, baseType: !115, size: 64, offset: 3200)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !520, file: !35, line: 873, baseType: !3179, size: 3328, offset: 3264)
!3179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3328, elements: !3180)
!3180 = !{!3181}
!3181 = !DISubrange(count: 52)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !520, file: !35, line: 875, baseType: !3183, size: 1280, offset: 6592)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 1280, elements: !629)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !520, file: !35, line: 877, baseType: !3185, size: 64, offset: 7872)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !3187, line: 84, size: 448, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!3188 = !{!3189, !3190, !3191, !3234, !3238, !3245}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !3186, file: !3187, line: 85, baseType: !173, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3186, file: !3187, line: 86, baseType: !1162, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !3186, file: !3187, line: 87, baseType: !3192, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!98, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !3187, line: 18, size: 3328, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3230}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3196, file: !3187, line: 20, baseType: !1419, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !3196, file: !3187, line: 21, baseType: !115, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3196, file: !3187, line: 26, baseType: !516, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3196, file: !3187, line: 27, baseType: !115, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !3196, file: !3187, line: 28, baseType: !115, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !3196, file: !3187, line: 31, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !3196, file: !3187, line: 34, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !3196, file: !3187, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !3196, file: !3187, line: 45, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !3196, file: !3187, line: 47, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !3196, file: !3187, line: 48, baseType: !544, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !3196, file: !3187, line: 49, baseType: !544, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3196, file: !3187, line: 50, baseType: !544, size: 64, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3196, file: !3187, line: 51, baseType: !3212, size: 64, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !3196, file: !3187, line: 52, baseType: !98, size: 32, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !3196, file: !3187, line: 53, baseType: !7, size: 32, offset: 672)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !3196, file: !3187, line: 54, baseType: !98, size: 32, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !3196, file: !3187, line: 54, baseType: !98, size: 32, offset: 736)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !3196, file: !3187, line: 55, baseType: !92, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !3196, file: !3187, line: 56, baseType: !92, size: 64, offset: 832)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !3196, file: !3187, line: 59, baseType: !92, size: 64, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !3196, file: !3187, line: 60, baseType: !7, size: 32, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !3196, file: !3187, line: 61, baseType: !98, size: 32, offset: 992)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !3196, file: !3187, line: 62, baseType: !115, size: 64, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !3196, file: !3187, line: 62, baseType: !115, size: 64, offset: 1088)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !3196, file: !3187, line: 64, baseType: !3225, size: 128, offset: 1152)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3226, line: 43, size: 128, elements: !3227)
!3226 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3225, file: !3226, line: 44, baseType: !114, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3225, file: !3226, line: 45, baseType: !114, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3196, file: !3187, line: 66, baseType: !3231, size: 2048, offset: 1280)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, elements: !3232)
!3232 = !{!3233}
!3233 = !DISubrange(count: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !3186, file: !3187, line: 88, baseType: !3235, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!98, !544}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !3186, file: !3187, line: 90, baseType: !3239, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!98, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !3244, line: 66, flags: DIFlagFwdDecl)
!3244 = !DIFile(filename: "./include/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b1d3b970b1358b3a026c26044689afa")
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !3186, file: !3187, line: 91, baseType: !115, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !520, file: !35, line: 880, baseType: !3247, size: 1088, offset: 7936)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3248, line: 72, baseType: !3249)
!3248 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3248, line: 23, size: 1088, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3258, !3259, !3260, !3261, !3286, !3287, !3288}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3249, file: !3248, line: 28, baseType: !267, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3249, file: !3248, line: 38, baseType: !567, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3249, file: !3248, line: 40, baseType: !115, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3249, file: !3248, line: 43, baseType: !705, size: 320, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3249, file: !3248, line: 44, baseType: !3256, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3248, line: 44, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3249, file: !3248, line: 48, baseType: !115, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3249, file: !3248, line: 59, baseType: !572, size: 256, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3249, file: !3248, line: 60, baseType: !96, size: 64, offset: 896)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3249, file: !3248, line: 61, baseType: !3262, size: 64, offset: 960)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3265, line: 13, size: 1216, elements: !3266)
!3265 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3264, file: !3265, line: 14, baseType: !96, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3264, file: !3265, line: 15, baseType: !115, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3264, file: !3265, line: 17, baseType: !115, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3264, file: !3265, line: 17, baseType: !115, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3264, file: !3265, line: 18, baseType: !115, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3264, file: !3265, line: 18, baseType: !115, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3264, file: !3265, line: 19, baseType: !1870, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3264, file: !3265, line: 21, baseType: !1035, size: 64, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3264, file: !3265, line: 23, baseType: !1035, size: 64, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3264, file: !3265, line: 24, baseType: !1035, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3264, file: !3265, line: 25, baseType: !1035, size: 64, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3264, file: !3265, line: 26, baseType: !1035, size: 64, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3264, file: !3265, line: 27, baseType: !1035, size: 64, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3264, file: !3265, line: 28, baseType: !1035, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3264, file: !3265, line: 29, baseType: !1035, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3264, file: !3265, line: 30, baseType: !1035, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3264, file: !3265, line: 31, baseType: !1035, size: 64, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3264, file: !3265, line: 32, baseType: !1035, size: 64, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3264, file: !3265, line: 33, baseType: !1035, size: 64, offset: 1152)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3249, file: !3248, line: 63, baseType: !125, size: 32, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3249, file: !3248, line: 69, baseType: !169, size: 16, offset: 1056)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3249, file: !3248, line: 70, baseType: !2183, size: 16, offset: 1072)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !35, line: 882, baseType: !115, size: 64, offset: 9024)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !520, file: !35, line: 885, baseType: !135, size: 32, offset: 9088)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !520, file: !35, line: 886, baseType: !3292, size: 64, offset: 9152)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !520, file: !35, line: 901, baseType: !848, size: 64, offset: 9216)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !520, file: !35, line: 904, baseType: !544, size: 64, offset: 9280)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !520, file: !35, line: 906, baseType: !3297, size: 64, offset: 9344)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !520, file: !35, line: 930, baseType: !125, size: 32, offset: 9408)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !520, file: !35, line: 933, baseType: !125, size: 32, offset: 9440)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !520, file: !35, line: 935, baseType: !3302, size: 64, offset: 9472)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3302, file: !81, line: 104, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !520, file: !35, line: 940, baseType: !565, size: 64, offset: 9536)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !520, file: !35, line: 942, baseType: !2290, size: 256, offset: 9600)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !517, file: !35, line: 986, baseType: !3310, offset: 10240)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !642)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !200, file: !201, line: 882, baseType: !516, size: 64, offset: 9792)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !200, file: !201, line: 884, baseType: !98, size: 32, offset: 9856)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !200, file: !201, line: 885, baseType: !98, size: 32, offset: 9888)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !200, file: !201, line: 886, baseType: !98, size: 32, offset: 9920)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !200, file: !201, line: 888, baseType: !98, size: 32, offset: 9952)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !200, file: !201, line: 890, baseType: !115, size: 64, offset: 9984)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !200, file: !201, line: 893, baseType: !7, size: 32, offset: 10048)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !200, file: !201, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !200, file: !201, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !200, file: !201, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !200, file: !201, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !200, file: !201, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !200, file: !201, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !200, file: !201, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !200, file: !201, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !200, file: !201, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !200, file: !201, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !200, file: !201, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !200, file: !201, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !200, file: !201, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !200, file: !201, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !200, file: !201, line: 969, baseType: !115, size: 64, offset: 10176)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !200, file: !201, line: 971, baseType: !3334, size: 448, offset: 10240)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !3335)
!3335 = !{!3336, !3337, !3342}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3334, file: !75, line: 26, baseType: !115, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3334, file: !75, line: 27, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!1035, !3341}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !75, line: 28, baseType: !3343, size: 320, offset: 128)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3334, file: !75, line: 28, size: 320, elements: !3344)
!3344 = !{!3345, !3355, !3380}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3343, file: !75, line: 37, baseType: !3346, size: 320)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !75, line: 30, size: 320, elements: !3347)
!3347 = !{!3348, !3350, !3351, !3352, !3353, !3354}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3346, file: !75, line: 31, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3346, file: !75, line: 32, baseType: !210, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3346, file: !75, line: 33, baseType: !210, size: 32, offset: 96)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3346, file: !75, line: 34, baseType: !210, size: 32, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3346, file: !75, line: 35, baseType: !267, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3346, file: !75, line: 36, baseType: !3349, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3343, file: !75, line: 47, baseType: !3356, size: 192)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !75, line: 39, size: 192, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3379}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3356, file: !75, line: 40, baseType: !382, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3356, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !75, line: 42, baseType: !3361, size: 64, offset: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !75, line: 42, size: 64, elements: !3362)
!3362 = !{!3363, !3371}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3361, file: !75, line: 43, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3366, line: 7, size: 128, elements: !3367)
!3366 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3367 = !{!3368, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3365, file: !3366, line: 8, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !113, line: 93, baseType: !119)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3365, file: !3366, line: 9, baseType: !119, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3361, file: !75, line: 44, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3374, line: 7, size: 64, elements: !3375)
!3374 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3375 = !{!3376, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3373, file: !3374, line: 8, baseType: !3377, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3374, line: 5, baseType: !697)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3373, file: !3374, line: 9, baseType: !697, size: 32, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3356, file: !75, line: 46, baseType: !267, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3343, file: !75, line: 55, baseType: !3381, size: 256)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !75, line: 49, size: 256, elements: !3382)
!3382 = !{!3383, !3386, !3387, !3388, !3389}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3381, file: !75, line: 50, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3381, file: !75, line: 51, baseType: !98, size: 32, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3381, file: !75, line: 52, baseType: !98, size: 32, offset: 96)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3381, file: !75, line: 53, baseType: !115, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3381, file: !75, line: 54, baseType: !115, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !200, file: !201, line: 973, baseType: !3391, size: 32, offset: 10688)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !101, line: 27, baseType: !3392)
!3392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !113, line: 28, baseType: !98)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !200, file: !201, line: 974, baseType: !3391, size: 32, offset: 10720)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !200, file: !201, line: 978, baseType: !115, size: 64, offset: 10752)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !200, file: !201, line: 987, baseType: !199, size: 64, offset: 10816)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !201, line: 990, baseType: !199, size: 64, offset: 10880)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !200, file: !201, line: 995, baseType: !173, size: 128, offset: 10944)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !200, file: !201, line: 996, baseType: !173, size: 128, offset: 11072)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !200, file: !201, line: 997, baseType: !199, size: 64, offset: 11200)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !200, file: !201, line: 1005, baseType: !173, size: 128, offset: 11264)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !200, file: !201, line: 1006, baseType: !173, size: 128, offset: 11392)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !200, file: !201, line: 1009, baseType: !612, size: 64, offset: 11520)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !200, file: !201, line: 1010, baseType: !3404, size: 512, offset: 11584)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 512, elements: !629)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !200, file: !201, line: 1011, baseType: !173, size: 128, offset: 12096)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !200, file: !201, line: 1012, baseType: !173, size: 128, offset: 12224)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !200, file: !201, line: 1014, baseType: !2039, size: 64, offset: 12352)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !200, file: !201, line: 1017, baseType: !2176, size: 64, offset: 12416)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !200, file: !201, line: 1020, baseType: !2176, size: 64, offset: 12480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !200, file: !201, line: 1023, baseType: !96, size: 64, offset: 12544)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !200, file: !201, line: 1025, baseType: !267, size: 64, offset: 12608)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !200, file: !201, line: 1026, baseType: !267, size: 64, offset: 12672)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !200, file: !201, line: 1031, baseType: !267, size: 64, offset: 12736)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !200, file: !201, line: 1032, baseType: !3415, size: 192, offset: 12800)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !201, line: 324, size: 192, elements: !3416)
!3416 = !{!3417, !3418, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3415, file: !201, line: 326, baseType: !267, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3415, file: !201, line: 327, baseType: !267, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3415, file: !201, line: 328, baseType: !359, size: 32, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !200, file: !201, line: 1041, baseType: !115, size: 64, offset: 12992)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !200, file: !201, line: 1042, baseType: !115, size: 64, offset: 13056)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !200, file: !201, line: 1045, baseType: !267, size: 64, offset: 13120)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !200, file: !201, line: 1048, baseType: !267, size: 64, offset: 13184)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !200, file: !201, line: 1051, baseType: !115, size: 64, offset: 13248)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !200, file: !201, line: 1052, baseType: !115, size: 64, offset: 13312)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !200, file: !201, line: 1055, baseType: !3427, size: 640, offset: 13376)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3428, line: 132, size: 640, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3429 = !{!3430, !3436, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3427, file: !3428, line: 133, baseType: !3431, size: 576)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3432, size: 576, elements: !608)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3428, line: 117, size: 192, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3432, file: !3428, line: 118, baseType: !267, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3432, file: !3428, line: 119, baseType: !396, size: 128, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3427, file: !3428, line: 134, baseType: !7, size: 32, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3427, file: !3428, line: 135, baseType: !7, size: 32, offset: 608)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !200, file: !201, line: 1058, baseType: !3439, size: 448, offset: 14016)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3428, line: 144, size: 448, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3439, file: !3428, line: 145, baseType: !552, size: 128, align: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3439, file: !3428, line: 146, baseType: !572, size: 256, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3439, file: !3428, line: 147, baseType: !7, size: 32, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !200, file: !201, line: 1064, baseType: !656, size: 64, offset: 14464)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !200, file: !201, line: 1067, baseType: !656, size: 64, offset: 14528)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !200, file: !201, line: 1070, baseType: !656, size: 64, offset: 14592)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !200, file: !201, line: 1074, baseType: !689, size: 64, offset: 14656)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !200, file: !201, line: 1084, baseType: !3449, size: 128, offset: 14720)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !2786)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !200, file: !201, line: 1086, baseType: !3451, size: 64, offset: 14848)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !201, line: 55, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !200, file: !201, line: 1089, baseType: !3454, size: 64, offset: 14912)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3455, line: 12, size: 64, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3456 = !{!3457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3454, file: !3455, line: 13, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3455, line: 8, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !200, file: !201, line: 1090, baseType: !3461, size: 128, offset: 14976)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3462, line: 13, size: 128, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3461, file: !3462, line: 14, baseType: !173, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !200, file: !201, line: 1097, baseType: !3466, size: 64, offset: 15104)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !201, line: 50, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !200, file: !201, line: 1100, baseType: !3469, size: 64, offset: 15168)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !201, line: 1100, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !200, file: !201, line: 1103, baseType: !3472, size: 64, offset: 15232)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !201, line: 53, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !200, file: !201, line: 1107, baseType: !3475, size: 64, offset: 15296)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3477, line: 31, size: 576, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3478 = !{!3479, !3480, !3483, !3486, !3489, !3490, !4705, !4708, !4709}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3476, file: !3477, line: 32, baseType: !216, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3476, file: !3477, line: 33, baseType: !3481, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3477, line: 9, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3476, file: !3477, line: 34, baseType: !3484, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3477, line: 10, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3476, file: !3477, line: 35, baseType: !3487, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3477, line: 8, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3476, file: !3477, line: 36, baseType: !640, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3476, file: !3477, line: 37, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !3493, line: 61, size: 27648, elements: !3494)
!3493 = !DIFile(filename: "./include/net/net_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9448d530239774cde6340b292589a220")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3516, !3560, !3563, !3564, !3565, !3626, !3627, !3684, !3685, !3686, !3689, !3690, !3691, !3692, !3707, !3708, !3712, !3713, !3725, !3795, !3801, !3812, !3825, !4388, !4550, !4572, !4630, !4633, !4647, !4703, !4704}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !3492, file: !3493, line: 65, baseType: !216, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "rules_mod_lock", scope: !3492, file: !3493, line: 68, baseType: !135, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_unreg_count", scope: !3492, file: !3493, line: 70, baseType: !125, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_seq", scope: !3492, file: !3493, line: 72, baseType: !7, size: 32, offset: 96)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !3492, file: !3493, line: 73, baseType: !210, size: 32, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nsid_lock", scope: !3492, file: !3493, line: 75, baseType: !135, size: 32, offset: 160)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fnhe_genid", scope: !3492, file: !3493, line: 76, baseType: !125, size: 32, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3492, file: !3493, line: 78, baseType: !173, size: 128, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "exit_list", scope: !3492, file: !3493, line: 79, baseType: !173, size: 128, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "defer_free_list", scope: !3492, file: !3493, line: 85, baseType: !228, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_list", scope: !3492, file: !3493, line: 86, baseType: !228, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "key_domain", scope: !3492, file: !3493, line: 89, baseType: !758, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3492, file: !3493, line: 91, baseType: !848, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3492, file: !3493, line: 92, baseType: !851, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "netns_ids", scope: !3492, file: !3493, line: 93, baseType: !3510, size: 192, offset: 832)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3511, line: 19, size: 192, elements: !3512)
!3511 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3510, file: !3511, line: 20, baseType: !1121, size: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3510, file: !3511, line: 21, baseType: !7, size: 32, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3510, file: !3511, line: 22, baseType: !7, size: 32, offset: 160)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3492, file: !3493, line: 95, baseType: !3517, size: 192, offset: 1024)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3518, line: 9, size: 192, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3519 = !{!3520, !3521, !3558, !3559}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3517, file: !3518, line: 10, baseType: !565, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3517, file: !3518, line: 11, baseType: !3522, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3525, line: 16, size: 512, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!3526 = !{!3527, !3528, !3529, !3530, !3535, !3539, !3550, !3554}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3524, file: !3525, line: 17, baseType: !92, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !3524, file: !3525, line: 18, baseType: !92, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3524, file: !3525, line: 19, baseType: !98, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3524, file: !3525, line: 20, baseType: !3531, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!3534, !199}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3524, file: !3525, line: 21, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !3534}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3524, file: !3525, line: 22, baseType: !3540, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!98, !3543, !3534}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !3477, line: 53, size: 256, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3544, file: !3477, line: 54, baseType: !7, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3544, file: !3477, line: 55, baseType: !3475, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3544, file: !3477, line: 56, baseType: !3466, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3544, file: !3477, line: 57, baseType: !656, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3524, file: !3525, line: 23, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!848, !3534}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3524, file: !3525, line: 24, baseType: !3555, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!3534, !3534}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3517, file: !3518, line: 12, baseType: !7, size: 32, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3517, file: !3518, line: 13, baseType: !216, size: 32, offset: 160)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt_tracker", scope: !3492, file: !3493, line: 96, baseType: !3561, offset: 1216)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ref_tracker_dir", file: !3562, line: 11, elements: !537)
!3562 = !DIFile(filename: "./include/linux/ref_tracker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2430b45a012be0c6416a948c13597f4b")
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "notrefcnt_tracker", scope: !3492, file: !3493, line: 97, baseType: !3561, offset: 1216)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_head", scope: !3492, file: !3493, line: 100, baseType: !173, size: 128, offset: 1216)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net", scope: !3492, file: !3493, line: 101, baseType: !3566, size: 64, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3568, line: 30, size: 1408, elements: !3569)
!3568 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3598, !3599, !3604, !3609, !3610, !3611, !3612, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3567, file: !3568, line: 35, baseType: !125, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3567, file: !3568, line: 36, baseType: !216, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !3567, file: !3568, line: 37, baseType: !173, size: 128, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !3567, file: !3568, line: 39, baseType: !135, size: 32, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !3567, file: !3568, line: 40, baseType: !2039, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !3567, file: !3568, line: 41, baseType: !935, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, scope: !3567, file: !3568, line: 42, baseType: !3577, size: 64, offset: 384)
!3577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3567, file: !3568, line: 42, size: 64, elements: !3578)
!3578 = !{!3579, !3597}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !3577, file: !3568, line: 43, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !3583, line: 29, size: 768, elements: !3584)
!3583 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !3582, file: !3583, line: 30, baseType: !7, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !3582, file: !3583, line: 31, baseType: !2991, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !3582, file: !3583, line: 32, baseType: !2948, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !3582, file: !3583, line: 33, baseType: !1710, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !3582, file: !3583, line: 34, baseType: !2952, size: 64, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !3582, file: !3583, line: 36, baseType: !2944, size: 64, offset: 320)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !3582, file: !3583, line: 37, baseType: !2991, size: 64, offset: 384)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !3582, file: !3583, line: 38, baseType: !2977, size: 64, offset: 448)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !3582, file: !3583, line: 39, baseType: !2981, size: 64, offset: 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !3582, file: !3583, line: 41, baseType: !2981, size: 64, offset: 576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !3582, file: !3583, line: 43, baseType: !2986, size: 64, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !3582, file: !3583, line: 44, baseType: !541, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !3577, file: !3568, line: 44, baseType: !2938, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !3567, file: !3568, line: 46, baseType: !2792, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !3567, file: !3568, line: 47, baseType: !3600, size: 64, offset: 512)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3567, file: !3568, line: 47, size: 64, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !3600, file: !3568, line: 48, baseType: !1948, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !3600, file: !3568, line: 49, baseType: !1965, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3567, file: !3568, line: 51, baseType: !3605, size: 64, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !3583, line: 77, baseType: !3606)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!98, !544, !775, !111}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3567, file: !3568, line: 52, baseType: !96, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !3567, file: !3568, line: 53, baseType: !7, size: 32, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !3567, file: !3568, line: 54, baseType: !7, size: 32, offset: 736)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3567, file: !3568, line: 55, baseType: !3613, size: 32, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !101, line: 25, baseType: !210)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3567, file: !3568, line: 56, baseType: !646, size: 32, offset: 800)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3567, file: !3568, line: 57, baseType: !664, size: 32, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3567, file: !3568, line: 58, baseType: !117, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3567, file: !3568, line: 59, baseType: !3566, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !3567, file: !3568, line: 60, baseType: !402, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !3567, file: !3568, line: 61, baseType: !259, size: 192, align: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3567, file: !3568, line: 62, baseType: !775, size: 64, offset: 1280)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3567, file: !3568, line: 63, baseType: !100, size: 16, offset: 1344)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3567, file: !3568, line: 64, baseType: !159, size: 8, offset: 1360)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !3567, file: !3568, line: 65, baseType: !159, size: 8, offset: 1368)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !3567, file: !3568, line: 66, baseType: !3625, offset: 1376)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !642)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_stat", scope: !3492, file: !3493, line: 102, baseType: !3566, size: 64, offset: 1408)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !3492, file: !3493, line: 105, baseType: !3628, size: 768, offset: 1472)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !88, line: 199, size: 768, elements: !3629)
!3629 = !{!3630, !3635}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3628, file: !88, line: 200, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!98, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3628, file: !88, line: 201, baseType: !3636, size: 704, offset: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !88, line: 193, size: 704, elements: !3637)
!3637 = !{!3638, !3683}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3636, file: !88, line: 195, baseType: !3639, size: 640)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !88, line: 173, size: 640, elements: !3640)
!3640 = !{!3641, !3653, !3654, !3655, !3673, !3674, !3676, !3682}
!3641 = !DIDerivedType(tag: DW_TAG_member, scope: !3639, file: !88, line: 174, baseType: !3642, size: 192)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3639, file: !88, line: 174, size: 192, elements: !3643)
!3643 = !{!3644, !3652}
!3644 = !DIDerivedType(tag: DW_TAG_member, scope: !3642, file: !88, line: 175, baseType: !3645, size: 192)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3642, file: !88, line: 175, size: 192, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3645, file: !88, line: 176, baseType: !109, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3645, file: !88, line: 177, baseType: !98, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3645, file: !88, line: 178, baseType: !98, size: 32, offset: 96)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3645, file: !88, line: 179, baseType: !98, size: 32, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3645, file: !88, line: 180, baseType: !98, size: 32, offset: 160)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3642, file: !88, line: 182, baseType: !552, size: 128, align: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3639, file: !88, line: 184, baseType: !2039, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3639, file: !88, line: 185, baseType: !109, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3639, file: !88, line: 186, baseType: !3656, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !88, line: 204, size: 960, elements: !3658)
!3658 = !{!3659, !3660, !3664, !3669}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3657, file: !88, line: 205, baseType: !3628, size: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3657, file: !88, line: 206, baseType: !3661, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!3634, !3656}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3657, file: !88, line: 207, baseType: !3665, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !3668, !1887, !1888}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3657, file: !88, line: 209, baseType: !3670, size: 64, offset: 896)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!98, !3668, !109}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3639, file: !88, line: 187, baseType: !3634, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3639, file: !88, line: 188, baseType: !3675, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3639, file: !88, line: 189, baseType: !3677, size: 64, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !88, line: 157, size: 256, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3678, file: !88, line: 158, baseType: !259, size: 192, align: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3678, file: !88, line: 159, baseType: !3668, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3639, file: !88, line: 190, baseType: !620, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3636, file: !88, line: 196, baseType: !402, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rtnl", scope: !3492, file: !3493, line: 108, baseType: !1872, size: 64, offset: 2240)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "genl_sock", scope: !3492, file: !3493, line: 109, baseType: !1872, size: 64, offset: 2304)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_sock", scope: !3492, file: !3493, line: 111, baseType: !3687, size: 64, offset: 2368)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "uevent_sock", file: !3493, line: 53, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name_head", scope: !3492, file: !3493, line: 113, baseType: !3125, size: 64, offset: 2432)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index_head", scope: !3492, file: !3493, line: 114, baseType: !3125, size: 64, offset: 2496)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_by_index", scope: !3492, file: !3493, line: 115, baseType: !1121, size: 128, offset: 2560)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "netdev_chain", scope: !3492, file: !3493, line: 116, baseType: !3693, size: 64, offset: 2688)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !3694, line: 70, size: 64, elements: !3695)
!3694 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!3695 = !{!3696}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3693, file: !3694, line: 71, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3694, line: 54, size: 192, elements: !3699)
!3699 = !{!3700, !3705, !3706}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3698, file: !3694, line: 55, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3694, line: 51, baseType: !3702)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!98, !3697, !115, !96}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3698, file: !3694, line: 56, baseType: !3697, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3698, file: !3694, line: 57, baseType: !98, size: 32, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mix", scope: !3492, file: !3493, line: 121, baseType: !210, size: 32, offset: 2752)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_dev", scope: !3492, file: !3493, line: 123, baseType: !3709, size: 64, offset: 2816)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !3711, line: 10, flags: DIFlagFwdDecl)
!3711 = !DIFile(filename: "./include/net/dst_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ddc782c85737bd5bc289b976340e94f")
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !3492, file: !3493, line: 126, baseType: !173, size: 128, offset: 2880)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !3492, file: !3493, line: 128, baseType: !3714, size: 256, offset: 3008)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_core", file: !3715, line: 11, size: 256, elements: !3716)
!3715 = !DIFile(filename: "./include/net/netns/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18c9bedf6eb8c587f29284e442644416")
!3716 = !{!3717, !3718, !3719, !3720, !3723}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !3714, file: !3715, line: 13, baseType: !3668, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_somaxconn", scope: !3714, file: !3715, line: 15, baseType: !98, size: 32, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_txrehash", scope: !3714, file: !3715, line: 16, baseType: !159, size: 8, offset: 96)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "prot_inuse", scope: !3714, file: !3715, line: 19, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "prot_inuse", file: !3715, line: 8, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rps_default_mask", scope: !3714, file: !3715, line: 23, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mib", scope: !3492, file: !3493, line: 129, baseType: !3726, size: 832, offset: 3264)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_mib", file: !3727, line: 7, size: 832, elements: !3728)
!3727 = !DIFile(filename: "./include/net/netns/mib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ba22b1e9bdeaf8d7b85d4f8f9594169")
!3728 = !{!3729, !3741, !3742, !3748, !3756, !3764, !3765, !3766, !3767, !3775, !3783, !3789, !3794}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ip_statistics", scope: !3726, file: !3727, line: 8, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipstats_mib", file: !3732, line: 51, size: 2432, elements: !3733)
!3732 = !DIFile(filename: "./include/net/snmp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4e66422a0c08c32beca5964652b5d9b")
!3733 = !{!3734, !3738}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3731, file: !3732, line: 53, baseType: !3735, size: 2432)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 2432, elements: !3736)
!3736 = !{!3737}
!3737 = !DISubrange(count: 38)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !3731, file: !3732, line: 54, baseType: !3739, offset: 2432)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3740, line: 64, elements: !537)
!3740 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_statistics", scope: !3726, file: !3727, line: 10, baseType: !3730, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_statistics", scope: !3726, file: !3727, line: 13, baseType: !3743, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_mib", file: !3732, line: 92, size: 1024, elements: !3745)
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3744, file: !3732, line: 93, baseType: !3747, size: 1024)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1024, elements: !2786)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "net_statistics", scope: !3726, file: !3727, line: 14, baseType: !3749, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_mib", file: !3732, line: 104, size: 8128, elements: !3751)
!3751 = !{!3752}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3750, file: !3732, line: 105, baseType: !3753, size: 8128)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 8128, elements: !3754)
!3754 = !{!3755}
!3755 = !DISubrange(count: 127)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "udp_statistics", scope: !3726, file: !3727, line: 16, baseType: !3757, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_mib", file: !3732, line: 98, size: 640, elements: !3759)
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3758, file: !3732, line: 99, baseType: !3761, size: 640)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !3762)
!3762 = !{!3763}
!3763 = !DISubrange(count: 10)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "udp_stats_in6", scope: !3726, file: !3727, line: 18, baseType: !3757, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_statistics", scope: !3726, file: !3727, line: 31, baseType: !3757, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_stats_in6", scope: !3726, file: !3727, line: 33, baseType: !3757, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_statistics", scope: !3726, file: !3727, line: 36, baseType: !3768, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp_mib", file: !3732, line: 59, size: 1920, elements: !3770)
!3770 = !{!3771}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3769, file: !3732, line: 60, baseType: !3772, size: 1920)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1920, elements: !3773)
!3773 = !{!3774}
!3774 = !DISubrange(count: 30)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "icmpmsg_statistics", scope: !3726, file: !3727, line: 37, baseType: !3776, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpmsg_mib", file: !3732, line: 64, size: 32768, elements: !3778)
!3778 = !{!3779}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3777, file: !3732, line: 65, baseType: !3780, size: 32768)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32768, elements: !3781)
!3781 = !{!3782}
!3782 = !DISubrange(count: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_statistics", scope: !3726, file: !3727, line: 39, baseType: !3784, size: 64, offset: 640)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_mib", file: !3732, line: 71, size: 448, elements: !3786)
!3786 = !{!3787}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3785, file: !3732, line: 72, baseType: !3788, size: 448)
!3788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 448, elements: !2168)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6msg_statistics", scope: !3726, file: !3727, line: 40, baseType: !3790, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6msg_mib", file: !3732, line: 81, size: 32768, elements: !3792)
!3792 = !{!3793}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !3791, file: !3732, line: 82, baseType: !3780, size: 32768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_devsnmp6", scope: !3726, file: !3727, line: 41, baseType: !3566, size: 64, offset: 768)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3492, file: !3493, line: 130, baseType: !3796, size: 320, offset: 4096)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_packet", file: !3797, line: 11, size: 320, elements: !3798)
!3797 = !DIFile(filename: "./include/net/netns/packet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9993c7d0edda08e4a61acc9b7e9bef6b")
!3798 = !{!3799, !3800}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sklist_lock", scope: !3796, file: !3797, line: 12, baseType: !572, size: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sklist", scope: !3796, file: !3797, line: 13, baseType: !620, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !3492, file: !3493, line: 132, baseType: !3802, size: 256, offset: 4416)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_unix", file: !3803, line: 16, size: 256, elements: !3804)
!3803 = !DIFile(filename: "./include/net/netns/unix.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b0a0c994514b5bcede3924402949afb")
!3804 = !{!3805, !3810, !3811}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !3802, file: !3803, line: 17, baseType: !3806, size: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unix_table", file: !3803, line: 10, size: 128, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !3806, file: !3803, line: 11, baseType: !1563, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !3806, file: !3803, line: 12, baseType: !3125, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_dgram_qlen", scope: !3802, file: !3803, line: 18, baseType: !98, size: 32, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !3802, file: !3803, line: 19, baseType: !3668, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "nexthop", scope: !3492, file: !3493, line: 134, baseType: !3813, size: 576, offset: 4672)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nexthop", file: !3814, line: 12, size: 576, elements: !3815)
!3814 = !DIFile(filename: "./include/net/netns/nexthop.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9226e726e069a329f5fede8d471a5b93")
!3815 = !{!3816, !3817, !3818, !3819, !3820}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3813, file: !3814, line: 13, baseType: !402, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "devhash", scope: !3813, file: !3814, line: 14, baseType: !3125, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3813, file: !3814, line: 16, baseType: !7, size: 32, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_allocated", scope: !3813, file: !3814, line: 17, baseType: !210, size: 32, offset: 160)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_chain", scope: !3813, file: !3814, line: 18, baseType: !3821, size: 384, offset: 192)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !3694, line: 65, size: 384, elements: !3822)
!3822 = !{!3823, !3824}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3821, file: !3694, line: 66, baseType: !705, size: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3821, file: !3694, line: 67, baseType: !3697, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !3492, file: !3493, line: 135, baseType: !3826, size: 5632, offset: 5632)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv4", file: !3827, line: 44, size: 5632, elements: !3828)
!3827 = !DIFile(filename: "./include/net/netns/ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "984d85e204c6d0b56270eed465b5c766")
!3828 = !{!3829, !3837, !3840, !3841, !3842, !3843, !3844, !3845, !3848, !3849, !3852, !3853, !3856, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3871, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4337, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4364, !4365, !4366, !4367, !4368, !4371, !4372, !4373, !4374, !4377, !4378, !4379, !4380, !4381}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_death_row", scope: !3826, file: !3827, line: 45, baseType: !3830, size: 1024)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_timewait_death_row", file: !3827, line: 34, size: 1024, elements: !3831)
!3831 = !{!3832, !3833, !3836}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "tw_refcount", scope: !3830, file: !3827, line: 35, baseType: !216, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "hashinfo", scope: !3830, file: !3827, line: 38, baseType: !3834, size: 64, align: 512, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_hashinfo", file: !3827, line: 32, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_tw_buckets", scope: !3830, file: !3827, line: 39, baseType: !98, size: 32, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "udp_table", scope: !3826, file: !3827, line: 46, baseType: !3838, size: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "udp_table", file: !3827, line: 46, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "forw_hdr", scope: !3826, file: !3827, line: 49, baseType: !3668, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !3826, file: !3827, line: 50, baseType: !3668, size: 64, offset: 1152)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_hdr", scope: !3826, file: !3827, line: 51, baseType: !3668, size: 64, offset: 1216)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !3826, file: !3827, line: 52, baseType: !3668, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_hdr", scope: !3826, file: !3827, line: 53, baseType: !3668, size: 64, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !3826, file: !3827, line: 55, baseType: !3846, size: 64, offset: 1408)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_devconf", file: !3827, line: 16, flags: DIFlagFwdDecl)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !3826, file: !3827, line: 56, baseType: !3846, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ra_chain", scope: !3826, file: !3827, line: 57, baseType: !3850, size: 64, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "ip_ra_chain", file: !3827, line: 57, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ra_mutex", scope: !3826, file: !3827, line: 58, baseType: !572, size: 256, offset: 1600)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !3826, file: !3827, line: 60, baseType: !3854, size: 64, offset: 1856)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_rules_ops", file: !3827, line: 17, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fib_main", scope: !3826, file: !3827, line: 61, baseType: !3857, size: 64, offset: 1920)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_table", file: !3827, line: 19, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "fib_default", scope: !3826, file: !3827, line: 62, baseType: !3857, size: 64, offset: 1984)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fib_rules_require_fldissect", scope: !3826, file: !3827, line: 63, baseType: !7, size: 32, offset: 2048)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_rules", scope: !3826, file: !3827, line: 64, baseType: !764, size: 8, offset: 2080)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_local_routes", scope: !3826, file: !3827, line: 66, baseType: !764, size: 8, offset: 2088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fib_offload_disabled", scope: !3826, file: !3827, line: 67, baseType: !764, size: 8, offset: 2096)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_shrink_window", scope: !3826, file: !3827, line: 68, baseType: !159, size: 8, offset: 2104)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !3826, file: !3827, line: 72, baseType: !3125, size: 64, offset: 2112)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "fibnl", scope: !3826, file: !3827, line: 73, baseType: !1872, size: 64, offset: 2176)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !3826, file: !3827, line: 75, baseType: !1872, size: 64, offset: 2240)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !3826, file: !3827, line: 77, baseType: !3869, size: 64, offset: 2304)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer_base", file: !3827, line: 77, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !3826, file: !3827, line: 78, baseType: !3872, size: 64, offset: 2368)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fqdir", file: !3874, line: 13, size: 2560, elements: !3875)
!3874 = !DIFile(filename: "./include/net/inet_frag.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0fbce9165be02acf2490f91012eb3f9")
!3875 = !{!3876, !3877, !3878, !3879, !3880, !4229, !4230, !4231, !4232, !4233, !4234}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "high_thresh", scope: !3873, file: !3874, line: 15, baseType: !1035, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "low_thresh", scope: !3873, file: !3874, line: 16, baseType: !1035, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3873, file: !3874, line: 17, baseType: !98, size: 32, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "max_dist", scope: !3873, file: !3874, line: 18, baseType: !98, size: 32, offset: 160)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !3873, file: !3874, line: 19, baseType: !3881, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frags", file: !3874, line: 107, size: 1024, elements: !3883)
!3883 = !{!3884, !3885, !4176, !4180, !4181, !4185, !4186, !4227, !4228}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !3882, file: !3874, line: 108, baseType: !7, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !3882, file: !3874, line: 110, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3889, !1870}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frag_queue", file: !3874, line: 85, size: 1408, elements: !3891)
!3891 = !{!3892, !3898, !3931, !3932, !3933, !3934, !3935, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3890, file: !3874, line: 86, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3894, line: 17, size: 64, elements: !3895)
!3894 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3895 = !{!3896}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3893, file: !3894, line: 18, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3890, file: !3874, line: 90, baseType: !3899, size: 352, offset: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !3874, line: 87, size: 352, elements: !3900)
!3900 = !{!3901, !3912}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !3899, file: !3874, line: 88, baseType: !3902, size: 160)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v4_compare_key", file: !3874, line: 48, size: 160, elements: !3903)
!3903 = !{!3904, !3906, !3907, !3908, !3909, !3911}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !3902, file: !3874, line: 49, baseType: !3905, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !2003, line: 39, baseType: !211)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !3902, file: !3874, line: 50, baseType: !3905, size: 32, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3902, file: !3874, line: 51, baseType: !210, size: 32, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !3902, file: !3874, line: 52, baseType: !210, size: 32, offset: 96)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3902, file: !3874, line: 53, baseType: !3910, size: 16, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2003, line: 37, baseType: !170)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3902, file: !3874, line: 54, baseType: !169, size: 16, offset: 144)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !3899, file: !3874, line: 89, baseType: !3913, size: 352)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v6_compare_key", file: !3874, line: 57, size: 352, elements: !3914)
!3914 = !{!3915, !3927, !3928, !3929, !3930}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !3913, file: !3874, line: 58, baseType: !3916, size: 128)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !3917, line: 33, size: 128, elements: !3918)
!3917 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !3916, file: !3917, line: 40, baseType: !3920, size: 128)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !3917, line: 34, size: 128, elements: !3921)
!3921 = !{!3922, !3923, !3925}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !3920, file: !3917, line: 35, baseType: !2785, size: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !3920, file: !3917, line: 37, baseType: !3924, size: 128)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3910, size: 128, elements: !378)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !3920, file: !3917, line: 38, baseType: !3926, size: 128)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 128, elements: !629)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !3913, file: !3874, line: 59, baseType: !3916, size: 128, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3913, file: !3874, line: 60, baseType: !210, size: 32, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3913, file: !3874, line: 61, baseType: !3905, size: 32, offset: 288)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !3913, file: !3874, line: 62, baseType: !210, size: 32, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3890, file: !3874, line: 91, baseType: !2278, size: 320, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3890, file: !3874, line: 92, baseType: !135, size: 32, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3890, file: !3874, line: 93, baseType: !216, size: 32, offset: 800)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "rb_fragments", scope: !3890, file: !3874, line: 94, baseType: !402, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fragments_tail", scope: !3890, file: !3874, line: 95, baseType: !3936, size: 64, offset: 896)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !3938, line: 840, size: 1792, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!3939 = !{!3940, !3956, !3957, !3962, !3966, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4150, !4152, !4153, !4155, !4156, !4157, !4158}
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 841, baseType: !3941, size: 192)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 841, size: 192, elements: !3942)
!3942 = !{!3943, !3953, !3954, !3955}
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !3938, line: 842, baseType: !3944, size: 192)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3941, file: !3938, line: 842, size: 192, elements: !3945)
!3945 = !{!3946, !3947, !3948}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3944, file: !3938, line: 844, baseType: !3936, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !3944, file: !3938, line: 845, baseType: !3936, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3944, file: !3938, line: 847, baseType: !3949, size: 64, offset: 128)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3944, file: !3938, line: 847, size: 64, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3949, file: !3938, line: 848, baseType: !3709, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !3949, file: !3938, line: 853, baseType: !115, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !3941, file: !3938, line: 856, baseType: !259, size: 192, align: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3941, file: !3938, line: 857, baseType: !173, size: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !3941, file: !3938, line: 858, baseType: !228, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !3937, file: !3938, line: 861, baseType: !1872, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 863, baseType: !3958, size: 64, offset: 256)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 863, size: 64, elements: !3959)
!3959 = !{!3960, !3961}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3958, file: !3938, line: 864, baseType: !342, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !3958, file: !3938, line: 865, baseType: !267, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3937, file: !3938, line: 873, baseType: !3963, size: 384, align: 64, offset: 320)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 384, elements: !3964)
!3964 = !{!3965}
!3965 = !DISubrange(count: 48)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 875, baseType: !3967, size: 128, offset: 704)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 875, size: 128, elements: !3968)
!3968 = !{!3969, !3977}
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !3938, line: 876, baseType: !3970, size: 128)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !3938, line: 876, size: 128, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !3970, file: !3938, line: 877, baseType: !115, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !3970, file: !3938, line: 878, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !3936}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !3967, file: !3938, line: 880, baseType: !173, size: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !3937, file: !3938, line: 887, baseType: !115, size: 64, offset: 832)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3937, file: !3938, line: 889, baseType: !7, size: 32, offset: 896)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3937, file: !3938, line: 890, baseType: !7, size: 32, offset: 928)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !3937, file: !3938, line: 891, baseType: !170, size: 16, offset: 960)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !3937, file: !3938, line: 892, baseType: !170, size: 16, offset: 976)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !3937, file: !3938, line: 897, baseType: !170, size: 16, offset: 992)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !3937, file: !3938, line: 908, baseType: !3985, offset: 1008)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !3986)
!3986 = !{!3987}
!3987 = !DISubrange(count: 0)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !3937, file: !3938, line: 910, baseType: !161, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !3937, file: !3938, line: 911, baseType: !161, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !3937, file: !3938, line: 912, baseType: !161, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !3937, file: !3938, line: 913, baseType: !161, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !3937, file: !3938, line: 914, baseType: !161, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !3937, file: !3938, line: 915, baseType: !161, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !3937, file: !3938, line: 916, baseType: !161, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !3937, file: !3938, line: 918, baseType: !161, size: 8, offset: 1016)
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 924, baseType: !3997, size: 448, offset: 1024)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 924, size: 448, elements: !3998)
!3998 = !{!3999, !4075}
!3999 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !3938, line: 924, baseType: !4000, size: 448)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3938, line: 924, size: 448, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4040, !4041, !4042, !4043, !4052, !4057, !4058, !4063, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4000, file: !3938, line: 924, baseType: !3985)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4000, file: !3938, line: 924, baseType: !161, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4000, file: !3938, line: 924, baseType: !161, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4000, file: !3938, line: 924, baseType: !3985, offset: 8)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4000, file: !3938, line: 924, baseType: !161, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4000, file: !3938, line: 924, baseType: !161, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4000, file: !3938, line: 924, baseType: !161, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4000, file: !3938, line: 924, baseType: !169, size: 16, offset: 48)
!4030 = !DIDerivedType(tag: DW_TAG_member, scope: !4000, file: !3938, line: 924, baseType: !4031, size: 32, offset: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4000, file: !3938, line: 924, size: 32, elements: !4032)
!4032 = !{!4033, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4031, file: !3938, line: 924, baseType: !4034, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !2003, line: 44, baseType: !211)
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !4031, file: !3938, line: 924, baseType: !4036, size: 32)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4031, file: !3938, line: 924, size: 32, elements: !4037)
!4037 = !{!4038, !4039}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4036, file: !3938, line: 924, baseType: !170, size: 16)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4036, file: !3938, line: 924, baseType: !170, size: 16, offset: 16)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4000, file: !3938, line: 924, baseType: !211, size: 32, offset: 96)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4000, file: !3938, line: 924, baseType: !98, size: 32, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4000, file: !3938, line: 924, baseType: !211, size: 32, offset: 160)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4000, file: !3938, line: 924, baseType: !4044, size: 32, offset: 192)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4000, file: !3938, line: 924, size: 32, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4044, file: !3938, line: 924, baseType: !210, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !3938, line: 924, baseType: !4048, size: 32)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4044, file: !3938, line: 924, size: 32, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4048, file: !3938, line: 924, baseType: !3910, size: 16)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4048, file: !3938, line: 924, baseType: !170, size: 16, offset: 16)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !4000, file: !3938, line: 924, baseType: !4053, size: 32, offset: 224)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4000, file: !3938, line: 924, size: 32, elements: !4054)
!4054 = !{!4055, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4053, file: !3938, line: 924, baseType: !7, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4053, file: !3938, line: 924, baseType: !7, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4000, file: !3938, line: 924, baseType: !211, size: 32, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4000, file: !3938, line: 924, baseType: !4059, size: 32, offset: 288)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4000, file: !3938, line: 924, size: 32, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4059, file: !3938, line: 924, baseType: !211, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4059, file: !3938, line: 924, baseType: !211, size: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, scope: !4000, file: !3938, line: 924, baseType: !4064, size: 16, offset: 320)
!4064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4000, file: !3938, line: 924, size: 16, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4064, file: !3938, line: 924, baseType: !3910, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4064, file: !3938, line: 924, baseType: !161, size: 8)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 336)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 352)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 368)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4000, file: !3938, line: 924, baseType: !3910, size: 16, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 400)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 416)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4000, file: !3938, line: 924, baseType: !170, size: 16, offset: 432)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !3997, file: !3938, line: 924, baseType: !4076, size: 448)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3938, line: 924, size: 448, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4115, !4116, !4117, !4118, !4127, !4132, !4133, !4138, !4143, !4144, !4145, !4146, !4147, !4148, !4149}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !4076, file: !3938, line: 924, baseType: !3985)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !4076, file: !3938, line: 924, baseType: !161, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !4076, file: !3938, line: 924, baseType: !161, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !4076, file: !3938, line: 924, baseType: !3985, offset: 8)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !4076, file: !3938, line: 924, baseType: !161, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !4076, file: !3938, line: 924, baseType: !161, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !4076, file: !3938, line: 924, baseType: !161, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !4076, file: !3938, line: 924, baseType: !169, size: 16, offset: 48)
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !3938, line: 924, baseType: !4107, size: 32, offset: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !3938, line: 924, size: 32, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !4107, file: !3938, line: 924, baseType: !4034, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, scope: !4107, file: !3938, line: 924, baseType: !4111, size: 32)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4107, file: !3938, line: 924, size: 32, elements: !4112)
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !4111, file: !3938, line: 924, baseType: !170, size: 16)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !4111, file: !3938, line: 924, baseType: !170, size: 16, offset: 16)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4076, file: !3938, line: 924, baseType: !211, size: 32, offset: 96)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !4076, file: !3938, line: 924, baseType: !98, size: 32, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4076, file: !3938, line: 924, baseType: !211, size: 32, offset: 160)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !3938, line: 924, baseType: !4119, size: 32, offset: 192)
!4119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !3938, line: 924, size: 32, elements: !4120)
!4120 = !{!4121, !4122}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !4119, file: !3938, line: 924, baseType: !210, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !3938, line: 924, baseType: !4123, size: 32)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4119, file: !3938, line: 924, size: 32, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !4123, file: !3938, line: 924, baseType: !3910, size: 16)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !4123, file: !3938, line: 924, baseType: !170, size: 16, offset: 16)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !3938, line: 924, baseType: !4128, size: 32, offset: 224)
!4128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !3938, line: 924, size: 32, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !4128, file: !3938, line: 924, baseType: !7, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !4128, file: !3938, line: 924, baseType: !7, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !4076, file: !3938, line: 924, baseType: !211, size: 32, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !3938, line: 924, baseType: !4134, size: 32, offset: 288)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !3938, line: 924, size: 32, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !4134, file: !3938, line: 924, baseType: !211, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !4134, file: !3938, line: 924, baseType: !211, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !3938, line: 924, baseType: !4139, size: 16, offset: 320)
!4139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !3938, line: 924, size: 16, elements: !4140)
!4140 = !{!4141, !4142}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !4139, file: !3938, line: 924, baseType: !3910, size: 16)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !4139, file: !3938, line: 924, baseType: !161, size: 8)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 336)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 352)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 368)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4076, file: !3938, line: 924, baseType: !3910, size: 16, offset: 384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 400)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 416)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !4076, file: !3938, line: 924, baseType: !170, size: 16, offset: 432)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3937, file: !3938, line: 1047, baseType: !4151, size: 32, offset: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !3938, line: 683, baseType: !7)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3937, file: !3938, line: 1048, baseType: !4151, size: 32, offset: 1504)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3937, file: !3938, line: 1049, baseType: !4154, size: 64, offset: 1536)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3937, file: !3938, line: 1050, baseType: !4154, size: 64, offset: 1600)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !3937, file: !3938, line: 1051, baseType: !7, size: 32, offset: 1664)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3937, file: !3938, line: 1052, baseType: !216, size: 32, offset: 1696)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !3937, file: !3938, line: 1056, baseType: !4159, size: 64, offset: 1728)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !3938, line: 4679, size: 64, elements: !4161)
!4161 = !{!4162, !4163, !4165, !4166}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4160, file: !3938, line: 4680, baseType: !216, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4160, file: !3938, line: 4681, baseType: !4164, size: 8, offset: 32)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8, elements: !468)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !4160, file: !3938, line: 4682, baseType: !159, size: 8, offset: 40)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4160, file: !3938, line: 4683, baseType: !3625, align: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "last_run_head", scope: !3890, file: !3874, line: 96, baseType: !3936, size: 64, offset: 960)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !3890, file: !3874, line: 97, baseType: !342, size: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3890, file: !3874, line: 98, baseType: !98, size: 32, offset: 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "meat", scope: !3890, file: !3874, line: 99, baseType: !98, size: 32, offset: 1120)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !3890, file: !3874, line: 100, baseType: !159, size: 8, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3890, file: !3874, line: 101, baseType: !161, size: 8, offset: 1160)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !3890, file: !3874, line: 102, baseType: !169, size: 16, offset: 1168)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !3890, file: !3874, line: 103, baseType: !3872, size: 64, offset: 1216)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3890, file: !3874, line: 104, baseType: !552, size: 128, align: 64, offset: 1280)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !3882, file: !3874, line: 112, baseType: !4177, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !3889}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "frag_expire", scope: !3882, file: !3874, line: 113, baseType: !2284, size: 64, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cachep", scope: !3882, file: !3874, line: 114, baseType: !4182, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4184, line: 325, flags: DIFlagFwdDecl)
!4184 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cache_name", scope: !3882, file: !3874, line: 115, baseType: !92, size: 64, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rhash_params", scope: !3882, file: !3874, line: 116, baseType: !4187, size: 320, offset: 384)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !3894, line: 56, size: 320, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4201, !4203}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !4187, file: !3894, line: 57, baseType: !169, size: 16)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !4187, file: !3894, line: 58, baseType: !169, size: 16, offset: 16)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !4187, file: !3894, line: 59, baseType: !169, size: 16, offset: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !4187, file: !3894, line: 60, baseType: !169, size: 16, offset: 48)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !4187, file: !3894, line: 61, baseType: !7, size: 32, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !4187, file: !3894, line: 62, baseType: !169, size: 16, offset: 96)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !4187, file: !3894, line: 63, baseType: !764, size: 8, offset: 112)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !4187, file: !3894, line: 64, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !3894, line: 38, baseType: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!210, !1870, !210, !210}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !4187, file: !3894, line: 65, baseType: !4202, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !3894, line: 39, baseType: !4198)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !4187, file: !3894, line: 66, baseType: !4204, size: 64, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !3894, line: 40, baseType: !4205)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!98, !4208, !1870}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !3894, line: 33, size: 128, elements: !4210)
!4210 = !{!4211, !4226}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !4209, file: !3894, line: 34, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !3894, line: 81, size: 1088, elements: !4214)
!4214 = !{!4215, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !4213, file: !3894, line: 82, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !3894, line: 26, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !4213, file: !3894, line: 83, baseType: !7, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !4213, file: !3894, line: 84, baseType: !7, size: 32, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4213, file: !3894, line: 85, baseType: !4187, size: 320, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !4213, file: !3894, line: 86, baseType: !764, size: 8, offset: 448)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !4213, file: !3894, line: 87, baseType: !2290, size: 256, offset: 512)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4213, file: !3894, line: 88, baseType: !572, size: 256, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4213, file: !3894, line: 89, baseType: !135, size: 32, offset: 1024)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !4213, file: !3894, line: 90, baseType: !125, size: 32, offset: 1056)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4209, file: !3894, line: 35, baseType: !1870, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3882, file: !3874, line: 117, baseType: !216, size: 32, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3882, file: !3874, line: 118, baseType: !1384, size: 256, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !3873, file: !3874, line: 20, baseType: !3491, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3873, file: !3874, line: 21, baseType: !764, size: 8, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "rhashtable", scope: !3873, file: !3874, line: 23, baseType: !4213, size: 1088, align: 512, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !3873, file: !3874, line: 26, baseType: !565, size: 64, align: 512, offset: 2048)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3873, file: !3874, line: 27, baseType: !2290, size: 256, offset: 2112)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !3873, file: !3874, line: 28, baseType: !228, size: 64, offset: 2368)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_all", scope: !3826, file: !3827, line: 80, baseType: !159, size: 8, offset: 2432)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_enable_probe", scope: !3826, file: !3827, line: 81, baseType: !159, size: 8, offset: 2440)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_broadcasts", scope: !3826, file: !3827, line: 82, baseType: !159, size: 8, offset: 2448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ignore_bogus_error_responses", scope: !3826, file: !3827, line: 83, baseType: !159, size: 8, offset: 2456)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_errors_use_inbound_ifaddr", scope: !3826, file: !3827, line: 84, baseType: !159, size: 8, offset: 2464)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratelimit", scope: !3826, file: !3827, line: 85, baseType: !98, size: 32, offset: 2496)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratemask", scope: !3826, file: !3827, line: 86, baseType: !98, size: 32, offset: 2528)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_pmtu", scope: !3826, file: !3827, line: 88, baseType: !210, size: 32, offset: 2560)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_mtu_expires", scope: !3826, file: !3827, line: 89, baseType: !98, size: 32, offset: 2592)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_advmss", scope: !3826, file: !3827, line: 90, baseType: !98, size: 32, offset: 2624)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ip_local_ports", scope: !3826, file: !3827, line: 92, baseType: !4246, size: 160, offset: 2656)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "local_ports", file: !3827, line: 21, size: 160, elements: !4247)
!4247 = !{!4248, !4254, !4256}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4246, file: !3827, line: 22, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !386, line: 860, baseType: !4250)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 853, size: 64, elements: !4251)
!4251 = !{!4252, !4253}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4250, file: !386, line: 858, baseType: !892, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4250, file: !386, line: 859, baseType: !135, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4246, file: !3827, line: 23, baseType: !4255, size: 64, offset: 64)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !2166)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "warned", scope: !4246, file: !3827, line: 24, baseType: !764, size: 8, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn", scope: !3826, file: !3827, line: 94, baseType: !159, size: 8, offset: 2816)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn_fallback", scope: !3826, file: !3827, line: 95, baseType: !159, size: 8, offset: 2824)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_default_ttl", scope: !3826, file: !3827, line: 97, baseType: !159, size: 8, offset: 2832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_no_pmtu_disc", scope: !3826, file: !3827, line: 98, baseType: !159, size: 8, offset: 2840)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_use_pmtu", scope: !3826, file: !3827, line: 99, baseType: !159, size: 8, offset: 2848)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_update_priority", scope: !3826, file: !3827, line: 100, baseType: !159, size: 8, offset: 2856)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_nonlocal_bind", scope: !3826, file: !3827, line: 101, baseType: !159, size: 8, offset: 2864)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_autobind_reuse", scope: !3826, file: !3827, line: 102, baseType: !159, size: 8, offset: 2872)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_dynaddr", scope: !3826, file: !3827, line: 104, baseType: !159, size: 8, offset: 2880)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_early_demux", scope: !3826, file: !3827, line: 105, baseType: !159, size: 8, offset: 2888)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_demux", scope: !3826, file: !3827, line: 109, baseType: !159, size: 8, offset: 2896)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_early_demux", scope: !3826, file: !3827, line: 110, baseType: !159, size: 8, offset: 2904)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_nexthop_compat_mode", scope: !3826, file: !3827, line: 112, baseType: !159, size: 8, offset: 2912)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fwmark_reflect", scope: !3826, file: !3827, line: 114, baseType: !159, size: 8, offset: 2920)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fwmark_accept", scope: !3826, file: !3827, line: 115, baseType: !159, size: 8, offset: 2928)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probing", scope: !3826, file: !3827, line: 119, baseType: !159, size: 8, offset: 2936)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probe_floor", scope: !3826, file: !3827, line: 120, baseType: !98, size: 32, offset: 2944)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_base_mss", scope: !3826, file: !3827, line: 121, baseType: !98, size: 32, offset: 2976)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_snd_mss", scope: !3826, file: !3827, line: 122, baseType: !98, size: 32, offset: 3008)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_threshold", scope: !3826, file: !3827, line: 123, baseType: !98, size: 32, offset: 3040)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_interval", scope: !3826, file: !3827, line: 124, baseType: !210, size: 32, offset: 3072)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_time", scope: !3826, file: !3827, line: 126, baseType: !98, size: 32, offset: 3104)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_intvl", scope: !3826, file: !3827, line: 127, baseType: !98, size: 32, offset: 3136)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_probes", scope: !3826, file: !3827, line: 128, baseType: !159, size: 8, offset: 3168)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_retries", scope: !3826, file: !3827, line: 130, baseType: !159, size: 8, offset: 3176)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_synack_retries", scope: !3826, file: !3827, line: 131, baseType: !159, size: 8, offset: 3184)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syncookies", scope: !3826, file: !3827, line: 132, baseType: !159, size: 8, offset: 3192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_migrate_req", scope: !3826, file: !3827, line: 133, baseType: !159, size: 8, offset: 3200)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_nr", scope: !3826, file: !3827, line: 134, baseType: !159, size: 8, offset: 3208)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reordering", scope: !3826, file: !3827, line: 135, baseType: !98, size: 32, offset: 3232)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries1", scope: !3826, file: !3827, line: 136, baseType: !159, size: 8, offset: 3264)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries2", scope: !3826, file: !3827, line: 137, baseType: !159, size: 8, offset: 3272)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_orphan_retries", scope: !3826, file: !3827, line: 138, baseType: !159, size: 8, offset: 3280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tw_reuse", scope: !3826, file: !3827, line: 139, baseType: !159, size: 8, offset: 3288)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fin_timeout", scope: !3826, file: !3827, line: 140, baseType: !98, size: 32, offset: 3296)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_notsent_lowat", scope: !3826, file: !3827, line: 141, baseType: !7, size: 32, offset: 3328)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_sack", scope: !3826, file: !3827, line: 142, baseType: !159, size: 8, offset: 3360)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_window_scaling", scope: !3826, file: !3827, line: 143, baseType: !159, size: 8, offset: 3368)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_timestamps", scope: !3826, file: !3827, line: 144, baseType: !159, size: 8, offset: 3376)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_retrans", scope: !3826, file: !3827, line: 145, baseType: !159, size: 8, offset: 3384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_recovery", scope: !3826, file: !3827, line: 146, baseType: !159, size: 8, offset: 3392)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_thin_linear_timeouts", scope: !3826, file: !3827, line: 147, baseType: !159, size: 8, offset: 3400)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_slow_start_after_idle", scope: !3826, file: !3827, line: 148, baseType: !159, size: 8, offset: 3408)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retrans_collapse", scope: !3826, file: !3827, line: 149, baseType: !159, size: 8, offset: 3416)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_stdurg", scope: !3826, file: !3827, line: 150, baseType: !159, size: 8, offset: 3424)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rfc1337", scope: !3826, file: !3827, line: 151, baseType: !159, size: 8, offset: 3432)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_abort_on_overflow", scope: !3826, file: !3827, line: 152, baseType: !159, size: 8, offset: 3440)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fack", scope: !3826, file: !3827, line: 153, baseType: !159, size: 8, offset: 3448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_max_reordering", scope: !3826, file: !3827, line: 154, baseType: !98, size: 32, offset: 3456)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_adv_win_scale", scope: !3826, file: !3827, line: 155, baseType: !98, size: 32, offset: 3488)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_dsack", scope: !3826, file: !3827, line: 156, baseType: !159, size: 8, offset: 3520)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_app_win", scope: !3826, file: !3827, line: 157, baseType: !159, size: 8, offset: 3528)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_frto", scope: !3826, file: !3827, line: 158, baseType: !159, size: 8, offset: 3536)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_nometrics_save", scope: !3826, file: !3827, line: 159, baseType: !159, size: 8, offset: 3544)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_no_ssthresh_metrics_save", scope: !3826, file: !3827, line: 160, baseType: !159, size: 8, offset: 3552)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_moderate_rcvbuf", scope: !3826, file: !3827, line: 161, baseType: !159, size: 8, offset: 3560)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_win_divisor", scope: !3826, file: !3827, line: 162, baseType: !159, size: 8, offset: 3568)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_workaround_signed_windows", scope: !3826, file: !3827, line: 163, baseType: !159, size: 8, offset: 3576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_limit_output_bytes", scope: !3826, file: !3827, line: 164, baseType: !98, size: 32, offset: 3584)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_challenge_ack_limit", scope: !3826, file: !3827, line: 165, baseType: !98, size: 32, offset: 3616)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_rtt_wlen", scope: !3826, file: !3827, line: 166, baseType: !98, size: 32, offset: 3648)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_tso_segs", scope: !3826, file: !3827, line: 167, baseType: !159, size: 8, offset: 3680)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_rtt_log", scope: !3826, file: !3827, line: 168, baseType: !159, size: 8, offset: 3688)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_autocorking", scope: !3826, file: !3827, line: 169, baseType: !159, size: 8, offset: 3696)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reflect_tos", scope: !3826, file: !3827, line: 170, baseType: !159, size: 8, offset: 3704)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_invalid_ratelimit", scope: !3826, file: !3827, line: 171, baseType: !98, size: 32, offset: 3712)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ss_ratio", scope: !3826, file: !3827, line: 172, baseType: !98, size: 32, offset: 3744)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ca_ratio", scope: !3826, file: !3827, line: 173, baseType: !98, size: 32, offset: 3776)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_wmem", scope: !3826, file: !3827, line: 174, baseType: !4326, size: 96, offset: 3808)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 96, elements: !608)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rmem", scope: !3826, file: !3827, line: 175, baseType: !4326, size: 96, offset: 3904)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_child_ehash_entries", scope: !3826, file: !3827, line: 176, baseType: !7, size: 32, offset: 4000)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_delay_ns", scope: !3826, file: !3827, line: 177, baseType: !115, size: 64, offset: 4032)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_slack_ns", scope: !3826, file: !3827, line: 178, baseType: !115, size: 64, offset: 4096)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_syn_backlog", scope: !3826, file: !3827, line: 179, baseType: !98, size: 32, offset: 4160)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen", scope: !3826, file: !3827, line: 180, baseType: !98, size: 32, offset: 4192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_congestion_control", scope: !3826, file: !3827, line: 181, baseType: !4334, size: 64, offset: 4224)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_congestion_ops", file: !3827, line: 181, flags: DIFlagFwdDecl)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fastopen_ctx", scope: !3826, file: !3827, line: 182, baseType: !4338, size: 64, offset: 4288)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_fastopen_context", file: !3827, line: 42, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen_blackhole_timeout", scope: !3826, file: !3827, line: 183, baseType: !7, size: 32, offset: 4352)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_times", scope: !3826, file: !3827, line: 184, baseType: !125, size: 32, offset: 4384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_stamp", scope: !3826, file: !3827, line: 185, baseType: !115, size: 64, offset: 4416)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_timestamp", scope: !3826, file: !3827, line: 186, baseType: !210, size: 32, offset: 4480)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_count", scope: !3826, file: !3827, line: 187, baseType: !210, size: 32, offset: 4512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_enabled", scope: !3826, file: !3827, line: 188, baseType: !159, size: 8, offset: 4544)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_idle_rehash_rounds", scope: !3826, file: !3827, line: 189, baseType: !159, size: 8, offset: 4552)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_rehash_rounds", scope: !3826, file: !3827, line: 190, baseType: !159, size: 8, offset: 4560)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_suspend_rto_sec", scope: !3826, file: !3827, line: 191, baseType: !159, size: 8, offset: 4568)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_cong_thresh", scope: !3826, file: !3827, line: 192, baseType: !98, size: 32, offset: 4576)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_wmem_min", scope: !3826, file: !3827, line: 194, baseType: !98, size: 32, offset: 4608)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_rmem_min", scope: !3826, file: !3827, line: 195, baseType: !98, size: 32, offset: 4640)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_notify_on_flag_change", scope: !3826, file: !3827, line: 197, baseType: !159, size: 8, offset: 4672)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_linear_timeouts", scope: !3826, file: !3827, line: 198, baseType: !159, size: 8, offset: 4680)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_llm_reports", scope: !3826, file: !3827, line: 204, baseType: !159, size: 8, offset: 4688)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_memberships", scope: !3826, file: !3827, line: 205, baseType: !98, size: 32, offset: 4704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_msf", scope: !3826, file: !3827, line: 206, baseType: !98, size: 32, offset: 4736)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_qrv", scope: !3826, file: !3827, line: 207, baseType: !98, size: 32, offset: 4768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ping_group_range", scope: !3826, file: !3827, line: 209, baseType: !4359, size: 128, offset: 4800)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ping_group_range", file: !3827, line: 27, size: 128, elements: !4360)
!4360 = !{!4361, !4362}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4359, file: !3827, line: 28, baseType: !4249, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4359, file: !3827, line: 29, baseType: !4363, size: 64, offset: 64)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 64, elements: !2166)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !3826, file: !3827, line: 211, baseType: !125, size: 32, offset: 4928)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_child_hash_entries", scope: !3826, file: !3827, line: 213, baseType: !7, size: 32, offset: 4960)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_local_reserved_ports", scope: !3826, file: !3827, line: 216, baseType: !2380, size: 64, offset: 4992)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_prot_sock", scope: !3826, file: !3827, line: 217, baseType: !98, size: 32, offset: 5056)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mrt", scope: !3826, file: !3827, line: 222, baseType: !4369, size: 64, offset: 5120)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "mr_table", file: !3827, line: 222, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_fields", scope: !3826, file: !3827, line: 229, baseType: !210, size: 32, offset: 5184)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_use_neigh", scope: !3826, file: !3827, line: 230, baseType: !159, size: 8, offset: 5216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_policy", scope: !3826, file: !3827, line: 231, baseType: !159, size: 8, offset: 5224)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !3826, file: !3827, line: 234, baseType: !4375, size: 64, offset: 5248)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_notifier_ops", file: !3827, line: 234, flags: DIFlagFwdDecl)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fib_seq", scope: !3826, file: !3827, line: 235, baseType: !7, size: 32, offset: 5312)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_notifier_ops", scope: !3826, file: !3827, line: 237, baseType: !4375, size: 64, offset: 5376)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !3826, file: !3827, line: 238, baseType: !7, size: 32, offset: 5440)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_genid", scope: !3826, file: !3827, line: 240, baseType: !125, size: 32, offset: 5472)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id_key", scope: !3826, file: !3827, line: 241, baseType: !4382, size: 128, offset: 5504)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "siphash_key_t", file: !4383, line: 21, baseType: !4384)
!4383 = !DIFile(filename: "./include/linux/siphash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d57c3335a3ba0d593037d2e9c3d8f6e3")
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4383, line: 19, size: 128, elements: !4385)
!4385 = !{!4386}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4384, file: !4383, line: 20, baseType: !4387, size: 128)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !2166)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !3492, file: !3493, line: 137, baseType: !4389, size: 6144, offset: 11264)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv6", file: !4390, line: 61, size: 6144, elements: !4391)
!4390 = !DIFile(filename: "./include/net/netns/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd307fc6de84f37ce4af8cda3288a428")
!4391 = !{!4392, !4456, !4500, !4503, !4504, !4505, !4506, !4509, !4512, !4515, !4516, !4517, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4538, !4539, !4540, !4541, !4547}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_dst_ops", scope: !4389, file: !4390, line: 63, baseType: !4393, size: 1536)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_ops", file: !3711, line: 15, size: 1536, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4402, !4408, !4414, !4415, !4419, !4423, !4427, !4431, !4432, !4436, !4440, !4444, !4450, !4454, !4455}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4393, file: !3711, line: 16, baseType: !102, size: 16)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "gc_thresh", scope: !4393, file: !3711, line: 17, baseType: !7, size: 32, offset: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4393, file: !3711, line: 19, baseType: !4398, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !4401}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !4393, file: !3711, line: 20, baseType: !4403, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!4406, !4406, !211}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_entry", file: !3711, line: 8, flags: DIFlagFwdDecl)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "default_advmss", scope: !4393, file: !3711, line: 21, baseType: !4409, size: 64, offset: 192)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!7, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4407)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !4393, file: !3711, line: 22, baseType: !4409, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cow_metrics", scope: !4393, file: !3711, line: 23, baseType: !4416, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!3349, !4406, !115}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4393, file: !3711, line: 24, baseType: !4420, size: 64, offset: 384)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4406}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ifdown", scope: !4393, file: !3711, line: 25, baseType: !4424, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4406, !3709}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "negative_advice", scope: !4393, file: !3711, line: 27, baseType: !4428, size: 64, offset: 512)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !1872, !4406}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "link_failure", scope: !4393, file: !3711, line: 28, baseType: !3974, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "update_pmtu", scope: !4393, file: !3711, line: 29, baseType: !4433, size: 64, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4406, !1872, !3936, !210, !764}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !4393, file: !3711, line: 32, baseType: !4437, size: 64, offset: 704)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !4406, !1872, !3936}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "local_out", scope: !4393, file: !3711, line: 34, baseType: !4441, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!98, !3491, !1872, !3936}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "neigh_lookup", scope: !4393, file: !3711, line: 35, baseType: !4445, size: 64, offset: 832)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!4448, !4412, !3936, !1870}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "neighbour", file: !3711, line: 35, flags: DIFlagFwdDecl)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_neigh", scope: !4393, file: !3711, line: 38, baseType: !4451, size: 64, offset: 896)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !4412, !1870}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "kmem_cachep", scope: !4393, file: !3711, line: 41, baseType: !4182, size: 64, offset: 960)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pcpuc_entries", scope: !4393, file: !3711, line: 43, baseType: !823, size: 320, align: 512, offset: 1024)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !4389, file: !4390, line: 65, baseType: !4457, size: 1472, offset: 1536)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_sysctl_ipv6", file: !4390, line: 15, size: 1472, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4457, file: !4390, line: 17, baseType: !3668, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !4457, file: !4390, line: 18, baseType: !3668, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_hdr", scope: !4457, file: !4390, line: 19, baseType: !3668, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !4457, file: !4390, line: 20, baseType: !3668, size: 64, offset: 192)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_hdr", scope: !4457, file: !4390, line: 21, baseType: !3668, size: 64, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "flush_delay", scope: !4457, file: !4390, line: 23, baseType: !98, size: 32, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_max_size", scope: !4457, file: !4390, line: 24, baseType: !98, size: 32, offset: 352)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_min_interval", scope: !4457, file: !4390, line: 25, baseType: !98, size: 32, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_timeout", scope: !4457, file: !4390, line: 26, baseType: !98, size: 32, offset: 416)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_interval", scope: !4457, file: !4390, line: 27, baseType: !98, size: 32, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_elasticity", scope: !4457, file: !4390, line: 28, baseType: !98, size: 32, offset: 480)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_mtu_expires", scope: !4457, file: !4390, line: 29, baseType: !98, size: 32, offset: 512)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_min_advmss", scope: !4457, file: !4390, line: 30, baseType: !98, size: 32, offset: 544)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_fields", scope: !4457, file: !4390, line: 31, baseType: !210, size: 32, offset: 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_policy", scope: !4457, file: !4390, line: 32, baseType: !159, size: 8, offset: 608)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "bindv6only", scope: !4457, file: !4390, line: 33, baseType: !159, size: 8, offset: 616)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_consistency", scope: !4457, file: !4390, line: 34, baseType: !159, size: 8, offset: 624)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "auto_flowlabels", scope: !4457, file: !4390, line: 35, baseType: !159, size: 8, offset: 632)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_time", scope: !4457, file: !4390, line: 36, baseType: !98, size: 32, offset: 640)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_all", scope: !4457, file: !4390, line: 37, baseType: !159, size: 8, offset: 672)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_multicast", scope: !4457, file: !4390, line: 38, baseType: !159, size: 8, offset: 680)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_anycast", scope: !4457, file: !4390, line: 39, baseType: !159, size: 8, offset: 688)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask", scope: !4457, file: !4390, line: 40, baseType: !2269, size: 256, offset: 704)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask_ptr", scope: !4457, file: !4390, line: 41, baseType: !2380, size: 64, offset: 960)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "anycast_src_echo_reply", scope: !4457, file: !4390, line: 42, baseType: !159, size: 8, offset: 1024)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ip_nonlocal_bind", scope: !4457, file: !4390, line: 43, baseType: !159, size: 8, offset: 1032)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark_reflect", scope: !4457, file: !4390, line: 44, baseType: !159, size: 8, offset: 1040)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_state_ranges", scope: !4457, file: !4390, line: 45, baseType: !159, size: 8, offset: 1048)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_retries", scope: !4457, file: !4390, line: 46, baseType: !98, size: 32, offset: 1056)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_delay", scope: !4457, file: !4390, line: 47, baseType: !98, size: 32, offset: 1088)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_reflect", scope: !4457, file: !4390, line: 48, baseType: !98, size: 32, offset: 1120)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_cnt", scope: !4457, file: !4390, line: 49, baseType: !98, size: 32, offset: 1152)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_cnt", scope: !4457, file: !4390, line: 50, baseType: !98, size: 32, offset: 1184)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_len", scope: !4457, file: !4390, line: 51, baseType: !98, size: 32, offset: 1216)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_len", scope: !4457, file: !4390, line: 52, baseType: !98, size: 32, offset: 1248)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_flowlabel", scope: !4457, file: !4390, line: 53, baseType: !98, size: 32, offset: 1280)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id", scope: !4457, file: !4390, line: 54, baseType: !210, size: 32, offset: 1312)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id_wide", scope: !4457, file: !4390, line: 55, baseType: !267, size: 64, offset: 1344)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "skip_notify_on_dev_down", scope: !4457, file: !4390, line: 56, baseType: !159, size: 8, offset: 1408)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fib_notify_on_flag_change", scope: !4457, file: !4390, line: 57, baseType: !159, size: 8, offset: 1416)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_error_anycast_as_unicast", scope: !4457, file: !4390, line: 58, baseType: !159, size: 8, offset: 1424)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !4389, file: !4390, line: 66, baseType: !4501, size: 64, offset: 3008)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_devconf", file: !4390, line: 66, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !4389, file: !4390, line: 67, baseType: !4501, size: 64, offset: 3072)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !4389, file: !4390, line: 68, baseType: !3869, size: 64, offset: 3136)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !4389, file: !4390, line: 69, baseType: !3872, size: 64, offset: 3200)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_null_entry", scope: !4389, file: !4390, line: 70, baseType: !4507, size: 64, offset: 3264)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_info", file: !4390, line: 70, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_null_entry", scope: !4389, file: !4390, line: 71, baseType: !4510, size: 64, offset: 3328)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_info", file: !4390, line: 71, flags: DIFlagFwdDecl)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "rt6_stats", scope: !4389, file: !4390, line: 72, baseType: !4513, size: 64, offset: 3392)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_statistics", file: !4390, line: 72, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_fib_timer", scope: !4389, file: !4390, line: 73, baseType: !2278, size: 320, offset: 3456)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !4389, file: !4390, line: 74, baseType: !3125, size: 64, offset: 3776)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_main_tbl", scope: !4389, file: !4390, line: 75, baseType: !4518, size: 64, offset: 3840)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_table", file: !4390, line: 75, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walkers", scope: !4389, file: !4390, line: 76, baseType: !173, size: 128, offset: 3904)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walker_lock", scope: !4389, file: !4390, line: 77, baseType: !589, size: 64, offset: 4032)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_gc_lock", scope: !4389, file: !4390, line: 78, baseType: !135, size: 32, offset: 4096)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_expire", scope: !4389, file: !4390, line: 79, baseType: !125, size: 32, offset: 4128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_last_gc", scope: !4389, file: !4390, line: 80, baseType: !115, size: 64, offset: 4160)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_has_excl", scope: !4389, file: !4390, line: 81, baseType: !163, size: 8, offset: 4224)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_sk", scope: !4389, file: !4390, line: 93, baseType: !1872, size: 64, offset: 4288)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_sk", scope: !4389, file: !4390, line: 94, baseType: !1872, size: 64, offset: 4352)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_sk", scope: !4389, file: !4390, line: 95, baseType: !1872, size: 64, offset: 4416)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !4389, file: !4390, line: 96, baseType: !1872, size: 64, offset: 4480)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "inet6_addr_lst", scope: !4389, file: !4390, line: 98, baseType: !3125, size: 64, offset: 4544)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "addrconf_hash_lock", scope: !4389, file: !4390, line: 99, baseType: !135, size: 32, offset: 4608)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "addr_chk_work", scope: !4389, file: !4390, line: 100, baseType: !2346, size: 704, offset: 4672)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !4389, file: !4390, line: 110, baseType: !125, size: 32, offset: 5376)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_sernum", scope: !4389, file: !4390, line: 111, baseType: !125, size: 32, offset: 5408)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_data", scope: !4389, file: !4390, line: 112, baseType: !4536, size: 64, offset: 5440)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "seg6_pernet_data", file: !4390, line: 112, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !4389, file: !4390, line: 113, baseType: !4375, size: 64, offset: 5504)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ip6mr_notifier_ops", scope: !4389, file: !4390, line: 114, baseType: !4375, size: 64, offset: 5568)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !4389, file: !4390, line: 115, baseType: !7, size: 32, offset: 5632)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "ip6addrlbl_table", scope: !4389, file: !4390, line: 120, baseType: !4542, size: 128, offset: 5696)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4389, file: !4390, line: 116, size: 128, elements: !4543)
!4543 = !{!4544, !4545, !4546}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4542, file: !4390, line: 117, baseType: !620, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4542, file: !4390, line: 118, baseType: !135, size: 32, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4542, file: !4390, line: 119, baseType: !210, size: 32, offset: 96)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_data", scope: !4389, file: !4390, line: 121, baseType: !4548, size: 64, offset: 5824)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "ioam6_pernet_data", file: !4390, line: 121, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "nf", scope: !3492, file: !3493, line: 146, baseType: !4551, size: 1536, offset: 17408)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nf", file: !4552, line: 11, size: 1536, elements: !4553)
!4552 = !DIFile(filename: "./include/net/netns/netfilter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a540a45d672d0c2786c47c3c5b579081")
!4553 = !{!4554, !4555, !4562, !4563, !4569, !4570, !4571}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "proc_netfilter", scope: !4551, file: !4552, line: 13, baseType: !3566, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "nf_loggers", scope: !4551, file: !4552, line: 15, baseType: !4556, size: 704, offset: 64)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4557, size: 704, elements: !4560)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_logger", file: !4552, line: 8, flags: DIFlagFwdDecl)
!4560 = !{!4561}
!4561 = !DISubrange(count: 11)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "nf_log_dir_header", scope: !4551, file: !4552, line: 17, baseType: !3668, size: 64, offset: 768)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv4", scope: !4551, file: !4552, line: 22, baseType: !4564, size: 320, offset: 832)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4565, size: 320, elements: !4567)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_hook_entries", file: !4552, line: 22, flags: DIFlagFwdDecl)
!4567 = !{!4568}
!4568 = !DISubrange(count: 5)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv6", scope: !4551, file: !4552, line: 23, baseType: !4564, size: 320, offset: 1152)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv4_users", scope: !4551, file: !4552, line: 31, baseType: !7, size: 32, offset: 1472)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv6_users", scope: !4551, file: !4552, line: 34, baseType: !7, size: 32, offset: 1504)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !3492, file: !3493, line: 148, baseType: !4573, size: 832, offset: 18944)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ct", file: !4574, line: 96, size: 832, elements: !4575)
!4574 = !DIFile(filename: "./include/net/netns/conntrack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21e64ccd6dbd9c20f643db61f6885b6e")
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4581, !4599, !4602}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_log_invalid", scope: !4573, file: !4574, line: 100, baseType: !159, size: 8)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_events", scope: !4573, file: !4574, line: 101, baseType: !159, size: 8, offset: 8)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acct", scope: !4573, file: !4574, line: 102, baseType: !159, size: 8, offset: 16)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tstamp", scope: !4573, file: !4574, line: 103, baseType: !159, size: 8, offset: 24)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_checksum", scope: !4573, file: !4574, line: 104, baseType: !159, size: 8, offset: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4573, file: !4574, line: 106, baseType: !4582, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_conntrack_stat", file: !4584, line: 8, size: 416, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/netfilter/nf_conntrack_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72d1f1db376003bedde4743ba2b455f9")
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !4583, file: !4584, line: 9, baseType: !7, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !4583, file: !4584, line: 10, baseType: !7, size: 32, offset: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !4583, file: !4584, line: 11, baseType: !7, size: 32, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "insert_failed", scope: !4583, file: !4584, line: 12, baseType: !7, size: 32, offset: 96)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "clash_resolve", scope: !4583, file: !4584, line: 13, baseType: !7, size: 32, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !4583, file: !4584, line: 14, baseType: !7, size: 32, offset: 160)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "early_drop", scope: !4583, file: !4584, line: 15, baseType: !7, size: 32, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4583, file: !4584, line: 16, baseType: !7, size: 32, offset: 224)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "expect_new", scope: !4583, file: !4584, line: 17, baseType: !7, size: 32, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "expect_create", scope: !4583, file: !4584, line: 18, baseType: !7, size: 32, offset: 288)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "expect_delete", scope: !4583, file: !4584, line: 19, baseType: !7, size: 32, offset: 320)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "search_restart", scope: !4583, file: !4584, line: 20, baseType: !7, size: 32, offset: 352)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "chaintoolong", scope: !4583, file: !4584, line: 21, baseType: !7, size: 32, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "nf_conntrack_event_cb", scope: !4573, file: !4574, line: 107, baseType: !4600, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ct_event_notifier", file: !4574, line: 107, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "nf_ct_proto", scope: !4573, file: !4574, line: 108, baseType: !4603, size: 640, offset: 192)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ip_net", file: !4574, line: 79, size: 640, elements: !4604)
!4604 = !{!4605, !4609, !4620, !4625, !4629}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !4603, file: !4574, line: 80, baseType: !4606, size: 32)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_generic_net", file: !4574, line: 21, size: 32, elements: !4607)
!4607 = !{!4608}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4606, file: !4574, line: 22, baseType: !7, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !4603, file: !4574, line: 81, baseType: !4610, size: 480, offset: 32)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_tcp_net", file: !4574, line: 25, size: 480, elements: !4611)
!4611 = !{!4612, !4616, !4617, !4618, !4619}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !4610, file: !4574, line: 26, baseType: !4613, size: 448)
!4613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 448, elements: !4614)
!4614 = !{!4615}
!4615 = !DISubrange(count: 14)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_loose", scope: !4610, file: !4574, line: 27, baseType: !159, size: 8, offset: 448)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_be_liberal", scope: !4610, file: !4574, line: 28, baseType: !159, size: 8, offset: 456)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_max_retrans", scope: !4610, file: !4574, line: 29, baseType: !159, size: 8, offset: 464)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_ignore_invalid_rst", scope: !4610, file: !4574, line: 30, baseType: !159, size: 8, offset: 472)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !4603, file: !4574, line: 82, baseType: !4621, size: 64, offset: 512)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_udp_net", file: !4574, line: 42, size: 64, elements: !4622)
!4622 = !{!4623}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !4621, file: !4574, line: 43, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !2166)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "icmp", scope: !4603, file: !4574, line: 83, baseType: !4626, size: 32, offset: 576)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_icmp_net", file: !4574, line: 49, size: 32, elements: !4627)
!4627 = !{!4628}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4626, file: !4574, line: 50, baseType: !7, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6", scope: !4603, file: !4574, line: 84, baseType: !4626, size: 32, offset: 608)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !3492, file: !3493, line: 160, baseType: !4631, size: 64, offset: 19776)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_generic", file: !3493, line: 52, flags: DIFlagFwdDecl)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3492, file: !3493, line: 163, baseType: !4634, size: 512, offset: 19840)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_bpf", file: !4635, line: 21, size: 512, elements: !4636)
!4635 = !DIFile(filename: "./include/net/netns/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05106686771ead514c5766084ac70d8b")
!4636 = !{!4637, !4641, !4645}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "run_array", scope: !4634, file: !4635, line: 23, baseType: !4638, size: 128)
!4638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4639, size: 128, elements: !2166)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !4635, line: 12, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !4634, file: !4635, line: 24, baseType: !4642, size: 128, offset: 128)
!4642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4643, size: 128, elements: !2166)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog", file: !4635, line: 11, flags: DIFlagFwdDecl)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4634, file: !4635, line: 25, baseType: !4646, size: 256, offset: 256)
!4646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !2166)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm", scope: !3492, file: !3493, line: 167, baseType: !4648, size: 6656, offset: 20480)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_xfrm", file: !4649, line: 32, size: 6656, elements: !4650)
!4649 = !DIFile(filename: "./include/net/netns/xfrm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "692aed6e9598ebb84e84dba1a8ae5b74")
!4650 = !{!4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4665, !4675, !4677, !4678, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "state_all", scope: !4648, file: !4649, line: 33, baseType: !173, size: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "state_bydst", scope: !4648, file: !4649, line: 42, baseType: !3125, size: 64, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "state_bysrc", scope: !4648, file: !4649, line: 43, baseType: !3125, size: 64, offset: 192)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "state_byspi", scope: !4648, file: !4649, line: 44, baseType: !3125, size: 64, offset: 256)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "state_byseq", scope: !4648, file: !4649, line: 45, baseType: !3125, size: 64, offset: 320)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "state_hmask", scope: !4648, file: !4649, line: 46, baseType: !7, size: 32, offset: 384)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "state_num", scope: !4648, file: !4649, line: 47, baseType: !7, size: 32, offset: 416)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "state_hash_work", scope: !4648, file: !4649, line: 48, baseType: !2290, size: 256, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "policy_all", scope: !4648, file: !4649, line: 50, baseType: !173, size: 128, offset: 704)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "policy_byidx", scope: !4648, file: !4649, line: 51, baseType: !3125, size: 64, offset: 832)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "policy_idx_hmask", scope: !4648, file: !4649, line: 52, baseType: !7, size: 32, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "idx_generator", scope: !4648, file: !4649, line: 53, baseType: !7, size: 32, offset: 928)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "policy_inexact", scope: !4648, file: !4649, line: 54, baseType: !4664, size: 192, offset: 960)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 192, elements: !608)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "policy_bydst", scope: !4648, file: !4649, line: 55, baseType: !4666, size: 384, offset: 1152)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4667, size: 384, elements: !608)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hash", file: !4649, line: 14, size: 128, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4667, file: !4649, line: 15, baseType: !3125, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !4667, file: !4649, line: 16, baseType: !7, size: 32, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dbits4", scope: !4667, file: !4649, line: 17, baseType: !159, size: 8, offset: 96)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "sbits4", scope: !4667, file: !4649, line: 18, baseType: !159, size: 8, offset: 104)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "dbits6", scope: !4667, file: !4649, line: 19, baseType: !159, size: 8, offset: 112)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "sbits6", scope: !4667, file: !4649, line: 20, baseType: !159, size: 8, offset: 120)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "policy_count", scope: !4648, file: !4649, line: 56, baseType: !4676, size: 192, offset: 1536)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !751)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hash_work", scope: !4648, file: !4649, line: 57, baseType: !2290, size: 256, offset: 1728)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hthresh", scope: !4648, file: !4649, line: 58, baseType: !4679, size: 384, offset: 1984)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hthresh", file: !4649, line: 23, size: 384, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4679, file: !4649, line: 24, baseType: !2290, size: 256)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4679, file: !4649, line: 25, baseType: !4249, size: 64, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "lbits4", scope: !4679, file: !4649, line: 26, baseType: !159, size: 8, offset: 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "rbits4", scope: !4679, file: !4649, line: 27, baseType: !159, size: 8, offset: 328)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "lbits6", scope: !4679, file: !4649, line: 28, baseType: !159, size: 8, offset: 336)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "rbits6", scope: !4679, file: !4649, line: 29, baseType: !159, size: 8, offset: 344)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "inexact_bins", scope: !4648, file: !4649, line: 59, baseType: !173, size: 128, offset: 2368)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk", scope: !4648, file: !4649, line: 62, baseType: !1872, size: 64, offset: 2496)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk_stash", scope: !4648, file: !4649, line: 63, baseType: !1872, size: 64, offset: 2560)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_etime", scope: !4648, file: !4649, line: 65, baseType: !210, size: 32, offset: 2624)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_rseqth", scope: !4648, file: !4649, line: 66, baseType: !210, size: 32, offset: 2656)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_larval_drop", scope: !4648, file: !4649, line: 67, baseType: !98, size: 32, offset: 2688)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acq_expires", scope: !4648, file: !4649, line: 68, baseType: !210, size: 32, offset: 2720)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "policy_default", scope: !4648, file: !4649, line: 70, baseType: !607, size: 24, offset: 2752)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !4648, file: !4649, line: 73, baseType: !3668, size: 64, offset: 2816)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_dst_ops", scope: !4648, file: !4649, line: 76, baseType: !4393, size: 1536, offset: 3072)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_dst_ops", scope: !4648, file: !4649, line: 78, baseType: !4393, size: 1536, offset: 4608)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_lock", scope: !4648, file: !4649, line: 80, baseType: !135, size: 32, offset: 6144)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_hash_generation", scope: !4648, file: !4649, line: 81, baseType: !892, size: 32, offset: 6176)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_hash_generation", scope: !4648, file: !4649, line: 82, baseType: !892, size: 32, offset: 6208)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_lock", scope: !4648, file: !4649, line: 84, baseType: !135, size: 32, offset: 6240)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_cfg_mutex", scope: !4648, file: !4649, line: 85, baseType: !572, size: 256, offset: 6272)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "net_cookie", scope: !3492, file: !3493, line: 170, baseType: !267, size: 64, offset: 27136)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "diag_nlsk", scope: !3492, file: !3493, line: 190, baseType: !1872, size: 64, offset: 27200)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3476, file: !3477, line: 38, baseType: !4706, size: 64, offset: 384)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3477, line: 38, flags: DIFlagFwdDecl)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3476, file: !3477, line: 39, baseType: !4706, size: 64, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3476, file: !3477, line: 40, baseType: !4710, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3477, line: 12, flags: DIFlagFwdDecl)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !200, file: !201, line: 1110, baseType: !4713, size: 64, offset: 15360)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4715, line: 93, size: 8768, elements: !4716)
!4715 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4764, !4773, !4774, !4776, !4777, !4778, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4814, !4815, !4817, !4827, !4830, !4831, !4834, !4835, !4836, !4837, !4838, !4839}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4714, file: !4715, line: 94, baseType: !216, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4714, file: !4715, line: 95, baseType: !125, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4714, file: !4715, line: 96, baseType: !98, size: 32, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4714, file: !4715, line: 97, baseType: !98, size: 32, offset: 96)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4714, file: !4715, line: 98, baseType: !173, size: 128, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4714, file: !4715, line: 100, baseType: !130, size: 192, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4714, file: !4715, line: 103, baseType: !199, size: 64, offset: 448)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4714, file: !4715, line: 106, baseType: !4725, size: 192, offset: 512)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !853, line: 32, size: 192, elements: !4726)
!4726 = !{!4727, !4728}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4725, file: !853, line: 33, baseType: !173, size: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4725, file: !853, line: 34, baseType: !4729, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4730, line: 25, baseType: !4731)
!4730 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4730, line: 23, size: 64, elements: !4732)
!4732 = !{!4733}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4731, file: !4730, line: 24, baseType: !467, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4714, file: !4715, line: 109, baseType: !620, size: 64, offset: 704)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4714, file: !4715, line: 112, baseType: !98, size: 32, offset: 768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4714, file: !4715, line: 114, baseType: !98, size: 32, offset: 800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4714, file: !4715, line: 115, baseType: !199, size: 64, offset: 832)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4714, file: !4715, line: 118, baseType: !98, size: 32, offset: 896)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4714, file: !4715, line: 119, baseType: !7, size: 32, offset: 928)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4714, file: !4715, line: 121, baseType: !4741, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4715, line: 80, size: 448, elements: !4743)
!4743 = !{!4744, !4745, !4751}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4742, file: !4715, line: 81, baseType: !125, size: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4742, file: !4715, line: 82, baseType: !4746, size: 128, offset: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4715, line: 75, size: 128, elements: !4747)
!4747 = !{!4748, !4749}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4746, file: !4715, line: 76, baseType: !199, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4746, file: !4715, line: 77, baseType: !4750, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4742, file: !4715, line: 83, baseType: !1384, size: 256, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4714, file: !4715, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4714, file: !4715, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4714, file: !4715, line: 138, baseType: !7, size: 32, offset: 1056)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4714, file: !4715, line: 139, baseType: !173, size: 128, offset: 1088)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4714, file: !4715, line: 142, baseType: !334, size: 512, offset: 1216)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4714, file: !4715, line: 143, baseType: !342, size: 64, offset: 1728)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4714, file: !4715, line: 150, baseType: !4759, size: 256, offset: 1792)
!4759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4760, size: 256, elements: !2166)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4715, line: 38, size: 128, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4760, file: !4715, line: 39, baseType: !267, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4760, file: !4715, line: 40, baseType: !267, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4714, file: !4715, line: 156, baseType: !4765, size: 192, offset: 2048)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4715, line: 66, size: 192, elements: !4766)
!4766 = !{!4767}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4765, file: !4715, line: 67, baseType: !4768, size: 192)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4715, line: 47, size: 192, elements: !4769)
!4769 = !{!4770, !4771, !4772}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4768, file: !4715, line: 48, baseType: !567, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4768, file: !4715, line: 49, baseType: !567, size: 64, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4768, file: !4715, line: 50, baseType: !567, size: 64, offset: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4714, file: !4715, line: 160, baseType: !3427, size: 640, offset: 2240)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4714, file: !4715, line: 163, baseType: !4775, size: 256, offset: 2880)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 256, elements: !629)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4714, file: !4715, line: 169, baseType: !612, size: 64, offset: 3136)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4714, file: !4715, line: 172, baseType: !98, size: 32, offset: 3200)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4714, file: !4715, line: 174, baseType: !4779, size: 64, offset: 3264)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4715, line: 174, flags: DIFlagFwdDecl)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4714, file: !4715, line: 185, baseType: !4249, size: 64, offset: 3328)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4714, file: !4715, line: 186, baseType: !267, size: 64, offset: 3392)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4714, file: !4715, line: 186, baseType: !267, size: 64, offset: 3456)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4714, file: !4715, line: 186, baseType: !267, size: 64, offset: 3520)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4714, file: !4715, line: 186, baseType: !267, size: 64, offset: 3584)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4714, file: !4715, line: 187, baseType: !267, size: 64, offset: 3648)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4714, file: !4715, line: 188, baseType: !267, size: 64, offset: 3712)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4714, file: !4715, line: 189, baseType: !3415, size: 192, offset: 3776)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4714, file: !4715, line: 190, baseType: !115, size: 64, offset: 3968)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4714, file: !4715, line: 190, baseType: !115, size: 64, offset: 4032)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4714, file: !4715, line: 190, baseType: !115, size: 64, offset: 4096)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4714, file: !4715, line: 190, baseType: !115, size: 64, offset: 4160)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4714, file: !4715, line: 191, baseType: !115, size: 64, offset: 4224)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4714, file: !4715, line: 191, baseType: !115, size: 64, offset: 4288)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4714, file: !4715, line: 191, baseType: !115, size: 64, offset: 4352)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4714, file: !4715, line: 191, baseType: !115, size: 64, offset: 4416)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4714, file: !4715, line: 192, baseType: !115, size: 64, offset: 4480)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4714, file: !4715, line: 192, baseType: !115, size: 64, offset: 4544)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4714, file: !4715, line: 192, baseType: !115, size: 64, offset: 4608)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4714, file: !4715, line: 192, baseType: !115, size: 64, offset: 4672)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4714, file: !4715, line: 193, baseType: !115, size: 64, offset: 4736)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4714, file: !4715, line: 193, baseType: !115, size: 64, offset: 4800)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4714, file: !4715, line: 194, baseType: !4804, size: 448, offset: 4864)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4805, line: 12, size: 448, elements: !4806)
!4805 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4806 = !{!4807, !4808, !4809, !4810, !4811, !4812, !4813}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4804, file: !4805, line: 15, baseType: !267, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4804, file: !4805, line: 17, baseType: !267, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4804, file: !4805, line: 19, baseType: !267, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4804, file: !4805, line: 21, baseType: !267, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4804, file: !4805, line: 29, baseType: !267, size: 64, offset: 256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4804, file: !4805, line: 35, baseType: !267, size: 64, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4804, file: !4805, line: 44, baseType: !267, size: 64, offset: 384)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4714, file: !4715, line: 202, baseType: !269, size: 64, offset: 5312)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4714, file: !4715, line: 213, baseType: !4816, size: 2048, offset: 5376)
!4816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 2048, elements: !2786)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4714, file: !4715, line: 216, baseType: !4818, size: 448, offset: 7424)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4715, line: 30, size: 448, elements: !4819)
!4819 = !{!4820, !4821, !4822, !4823, !4824, !4825, !4826}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4818, file: !4715, line: 31, baseType: !98, size: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4818, file: !4715, line: 32, baseType: !1035, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4818, file: !4715, line: 33, baseType: !115, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4818, file: !4715, line: 34, baseType: !267, size: 64, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4818, file: !4715, line: 34, baseType: !267, size: 64, offset: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4818, file: !4715, line: 35, baseType: !115, size: 64, offset: 320)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4818, file: !4715, line: 35, baseType: !115, size: 64, offset: 384)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4714, file: !4715, line: 219, baseType: !4828, size: 64, offset: 7872)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4715, line: 219, flags: DIFlagFwdDecl)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4714, file: !4715, line: 222, baseType: !7, size: 32, offset: 7936)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4714, file: !4715, line: 223, baseType: !4832, size: 64, offset: 8000)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4715, line: 223, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4714, file: !4715, line: 230, baseType: !764, size: 8, offset: 8064)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4714, file: !4715, line: 231, baseType: !733, size: 16, offset: 8080)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4714, file: !4715, line: 232, baseType: !733, size: 16, offset: 8096)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4714, file: !4715, line: 234, baseType: !516, size: 64, offset: 8128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4714, file: !4715, line: 237, baseType: !572, size: 256, offset: 8192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4714, file: !4715, line: 243, baseType: !705, size: 320, offset: 8448)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !200, file: !201, line: 1111, baseType: !4841, size: 64, offset: 15424)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4715, line: 20, size: 16640, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4842, file: !4715, line: 21, baseType: !135, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4842, file: !4715, line: 22, baseType: !216, size: 32, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4842, file: !4715, line: 23, baseType: !130, size: 192, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4842, file: !4715, line: 24, baseType: !4848, size: 16384, offset: 256)
!4848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4849, size: 16384, elements: !1218)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !853, line: 51, size: 256, elements: !4850)
!4850 = !{!4851}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4849, file: !853, line: 52, baseType: !4852, size: 256)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !853, line: 37, size: 256, elements: !4853)
!4853 = !{!4854, !4861, !4862, !4866}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4852, file: !853, line: 39, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4856, line: 83, baseType: !4857)
!4856 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4856, line: 82, baseType: !4859)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{null, !98}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4852, file: !853, line: 40, baseType: !115, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4852, file: !853, line: 46, baseType: !4863, size: 64, offset: 128)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4856, line: 86, baseType: !4864)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4856, line: 85, baseType: !2394)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4852, file: !853, line: 48, baseType: !4729, size: 64, offset: 192)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !200, file: !201, line: 1112, baseType: !4729, size: 64, offset: 15488)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !200, file: !201, line: 1113, baseType: !4729, size: 64, offset: 15552)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !200, file: !201, line: 1115, baseType: !4729, size: 64, offset: 15616)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !200, file: !201, line: 1116, baseType: !4725, size: 192, offset: 15680)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !200, file: !201, line: 1117, baseType: !115, size: 64, offset: 15872)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !200, file: !201, line: 1118, baseType: !111, size: 64, offset: 15936)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !200, file: !201, line: 1119, baseType: !7, size: 32, offset: 16000)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !200, file: !201, line: 1121, baseType: !555, size: 64, offset: 16064)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !200, file: !201, line: 1125, baseType: !4876, size: 64, offset: 16128)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !201, line: 43, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !200, file: !201, line: 1127, baseType: !646, size: 32, offset: 16192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !200, file: !201, line: 1128, baseType: !7, size: 32, offset: 16224)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !200, file: !201, line: 1130, baseType: !4881, size: 128, offset: 16256)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4882, line: 37, size: 128, elements: !4883)
!4882 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4883 = !{!4884, !4885, !4886}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4881, file: !4882, line: 38, baseType: !98, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4881, file: !4882, line: 39, baseType: !125, size: 32, offset: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4881, file: !4882, line: 40, baseType: !4887, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4882, line: 24, flags: DIFlagFwdDecl)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !200, file: !201, line: 1131, baseType: !4890, size: 256, offset: 16384)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4891, line: 12, size: 256, elements: !4892)
!4891 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4892 = !{!4893, !4894, !4895, !4896}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4890, file: !4891, line: 13, baseType: !775, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4890, file: !4891, line: 14, baseType: !115, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4890, file: !4891, line: 15, baseType: !115, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4890, file: !4891, line: 16, baseType: !764, size: 8, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !200, file: !201, line: 1134, baseType: !267, size: 64, offset: 16640)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !200, file: !201, line: 1135, baseType: !267, size: 64, offset: 16704)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !200, file: !201, line: 1138, baseType: !135, size: 32, offset: 16768)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !200, file: !201, line: 1141, baseType: !359, size: 32, offset: 16800)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !200, file: !201, line: 1143, baseType: !4902, size: 64, offset: 16832)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !201, line: 735, size: 64, elements: !4903)
!4903 = !{!4904}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4902, file: !201, line: 736, baseType: !4905, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !200, file: !201, line: 1147, baseType: !399, size: 128, offset: 16896)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !200, file: !201, line: 1149, baseType: !199, size: 64, offset: 17024)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !200, file: !201, line: 1151, baseType: !4909, size: 64, offset: 17088)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !201, line: 1151, flags: DIFlagFwdDecl)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !200, file: !201, line: 1188, baseType: !96, size: 64, offset: 17152)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !200, file: !201, line: 1191, baseType: !4913, size: 64, offset: 17216)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !201, line: 44, flags: DIFlagFwdDecl)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !200, file: !201, line: 1194, baseType: !4916, size: 64, offset: 17280)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !201, line: 45, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !200, file: !201, line: 1197, baseType: !4919, size: 64, offset: 17344)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !201, line: 61, flags: DIFlagFwdDecl)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !200, file: !201, line: 1199, baseType: !4922, size: 64, offset: 17408)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4924, line: 99, size: 128, elements: !4925)
!4924 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4925 = !{!4926, !4927, !4928}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4923, file: !4924, line: 100, baseType: !565, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4923, file: !4924, line: 101, baseType: !125, size: 32, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4923, file: !4924, line: 103, baseType: !102, size: 16, offset: 96)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !200, file: !201, line: 1202, baseType: !4930, size: 64, offset: 17472)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !201, line: 48, flags: DIFlagFwdDecl)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !200, file: !201, line: 1205, baseType: !115, size: 64, offset: 17536)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !200, file: !201, line: 1206, baseType: !4934, size: 64, offset: 17600)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !853, line: 14, baseType: !4936)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !853, line: 12, size: 384, elements: !4937)
!4937 = !{!4938}
!4938 = !DIDerivedType(tag: DW_TAG_member, scope: !4936, file: !853, line: 13, baseType: !4939, size: 384)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4936, file: !853, line: 13, size: 384, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4944}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4939, file: !853, line: 13, baseType: !98, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4939, file: !853, line: 13, baseType: !98, size: 32, offset: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4939, file: !853, line: 13, baseType: !98, size: 32, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4939, file: !853, line: 13, baseType: !4945, size: 256, offset: 128)
!4945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4946, line: 37, size: 256, elements: !4947)
!4946 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4947 = !{!4948, !4953, !4966, !4972, !4981, !5008, !5013}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4945, file: !4946, line: 42, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 39, size: 64, elements: !4950)
!4950 = !{!4951, !4952}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4949, file: !4946, line: 40, baseType: !3392, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4949, file: !4946, line: 41, baseType: !652, size: 32, offset: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4945, file: !4946, line: 50, baseType: !4954, size: 192)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 45, size: 192, elements: !4955)
!4955 = !{!4956, !4958, !4959, !4965}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4954, file: !4946, line: 46, baseType: !4957, size: 32)
!4957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !113, line: 95, baseType: !98)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4954, file: !4946, line: 47, baseType: !98, size: 32, offset: 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4954, file: !4946, line: 48, baseType: !4960, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4946, line: 11, baseType: !4961)
!4961 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4946, line: 8, size: 64, elements: !4962)
!4962 = !{!4963, !4964}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4961, file: !4946, line: 9, baseType: !98, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4961, file: !4946, line: 10, baseType: !96, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4954, file: !4946, line: 49, baseType: !98, size: 32, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4945, file: !4946, line: 57, baseType: !4967, size: 128)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 53, size: 128, elements: !4968)
!4968 = !{!4969, !4970, !4971}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4967, file: !4946, line: 54, baseType: !3392, size: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4967, file: !4946, line: 55, baseType: !652, size: 32, offset: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4967, file: !4946, line: 56, baseType: !4960, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4945, file: !4946, line: 66, baseType: !4973, size: 256)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 60, size: 256, elements: !4974)
!4974 = !{!4975, !4976, !4977, !4978, !4980}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4973, file: !4946, line: 61, baseType: !3392, size: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4973, file: !4946, line: 62, baseType: !652, size: 32, offset: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4973, file: !4946, line: 63, baseType: !98, size: 32, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4973, file: !4946, line: 64, baseType: !4979, size: 64, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !113, line: 94, baseType: !1076)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4973, file: !4946, line: 65, baseType: !4979, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4945, file: !4946, line: 105, baseType: !4982, size: 256)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 69, size: 256, elements: !4983)
!4983 = !{!4984, !4985}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4982, file: !4946, line: 70, baseType: !96, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !4946, line: 79, baseType: !4986, size: 192, offset: 64)
!4986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !4946, line: 79, size: 192, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4997, !5002}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4986, file: !4946, line: 81, baseType: !98, size: 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4986, file: !4946, line: 86, baseType: !733, size: 16)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4986, file: !4946, line: 92, baseType: !4991, size: 192)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4986, file: !4946, line: 88, size: 192, elements: !4992)
!4992 = !{!4993, !4995, !4996}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4991, file: !4946, line: 89, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !378)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4991, file: !4946, line: 90, baseType: !96, size: 64, offset: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4991, file: !4946, line: 91, baseType: !96, size: 64, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4986, file: !4946, line: 97, baseType: !4998, size: 96)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4986, file: !4946, line: 94, size: 96, elements: !4999)
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4998, file: !4946, line: 95, baseType: !4994, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4998, file: !4946, line: 96, baseType: !211, size: 32, offset: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4986, file: !4946, line: 103, baseType: !5003, size: 128)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4986, file: !4946, line: 99, size: 128, elements: !5004)
!5004 = !{!5005, !5006, !5007}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5003, file: !4946, line: 100, baseType: !115, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5003, file: !4946, line: 101, baseType: !211, size: 32, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5003, file: !4946, line: 102, baseType: !211, size: 32, offset: 96)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4945, file: !4946, line: 111, baseType: !5009, size: 128)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 108, size: 128, elements: !5010)
!5010 = !{!5011, !5012}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5009, file: !4946, line: 109, baseType: !1035, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5009, file: !4946, line: 110, baseType: !98, size: 32, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4945, file: !4946, line: 118, baseType: !5014, size: 128)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4945, file: !4946, line: 114, size: 128, elements: !5015)
!5015 = !{!5016, !5017, !5018}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5014, file: !4946, line: 115, baseType: !96, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5014, file: !4946, line: 116, baseType: !98, size: 32, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5014, file: !4946, line: 117, baseType: !7, size: 32, offset: 96)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !200, file: !201, line: 1208, baseType: !4804, size: 448, offset: 17664)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !200, file: !201, line: 1215, baseType: !267, size: 64, offset: 18112)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !200, file: !201, line: 1217, baseType: !267, size: 64, offset: 18176)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !200, file: !201, line: 1219, baseType: !267, size: 64, offset: 18240)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !200, file: !201, line: 1223, baseType: !5024, size: 64, offset: 18304)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5025, line: 99, baseType: !5026)
!5025 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5025, line: 99, size: 64, elements: !5027)
!5027 = !{!5028}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5026, file: !5025, line: 99, baseType: !467, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !200, file: !201, line: 1225, baseType: !892, size: 32, offset: 18368)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !200, file: !201, line: 1226, baseType: !98, size: 32, offset: 18400)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !200, file: !201, line: 1227, baseType: !98, size: 32, offset: 18432)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !200, file: !201, line: 1231, baseType: !5033, size: 64, offset: 18496)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !201, line: 1231, flags: DIFlagFwdDecl)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !200, file: !201, line: 1233, baseType: !173, size: 128, offset: 18560)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !200, file: !201, line: 1240, baseType: !5037, size: 64, offset: 18688)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !201, line: 62, flags: DIFlagFwdDecl)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !200, file: !201, line: 1242, baseType: !5040, size: 64, offset: 18752)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !201, line: 1242, flags: DIFlagFwdDecl)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !200, file: !201, line: 1244, baseType: !173, size: 128, offset: 18816)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !200, file: !201, line: 1245, baseType: !5044, size: 64, offset: 18944)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !201, line: 51, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !200, file: !201, line: 1246, baseType: !572, size: 256, offset: 19008)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !200, file: !201, line: 1247, baseType: !7, size: 32, offset: 19264)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !200, file: !201, line: 1250, baseType: !5049, size: 64, offset: 19328)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !201, line: 57, flags: DIFlagFwdDecl)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !200, file: !201, line: 1251, baseType: !572, size: 256, offset: 19392)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !200, file: !201, line: 1252, baseType: !173, size: 128, offset: 19648)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !200, file: !201, line: 1259, baseType: !1512, size: 64, offset: 19776)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !200, file: !201, line: 1260, baseType: !733, size: 16, offset: 19840)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !200, file: !201, line: 1261, baseType: !733, size: 16, offset: 19856)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !200, file: !201, line: 1314, baseType: !5057, size: 64, offset: 19904)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5059, line: 62, size: 256, align: 256, elements: !5060)
!5059 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5060 = !{!5061, !5062, !5063, !5064, !5065, !5066, !5067}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5058, file: !5059, line: 75, baseType: !211, size: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5058, file: !5059, line: 90, baseType: !211, size: 32, offset: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5058, file: !5059, line: 112, baseType: !268, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5058, file: !5059, line: 132, baseType: !211, size: 32, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5058, file: !5059, line: 140, baseType: !211, size: 32, offset: 160)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5058, file: !5059, line: 149, baseType: !211, size: 32, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5058, file: !5059, line: 154, baseType: !3625, offset: 224)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !200, file: !201, line: 1315, baseType: !210, size: 32, offset: 19968)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !200, file: !201, line: 1316, baseType: !210, size: 32, offset: 20000)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !200, file: !201, line: 1321, baseType: !115, size: 64, offset: 20032)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !200, file: !201, line: 1325, baseType: !98, size: 32, offset: 20096)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !200, file: !201, line: 1326, baseType: !98, size: 32, offset: 20128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !200, file: !201, line: 1327, baseType: !98, size: 32, offset: 20160)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !200, file: !201, line: 1328, baseType: !98, size: 32, offset: 20192)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !200, file: !201, line: 1329, baseType: !552, size: 128, align: 64, offset: 20224)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !200, file: !201, line: 1332, baseType: !5077, size: 128, offset: 20352)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5078, line: 51, size: 128, elements: !5079)
!5078 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5079 = !{!5080, !5085, !5086}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5077, file: !5078, line: 60, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5082, line: 7, size: 64, elements: !5083)
!5082 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5083 = !{!5084}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5081, file: !5082, line: 12, baseType: !464, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5077, file: !5078, line: 63, baseType: !764, size: 8, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5077, file: !5078, line: 70, baseType: !764, size: 8, offset: 72)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !200, file: !201, line: 1335, baseType: !3024, size: 64, offset: 20480)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !200, file: !201, line: 1337, baseType: !5089, size: 128, offset: 20544)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5078, line: 39, size: 128, elements: !5090)
!5090 = !{!5091, !5092, !5093}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5089, file: !5078, line: 40, baseType: !1299, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5089, file: !5078, line: 42, baseType: !211, size: 32, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5089, file: !5078, line: 43, baseType: !211, size: 32, offset: 96)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !200, file: !201, line: 1340, baseType: !5095, size: 64, offset: 20672)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !201, line: 69, flags: DIFlagFwdDecl)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !200, file: !201, line: 1351, baseType: !98, size: 32, offset: 20736)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !200, file: !201, line: 1352, baseType: !98, size: 32, offset: 20768)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !200, file: !201, line: 1354, baseType: !115, size: 64, offset: 20800)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !200, file: !201, line: 1364, baseType: !267, size: 64, offset: 20864)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !200, file: !201, line: 1365, baseType: !267, size: 64, offset: 20928)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !200, file: !201, line: 1412, baseType: !115, size: 64, offset: 20992)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !200, file: !201, line: 1453, baseType: !5104, size: 64, offset: 21056)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !201, line: 1453, flags: DIFlagFwdDecl)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !200, file: !201, line: 1457, baseType: !5107, size: 64, offset: 21120)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !5109)
!5109 = !{!5110, !5111, !5130, !5133, !5134, !5167, !5177}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5108, file: !81, line: 62, baseType: !80, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, scope: !5108, file: !81, line: 64, baseType: !5112, size: 192, offset: 64)
!5112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5108, file: !81, line: 64, size: 192, elements: !5113)
!5113 = !{!5114, !5125}
!5114 = !DIDerivedType(tag: DW_TAG_member, scope: !5112, file: !81, line: 65, baseType: !5115, size: 192)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5112, file: !81, line: 65, size: 192, elements: !5116)
!5116 = !{!5117, !5124}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5115, file: !81, line: 66, baseType: !5118, size: 128)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5119, line: 50, size: 128, elements: !5120)
!5119 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5120 = !{!5121, !5122, !5123}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5118, file: !5119, line: 52, baseType: !115, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5118, file: !5119, line: 54, baseType: !7, size: 32, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5118, file: !5119, line: 55, baseType: !7, size: 32, offset: 96)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5115, file: !81, line: 67, baseType: !115, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, scope: !5112, file: !81, line: 70, baseType: !5126, size: 192)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5112, file: !81, line: 70, size: 192, elements: !5127)
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5126, file: !81, line: 71, baseType: !552, size: 128, align: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5126, file: !81, line: 72, baseType: !115, size: 64, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5108, file: !81, line: 76, baseType: !5131, size: 64, offset: 256)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5108, file: !81, line: 77, baseType: !115, size: 64, offset: 320)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5108, file: !81, line: 79, baseType: !5135, size: 64, offset: 384)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5119, line: 25, size: 256, elements: !5137)
!5137 = !{!5138, !5144, !5148}
!5138 = !DIDerivedType(tag: DW_TAG_member, scope: !5136, file: !5119, line: 26, baseType: !5139, size: 128)
!5139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5136, file: !5119, line: 26, size: 128, elements: !5140)
!5140 = !{!5141, !5143}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5139, file: !5119, line: 27, baseType: !5142, size: 128)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !2786)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5139, file: !5119, line: 28, baseType: !5142, size: 128)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5136, file: !5119, line: 31, baseType: !5145, size: 64, offset: 128)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5147)
!5147 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5119, line: 23, flags: DIFlagFwdDecl)
!5148 = !DIDerivedType(tag: DW_TAG_member, scope: !5136, file: !5119, line: 33, baseType: !5149, size: 64, offset: 192)
!5149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5136, file: !5119, line: 33, size: 64, elements: !5150)
!5150 = !{!5151, !5157, !5162}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5149, file: !5119, line: 38, baseType: !5152, size: 64)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5149, file: !5119, line: 34, size: 64, elements: !5153)
!5153 = !{!5154, !5155, !5156}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5152, file: !5119, line: 35, baseType: !697, size: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5152, file: !5119, line: 36, baseType: !159, size: 8, offset: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5152, file: !5119, line: 37, baseType: !159, size: 8, offset: 40)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5149, file: !5119, line: 42, baseType: !5158, size: 16)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5149, file: !5119, line: 39, size: 16, elements: !5159)
!5159 = !{!5160, !5161}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5158, file: !5119, line: 40, baseType: !159, size: 8)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5158, file: !5119, line: 41, baseType: !159, size: 8, offset: 8)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5149, file: !5119, line: 46, baseType: !5163, size: 16)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5149, file: !5119, line: 43, size: 16, elements: !5164)
!5164 = !{!5165, !5166}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5163, file: !5119, line: 44, baseType: !159, size: 8)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5163, file: !5119, line: 45, baseType: !159, size: 8, offset: 8)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5108, file: !81, line: 81, baseType: !5168, size: 64, offset: 448)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5174, !5175, !5176}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5169, file: !81, line: 86, baseType: !5131, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5169, file: !81, line: 87, baseType: !115, size: 64, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5169, file: !81, line: 88, baseType: !115, size: 64, offset: 128)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5169, file: !81, line: 89, baseType: !115, size: 64, offset: 192)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5169, file: !81, line: 90, baseType: !764, size: 8, offset: 256)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5169, file: !81, line: 92, baseType: !5168, size: 64, offset: 320)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5108, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !200, file: !201, line: 1463, baseType: !5179, offset: 21184)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !201, line: 739, elements: !537)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !200, file: !201, line: 1470, baseType: !552, size: 128, align: 64, offset: 21184)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !200, file: !201, line: 1471, baseType: !216, size: 32, offset: 21312)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !200, file: !201, line: 1472, baseType: !98, size: 32, offset: 21344)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !200, file: !201, line: 1474, baseType: !199, size: 64, offset: 21376)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !200, file: !201, line: 1475, baseType: !2278, size: 320, offset: 21440)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !200, file: !201, line: 1478, baseType: !5186, size: 64, offset: 21760)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5188, line: 49, size: 512, elements: !5189)
!5188 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5199}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5187, file: !5188, line: 50, baseType: !5186, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5187, file: !5188, line: 51, baseType: !96, size: 64, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5187, file: !5188, line: 52, baseType: !115, size: 64, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5187, file: !5188, line: 53, baseType: !115, size: 64, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5187, file: !5188, line: 54, baseType: !1686, size: 64, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5187, file: !5188, line: 56, baseType: !7, size: 32, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5187, file: !5188, line: 58, baseType: !7, size: 32, offset: 352)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5187, file: !5188, line: 59, baseType: !5198, size: 64, offset: 384)
!5198 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !101, line: 159, baseType: !267)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5187, file: !5188, line: 60, baseType: !1870, size: 64, offset: 448)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !200, file: !201, line: 1482, baseType: !216, size: 32, offset: 21824)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !200, file: !201, line: 1489, baseType: !96, size: 64, offset: 21888)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !200, file: !201, line: 1504, baseType: !96, size: 64, offset: 21952)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !200, file: !201, line: 1505, baseType: !268, size: 64, offset: 22016)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !200, file: !201, line: 1506, baseType: !267, size: 64, offset: 22080)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !200, file: !201, line: 1507, baseType: !268, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !200, file: !201, line: 1508, baseType: !268, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !200, file: !201, line: 1509, baseType: !268, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !200, file: !201, line: 1510, baseType: !552, size: 128, align: 64, offset: 22208)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !200, file: !201, line: 1511, baseType: !98, size: 32, offset: 22336)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !200, file: !201, line: 1515, baseType: !5211, size: 64, offset: 22400)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !229, line: 56, size: 64, elements: !5212)
!5212 = !{!5213}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5211, file: !229, line: 57, baseType: !232, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !200, file: !201, line: 1518, baseType: !5211, size: 64, offset: 22464)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !200, file: !201, line: 1528, baseType: !552, size: 128, align: 64, offset: 22528)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !200, file: !201, line: 1552, baseType: !5217, size: 35328, offset: 23040)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5218, line: 430, size: 35328, elements: !5219)
!5218 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5219 = !{!5220, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5249, !5250, !5251, !5252, !5253, !5254, !5257, !5258, !5259, !5260}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5217, file: !5218, line: 432, baseType: !5221, size: 192)
!5221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5222, size: 192, elements: !608)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5223, line: 16, size: 64, elements: !5224)
!5223 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5224 = !{!5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5222, file: !5223, line: 17, baseType: !169, size: 16)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5222, file: !5223, line: 18, baseType: !169, size: 16, offset: 16)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5222, file: !5223, line: 19, baseType: !169, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5222, file: !5223, line: 19, baseType: !169, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5222, file: !5223, line: 19, baseType: !169, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5222, file: !5223, line: 19, baseType: !169, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5222, file: !5223, line: 19, baseType: !169, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5222, file: !5223, line: 20, baseType: !169, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5222, file: !5223, line: 20, baseType: !169, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5222, file: !5223, line: 20, baseType: !169, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5222, file: !5223, line: 20, baseType: !169, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5222, file: !5223, line: 20, baseType: !169, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5222, file: !5223, line: 20, baseType: !169, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5217, file: !5218, line: 436, baseType: !115, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5217, file: !5218, line: 440, baseType: !102, size: 16, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5217, file: !5218, line: 441, baseType: !102, size: 16, offset: 272)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5217, file: !5218, line: 442, baseType: !102, size: 16, offset: 288)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5217, file: !5218, line: 443, baseType: !102, size: 16, offset: 304)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5217, file: !5218, line: 447, baseType: !115, size: 64, offset: 320)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5217, file: !5218, line: 448, baseType: !115, size: 64, offset: 384)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5217, file: !5218, line: 459, baseType: !5246, size: 256, offset: 448)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5247, size: 256, elements: !629)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5218, line: 428, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5217, file: !5218, line: 461, baseType: !115, size: 64, offset: 704)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5217, file: !5218, line: 463, baseType: !115, size: 64, offset: 768)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5217, file: !5218, line: 465, baseType: !115, size: 64, offset: 832)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5217, file: !5218, line: 466, baseType: !115, size: 64, offset: 896)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5217, file: !5218, line: 467, baseType: !115, size: 64, offset: 960)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5217, file: !5218, line: 473, baseType: !5255, size: 64, offset: 1024)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5218, line: 10, flags: DIFlagFwdDecl)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5217, file: !5218, line: 480, baseType: !115, size: 64, offset: 1088)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5217, file: !5218, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5217, file: !5218, line: 491, baseType: !210, size: 32, offset: 1184)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5217, file: !5218, line: 501, baseType: !5261, size: 33792, offset: 1536)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5262, line: 448, size: 33792, elements: !5263)
!5262 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5263 = !{!5264, !5265, !5266, !5428, !5429, !5435, !5436}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5261, file: !5262, line: 461, baseType: !7, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5261, file: !5262, line: 468, baseType: !115, size: 64, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5261, file: !5262, line: 476, baseType: !5267, size: 64, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5262, line: 356, size: 33280, align: 512, elements: !5269)
!5269 = !{!5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5268, file: !5262, line: 358, baseType: !7, size: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5268, file: !5262, line: 361, baseType: !7, size: 32, offset: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5268, file: !5262, line: 364, baseType: !267, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5268, file: !5262, line: 367, baseType: !267, size: 64, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5268, file: !5262, line: 370, baseType: !267, size: 64, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5268, file: !5262, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5268, file: !5262, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5268, file: !5262, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5268, file: !5262, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5268, file: !5262, line: 397, baseType: !5280, size: 32768, offset: 512)
!5280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5262, line: 348, size: 32768, elements: !5281)
!5281 = !{!5282, !5297, !5334, !5411, !5424}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5280, file: !5262, line: 349, baseType: !5283, size: 896)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5262, line: 12, size: 896, elements: !5284)
!5284 = !{!5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5296}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5283, file: !5262, line: 13, baseType: !210, size: 32)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5283, file: !5262, line: 14, baseType: !210, size: 32, offset: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5283, file: !5262, line: 15, baseType: !210, size: 32, offset: 64)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5283, file: !5262, line: 16, baseType: !210, size: 32, offset: 96)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5283, file: !5262, line: 17, baseType: !210, size: 32, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5283, file: !5262, line: 18, baseType: !210, size: 32, offset: 160)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5283, file: !5262, line: 19, baseType: !210, size: 32, offset: 192)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5283, file: !5262, line: 22, baseType: !5293, size: 640, offset: 224)
!5293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 640, elements: !5294)
!5294 = !{!5295}
!5295 = !DISubrange(count: 20)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5283, file: !5262, line: 25, baseType: !210, size: 32, offset: 864)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5280, file: !5262, line: 350, baseType: !5298, size: 4096, align: 128)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5262, line: 34, size: 4096, align: 128, elements: !5299)
!5299 = !{!5300, !5301, !5302, !5303, !5304, !5319, !5320, !5321, !5323, !5325, !5329}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5298, file: !5262, line: 35, baseType: !169, size: 16)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5298, file: !5262, line: 36, baseType: !169, size: 16, offset: 16)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5298, file: !5262, line: 37, baseType: !169, size: 16, offset: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5298, file: !5262, line: 38, baseType: !169, size: 16, offset: 48)
!5304 = !DIDerivedType(tag: DW_TAG_member, scope: !5298, file: !5262, line: 39, baseType: !5305, size: 128, offset: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5298, file: !5262, line: 39, size: 128, elements: !5306)
!5306 = !{!5307, !5312}
!5307 = !DIDerivedType(tag: DW_TAG_member, scope: !5305, file: !5262, line: 40, baseType: !5308, size: 128)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5305, file: !5262, line: 40, size: 128, elements: !5309)
!5309 = !{!5310, !5311}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5308, file: !5262, line: 41, baseType: !267, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5308, file: !5262, line: 42, baseType: !267, size: 64, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, scope: !5305, file: !5262, line: 44, baseType: !5313, size: 128)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5305, file: !5262, line: 44, size: 128, elements: !5314)
!5314 = !{!5315, !5316, !5317, !5318}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5313, file: !5262, line: 45, baseType: !210, size: 32)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5313, file: !5262, line: 46, baseType: !210, size: 32, offset: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5313, file: !5262, line: 47, baseType: !210, size: 32, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5313, file: !5262, line: 48, baseType: !210, size: 32, offset: 96)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5298, file: !5262, line: 51, baseType: !210, size: 32, offset: 192)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5298, file: !5262, line: 52, baseType: !210, size: 32, offset: 224)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5298, file: !5262, line: 55, baseType: !5322, size: 1024, offset: 256)
!5322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 1024, elements: !2777)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5298, file: !5262, line: 58, baseType: !5324, size: 2048, offset: 1280)
!5324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 2048, elements: !1218)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5298, file: !5262, line: 60, baseType: !5326, size: 384, offset: 3328)
!5326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 384, elements: !5327)
!5327 = !{!5328}
!5328 = !DISubrange(count: 12)
!5329 = !DIDerivedType(tag: DW_TAG_member, scope: !5298, file: !5262, line: 62, baseType: !5330, size: 384, offset: 3712)
!5330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5298, file: !5262, line: 62, size: 384, elements: !5331)
!5331 = !{!5332, !5333}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5330, file: !5262, line: 63, baseType: !5326, size: 384)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5330, file: !5262, line: 64, baseType: !5326, size: 384)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5280, file: !5262, line: 351, baseType: !5335, size: 1088)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5262, line: 79, size: 1088, elements: !5336)
!5336 = !{!5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5410}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5335, file: !5262, line: 80, baseType: !210, size: 32)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5335, file: !5262, line: 81, baseType: !210, size: 32, offset: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5335, file: !5262, line: 82, baseType: !210, size: 32, offset: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5335, file: !5262, line: 83, baseType: !210, size: 32, offset: 96)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5335, file: !5262, line: 84, baseType: !210, size: 32, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5335, file: !5262, line: 85, baseType: !210, size: 32, offset: 160)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5335, file: !5262, line: 86, baseType: !210, size: 32, offset: 192)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5335, file: !5262, line: 88, baseType: !5293, size: 640, offset: 224)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5335, file: !5262, line: 89, baseType: !159, size: 8, offset: 864)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5335, file: !5262, line: 90, baseType: !159, size: 8, offset: 872)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5335, file: !5262, line: 91, baseType: !159, size: 8, offset: 880)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5335, file: !5262, line: 92, baseType: !159, size: 8, offset: 888)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5335, file: !5262, line: 93, baseType: !159, size: 8, offset: 896)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5335, file: !5262, line: 94, baseType: !159, size: 8, offset: 904)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5335, file: !5262, line: 95, baseType: !5352, size: 64, offset: 960)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5354, line: 11, size: 128, elements: !5355)
!5354 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5355 = !{!5356, !5357}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5353, file: !5354, line: 12, baseType: !1035, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5353, file: !5354, line: 13, baseType: !5358, size: 64, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5360, line: 103, size: 1344, elements: !5361)
!5360 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5390, !5391, !5392}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5359, file: !5360, line: 109, baseType: !115, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5359, file: !5360, line: 110, baseType: !115, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5359, file: !5360, line: 111, baseType: !115, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5359, file: !5360, line: 112, baseType: !115, size: 64, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5359, file: !5360, line: 113, baseType: !115, size: 64, offset: 256)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5359, file: !5360, line: 114, baseType: !115, size: 64, offset: 320)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5359, file: !5360, line: 117, baseType: !115, size: 64, offset: 384)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5359, file: !5360, line: 118, baseType: !115, size: 64, offset: 448)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5359, file: !5360, line: 119, baseType: !115, size: 64, offset: 512)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5359, file: !5360, line: 120, baseType: !115, size: 64, offset: 576)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5359, file: !5360, line: 121, baseType: !115, size: 64, offset: 640)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5359, file: !5360, line: 122, baseType: !115, size: 64, offset: 704)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5359, file: !5360, line: 123, baseType: !115, size: 64, offset: 768)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5359, file: !5360, line: 124, baseType: !115, size: 64, offset: 832)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5359, file: !5360, line: 125, baseType: !115, size: 64, offset: 896)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5359, file: !5360, line: 139, baseType: !115, size: 64, offset: 960)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5359, file: !5360, line: 142, baseType: !115, size: 64, offset: 1024)
!5379 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !5360, line: 144, baseType: !5380, size: 64, offset: 1088)
!5380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5359, file: !5360, line: 144, size: 64, elements: !5381)
!5381 = !{!5382, !5383, !5384}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5380, file: !5360, line: 146, baseType: !169, size: 16)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5380, file: !5360, line: 148, baseType: !267, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5380, file: !5360, line: 150, baseType: !5385, size: 64)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5360, line: 59, size: 64, elements: !5386)
!5386 = !{!5387, !5388, !5389}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5385, file: !5360, line: 61, baseType: !267, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5385, file: !5360, line: 63, baseType: !267, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5385, file: !5360, line: 65, baseType: !267, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5359, file: !5360, line: 153, baseType: !115, size: 64, offset: 1152)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5359, file: !5360, line: 154, baseType: !115, size: 64, offset: 1216)
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !5360, line: 156, baseType: !5393, size: 64, offset: 1280)
!5393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5359, file: !5360, line: 156, size: 64, elements: !5394)
!5394 = !{!5395, !5396, !5397}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5393, file: !5360, line: 158, baseType: !169, size: 16)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5393, file: !5360, line: 160, baseType: !267, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5393, file: !5360, line: 162, baseType: !5398, size: 64)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5360, line: 69, size: 64, elements: !5399)
!5399 = !{!5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5398, file: !5360, line: 71, baseType: !267, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5398, file: !5360, line: 73, baseType: !267, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5398, file: !5360, line: 75, baseType: !267, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5398, file: !5360, line: 77, baseType: !267, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5398, file: !5360, line: 80, baseType: !267, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5398, file: !5360, line: 83, baseType: !267, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5398, file: !5360, line: 86, baseType: !267, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5398, file: !5360, line: 88, baseType: !267, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5398, file: !5360, line: 93, baseType: !267, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5398, file: !5360, line: 100, baseType: !267, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5335, file: !5262, line: 96, baseType: !210, size: 32, offset: 1024)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5280, file: !5262, line: 352, baseType: !5412, size: 4608, align: 512)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5262, line: 333, size: 4608, align: 512, elements: !5413)
!5413 = !{!5414, !5415, !5422}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5412, file: !5262, line: 334, baseType: !5298, size: 4096, align: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5412, file: !5262, line: 335, baseType: !5416, size: 512, offset: 4096)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5262, line: 312, size: 512, elements: !5417)
!5417 = !{!5418, !5419, !5420}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5416, file: !5262, line: 313, baseType: !267, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5416, file: !5262, line: 314, baseType: !267, size: 64, offset: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5416, file: !5262, line: 315, baseType: !5421, size: 384, offset: 128)
!5421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 384, elements: !751)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5412, file: !5262, line: 336, baseType: !5423, offset: 4608)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !642)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5280, file: !5262, line: 353, baseType: !5425, size: 32768)
!5425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !5426)
!5426 = !{!5427}
!5427 = !DISubrange(count: 4096)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5261, file: !5262, line: 484, baseType: !5267, size: 64, offset: 192)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5261, file: !5262, line: 491, baseType: !5430, size: 128, offset: 256)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5262, line: 404, size: 128, elements: !5431)
!5431 = !{!5432, !5433, !5434}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5430, file: !5262, line: 424, baseType: !267, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5430, file: !5262, line: 432, baseType: !7, size: 32, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5430, file: !5262, line: 440, baseType: !7, size: 32, offset: 96)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5261, file: !5262, line: 498, baseType: !5430, size: 128, offset: 384)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5261, file: !5262, line: 508, baseType: !5268, size: 33280, align: 512, offset: 512)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_inode", file: !3568, line: 98, size: 5376, elements: !5439)
!5439 = !{!5440, !5441, !5442, !5454, !5455, !5456, !5457, !5458, !5459}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5438, file: !3568, line: 99, baseType: !612, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5438, file: !3568, line: 100, baseType: !7, size: 32, offset: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !5438, file: !3568, line: 101, baseType: !5443, size: 64, offset: 128)
!5443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "proc_op", file: !3568, line: 90, size: 64, elements: !5444)
!5444 = !{!5445, !5449, !5453}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_link", scope: !5443, file: !3568, line: 91, baseType: !5446, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!98, !886, !2839}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !5443, file: !3568, line: 92, baseType: !5450, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!98, !1935, !640, !612, !199}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "lsm", scope: !5443, file: !3568, line: 95, baseType: !92, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "pde", scope: !5438, file: !3568, line: 102, baseType: !3566, size: 64, offset: 192)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !5438, file: !3568, line: 103, baseType: !3668, size: 64, offset: 256)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_entry", scope: !5438, file: !3568, line: 104, baseType: !109, size: 64, offset: 320)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_inodes", scope: !5438, file: !3568, line: 105, baseType: !624, size: 128, offset: 384)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "ns_ops", scope: !5438, file: !3568, line: 106, baseType: !3522, size: 64, offset: 512)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !5438, file: !3568, line: 107, baseType: !922, size: 4800, offset: 576)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5462)
!5462 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!5465 = !{!5466, !5468, !5470, !5472, !5474, !5476, !5478, !5481, !0, !5486, !5491, !5493, !5517}
!5466 = !DIGlobalVariableExpression(var: !5467, expr: !DIExpression())
!5467 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_proc_create_net_data343", scope: !2, file: !3, line: 129, type: !96, isLocal: true, isDefinition: true)
!5468 = !DIGlobalVariableExpression(var: !5469, expr: !DIExpression())
!5469 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_proc_create_net_data_write344", scope: !2, file: !3, line: 174, type: !96, isLocal: true, isDefinition: true)
!5470 = !DIGlobalVariableExpression(var: !5471, expr: !DIExpression())
!5471 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_proc_create_net_single345", scope: !2, file: !3, line: 221, type: !96, isLocal: true, isDefinition: true)
!5472 = !DIGlobalVariableExpression(var: !5473, expr: !DIExpression())
!5473 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_proc_create_net_single_write346", scope: !2, file: !3, line: 265, type: !96, isLocal: true, isDefinition: true)
!5474 = !DIGlobalVariableExpression(var: !5475, expr: !DIExpression())
!5475 = distinct !DIGlobalVariable(name: "proc_net_inode_operations", scope: !2, file: !3, line: 321, type: !936, isLocal: false, isDefinition: true)
!5476 = !DIGlobalVariableExpression(var: !5477, expr: !DIExpression())
!5477 = distinct !DIGlobalVariable(name: "proc_net_operations", scope: !2, file: !3, line: 341, type: !2939, isLocal: false, isDefinition: true)
!5478 = !DIGlobalVariableExpression(var: !5479, expr: !DIExpression())
!5479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !5480, isLocal: true, isDefinition: true)
!5480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32, elements: !629)
!5481 = !DIGlobalVariableExpression(var: !5482, expr: !DIExpression())
!5482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !5483, isLocal: true, isDefinition: true)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 72, elements: !5484)
!5484 = !{!5485}
!5485 = !DISubrange(count: 9)
!5486 = !DIGlobalVariableExpression(var: !5487, expr: !DIExpression())
!5487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !5488, isLocal: true, isDefinition: true)
!5488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 152, elements: !5489)
!5489 = !{!5490}
!5490 = !DISubrange(count: 19)
!5491 = !DIGlobalVariableExpression(var: !5492, expr: !DIExpression())
!5492 = distinct !DIGlobalVariable(name: "proc_net_single_ops", scope: !2, file: !3, line: 199, type: !3581, isLocal: true, isDefinition: true)
!5493 = !DIGlobalVariableExpression(var: !5494, expr: !DIExpression())
!5494 = distinct !DIGlobalVariable(name: "proc_net_ns_ops", scope: !2, file: !3, line: 407, type: !5495, isLocal: true, isDefinition: true)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pernet_operations", file: !3493, line: 426, size: 576, elements: !5496)
!5496 = !{!5497, !5498, !5502, !5506, !5507, !5511, !5515, !5516}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5495, file: !3493, line: 427, baseType: !173, size: 128)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5495, file: !3493, line: 450, baseType: !5499, size: 64, offset: 128)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!98, !3491}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "pre_exit", scope: !5495, file: !3493, line: 451, baseType: !5503, size: 64, offset: 192)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{null, !3491}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5495, file: !3493, line: 452, baseType: !5503, size: 64, offset: 256)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "exit_batch", scope: !5495, file: !3493, line: 453, baseType: !5508, size: 64, offset: 320)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !176}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "exit_batch_rtnl", scope: !5495, file: !3493, line: 455, baseType: !5512, size: 64, offset: 384)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !176, !176}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5495, file: !3493, line: 457, baseType: !2128, size: 64, offset: 448)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5495, file: !3493, line: 458, baseType: !111, size: 64, offset: 512)
!5517 = !DIGlobalVariableExpression(var: !5518, expr: !DIExpression())
!5518 = distinct !DIGlobalVariable(scope: null, file: !3, line: 387, type: !5519, isLocal: true, isDefinition: true)
!5519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 40, elements: !4567)
!5520 = !{i32 7, !"Dwarf Version", i32 5}
!5521 = !{i32 2, !"Debug Info Version", i32 3}
!5522 = !{i32 1, !"wchar_size", i32 2}
!5523 = !{i32 8, !"cf-protection-branch", i32 1}
!5524 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5525 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5526 = !{i32 1, !"Code Model", i32 2}
!5527 = !{i32 1, !"override-stack-alignment", i32 8}
!5528 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5529 = distinct !DISubprogram(name: "bpf_iter_init_seq_net", scope: !3, file: !3, line: 94, type: !5530, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!98, !96, !5532}
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_iter_aux_info", file: !3583, line: 148, flags: DIFlagFwdDecl)
!5534 = !{!5535, !5536, !5537}
!5535 = !DILocalVariable(name: "priv_data", arg: 1, scope: !5529, file: !3, line: 94, type: !96)
!5536 = !DILocalVariable(name: "aux", arg: 2, scope: !5529, file: !3, line: 94, type: !5532)
!5537 = !DILocalVariable(name: "p", scope: !5529, file: !3, line: 97, type: !5538)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_net_private", file: !5540, line: 11, size: 64, elements: !5541)
!5540 = !DIFile(filename: "./include/linux/seq_file_net.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d38314227a238693ef49d9a0d5c5a75b")
!5541 = !{!5542, !5543}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !5539, file: !5540, line: 13, baseType: !3491, size: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ns_tracker", scope: !5539, file: !5540, line: 14, baseType: !5544, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_typedef, name: "netns_tracker", file: !5545, line: 15, baseType: !5546)
!5545 = !DIFile(filename: "./include/net/net_trackers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "24cb3e8230b2e5f4121e14e8e84cf81a")
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5545, line: 15, elements: !537)
!5547 = !DILocation(line: 94, column: 33, scope: !5529)
!5548 = !DILocation(line: 94, column: 70, scope: !5529)
!5549 = !DILocation(line: 97, column: 2, scope: !5529)
!5550 = !DILocation(line: 97, column: 26, scope: !5529)
!5551 = !DILocation(line: 97, column: 30, scope: !5529)
!5552 = !DILocation(line: 99, column: 25, scope: !5529)
!5553 = !DILocation(line: 99, column: 34, scope: !5529)
!5554 = !DILocation(line: 99, column: 43, scope: !5529)
!5555 = !DILocation(line: 99, column: 52, scope: !5529)
!5556 = !DILocation(line: 99, column: 55, scope: !5529)
!5557 = !DILocation(line: 99, column: 11, scope: !5529)
!5558 = !DILocation(line: 99, column: 2, scope: !5529)
!5559 = !DILocation(line: 99, column: 5, scope: !5529)
!5560 = !DILocation(line: 99, column: 9, scope: !5529)
!5561 = !DILocation(line: 103, column: 1, scope: !5529)
!5562 = !DILocation(line: 102, column: 2, scope: !5529)
!5563 = distinct !DISubprogram(name: "get_net_track", scope: !3493, file: !3493, line: 356, type: !5564, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5567)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!3491, !3491, !5566, !197}
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5567 = !{!5568, !5569, !5570}
!5568 = !DILocalVariable(name: "net", arg: 1, scope: !5563, file: !3493, line: 356, type: !3491)
!5569 = !DILocalVariable(name: "tracker", arg: 2, scope: !5563, file: !3493, line: 357, type: !5566)
!5570 = !DILocalVariable(name: "gfp", arg: 3, scope: !5563, file: !3493, line: 357, type: !197)
!5571 = !DILocation(line: 356, column: 53, scope: !5563)
!5572 = !DILocation(line: 357, column: 21, scope: !5563)
!5573 = !DILocation(line: 357, column: 36, scope: !5563)
!5574 = !DILocation(line: 359, column: 10, scope: !5563)
!5575 = !DILocation(line: 359, column: 2, scope: !5563)
!5576 = !DILocation(line: 360, column: 22, scope: !5563)
!5577 = !DILocation(line: 360, column: 27, scope: !5563)
!5578 = !DILocation(line: 360, column: 36, scope: !5563)
!5579 = !DILocation(line: 360, column: 2, scope: !5563)
!5580 = !DILocation(line: 361, column: 9, scope: !5563)
!5581 = !DILocation(line: 361, column: 2, scope: !5563)
!5582 = distinct !DISubprogram(name: "get_current", scope: !5583, file: !5583, line: 39, type: !5584, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5586)
!5583 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!199}
!5586 = !{!5587, !5589, !5591}
!5587 = !DILocalVariable(name: "pscr_ret__", scope: !5588, file: !5583, line: 41, type: !199)
!5588 = distinct !DILexicalBlock(scope: !5582, file: !5583, line: 41, column: 9)
!5589 = !DILocalVariable(name: "__vpp_verify", scope: !5590, file: !5583, line: 41, type: !1870)
!5590 = distinct !DILexicalBlock(scope: !5588, file: !5583, line: 41, column: 9)
!5591 = !DILocalVariable(name: "pfo_val__", scope: !5592, file: !5583, line: 41, type: !267)
!5592 = distinct !DILexicalBlock(scope: !5588, file: !5583, line: 41, column: 9)
!5593 = !DILocation(line: 41, column: 9, scope: !5588)
!5594 = !DILocation(line: 41, column: 9, scope: !5590)
!5595 = !DILocation(line: 41, column: 9, scope: !5592)
!5596 = !{i64 2148405425}
!5597 = !DILocation(line: 41, column: 9, scope: !5582)
!5598 = !DILocation(line: 41, column: 2, scope: !5582)
!5599 = distinct !DISubprogram(name: "bpf_iter_fini_seq_net", scope: !3, file: !3, line: 105, type: !953, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5600 = !{!5601, !5602}
!5601 = !DILocalVariable(name: "priv_data", arg: 1, scope: !5599, file: !3, line: 105, type: !96)
!5602 = !DILocalVariable(name: "p", scope: !5599, file: !3, line: 108, type: !5538)
!5603 = !DILocation(line: 105, column: 34, scope: !5599)
!5604 = !DILocation(line: 108, column: 2, scope: !5599)
!5605 = !DILocation(line: 108, column: 26, scope: !5599)
!5606 = !DILocation(line: 108, column: 30, scope: !5599)
!5607 = !DILocation(line: 110, column: 16, scope: !5599)
!5608 = !DILocation(line: 110, column: 19, scope: !5599)
!5609 = !DILocation(line: 110, column: 25, scope: !5599)
!5610 = !DILocation(line: 110, column: 28, scope: !5599)
!5611 = !DILocation(line: 110, column: 2, scope: !5599)
!5612 = !DILocation(line: 112, column: 1, scope: !5599)
!5613 = distinct !DISubprogram(name: "put_net_track", scope: !3493, file: !3493, line: 364, type: !5614, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !3491, !5566}
!5616 = !{!5617, !5618}
!5617 = !DILocalVariable(name: "net", arg: 1, scope: !5613, file: !3493, line: 364, type: !3491)
!5618 = !DILocalVariable(name: "tracker", arg: 2, scope: !5613, file: !3493, line: 364, type: !5566)
!5619 = !DILocation(line: 364, column: 46, scope: !5613)
!5620 = !DILocation(line: 364, column: 66, scope: !5613)
!5621 = !DILocation(line: 366, column: 23, scope: !5613)
!5622 = !DILocation(line: 366, column: 28, scope: !5613)
!5623 = !DILocation(line: 366, column: 2, scope: !5613)
!5624 = !DILocation(line: 367, column: 10, scope: !5613)
!5625 = !DILocation(line: 367, column: 2, scope: !5613)
!5626 = !DILocation(line: 368, column: 1, scope: !5613)
!5627 = distinct !DISubprogram(name: "proc_create_net_data", scope: !3, file: !3, line: 114, type: !5628, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5630)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!3566, !92, !100, !3566, !1948, !7, !96}
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636, !5637}
!5631 = !DILocalVariable(name: "name", arg: 1, scope: !5627, file: !3, line: 114, type: !92)
!5632 = !DILocalVariable(name: "mode", arg: 2, scope: !5627, file: !3, line: 114, type: !100)
!5633 = !DILocalVariable(name: "parent", arg: 3, scope: !5627, file: !3, line: 115, type: !3566)
!5634 = !DILocalVariable(name: "ops", arg: 4, scope: !5627, file: !3, line: 115, type: !1948)
!5635 = !DILocalVariable(name: "state_size", arg: 5, scope: !5627, file: !3, line: 116, type: !7)
!5636 = !DILocalVariable(name: "data", arg: 6, scope: !5627, file: !3, line: 116, type: !96)
!5637 = !DILocalVariable(name: "p", scope: !5627, file: !3, line: 118, type: !3566)
!5638 = !DILocation(line: 114, column: 57, scope: !5627)
!5639 = !DILocation(line: 114, column: 71, scope: !5627)
!5640 = !DILocation(line: 115, column: 26, scope: !5627)
!5641 = !DILocation(line: 115, column: 63, scope: !5627)
!5642 = !DILocation(line: 116, column: 16, scope: !5627)
!5643 = !DILocation(line: 116, column: 34, scope: !5627)
!5644 = !DILocation(line: 118, column: 2, scope: !5627)
!5645 = !DILocation(line: 118, column: 25, scope: !5627)
!5646 = !DILocation(line: 120, column: 22, scope: !5627)
!5647 = !DILocation(line: 120, column: 28, scope: !5627)
!5648 = !DILocation(line: 120, column: 43, scope: !5627)
!5649 = !DILocation(line: 120, column: 6, scope: !5627)
!5650 = !DILocation(line: 120, column: 4, scope: !5627)
!5651 = !DILocation(line: 121, column: 7, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 121, column: 6)
!5653 = !DILocation(line: 121, column: 6, scope: !5627)
!5654 = !DILocation(line: 122, column: 3, scope: !5652)
!5655 = !DILocation(line: 123, column: 19, scope: !5627)
!5656 = !DILocation(line: 123, column: 2, scope: !5627)
!5657 = !DILocation(line: 124, column: 2, scope: !5627)
!5658 = !DILocation(line: 124, column: 5, scope: !5627)
!5659 = !DILocation(line: 124, column: 14, scope: !5627)
!5660 = !DILocation(line: 125, column: 15, scope: !5627)
!5661 = !DILocation(line: 125, column: 2, scope: !5627)
!5662 = !DILocation(line: 125, column: 5, scope: !5627)
!5663 = !DILocation(line: 125, column: 13, scope: !5627)
!5664 = !DILocation(line: 126, column: 18, scope: !5627)
!5665 = !DILocation(line: 126, column: 2, scope: !5627)
!5666 = !DILocation(line: 126, column: 5, scope: !5627)
!5667 = !DILocation(line: 126, column: 16, scope: !5627)
!5668 = !DILocation(line: 127, column: 23, scope: !5627)
!5669 = !DILocation(line: 127, column: 31, scope: !5627)
!5670 = !DILocation(line: 127, column: 9, scope: !5627)
!5671 = !DILocation(line: 127, column: 2, scope: !5627)
!5672 = !DILocation(line: 128, column: 1, scope: !5627)
!5673 = !DISubprogram(name: "proc_create_reg", scope: !3568, file: !3568, line: 186, type: !5674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!3566, !92, !100, !5676, !96}
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!5677 = distinct !DISubprogram(name: "pde_force_lookup", scope: !3568, file: !3568, line: 314, type: !5678, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5680)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !3566}
!5680 = !{!5681}
!5681 = !DILocalVariable(name: "pde", arg: 1, scope: !5677, file: !3568, line: 314, type: !3566)
!5682 = !DILocation(line: 314, column: 60, scope: !5677)
!5683 = !DILocation(line: 317, column: 2, scope: !5677)
!5684 = !DILocation(line: 317, column: 7, scope: !5677)
!5685 = !DILocation(line: 317, column: 17, scope: !5677)
!5686 = !DILocation(line: 318, column: 1, scope: !5677)
!5687 = !DISubprogram(name: "proc_register", scope: !3568, file: !3568, line: 188, type: !5688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!3566, !3566, !3566}
!5690 = distinct !DISubprogram(name: "proc_create_net_data_write", scope: !3, file: !3, line: 156, type: !5691, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!3566, !92, !100, !3566, !1948, !3605, !7, !96}
!5693 = !{!5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701}
!5694 = !DILocalVariable(name: "name", arg: 1, scope: !5690, file: !3, line: 156, type: !92)
!5695 = !DILocalVariable(name: "mode", arg: 2, scope: !5690, file: !3, line: 156, type: !100)
!5696 = !DILocalVariable(name: "parent", arg: 3, scope: !5690, file: !3, line: 157, type: !3566)
!5697 = !DILocalVariable(name: "ops", arg: 4, scope: !5690, file: !3, line: 158, type: !1948)
!5698 = !DILocalVariable(name: "write", arg: 5, scope: !5690, file: !3, line: 159, type: !3605)
!5699 = !DILocalVariable(name: "state_size", arg: 6, scope: !5690, file: !3, line: 160, type: !7)
!5700 = !DILocalVariable(name: "data", arg: 7, scope: !5690, file: !3, line: 160, type: !96)
!5701 = !DILocalVariable(name: "p", scope: !5690, file: !3, line: 162, type: !3566)
!5702 = !DILocation(line: 156, column: 63, scope: !5690)
!5703 = !DILocation(line: 156, column: 77, scope: !5690)
!5704 = !DILocation(line: 157, column: 32, scope: !5690)
!5705 = !DILocation(line: 158, column: 38, scope: !5690)
!5706 = !DILocation(line: 159, column: 22, scope: !5690)
!5707 = !DILocation(line: 160, column: 22, scope: !5690)
!5708 = !DILocation(line: 160, column: 40, scope: !5690)
!5709 = !DILocation(line: 162, column: 2, scope: !5690)
!5710 = !DILocation(line: 162, column: 25, scope: !5690)
!5711 = !DILocation(line: 164, column: 22, scope: !5690)
!5712 = !DILocation(line: 164, column: 28, scope: !5690)
!5713 = !DILocation(line: 164, column: 43, scope: !5690)
!5714 = !DILocation(line: 164, column: 6, scope: !5690)
!5715 = !DILocation(line: 164, column: 4, scope: !5690)
!5716 = !DILocation(line: 165, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 165, column: 6)
!5718 = !DILocation(line: 165, column: 6, scope: !5690)
!5719 = !DILocation(line: 166, column: 3, scope: !5717)
!5720 = !DILocation(line: 167, column: 19, scope: !5690)
!5721 = !DILocation(line: 167, column: 2, scope: !5690)
!5722 = !DILocation(line: 168, column: 2, scope: !5690)
!5723 = !DILocation(line: 168, column: 5, scope: !5690)
!5724 = !DILocation(line: 168, column: 14, scope: !5690)
!5725 = !DILocation(line: 169, column: 15, scope: !5690)
!5726 = !DILocation(line: 169, column: 2, scope: !5690)
!5727 = !DILocation(line: 169, column: 5, scope: !5690)
!5728 = !DILocation(line: 169, column: 13, scope: !5690)
!5729 = !DILocation(line: 170, column: 18, scope: !5690)
!5730 = !DILocation(line: 170, column: 2, scope: !5690)
!5731 = !DILocation(line: 170, column: 5, scope: !5690)
!5732 = !DILocation(line: 170, column: 16, scope: !5690)
!5733 = !DILocation(line: 171, column: 13, scope: !5690)
!5734 = !DILocation(line: 171, column: 2, scope: !5690)
!5735 = !DILocation(line: 171, column: 5, scope: !5690)
!5736 = !DILocation(line: 171, column: 11, scope: !5690)
!5737 = !DILocation(line: 172, column: 23, scope: !5690)
!5738 = !DILocation(line: 172, column: 31, scope: !5690)
!5739 = !DILocation(line: 172, column: 9, scope: !5690)
!5740 = !DILocation(line: 172, column: 2, scope: !5690)
!5741 = !DILocation(line: 173, column: 1, scope: !5690)
!5742 = distinct !DISubprogram(name: "proc_create_net_single", scope: !3, file: !3, line: 207, type: !5743, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!3566, !92, !100, !3566, !1965, !96}
!5745 = !{!5746, !5747, !5748, !5749, !5750, !5751}
!5746 = !DILocalVariable(name: "name", arg: 1, scope: !5742, file: !3, line: 207, type: !92)
!5747 = !DILocalVariable(name: "mode", arg: 2, scope: !5742, file: !3, line: 207, type: !100)
!5748 = !DILocalVariable(name: "parent", arg: 3, scope: !5742, file: !3, line: 208, type: !3566)
!5749 = !DILocalVariable(name: "show", arg: 4, scope: !5742, file: !3, line: 209, type: !1965)
!5750 = !DILocalVariable(name: "data", arg: 5, scope: !5742, file: !3, line: 209, type: !96)
!5751 = !DILocalVariable(name: "p", scope: !5742, file: !3, line: 211, type: !3566)
!5752 = !DILocation(line: 207, column: 59, scope: !5742)
!5753 = !DILocation(line: 207, column: 73, scope: !5742)
!5754 = !DILocation(line: 208, column: 26, scope: !5742)
!5755 = !DILocation(line: 209, column: 9, scope: !5742)
!5756 = !DILocation(line: 209, column: 49, scope: !5742)
!5757 = !DILocation(line: 211, column: 2, scope: !5742)
!5758 = !DILocation(line: 211, column: 25, scope: !5742)
!5759 = !DILocation(line: 213, column: 22, scope: !5742)
!5760 = !DILocation(line: 213, column: 28, scope: !5742)
!5761 = !DILocation(line: 213, column: 43, scope: !5742)
!5762 = !DILocation(line: 213, column: 6, scope: !5742)
!5763 = !DILocation(line: 213, column: 4, scope: !5742)
!5764 = !DILocation(line: 214, column: 7, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 214, column: 6)
!5766 = !DILocation(line: 214, column: 6, scope: !5742)
!5767 = !DILocation(line: 215, column: 3, scope: !5765)
!5768 = !DILocation(line: 216, column: 19, scope: !5742)
!5769 = !DILocation(line: 216, column: 2, scope: !5742)
!5770 = !DILocation(line: 217, column: 2, scope: !5742)
!5771 = !DILocation(line: 217, column: 5, scope: !5742)
!5772 = !DILocation(line: 217, column: 14, scope: !5742)
!5773 = !DILocation(line: 218, column: 19, scope: !5742)
!5774 = !DILocation(line: 218, column: 2, scope: !5742)
!5775 = !DILocation(line: 218, column: 5, scope: !5742)
!5776 = !DILocation(line: 218, column: 17, scope: !5742)
!5777 = !DILocation(line: 219, column: 23, scope: !5742)
!5778 = !DILocation(line: 219, column: 31, scope: !5742)
!5779 = !DILocation(line: 219, column: 9, scope: !5742)
!5780 = !DILocation(line: 219, column: 2, scope: !5742)
!5781 = !DILocation(line: 220, column: 1, scope: !5742)
!5782 = distinct !DISubprogram(name: "proc_create_net_single_write", scope: !3, file: !3, line: 248, type: !5783, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!3566, !92, !100, !3566, !1965, !3605, !96}
!5785 = !{!5786, !5787, !5788, !5789, !5790, !5791, !5792}
!5786 = !DILocalVariable(name: "name", arg: 1, scope: !5782, file: !3, line: 248, type: !92)
!5787 = !DILocalVariable(name: "mode", arg: 2, scope: !5782, file: !3, line: 248, type: !100)
!5788 = !DILocalVariable(name: "parent", arg: 3, scope: !5782, file: !3, line: 249, type: !3566)
!5789 = !DILocalVariable(name: "show", arg: 4, scope: !5782, file: !3, line: 250, type: !1965)
!5790 = !DILocalVariable(name: "write", arg: 5, scope: !5782, file: !3, line: 251, type: !3605)
!5791 = !DILocalVariable(name: "data", arg: 6, scope: !5782, file: !3, line: 252, type: !96)
!5792 = !DILocalVariable(name: "p", scope: !5782, file: !3, line: 254, type: !3566)
!5793 = !DILocation(line: 248, column: 65, scope: !5782)
!5794 = !DILocation(line: 248, column: 79, scope: !5782)
!5795 = !DILocation(line: 249, column: 34, scope: !5782)
!5796 = !DILocation(line: 250, column: 17, scope: !5782)
!5797 = !DILocation(line: 251, column: 24, scope: !5782)
!5798 = !DILocation(line: 252, column: 17, scope: !5782)
!5799 = !DILocation(line: 254, column: 2, scope: !5782)
!5800 = !DILocation(line: 254, column: 25, scope: !5782)
!5801 = !DILocation(line: 256, column: 22, scope: !5782)
!5802 = !DILocation(line: 256, column: 28, scope: !5782)
!5803 = !DILocation(line: 256, column: 43, scope: !5782)
!5804 = !DILocation(line: 256, column: 6, scope: !5782)
!5805 = !DILocation(line: 256, column: 4, scope: !5782)
!5806 = !DILocation(line: 257, column: 7, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 257, column: 6)
!5808 = !DILocation(line: 257, column: 6, scope: !5782)
!5809 = !DILocation(line: 258, column: 3, scope: !5807)
!5810 = !DILocation(line: 259, column: 19, scope: !5782)
!5811 = !DILocation(line: 259, column: 2, scope: !5782)
!5812 = !DILocation(line: 260, column: 2, scope: !5782)
!5813 = !DILocation(line: 260, column: 5, scope: !5782)
!5814 = !DILocation(line: 260, column: 14, scope: !5782)
!5815 = !DILocation(line: 261, column: 19, scope: !5782)
!5816 = !DILocation(line: 261, column: 2, scope: !5782)
!5817 = !DILocation(line: 261, column: 5, scope: !5782)
!5818 = !DILocation(line: 261, column: 17, scope: !5782)
!5819 = !DILocation(line: 262, column: 13, scope: !5782)
!5820 = !DILocation(line: 262, column: 2, scope: !5782)
!5821 = !DILocation(line: 262, column: 5, scope: !5782)
!5822 = !DILocation(line: 262, column: 11, scope: !5782)
!5823 = !DILocation(line: 263, column: 23, scope: !5782)
!5824 = !DILocation(line: 263, column: 31, scope: !5782)
!5825 = !DILocation(line: 263, column: 9, scope: !5782)
!5826 = !DILocation(line: 263, column: 2, scope: !5782)
!5827 = !DILocation(line: 264, column: 1, scope: !5782)
!5828 = distinct !DISubprogram(name: "proc_tgid_net_lookup", scope: !3, file: !3, line: 287, type: !941, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5829)
!5829 = !{!5830, !5831, !5832, !5833, !5834}
!5830 = !DILocalVariable(name: "dir", arg: 1, scope: !5828, file: !3, line: 287, type: !921)
!5831 = !DILocalVariable(name: "dentry", arg: 2, scope: !5828, file: !3, line: 288, type: !886)
!5832 = !DILocalVariable(name: "flags", arg: 3, scope: !5828, file: !3, line: 288, type: !7)
!5833 = !DILocalVariable(name: "de", scope: !5828, file: !3, line: 290, type: !886)
!5834 = !DILocalVariable(name: "net", scope: !5828, file: !3, line: 291, type: !3491)
!5835 = !DILocation(line: 287, column: 58, scope: !5828)
!5836 = !DILocation(line: 288, column: 18, scope: !5828)
!5837 = !DILocation(line: 288, column: 39, scope: !5828)
!5838 = !DILocation(line: 290, column: 2, scope: !5828)
!5839 = !DILocation(line: 290, column: 17, scope: !5828)
!5840 = !DILocation(line: 291, column: 2, scope: !5828)
!5841 = !DILocation(line: 291, column: 14, scope: !5828)
!5842 = !DILocation(line: 293, column: 7, scope: !5828)
!5843 = !DILocation(line: 293, column: 5, scope: !5828)
!5844 = !DILocation(line: 294, column: 26, scope: !5828)
!5845 = !DILocation(line: 294, column: 8, scope: !5828)
!5846 = !DILocation(line: 294, column: 6, scope: !5828)
!5847 = !DILocation(line: 295, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 295, column: 6)
!5849 = !DILocation(line: 295, column: 10, scope: !5848)
!5850 = !DILocation(line: 295, column: 6, scope: !5828)
!5851 = !DILocation(line: 296, column: 23, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 295, column: 19)
!5853 = !DILocation(line: 296, column: 28, scope: !5852)
!5854 = !DILocation(line: 296, column: 36, scope: !5852)
!5855 = !DILocation(line: 296, column: 41, scope: !5852)
!5856 = !DILocation(line: 296, column: 8, scope: !5852)
!5857 = !DILocation(line: 296, column: 6, scope: !5852)
!5858 = !DILocation(line: 297, column: 11, scope: !5852)
!5859 = !DILocation(line: 297, column: 3, scope: !5852)
!5860 = !DILocation(line: 298, column: 2, scope: !5852)
!5861 = !DILocation(line: 299, column: 9, scope: !5828)
!5862 = !DILocation(line: 300, column: 1, scope: !5828)
!5863 = !DILocation(line: 299, column: 2, scope: !5828)
!5864 = distinct !DISubprogram(name: "proc_tgid_net_getattr", scope: !3, file: !3, line: 302, type: !1041, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5865)
!5865 = !{!5866, !5867, !5868, !5869, !5870, !5871, !5872}
!5866 = !DILocalVariable(name: "idmap", arg: 1, scope: !5864, file: !3, line: 302, type: !960)
!5867 = !DILocalVariable(name: "path", arg: 2, scope: !5864, file: !3, line: 303, type: !1043)
!5868 = !DILocalVariable(name: "stat", arg: 3, scope: !5864, file: !3, line: 303, type: !1045)
!5869 = !DILocalVariable(name: "request_mask", arg: 4, scope: !5864, file: !3, line: 304, type: !210)
!5870 = !DILocalVariable(name: "query_flags", arg: 5, scope: !5864, file: !3, line: 304, type: !7)
!5871 = !DILocalVariable(name: "inode", scope: !5864, file: !3, line: 306, type: !921)
!5872 = !DILocalVariable(name: "net", scope: !5864, file: !3, line: 307, type: !3491)
!5873 = !DILocation(line: 302, column: 52, scope: !5864)
!5874 = !DILocation(line: 303, column: 25, scope: !5864)
!5875 = !DILocation(line: 303, column: 45, scope: !5864)
!5876 = !DILocation(line: 304, column: 10, scope: !5864)
!5877 = !DILocation(line: 304, column: 37, scope: !5864)
!5878 = !DILocation(line: 306, column: 2, scope: !5864)
!5879 = !DILocation(line: 306, column: 16, scope: !5864)
!5880 = !DILocation(line: 306, column: 32, scope: !5864)
!5881 = !DILocation(line: 306, column: 38, scope: !5864)
!5882 = !DILocation(line: 306, column: 24, scope: !5864)
!5883 = !DILocation(line: 307, column: 2, scope: !5864)
!5884 = !DILocation(line: 307, column: 14, scope: !5864)
!5885 = !DILocation(line: 309, column: 26, scope: !5864)
!5886 = !DILocation(line: 309, column: 8, scope: !5864)
!5887 = !DILocation(line: 309, column: 6, scope: !5864)
!5888 = !DILocation(line: 311, column: 35, scope: !5864)
!5889 = !DILocation(line: 311, column: 49, scope: !5864)
!5890 = !DILocation(line: 311, column: 56, scope: !5864)
!5891 = !DILocation(line: 311, column: 2, scope: !5864)
!5892 = !DILocation(line: 313, column: 6, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 313, column: 6)
!5894 = !DILocation(line: 313, column: 10, scope: !5893)
!5895 = !DILocation(line: 313, column: 6, scope: !5864)
!5896 = !DILocation(line: 314, column: 17, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 313, column: 19)
!5898 = !DILocation(line: 314, column: 22, scope: !5897)
!5899 = !DILocation(line: 314, column: 32, scope: !5897)
!5900 = !DILocation(line: 314, column: 3, scope: !5897)
!5901 = !DILocation(line: 314, column: 9, scope: !5897)
!5902 = !DILocation(line: 314, column: 15, scope: !5897)
!5903 = !DILocation(line: 315, column: 11, scope: !5897)
!5904 = !DILocation(line: 315, column: 3, scope: !5897)
!5905 = !DILocation(line: 316, column: 2, scope: !5897)
!5906 = !DILocation(line: 319, column: 1, scope: !5864)
!5907 = !DILocation(line: 318, column: 2, scope: !5864)
!5908 = distinct !DISubprogram(name: "proc_tgid_net_readdir", scope: !3, file: !3, line: 327, type: !2965, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5909 = !{!5910, !5911, !5912, !5913}
!5910 = !DILocalVariable(name: "file", arg: 1, scope: !5908, file: !3, line: 327, type: !544)
!5911 = !DILocalVariable(name: "ctx", arg: 2, scope: !5908, file: !3, line: 327, type: !2967)
!5912 = !DILocalVariable(name: "ret", scope: !5908, file: !3, line: 329, type: !98)
!5913 = !DILocalVariable(name: "net", scope: !5908, file: !3, line: 330, type: !3491)
!5914 = !DILocation(line: 327, column: 47, scope: !5908)
!5915 = !DILocation(line: 327, column: 73, scope: !5908)
!5916 = !DILocation(line: 329, column: 2, scope: !5908)
!5917 = !DILocation(line: 329, column: 6, scope: !5908)
!5918 = !DILocation(line: 330, column: 2, scope: !5908)
!5919 = !DILocation(line: 330, column: 14, scope: !5908)
!5920 = !DILocation(line: 332, column: 6, scope: !5908)
!5921 = !DILocation(line: 333, column: 37, scope: !5908)
!5922 = !DILocation(line: 333, column: 26, scope: !5908)
!5923 = !DILocation(line: 333, column: 8, scope: !5908)
!5924 = !DILocation(line: 333, column: 6, scope: !5908)
!5925 = !DILocation(line: 334, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 334, column: 6)
!5927 = !DILocation(line: 334, column: 10, scope: !5926)
!5928 = !DILocation(line: 334, column: 6, scope: !5908)
!5929 = !DILocation(line: 335, column: 25, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 334, column: 19)
!5931 = !DILocation(line: 335, column: 31, scope: !5930)
!5932 = !DILocation(line: 335, column: 36, scope: !5930)
!5933 = !DILocation(line: 335, column: 41, scope: !5930)
!5934 = !DILocation(line: 335, column: 9, scope: !5930)
!5935 = !DILocation(line: 335, column: 7, scope: !5930)
!5936 = !DILocation(line: 336, column: 11, scope: !5930)
!5937 = !DILocation(line: 336, column: 3, scope: !5930)
!5938 = !DILocation(line: 337, column: 2, scope: !5930)
!5939 = !DILocation(line: 338, column: 9, scope: !5908)
!5940 = !DILocation(line: 339, column: 1, scope: !5908)
!5941 = !DILocation(line: 338, column: 2, scope: !5908)
!5942 = distinct !DISubprogram(name: "proc_net_init", scope: !3, file: !3, line: 412, type: !2148, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5943 = !DILocation(line: 414, column: 2, scope: !5942)
!5944 = !DILocation(line: 416, column: 9, scope: !5942)
!5945 = !DILocation(line: 416, column: 2, scope: !5942)
!5946 = !DISubprogram(name: "proc_symlink", scope: !3583, file: !3583, line: 82, type: !5947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!3566, !92, !3566, !92}
!5949 = !DISubprogram(name: "register_pernet_subsys", scope: !3493, file: !3493, line: 480, type: !5950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!98, !5952}
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5953 = distinct !DISubprogram(name: "get_net", scope: !3493, file: !3493, line: 259, type: !5954, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5956)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!3491, !3491}
!5956 = !{!5957}
!5957 = !DILocalVariable(name: "net", arg: 1, scope: !5953, file: !3493, line: 259, type: !3491)
!5958 = !DILocation(line: 259, column: 47, scope: !5953)
!5959 = !DILocation(line: 261, column: 16, scope: !5953)
!5960 = !DILocation(line: 261, column: 21, scope: !5953)
!5961 = !DILocation(line: 261, column: 24, scope: !5953)
!5962 = !DILocation(line: 261, column: 2, scope: !5953)
!5963 = !DILocation(line: 262, column: 9, scope: !5953)
!5964 = !DILocation(line: 262, column: 2, scope: !5953)
!5965 = distinct !DISubprogram(name: "netns_tracker_alloc", scope: !3493, file: !3493, line: 340, type: !5966, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !3491, !5566, !197}
!5968 = !{!5969, !5970, !5971}
!5969 = !DILocalVariable(name: "net", arg: 1, scope: !5965, file: !3493, line: 340, type: !3491)
!5970 = !DILocalVariable(name: "tracker", arg: 2, scope: !5965, file: !3493, line: 340, type: !5566)
!5971 = !DILocalVariable(name: "gfp", arg: 3, scope: !5965, file: !3493, line: 341, type: !197)
!5972 = !DILocation(line: 340, column: 52, scope: !5965)
!5973 = !DILocation(line: 340, column: 72, scope: !5965)
!5974 = !DILocation(line: 341, column: 18, scope: !5965)
!5975 = !DILocation(line: 343, column: 24, scope: !5965)
!5976 = !DILocation(line: 343, column: 29, scope: !5965)
!5977 = !DILocation(line: 343, column: 44, scope: !5965)
!5978 = !DILocation(line: 343, column: 2, scope: !5965)
!5979 = !DILocation(line: 344, column: 1, scope: !5965)
!5980 = distinct !DISubprogram(name: "refcount_inc", scope: !184, file: !184, line: 265, type: !5981, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !5983}
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!5984 = !{!5985}
!5985 = !DILocalVariable(name: "r", arg: 1, scope: !5980, file: !184, line: 265, type: !5983)
!5986 = !DILocation(line: 265, column: 45, scope: !5980)
!5987 = !DILocation(line: 267, column: 17, scope: !5980)
!5988 = !DILocation(line: 267, column: 2, scope: !5980)
!5989 = !DILocation(line: 268, column: 1, scope: !5980)
!5990 = distinct !DISubprogram(name: "__refcount_inc", scope: !184, file: !184, line: 248, type: !5991, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5993)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{null, !5983, !2176}
!5993 = !{!5994, !5995}
!5994 = !DILocalVariable(name: "r", arg: 1, scope: !5990, file: !184, line: 248, type: !5983)
!5995 = !DILocalVariable(name: "oldp", arg: 2, scope: !5990, file: !184, line: 248, type: !2176)
!5996 = !DILocation(line: 248, column: 47, scope: !5990)
!5997 = !DILocation(line: 248, column: 55, scope: !5990)
!5998 = !DILocation(line: 250, column: 20, scope: !5990)
!5999 = !DILocation(line: 250, column: 23, scope: !5990)
!6000 = !DILocation(line: 250, column: 2, scope: !5990)
!6001 = !DILocation(line: 251, column: 1, scope: !5990)
!6002 = distinct !DISubprogram(name: "__refcount_add", scope: !184, file: !184, line: 191, type: !6003, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{null, !98, !5983, !2176}
!6005 = !{!6006, !6007, !6008, !6009}
!6006 = !DILocalVariable(name: "i", arg: 1, scope: !6002, file: !184, line: 191, type: !98)
!6007 = !DILocalVariable(name: "r", arg: 2, scope: !6002, file: !184, line: 191, type: !5983)
!6008 = !DILocalVariable(name: "oldp", arg: 3, scope: !6002, file: !184, line: 191, type: !2176)
!6009 = !DILocalVariable(name: "old", scope: !6002, file: !184, line: 193, type: !98)
!6010 = !DILocation(line: 191, column: 39, scope: !6002)
!6011 = !DILocation(line: 191, column: 54, scope: !6002)
!6012 = !DILocation(line: 191, column: 62, scope: !6002)
!6013 = !DILocation(line: 193, column: 2, scope: !6002)
!6014 = !DILocation(line: 193, column: 6, scope: !6002)
!6015 = !DILocation(line: 193, column: 37, scope: !6002)
!6016 = !DILocation(line: 193, column: 41, scope: !6002)
!6017 = !DILocation(line: 193, column: 44, scope: !6002)
!6018 = !DILocation(line: 193, column: 12, scope: !6002)
!6019 = !DILocation(line: 195, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6002, file: !184, line: 195, column: 6)
!6021 = !DILocation(line: 195, column: 6, scope: !6002)
!6022 = !DILocation(line: 196, column: 11, scope: !6020)
!6023 = !DILocation(line: 196, column: 4, scope: !6020)
!6024 = !DILocation(line: 196, column: 9, scope: !6020)
!6025 = !DILocation(line: 196, column: 3, scope: !6020)
!6026 = !DILocation(line: 198, column: 6, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6002, file: !184, line: 198, column: 6)
!6028 = !DILocation(line: 198, column: 6, scope: !6002)
!6029 = !DILocation(line: 199, column: 26, scope: !6027)
!6030 = !DILocation(line: 199, column: 3, scope: !6027)
!6031 = !DILocation(line: 200, column: 11, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6027, file: !184, line: 200, column: 11)
!6033 = !DILocation(line: 200, column: 11, scope: !6027)
!6034 = !DILocation(line: 201, column: 26, scope: !6032)
!6035 = !DILocation(line: 201, column: 3, scope: !6032)
!6036 = !DILocation(line: 202, column: 1, scope: !6002)
!6037 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6038, file: !6038, line: 250, type: !6039, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6038 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!98, !98, !6041}
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!6042 = !{!6043, !6044}
!6043 = !DILocalVariable(name: "i", arg: 1, scope: !6037, file: !6038, line: 250, type: !98)
!6044 = !DILocalVariable(name: "v", arg: 2, scope: !6037, file: !6038, line: 250, type: !6041)
!6045 = !DILocation(line: 250, column: 30, scope: !6037)
!6046 = !DILocation(line: 250, column: 43, scope: !6037)
!6047 = !DILocation(line: 252, column: 31, scope: !6037)
!6048 = !DILocation(line: 252, column: 2, scope: !6037)
!6049 = !DILocation(line: 253, column: 38, scope: !6037)
!6050 = !DILocation(line: 253, column: 41, scope: !6037)
!6051 = !DILocation(line: 253, column: 9, scope: !6037)
!6052 = !DILocation(line: 253, column: 2, scope: !6037)
!6053 = !DISubprogram(name: "refcount_warn_saturate", scope: !184, file: !184, line: 127, type: !6054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{null, !5983, !183}
!6056 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6057, file: !6057, line: 94, type: !6058, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6057 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6058 = !DISubroutineType(types: !6059)
!6059 = !{null, !6060, !111}
!6060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6061, size: 64)
!6061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6062)
!6062 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6063 = !{!6064, !6065}
!6064 = !DILocalVariable(name: "v", arg: 1, scope: !6056, file: !6057, line: 94, type: !6060)
!6065 = !DILocalVariable(name: "size", arg: 2, scope: !6056, file: !6057, line: 94, type: !111)
!6066 = !DILocation(line: 94, column: 79, scope: !6056)
!6067 = !DILocation(line: 94, column: 89, scope: !6056)
!6068 = !DILocation(line: 96, column: 20, scope: !6056)
!6069 = !DILocation(line: 96, column: 23, scope: !6056)
!6070 = !DILocation(line: 96, column: 2, scope: !6056)
!6071 = !DILocation(line: 97, column: 2, scope: !6056)
!6072 = !DILocation(line: 98, column: 1, scope: !6056)
!6073 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6074, file: !6074, line: 731, type: !6039, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6074 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6075 = !{!6076, !6077}
!6076 = !DILocalVariable(name: "i", arg: 1, scope: !6073, file: !6074, line: 731, type: !98)
!6077 = !DILocalVariable(name: "v", arg: 2, scope: !6073, file: !6074, line: 731, type: !6041)
!6078 = !DILocation(line: 731, column: 34, scope: !6073)
!6079 = !DILocation(line: 731, column: 47, scope: !6073)
!6080 = !DILocation(line: 736, column: 31, scope: !6073)
!6081 = !DILocation(line: 736, column: 34, scope: !6073)
!6082 = !DILocation(line: 736, column: 9, scope: !6073)
!6083 = !DILocation(line: 736, column: 2, scope: !6073)
!6084 = distinct !DISubprogram(name: "kasan_check_write", scope: !6085, file: !6085, line: 44, type: !6086, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6088)
!6085 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!764, !6060, !7}
!6088 = !{!6089, !6090}
!6089 = !DILocalVariable(name: "p", arg: 1, scope: !6084, file: !6085, line: 44, type: !6060)
!6090 = !DILocalVariable(name: "size", arg: 2, scope: !6084, file: !6085, line: 44, type: !7)
!6091 = !DILocation(line: 44, column: 59, scope: !6084)
!6092 = !DILocation(line: 44, column: 75, scope: !6084)
!6093 = !DILocation(line: 46, column: 2, scope: !6084)
!6094 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6095, file: !6095, line: 229, type: !6096, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6098)
!6095 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !6060, !111, !98}
!6098 = !{!6099, !6100, !6101}
!6099 = !DILocalVariable(name: "ptr", arg: 1, scope: !6094, file: !6095, line: 229, type: !6060)
!6100 = !DILocalVariable(name: "size", arg: 2, scope: !6094, file: !6095, line: 229, type: !111)
!6101 = !DILocalVariable(name: "type", arg: 3, scope: !6094, file: !6095, line: 230, type: !98)
!6102 = !DILocation(line: 229, column: 60, scope: !6094)
!6103 = !DILocation(line: 229, column: 72, scope: !6094)
!6104 = !DILocation(line: 230, column: 15, scope: !6094)
!6105 = !DILocation(line: 230, column: 23, scope: !6094)
!6106 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6107, file: !6107, line: 95, type: !6039, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6107 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6108 = !{!6109, !6110, !6111}
!6109 = !DILocalVariable(name: "i", arg: 1, scope: !6106, file: !6107, line: 95, type: !98)
!6110 = !DILocalVariable(name: "v", arg: 2, scope: !6106, file: !6107, line: 95, type: !6041)
!6111 = !DILocalVariable(name: "__ret", scope: !6112, file: !6107, line: 97, type: !98)
!6112 = distinct !DILexicalBlock(scope: !6106, file: !6107, line: 97, column: 9)
!6113 = !DILocation(line: 95, column: 54, scope: !6106)
!6114 = !DILocation(line: 95, column: 67, scope: !6106)
!6115 = !DILocation(line: 97, column: 9, scope: !6112)
!6116 = !{i64 2148652357, i64 2148652396, i64 2148652417, i64 2148652454, i64 2148652477, i64 2148652486}
!6117 = !DILocation(line: 97, column: 9, scope: !6106)
!6118 = !DILocation(line: 97, column: 2, scope: !6106)
!6119 = distinct !DISubprogram(name: "__netns_tracker_alloc", scope: !3493, file: !3493, line: 328, type: !6120, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6122)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{null, !3491, !5566, !764, !197}
!6122 = !{!6123, !6124, !6125, !6126}
!6123 = !DILocalVariable(name: "net", arg: 1, scope: !6119, file: !3493, line: 328, type: !3491)
!6124 = !DILocalVariable(name: "tracker", arg: 2, scope: !6119, file: !3493, line: 329, type: !5566)
!6125 = !DILocalVariable(name: "refcounted", arg: 3, scope: !6119, file: !3493, line: 330, type: !764)
!6126 = !DILocalVariable(name: "gfp", arg: 4, scope: !6119, file: !3493, line: 331, type: !197)
!6127 = !DILocation(line: 328, column: 54, scope: !6119)
!6128 = !DILocation(line: 329, column: 22, scope: !6119)
!6129 = !DILocation(line: 330, column: 12, scope: !6119)
!6130 = !DILocation(line: 331, column: 13, scope: !6119)
!6131 = !DILocation(line: 338, column: 1, scope: !6119)
!6132 = distinct !DISubprogram(name: "__netns_tracker_free", scope: !3493, file: !3493, line: 346, type: !6133, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{null, !3491, !5566, !764}
!6135 = !{!6136, !6137, !6138}
!6136 = !DILocalVariable(name: "net", arg: 1, scope: !6132, file: !3493, line: 346, type: !3491)
!6137 = !DILocalVariable(name: "tracker", arg: 2, scope: !6132, file: !3493, line: 347, type: !5566)
!6138 = !DILocalVariable(name: "refcounted", arg: 3, scope: !6132, file: !3493, line: 348, type: !764)
!6139 = !DILocation(line: 346, column: 53, scope: !6132)
!6140 = !DILocation(line: 347, column: 21, scope: !6132)
!6141 = !DILocation(line: 348, column: 11, scope: !6132)
!6142 = !DILocation(line: 354, column: 1, scope: !6132)
!6143 = distinct !DISubprogram(name: "put_net", scope: !3493, file: !3493, line: 278, type: !5504, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6144)
!6144 = !{!6145}
!6145 = !DILocalVariable(name: "net", arg: 1, scope: !6143, file: !3493, line: 278, type: !3491)
!6146 = !DILocation(line: 278, column: 40, scope: !6143)
!6147 = !DILocation(line: 280, column: 29, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6143, file: !3493, line: 280, column: 6)
!6149 = !DILocation(line: 280, column: 34, scope: !6148)
!6150 = !DILocation(line: 280, column: 37, scope: !6148)
!6151 = !DILocation(line: 280, column: 6, scope: !6148)
!6152 = !DILocation(line: 280, column: 6, scope: !6143)
!6153 = !DILocation(line: 281, column: 13, scope: !6148)
!6154 = !DILocation(line: 281, column: 3, scope: !6148)
!6155 = !DILocation(line: 282, column: 1, scope: !6143)
!6156 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !184, file: !184, line: 331, type: !6157, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!764, !5983}
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "r", arg: 1, scope: !6156, file: !184, line: 331, type: !5983)
!6161 = !DILocation(line: 331, column: 67, scope: !6156)
!6162 = !DILocation(line: 333, column: 33, scope: !6156)
!6163 = !DILocation(line: 333, column: 9, scope: !6156)
!6164 = !DILocation(line: 333, column: 2, scope: !6156)
!6165 = !DISubprogram(name: "__put_net", scope: !3493, file: !3493, line: 256, type: !5504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !184, file: !184, line: 313, type: !6167, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!764, !5983, !2176}
!6169 = !{!6170, !6171}
!6170 = !DILocalVariable(name: "r", arg: 1, scope: !6166, file: !184, line: 313, type: !5983)
!6171 = !DILocalVariable(name: "oldp", arg: 2, scope: !6166, file: !184, line: 313, type: !2176)
!6172 = !DILocation(line: 313, column: 69, scope: !6166)
!6173 = !DILocation(line: 313, column: 77, scope: !6166)
!6174 = !DILocation(line: 315, column: 36, scope: !6166)
!6175 = !DILocation(line: 315, column: 39, scope: !6166)
!6176 = !DILocation(line: 315, column: 9, scope: !6166)
!6177 = !DILocation(line: 315, column: 2, scope: !6166)
!6178 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !184, file: !184, line: 270, type: !6179, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!764, !98, !5983, !2176}
!6181 = !{!6182, !6183, !6184, !6185}
!6182 = !DILocalVariable(name: "i", arg: 1, scope: !6178, file: !184, line: 270, type: !98)
!6183 = !DILocalVariable(name: "r", arg: 2, scope: !6178, file: !184, line: 270, type: !5983)
!6184 = !DILocalVariable(name: "oldp", arg: 3, scope: !6178, file: !184, line: 270, type: !2176)
!6185 = !DILocalVariable(name: "old", scope: !6178, file: !184, line: 272, type: !98)
!6186 = !DILocation(line: 270, column: 61, scope: !6178)
!6187 = !DILocation(line: 270, column: 76, scope: !6178)
!6188 = !DILocation(line: 270, column: 84, scope: !6178)
!6189 = !DILocation(line: 272, column: 2, scope: !6178)
!6190 = !DILocation(line: 272, column: 6, scope: !6178)
!6191 = !DILocation(line: 272, column: 37, scope: !6178)
!6192 = !DILocation(line: 272, column: 41, scope: !6178)
!6193 = !DILocation(line: 272, column: 44, scope: !6178)
!6194 = !DILocation(line: 272, column: 12, scope: !6178)
!6195 = !DILocation(line: 274, column: 6, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6178, file: !184, line: 274, column: 6)
!6197 = !DILocation(line: 274, column: 6, scope: !6178)
!6198 = !DILocation(line: 275, column: 11, scope: !6196)
!6199 = !DILocation(line: 275, column: 4, scope: !6196)
!6200 = !DILocation(line: 275, column: 9, scope: !6196)
!6201 = !DILocation(line: 275, column: 3, scope: !6196)
!6202 = !DILocation(line: 277, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6178, file: !184, line: 277, column: 6)
!6204 = !DILocation(line: 277, column: 13, scope: !6203)
!6205 = !DILocation(line: 277, column: 10, scope: !6203)
!6206 = !DILocation(line: 277, column: 6, scope: !6178)
!6207 = !DILocation(line: 278, column: 3, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6203, file: !184, line: 277, column: 16)
!6209 = !DILocation(line: 278, column: 3, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6208, file: !184, line: 278, column: 3)
!6211 = !DILocation(line: 278, column: 3, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6210, file: !184, line: 278, column: 3)
!6213 = !DILocation(line: 278, column: 3, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6210, file: !184, line: 278, column: 3)
!6215 = !DILocation(line: 278, column: 3, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6214, file: !184, line: 278, column: 3)
!6217 = !{i64 2150825770}
!6218 = !DILocation(line: 279, column: 3, scope: !6208)
!6219 = !DILocation(line: 282, column: 6, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6178, file: !184, line: 282, column: 6)
!6221 = !DILocation(line: 282, column: 6, scope: !6178)
!6222 = !DILocation(line: 283, column: 26, scope: !6220)
!6223 = !DILocation(line: 283, column: 3, scope: !6220)
!6224 = !DILocation(line: 285, column: 2, scope: !6178)
!6225 = !DILocation(line: 286, column: 1, scope: !6178)
!6226 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6038, file: !6038, line: 397, type: !6039, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229}
!6228 = !DILocalVariable(name: "i", arg: 1, scope: !6226, file: !6038, line: 397, type: !98)
!6229 = !DILocalVariable(name: "v", arg: 2, scope: !6226, file: !6038, line: 397, type: !6041)
!6230 = !DILocation(line: 397, column: 30, scope: !6226)
!6231 = !DILocation(line: 397, column: 43, scope: !6226)
!6232 = !DILocation(line: 399, column: 2, scope: !6226)
!6233 = !DILocation(line: 399, column: 2, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6226, file: !6038, line: 399, column: 2)
!6235 = !DILocation(line: 400, column: 31, scope: !6226)
!6236 = !DILocation(line: 400, column: 2, scope: !6226)
!6237 = !DILocation(line: 401, column: 38, scope: !6226)
!6238 = !DILocation(line: 401, column: 41, scope: !6226)
!6239 = !DILocation(line: 401, column: 9, scope: !6226)
!6240 = !DILocation(line: 401, column: 2, scope: !6226)
!6241 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6074, file: !6074, line: 928, type: !6039, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6242 = !{!6243, !6244}
!6243 = !DILocalVariable(name: "i", arg: 1, scope: !6241, file: !6074, line: 928, type: !98)
!6244 = !DILocalVariable(name: "v", arg: 2, scope: !6241, file: !6074, line: 928, type: !6041)
!6245 = !DILocation(line: 928, column: 34, scope: !6241)
!6246 = !DILocation(line: 928, column: 47, scope: !6241)
!6247 = !DILocation(line: 936, column: 31, scope: !6241)
!6248 = !DILocation(line: 936, column: 34, scope: !6241)
!6249 = !DILocation(line: 936, column: 9, scope: !6241)
!6250 = !DILocation(line: 936, column: 2, scope: !6241)
!6251 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6107, file: !6107, line: 101, type: !6039, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6252)
!6252 = !{!6253, !6254, !6255}
!6253 = !DILocalVariable(name: "i", arg: 1, scope: !6251, file: !6107, line: 101, type: !98)
!6254 = !DILocalVariable(name: "v", arg: 2, scope: !6251, file: !6107, line: 101, type: !6041)
!6255 = !DILocalVariable(name: "__ret", scope: !6256, file: !6107, line: 103, type: !98)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !6107, line: 103, column: 9)
!6257 = !DILocation(line: 101, column: 54, scope: !6251)
!6258 = !DILocation(line: 101, column: 67, scope: !6251)
!6259 = !DILocation(line: 103, column: 9, scope: !6256)
!6260 = !{i64 2148654542, i64 2148654581, i64 2148654602, i64 2148654639, i64 2148654662, i64 2148654671}
!6261 = !DILocation(line: 103, column: 9, scope: !6251)
!6262 = !DILocation(line: 103, column: 2, scope: !6251)
!6263 = distinct !DISubprogram(name: "seq_open_net", scope: !3, file: !3, line: 39, type: !2992, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6264)
!6264 = !{!6265, !6266, !6267, !6268, !6269, !6270, !6272}
!6265 = !DILocalVariable(name: "inode", arg: 1, scope: !6263, file: !3, line: 39, type: !921)
!6266 = !DILocalVariable(name: "file", arg: 2, scope: !6263, file: !3, line: 39, type: !544)
!6267 = !DILocalVariable(name: "state_size", scope: !6263, file: !3, line: 41, type: !7)
!6268 = !DILocalVariable(name: "p", scope: !6263, file: !3, line: 42, type: !5538)
!6269 = !DILocalVariable(name: "net", scope: !6263, file: !3, line: 43, type: !3491)
!6270 = !DILocalVariable(name: "__ret_warn_on", scope: !6271, file: !3, line: 45, type: !98)
!6271 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 45, column: 2)
!6272 = !DILocalVariable(name: "__flags", scope: !6273, file: !3, line: 45, type: !98)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 45, column: 2)
!6274 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 45, column: 2)
!6275 = !DILocation(line: 39, column: 39, scope: !6263)
!6276 = !DILocation(line: 39, column: 59, scope: !6263)
!6277 = !DILocation(line: 41, column: 2, scope: !6263)
!6278 = !DILocation(line: 41, column: 15, scope: !6263)
!6279 = !DILocation(line: 41, column: 32, scope: !6263)
!6280 = !DILocation(line: 41, column: 28, scope: !6263)
!6281 = !DILocation(line: 41, column: 40, scope: !6263)
!6282 = !DILocation(line: 42, column: 2, scope: !6263)
!6283 = !DILocation(line: 42, column: 26, scope: !6263)
!6284 = !DILocation(line: 43, column: 2, scope: !6263)
!6285 = !DILocation(line: 43, column: 14, scope: !6263)
!6286 = !DILocation(line: 45, column: 2, scope: !6271)
!6287 = !DILocation(line: 45, column: 2, scope: !6274)
!6288 = !DILocation(line: 45, column: 2, scope: !6273)
!6289 = !DILocation(line: 45, column: 2, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 45, column: 2)
!6291 = !DILocation(line: 45, column: 2, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 45, column: 2)
!6293 = !{i64 2155441549, i64 2155441578, i64 2155441624, i64 2155441682, i64 2155441736, i64 2155441790, i64 2155441845, i64 2155441876, i64 2155442184, i64 2155442190, i64 2155442237, i64 2155442260, i64 2155442286}
!6294 = !DILocation(line: 45, column: 2, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 45, column: 2)
!6296 = !DILocation(line: 45, column: 2, scope: !6263)
!6297 = !DILocation(line: 47, column: 6, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 47, column: 6)
!6299 = !DILocation(line: 47, column: 12, scope: !6298)
!6300 = !DILocation(line: 47, column: 19, scope: !6298)
!6301 = !DILocation(line: 47, column: 33, scope: !6298)
!6302 = !DILocation(line: 47, column: 41, scope: !6298)
!6303 = !DILocation(line: 47, column: 37, scope: !6298)
!6304 = !DILocation(line: 47, column: 49, scope: !6298)
!6305 = !DILocation(line: 47, column: 6, scope: !6263)
!6306 = !DILocation(line: 48, column: 3, scope: !6298)
!6307 = !DILocation(line: 50, column: 21, scope: !6263)
!6308 = !DILocation(line: 50, column: 8, scope: !6263)
!6309 = !DILocation(line: 50, column: 6, scope: !6263)
!6310 = !DILocation(line: 51, column: 7, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 51, column: 6)
!6312 = !DILocation(line: 51, column: 6, scope: !6263)
!6313 = !DILocation(line: 52, column: 3, scope: !6311)
!6314 = !DILocation(line: 54, column: 25, scope: !6263)
!6315 = !DILocation(line: 54, column: 35, scope: !6263)
!6316 = !DILocation(line: 54, column: 31, scope: !6263)
!6317 = !DILocation(line: 54, column: 43, scope: !6263)
!6318 = !DILocation(line: 54, column: 52, scope: !6263)
!6319 = !DILocation(line: 54, column: 6, scope: !6263)
!6320 = !DILocation(line: 54, column: 4, scope: !6263)
!6321 = !DILocation(line: 55, column: 7, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 55, column: 6)
!6323 = !DILocation(line: 55, column: 6, scope: !6263)
!6324 = !DILocation(line: 56, column: 11, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 55, column: 10)
!6326 = !DILocation(line: 56, column: 3, scope: !6325)
!6327 = !DILocation(line: 57, column: 3, scope: !6325)
!6328 = !DILocation(line: 60, column: 11, scope: !6263)
!6329 = !DILocation(line: 60, column: 2, scope: !6263)
!6330 = !DILocation(line: 60, column: 5, scope: !6263)
!6331 = !DILocation(line: 60, column: 9, scope: !6263)
!6332 = !DILocation(line: 61, column: 22, scope: !6263)
!6333 = !DILocation(line: 61, column: 28, scope: !6263)
!6334 = !DILocation(line: 61, column: 31, scope: !6263)
!6335 = !DILocation(line: 61, column: 2, scope: !6263)
!6336 = !DILocation(line: 63, column: 2, scope: !6263)
!6337 = !DILocation(line: 64, column: 1, scope: !6263)
!6338 = distinct !DISubprogram(name: "seq_release_net", scope: !3, file: !3, line: 77, type: !2992, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6339 = !{!6340, !6341, !6342}
!6340 = !DILocalVariable(name: "ino", arg: 1, scope: !6338, file: !3, line: 77, type: !921)
!6341 = !DILocalVariable(name: "f", arg: 2, scope: !6338, file: !3, line: 77, type: !544)
!6342 = !DILocalVariable(name: "seq", scope: !6338, file: !3, line: 79, type: !1935)
!6343 = !DILocation(line: 77, column: 42, scope: !6338)
!6344 = !DILocation(line: 77, column: 60, scope: !6338)
!6345 = !DILocation(line: 79, column: 2, scope: !6338)
!6346 = !DILocation(line: 79, column: 19, scope: !6338)
!6347 = !DILocation(line: 79, column: 25, scope: !6338)
!6348 = !DILocation(line: 79, column: 28, scope: !6338)
!6349 = !DILocation(line: 81, column: 23, scope: !6338)
!6350 = !DILocation(line: 81, column: 2, scope: !6338)
!6351 = !DILocation(line: 82, column: 22, scope: !6338)
!6352 = !DILocation(line: 82, column: 27, scope: !6338)
!6353 = !DILocation(line: 82, column: 2, scope: !6338)
!6354 = !DILocation(line: 84, column: 1, scope: !6338)
!6355 = !DILocation(line: 83, column: 2, scope: !6338)
!6356 = distinct !DISubprogram(name: "PDE", scope: !3568, file: !3568, line: 118, type: !6357, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!3566, !2848}
!6359 = !{!6360}
!6360 = !DILocalVariable(name: "inode", arg: 1, scope: !6356, file: !3568, line: 118, type: !2848)
!6361 = !DILocation(line: 118, column: 62, scope: !6356)
!6362 = !DILocation(line: 120, column: 16, scope: !6356)
!6363 = !DILocation(line: 120, column: 9, scope: !6356)
!6364 = !DILocation(line: 120, column: 24, scope: !6356)
!6365 = !DILocation(line: 120, column: 2, scope: !6356)
!6366 = distinct !DISubprogram(name: "get_proc_net", scope: !3, file: !3, line: 34, type: !6367, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6369)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!3491, !2848}
!6369 = !{!6370}
!6370 = !DILocalVariable(name: "inode", arg: 1, scope: !6366, file: !3, line: 34, type: !2848)
!6371 = !DILocation(line: 34, column: 53, scope: !6366)
!6372 = !DILocation(line: 36, column: 35, scope: !6366)
!6373 = !DILocation(line: 36, column: 31, scope: !6366)
!6374 = !DILocation(line: 36, column: 23, scope: !6366)
!6375 = !DILocation(line: 36, column: 9, scope: !6366)
!6376 = !DILocation(line: 36, column: 2, scope: !6366)
!6377 = !DISubprogram(name: "__seq_open_private", scope: !1937, file: !1937, line: 169, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!96, !544, !1948, !98}
!6380 = distinct !DISubprogram(name: "PROC_I", scope: !3568, file: !3568, line: 113, type: !6381, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!5437, !2848}
!6383 = !{!6384, !6385}
!6384 = !DILocalVariable(name: "inode", arg: 1, scope: !6380, file: !3568, line: 113, type: !2848)
!6385 = !DILocalVariable(name: "__mptr", scope: !6386, file: !3568, line: 115, type: !96)
!6386 = distinct !DILexicalBlock(scope: !6380, file: !3568, line: 115, column: 9)
!6387 = !DILocation(line: 113, column: 61, scope: !6380)
!6388 = !DILocation(line: 115, column: 9, scope: !6386)
!6389 = !DILocation(line: 115, column: 9, scope: !6380)
!6390 = !DILocation(line: 115, column: 2, scope: !6380)
!6391 = distinct !DISubprogram(name: "maybe_get_net", scope: !3493, file: !3493, line: 265, type: !5954, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6392)
!6392 = !{!6393}
!6393 = !DILocalVariable(name: "net", arg: 1, scope: !6391, file: !3493, line: 265, type: !3491)
!6394 = !DILocation(line: 265, column: 53, scope: !6391)
!6395 = !DILocation(line: 272, column: 30, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6391, file: !3493, line: 272, column: 6)
!6397 = !DILocation(line: 272, column: 35, scope: !6396)
!6398 = !DILocation(line: 272, column: 38, scope: !6396)
!6399 = !DILocation(line: 272, column: 7, scope: !6396)
!6400 = !DILocation(line: 272, column: 6, scope: !6391)
!6401 = !DILocation(line: 273, column: 7, scope: !6396)
!6402 = !DILocation(line: 273, column: 3, scope: !6396)
!6403 = !DILocation(line: 274, column: 9, scope: !6391)
!6404 = !DILocation(line: 274, column: 2, scope: !6391)
!6405 = distinct !DISubprogram(name: "PDE_NET", scope: !3, file: !3, line: 29, type: !6406, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6408)
!6406 = !DISubroutineType(types: !6407)
!6407 = !{!3491, !3566}
!6408 = !{!6409}
!6409 = !DILocalVariable(name: "pde", arg: 1, scope: !6405, file: !3, line: 29, type: !3566)
!6410 = !DILocation(line: 29, column: 58, scope: !6405)
!6411 = !DILocation(line: 31, column: 9, scope: !6405)
!6412 = !DILocation(line: 31, column: 14, scope: !6405)
!6413 = !DILocation(line: 31, column: 22, scope: !6405)
!6414 = !DILocation(line: 31, column: 2, scope: !6405)
!6415 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !184, file: !184, line: 243, type: !6157, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6416 = !{!6417}
!6417 = !DILocalVariable(name: "r", arg: 1, scope: !6415, file: !184, line: 243, type: !5983)
!6418 = !DILocation(line: 243, column: 67, scope: !6415)
!6419 = !DILocation(line: 245, column: 33, scope: !6415)
!6420 = !DILocation(line: 245, column: 9, scope: !6415)
!6421 = !DILocation(line: 245, column: 2, scope: !6415)
!6422 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !184, file: !184, line: 225, type: !6167, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6423)
!6423 = !{!6424, !6425}
!6424 = !DILocalVariable(name: "r", arg: 1, scope: !6422, file: !184, line: 225, type: !5983)
!6425 = !DILocalVariable(name: "oldp", arg: 2, scope: !6422, file: !184, line: 225, type: !2176)
!6426 = !DILocation(line: 225, column: 69, scope: !6422)
!6427 = !DILocation(line: 225, column: 77, scope: !6422)
!6428 = !DILocation(line: 227, column: 36, scope: !6422)
!6429 = !DILocation(line: 227, column: 39, scope: !6422)
!6430 = !DILocation(line: 227, column: 9, scope: !6422)
!6431 = !DILocation(line: 227, column: 2, scope: !6422)
!6432 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !184, file: !184, line: 150, type: !6179, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6433)
!6433 = !{!6434, !6435, !6436, !6437}
!6434 = !DILocalVariable(name: "i", arg: 1, scope: !6432, file: !184, line: 150, type: !98)
!6435 = !DILocalVariable(name: "r", arg: 2, scope: !6432, file: !184, line: 150, type: !5983)
!6436 = !DILocalVariable(name: "oldp", arg: 3, scope: !6432, file: !184, line: 150, type: !2176)
!6437 = !DILocalVariable(name: "old", scope: !6432, file: !184, line: 152, type: !98)
!6438 = !DILocation(line: 150, column: 61, scope: !6432)
!6439 = !DILocation(line: 150, column: 76, scope: !6432)
!6440 = !DILocation(line: 150, column: 84, scope: !6432)
!6441 = !DILocation(line: 152, column: 2, scope: !6432)
!6442 = !DILocation(line: 152, column: 6, scope: !6432)
!6443 = !DILocation(line: 152, column: 26, scope: !6432)
!6444 = !DILocation(line: 152, column: 12, scope: !6432)
!6445 = !DILocation(line: 154, column: 2, scope: !6432)
!6446 = !DILocation(line: 155, column: 8, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !184, line: 155, column: 7)
!6448 = distinct !DILexicalBlock(scope: !6432, file: !184, line: 154, column: 5)
!6449 = !DILocation(line: 155, column: 7, scope: !6448)
!6450 = !DILocation(line: 156, column: 4, scope: !6447)
!6451 = !DILocation(line: 157, column: 2, scope: !6448)
!6452 = !DILocation(line: 157, column: 40, scope: !6432)
!6453 = !DILocation(line: 157, column: 43, scope: !6432)
!6454 = !DILocation(line: 157, column: 55, scope: !6432)
!6455 = !DILocation(line: 157, column: 61, scope: !6432)
!6456 = !DILocation(line: 157, column: 59, scope: !6432)
!6457 = !DILocation(line: 157, column: 12, scope: !6432)
!6458 = !DILocation(line: 157, column: 11, scope: !6432)
!6459 = distinct !{!6459, !6445, !6460, !6461, !6462}
!6460 = !DILocation(line: 157, column: 63, scope: !6432)
!6461 = !{!"llvm.loop.mustprogress"}
!6462 = !{!"llvm.loop.unroll.disable"}
!6463 = !DILocation(line: 159, column: 6, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6432, file: !184, line: 159, column: 6)
!6465 = !DILocation(line: 159, column: 6, scope: !6432)
!6466 = !DILocation(line: 160, column: 11, scope: !6464)
!6467 = !DILocation(line: 160, column: 4, scope: !6464)
!6468 = !DILocation(line: 160, column: 9, scope: !6464)
!6469 = !DILocation(line: 160, column: 3, scope: !6464)
!6470 = !DILocation(line: 162, column: 6, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6432, file: !184, line: 162, column: 6)
!6472 = !DILocation(line: 162, column: 6, scope: !6432)
!6473 = !DILocation(line: 163, column: 26, scope: !6471)
!6474 = !DILocation(line: 163, column: 3, scope: !6471)
!6475 = !DILocation(line: 165, column: 9, scope: !6432)
!6476 = !DILocation(line: 166, column: 1, scope: !6432)
!6477 = !DILocation(line: 165, column: 2, scope: !6432)
!6478 = distinct !DISubprogram(name: "refcount_read", scope: !184, file: !184, line: 145, type: !6479, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6483)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{!7, !6481}
!6481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6482, size: 64)
!6482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!6483 = !{!6484}
!6484 = !DILocalVariable(name: "r", arg: 1, scope: !6478, file: !184, line: 145, type: !6481)
!6485 = !DILocation(line: 145, column: 60, scope: !6478)
!6486 = !DILocation(line: 147, column: 22, scope: !6478)
!6487 = !DILocation(line: 147, column: 25, scope: !6478)
!6488 = !DILocation(line: 147, column: 9, scope: !6478)
!6489 = !DILocation(line: 147, column: 2, scope: !6478)
!6490 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !6038, file: !6038, line: 1335, type: !6491, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6493)
!6491 = !DISubroutineType(types: !6492)
!6492 = !{!764, !6041, !2176, !98}
!6493 = !{!6494, !6495, !6496}
!6494 = !DILocalVariable(name: "v", arg: 1, scope: !6490, file: !6038, line: 1335, type: !6041)
!6495 = !DILocalVariable(name: "old", arg: 2, scope: !6490, file: !6038, line: 1335, type: !2176)
!6496 = !DILocalVariable(name: "new", arg: 3, scope: !6490, file: !6038, line: 1335, type: !98)
!6497 = !DILocation(line: 1335, column: 38, scope: !6490)
!6498 = !DILocation(line: 1335, column: 46, scope: !6490)
!6499 = !DILocation(line: 1335, column: 55, scope: !6490)
!6500 = !DILocation(line: 1337, column: 31, scope: !6490)
!6501 = !DILocation(line: 1337, column: 2, scope: !6490)
!6502 = !DILocation(line: 1338, column: 31, scope: !6490)
!6503 = !DILocation(line: 1338, column: 2, scope: !6490)
!6504 = !DILocation(line: 1339, column: 40, scope: !6490)
!6505 = !DILocation(line: 1339, column: 43, scope: !6490)
!6506 = !DILocation(line: 1339, column: 48, scope: !6490)
!6507 = !DILocation(line: 1339, column: 9, scope: !6490)
!6508 = !DILocation(line: 1339, column: 2, scope: !6490)
!6509 = distinct !DISubprogram(name: "atomic_read", scope: !6038, file: !6038, line: 30, type: !6510, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6514)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!98, !6512}
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6513, size: 64)
!6513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!6514 = !{!6515}
!6515 = !DILocalVariable(name: "v", arg: 1, scope: !6509, file: !6038, line: 30, type: !6512)
!6516 = !DILocation(line: 30, column: 29, scope: !6509)
!6517 = !DILocation(line: 32, column: 25, scope: !6509)
!6518 = !DILocation(line: 32, column: 2, scope: !6509)
!6519 = !DILocation(line: 33, column: 25, scope: !6509)
!6520 = !DILocation(line: 33, column: 9, scope: !6509)
!6521 = !DILocation(line: 33, column: 2, scope: !6509)
!6522 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6057, file: !6057, line: 66, type: !6058, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6523)
!6523 = !{!6524, !6525}
!6524 = !DILocalVariable(name: "v", arg: 1, scope: !6522, file: !6057, line: 66, type: !6060)
!6525 = !DILocalVariable(name: "size", arg: 2, scope: !6522, file: !6057, line: 66, type: !111)
!6526 = !DILocation(line: 66, column: 73, scope: !6522)
!6527 = !DILocation(line: 66, column: 83, scope: !6522)
!6528 = !DILocation(line: 68, column: 19, scope: !6522)
!6529 = !DILocation(line: 68, column: 22, scope: !6522)
!6530 = !DILocation(line: 68, column: 2, scope: !6522)
!6531 = !DILocation(line: 69, column: 2, scope: !6522)
!6532 = !DILocation(line: 70, column: 1, scope: !6522)
!6533 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6074, file: !6074, line: 442, type: !6510, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6534)
!6534 = !{!6535}
!6535 = !DILocalVariable(name: "v", arg: 1, scope: !6533, file: !6074, line: 442, type: !6512)
!6536 = !DILocation(line: 442, column: 33, scope: !6533)
!6537 = !DILocation(line: 444, column: 26, scope: !6533)
!6538 = !DILocation(line: 444, column: 9, scope: !6533)
!6539 = !DILocation(line: 444, column: 2, scope: !6533)
!6540 = distinct !DISubprogram(name: "kasan_check_read", scope: !6085, file: !6085, line: 40, type: !6086, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6541 = !{!6542, !6543}
!6542 = !DILocalVariable(name: "p", arg: 1, scope: !6540, file: !6085, line: 40, type: !6060)
!6543 = !DILocalVariable(name: "size", arg: 2, scope: !6540, file: !6085, line: 40, type: !7)
!6544 = !DILocation(line: 40, column: 58, scope: !6540)
!6545 = !DILocation(line: 40, column: 74, scope: !6540)
!6546 = !DILocation(line: 42, column: 2, scope: !6540)
!6547 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6107, file: !6107, line: 17, type: !6510, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6548)
!6548 = !{!6549}
!6549 = !DILocalVariable(name: "v", arg: 1, scope: !6547, file: !6107, line: 17, type: !6512)
!6550 = !DILocation(line: 17, column: 61, scope: !6547)
!6551 = !DILocation(line: 23, column: 9, scope: !6547)
!6552 = !DILocation(line: 23, column: 2, scope: !6547)
!6553 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !6074, file: !6074, line: 2207, type: !6491, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6554)
!6554 = !{!6555, !6556, !6557}
!6555 = !DILocalVariable(name: "v", arg: 1, scope: !6553, file: !6074, line: 2207, type: !6041)
!6556 = !DILocalVariable(name: "old", arg: 2, scope: !6553, file: !6074, line: 2207, type: !2176)
!6557 = !DILocalVariable(name: "new", arg: 3, scope: !6553, file: !6074, line: 2207, type: !98)
!6558 = !DILocation(line: 2207, column: 42, scope: !6553)
!6559 = !DILocation(line: 2207, column: 50, scope: !6553)
!6560 = !DILocation(line: 2207, column: 59, scope: !6553)
!6561 = !DILocation(line: 2212, column: 33, scope: !6553)
!6562 = !DILocation(line: 2212, column: 36, scope: !6553)
!6563 = !DILocation(line: 2212, column: 41, scope: !6553)
!6564 = !DILocation(line: 2212, column: 9, scope: !6553)
!6565 = !DILocation(line: 2212, column: 2, scope: !6553)
!6566 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6107, file: !6107, line: 113, type: !6491, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6567)
!6567 = !{!6568, !6569, !6570, !6571, !6573, !6574, !6575, !6576}
!6568 = !DILocalVariable(name: "v", arg: 1, scope: !6566, file: !6107, line: 113, type: !6041)
!6569 = !DILocalVariable(name: "old", arg: 2, scope: !6566, file: !6107, line: 113, type: !2176)
!6570 = !DILocalVariable(name: "new", arg: 3, scope: !6566, file: !6107, line: 113, type: !98)
!6571 = !DILocalVariable(name: "success", scope: !6572, file: !6107, line: 115, type: !764)
!6572 = distinct !DILexicalBlock(scope: !6566, file: !6107, line: 115, column: 9)
!6573 = !DILocalVariable(name: "_old", scope: !6572, file: !6107, line: 115, type: !2176)
!6574 = !DILocalVariable(name: "__old", scope: !6572, file: !6107, line: 115, type: !98)
!6575 = !DILocalVariable(name: "__new", scope: !6572, file: !6107, line: 115, type: !98)
!6576 = !DILocalVariable(name: "__ptr", scope: !6572, file: !6107, line: 115, type: !5463)
!6577 = !DILocation(line: 113, column: 63, scope: !6566)
!6578 = !DILocation(line: 113, column: 71, scope: !6566)
!6579 = !DILocation(line: 113, column: 80, scope: !6566)
!6580 = !DILocation(line: 115, column: 9, scope: !6572)
!6581 = !{i64 2148660249, i64 2148660288, i64 2148660309, i64 2148660346, i64 2148660369, i64 2148660378, i64 2148660676}
!6582 = !DILocation(line: 115, column: 9, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6572, file: !6107, line: 115, column: 9)
!6584 = !{i8 0, i8 2}
!6585 = !DILocation(line: 115, column: 9, scope: !6566)
!6586 = !DILocation(line: 115, column: 2, scope: !6566)
!6587 = distinct !DISubprogram(name: "seq_file_net_put_net", scope: !3, file: !3, line: 66, type: !6588, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6590)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{null, !1935}
!6590 = !{!6591, !6592}
!6591 = !DILocalVariable(name: "seq", arg: 1, scope: !6587, file: !3, line: 66, type: !1935)
!6592 = !DILocalVariable(name: "priv", scope: !6587, file: !3, line: 69, type: !5538)
!6593 = !DILocation(line: 66, column: 51, scope: !6587)
!6594 = !DILocation(line: 69, column: 2, scope: !6587)
!6595 = !DILocation(line: 69, column: 26, scope: !6587)
!6596 = !DILocation(line: 69, column: 33, scope: !6587)
!6597 = !DILocation(line: 69, column: 38, scope: !6587)
!6598 = !DILocation(line: 71, column: 16, scope: !6587)
!6599 = !DILocation(line: 71, column: 22, scope: !6587)
!6600 = !DILocation(line: 71, column: 28, scope: !6587)
!6601 = !DILocation(line: 71, column: 34, scope: !6587)
!6602 = !DILocation(line: 71, column: 2, scope: !6587)
!6603 = !DILocation(line: 75, column: 1, scope: !6587)
!6604 = !DISubprogram(name: "seq_release_private", scope: !1937, file: !1937, line: 171, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = distinct !DISubprogram(name: "single_open_net", scope: !3, file: !3, line: 176, type: !2992, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6606)
!6606 = !{!6607, !6608, !6609, !6610, !6611}
!6607 = !DILocalVariable(name: "inode", arg: 1, scope: !6605, file: !3, line: 176, type: !921)
!6608 = !DILocalVariable(name: "file", arg: 2, scope: !6605, file: !3, line: 176, type: !544)
!6609 = !DILocalVariable(name: "de", scope: !6605, file: !3, line: 178, type: !3566)
!6610 = !DILocalVariable(name: "net", scope: !6605, file: !3, line: 179, type: !3491)
!6611 = !DILocalVariable(name: "err", scope: !6605, file: !3, line: 180, type: !98)
!6612 = !DILocation(line: 176, column: 42, scope: !6605)
!6613 = !DILocation(line: 176, column: 62, scope: !6605)
!6614 = !DILocation(line: 178, column: 2, scope: !6605)
!6615 = !DILocation(line: 178, column: 25, scope: !6605)
!6616 = !DILocation(line: 178, column: 34, scope: !6605)
!6617 = !DILocation(line: 178, column: 30, scope: !6605)
!6618 = !DILocation(line: 179, column: 2, scope: !6605)
!6619 = !DILocation(line: 179, column: 14, scope: !6605)
!6620 = !DILocation(line: 180, column: 2, scope: !6605)
!6621 = !DILocation(line: 180, column: 6, scope: !6605)
!6622 = !DILocation(line: 182, column: 21, scope: !6605)
!6623 = !DILocation(line: 182, column: 8, scope: !6605)
!6624 = !DILocation(line: 182, column: 6, scope: !6605)
!6625 = !DILocation(line: 183, column: 7, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 183, column: 6)
!6627 = !DILocation(line: 183, column: 6, scope: !6605)
!6628 = !DILocation(line: 184, column: 3, scope: !6626)
!6629 = !DILocation(line: 186, column: 20, scope: !6605)
!6630 = !DILocation(line: 186, column: 26, scope: !6605)
!6631 = !DILocation(line: 186, column: 30, scope: !6605)
!6632 = !DILocation(line: 186, column: 43, scope: !6605)
!6633 = !DILocation(line: 186, column: 8, scope: !6605)
!6634 = !DILocation(line: 186, column: 6, scope: !6605)
!6635 = !DILocation(line: 187, column: 6, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 187, column: 6)
!6637 = !DILocation(line: 187, column: 6, scope: !6605)
!6638 = !DILocation(line: 188, column: 11, scope: !6636)
!6639 = !DILocation(line: 188, column: 3, scope: !6636)
!6640 = !DILocation(line: 189, column: 9, scope: !6605)
!6641 = !DILocation(line: 189, column: 2, scope: !6605)
!6642 = !DILocation(line: 190, column: 1, scope: !6605)
!6643 = distinct !DISubprogram(name: "single_release_net", scope: !3, file: !3, line: 192, type: !2992, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6644 = !{!6645, !6646, !6647}
!6645 = !DILocalVariable(name: "ino", arg: 1, scope: !6643, file: !3, line: 192, type: !921)
!6646 = !DILocalVariable(name: "f", arg: 2, scope: !6643, file: !3, line: 192, type: !544)
!6647 = !DILocalVariable(name: "seq", scope: !6643, file: !3, line: 194, type: !1935)
!6648 = !DILocation(line: 192, column: 45, scope: !6643)
!6649 = !DILocation(line: 192, column: 63, scope: !6643)
!6650 = !DILocation(line: 194, column: 2, scope: !6643)
!6651 = !DILocation(line: 194, column: 19, scope: !6643)
!6652 = !DILocation(line: 194, column: 25, scope: !6643)
!6653 = !DILocation(line: 194, column: 28, scope: !6643)
!6654 = !DILocation(line: 195, column: 10, scope: !6643)
!6655 = !DILocation(line: 195, column: 15, scope: !6643)
!6656 = !DILocation(line: 195, column: 2, scope: !6643)
!6657 = !DILocation(line: 196, column: 24, scope: !6643)
!6658 = !DILocation(line: 196, column: 29, scope: !6643)
!6659 = !DILocation(line: 196, column: 9, scope: !6643)
!6660 = !DILocation(line: 197, column: 1, scope: !6643)
!6661 = !DILocation(line: 196, column: 2, scope: !6643)
!6662 = !DISubprogram(name: "single_open", scope: !1937, file: !1937, line: 166, type: !6663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6663 = !DISubroutineType(types: !6664)
!6664 = !{!98, !544, !1965, !96}
!6665 = !DISubprogram(name: "single_release", scope: !1937, file: !1937, line: 168, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6666 = distinct !DISubprogram(name: "ERR_PTR", scope: !6667, file: !6667, line: 39, type: !6668, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6670)
!6667 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6668 = !DISubroutineType(types: !6669)
!6669 = !{!96, !1035}
!6670 = !{!6671}
!6671 = !DILocalVariable(name: "error", arg: 1, scope: !6666, file: !6667, line: 39, type: !1035)
!6672 = !DILocation(line: 39, column: 48, scope: !6666)
!6673 = !DILocation(line: 41, column: 18, scope: !6666)
!6674 = !DILocation(line: 41, column: 9, scope: !6666)
!6675 = !DILocation(line: 41, column: 2, scope: !6666)
!6676 = distinct !DISubprogram(name: "get_proc_task_net", scope: !3, file: !3, line: 267, type: !6677, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6677 = !DISubroutineType(types: !6678)
!6678 = !{!3491, !921}
!6679 = !{!6680, !6681, !6682, !6683}
!6680 = !DILocalVariable(name: "dir", arg: 1, scope: !6676, file: !3, line: 267, type: !921)
!6681 = !DILocalVariable(name: "task", scope: !6676, file: !3, line: 269, type: !199)
!6682 = !DILocalVariable(name: "ns", scope: !6676, file: !3, line: 270, type: !3475)
!6683 = !DILocalVariable(name: "net", scope: !6676, file: !3, line: 271, type: !3491)
!6684 = !DILocation(line: 267, column: 52, scope: !6676)
!6685 = !DILocation(line: 269, column: 2, scope: !6676)
!6686 = !DILocation(line: 269, column: 22, scope: !6676)
!6687 = !DILocation(line: 270, column: 2, scope: !6676)
!6688 = !DILocation(line: 270, column: 18, scope: !6676)
!6689 = !DILocation(line: 271, column: 2, scope: !6676)
!6690 = !DILocation(line: 271, column: 14, scope: !6676)
!6691 = !DILocation(line: 273, column: 2, scope: !6676)
!6692 = !DILocation(line: 274, column: 27, scope: !6676)
!6693 = !DILocation(line: 274, column: 18, scope: !6676)
!6694 = !DILocation(line: 274, column: 9, scope: !6676)
!6695 = !DILocation(line: 274, column: 7, scope: !6676)
!6696 = !DILocation(line: 275, column: 6, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6676, file: !3, line: 275, column: 6)
!6698 = !DILocation(line: 275, column: 11, scope: !6697)
!6699 = !DILocation(line: 275, column: 6, scope: !6676)
!6700 = !DILocation(line: 276, column: 13, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6697, file: !3, line: 275, column: 20)
!6702 = !DILocation(line: 276, column: 3, scope: !6701)
!6703 = !DILocation(line: 277, column: 8, scope: !6701)
!6704 = !DILocation(line: 277, column: 14, scope: !6701)
!6705 = !DILocation(line: 277, column: 6, scope: !6701)
!6706 = !DILocation(line: 278, column: 7, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6701, file: !3, line: 278, column: 7)
!6708 = !DILocation(line: 278, column: 10, scope: !6707)
!6709 = !DILocation(line: 278, column: 7, scope: !6701)
!6710 = !DILocation(line: 279, column: 18, scope: !6707)
!6711 = !DILocation(line: 279, column: 22, scope: !6707)
!6712 = !DILocation(line: 279, column: 10, scope: !6707)
!6713 = !DILocation(line: 279, column: 8, scope: !6707)
!6714 = !DILocation(line: 279, column: 4, scope: !6707)
!6715 = !DILocation(line: 280, column: 15, scope: !6701)
!6716 = !DILocation(line: 280, column: 3, scope: !6701)
!6717 = !DILocation(line: 281, column: 2, scope: !6701)
!6718 = !DILocation(line: 282, column: 2, scope: !6676)
!6719 = !DILocation(line: 284, column: 9, scope: !6676)
!6720 = !DILocation(line: 285, column: 1, scope: !6676)
!6721 = !DILocation(line: 284, column: 2, scope: !6676)
!6722 = !DISubprogram(name: "proc_lookup_de", scope: !3568, file: !3568, line: 191, type: !6723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6723 = !DISubroutineType(types: !6724)
!6724 = !{!886, !921, !886, !3566}
!6725 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6726, file: !6726, line: 782, type: !2394, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6726 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6727 = !DILocation(line: 784, column: 2, scope: !6725)
!6728 = !DILocation(line: 786, column: 2, scope: !6725)
!6729 = !DILocation(line: 786, column: 2, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6725, file: !6726, line: 786, column: 2)
!6731 = !DILocation(line: 787, column: 2, scope: !6725)
!6732 = !DILocation(line: 787, column: 2, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6725, file: !6726, line: 787, column: 2)
!6734 = !DILocation(line: 789, column: 1, scope: !6725)
!6735 = !DISubprogram(name: "pid_task", scope: !12, file: !12, line: 93, type: !6736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!199, !612, !11}
!6738 = distinct !DISubprogram(name: "proc_pid", scope: !3568, file: !3568, line: 123, type: !6739, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!612, !2848}
!6741 = !{!6742}
!6742 = !DILocalVariable(name: "inode", arg: 1, scope: !6738, file: !3568, line: 123, type: !2848)
!6743 = !DILocation(line: 123, column: 56, scope: !6738)
!6744 = !DILocation(line: 125, column: 16, scope: !6738)
!6745 = !DILocation(line: 125, column: 9, scope: !6738)
!6746 = !DILocation(line: 125, column: 24, scope: !6738)
!6747 = !DILocation(line: 125, column: 2, scope: !6738)
!6748 = distinct !DISubprogram(name: "task_lock", scope: !6749, file: !6749, line: 220, type: !6750, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6752)
!6749 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!6750 = !DISubroutineType(types: !6751)
!6751 = !{null, !199}
!6752 = !{!6753}
!6753 = !DILocalVariable(name: "p", arg: 1, scope: !6748, file: !6749, line: 220, type: !199)
!6754 = !DILocation(line: 220, column: 50, scope: !6748)
!6755 = !DILocation(line: 222, column: 13, scope: !6748)
!6756 = !DILocation(line: 222, column: 16, scope: !6748)
!6757 = !DILocation(line: 222, column: 2, scope: !6748)
!6758 = !DILocation(line: 223, column: 1, scope: !6748)
!6759 = distinct !DISubprogram(name: "task_unlock", scope: !6749, file: !6749, line: 225, type: !6750, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761}
!6761 = !DILocalVariable(name: "p", arg: 1, scope: !6759, file: !6749, line: 225, type: !199)
!6762 = !DILocation(line: 225, column: 52, scope: !6759)
!6763 = !DILocation(line: 227, column: 15, scope: !6759)
!6764 = !DILocation(line: 227, column: 18, scope: !6759)
!6765 = !DILocation(line: 227, column: 2, scope: !6759)
!6766 = !DILocation(line: 228, column: 1, scope: !6759)
!6767 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6726, file: !6726, line: 813, type: !2394, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6768 = !DILocation(line: 815, column: 2, scope: !6767)
!6769 = !DILocation(line: 815, column: 2, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6767, file: !6726, line: 815, column: 2)
!6771 = !DILocation(line: 818, column: 2, scope: !6767)
!6772 = !DILocation(line: 819, column: 2, scope: !6767)
!6773 = !DILocation(line: 819, column: 2, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6767, file: !6726, line: 819, column: 2)
!6775 = !DILocation(line: 820, column: 1, scope: !6767)
!6776 = !DISubprogram(name: "__rcu_read_lock", scope: !6726, file: !6726, line: 74, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6777 = distinct !DISubprogram(name: "spin_lock", scope: !6778, file: !6778, line: 349, type: !6779, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6778 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6779 = !DISubroutineType(types: !6780)
!6780 = !{null, !1563}
!6781 = !{!6782}
!6782 = !DILocalVariable(name: "lock", arg: 1, scope: !6777, file: !6778, line: 349, type: !1563)
!6783 = !DILocation(line: 349, column: 51, scope: !6777)
!6784 = !DILocation(line: 351, column: 2, scope: !6777)
!6785 = !DILocation(line: 352, column: 1, scope: !6777)
!6786 = !DISubprogram(name: "_raw_spin_lock", scope: !6787, file: !6787, line: 22, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6788 = !DISubroutineType(types: !6789)
!6789 = !{null, !6790}
!6790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!6791 = distinct !DISubprogram(name: "spin_unlock", scope: !6778, file: !6778, line: 389, type: !6779, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6792 = !{!6793}
!6793 = !DILocalVariable(name: "lock", arg: 1, scope: !6791, file: !6778, line: 389, type: !1563)
!6794 = !DILocation(line: 389, column: 53, scope: !6791)
!6795 = !DILocation(line: 391, column: 2, scope: !6791)
!6796 = !DILocation(line: 392, column: 1, scope: !6791)
!6797 = !DISubprogram(name: "_raw_spin_unlock", scope: !6787, file: !6787, line: 39, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6798 = !DISubprogram(name: "__rcu_read_unlock", scope: !6726, file: !6726, line: 75, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6799 = distinct !DISubprogram(name: "d_inode", scope: !888, file: !888, line: 514, type: !6800, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6802)
!6800 = !DISubroutineType(types: !6801)
!6801 = !{!921, !2805}
!6802 = !{!6803}
!6803 = !DILocalVariable(name: "dentry", arg: 1, scope: !6799, file: !888, line: 514, type: !2805)
!6804 = !DILocation(line: 514, column: 58, scope: !6799)
!6805 = !DILocation(line: 516, column: 9, scope: !6799)
!6806 = !DILocation(line: 516, column: 17, scope: !6799)
!6807 = !DILocation(line: 516, column: 2, scope: !6799)
!6808 = !DISubprogram(name: "generic_fillattr", scope: !64, file: !64, line: 3094, type: !6809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6809 = !DISubroutineType(types: !6810)
!6810 = !{null, !960, !210, !921, !1045}
!6811 = distinct !DISubprogram(name: "file_inode", scope: !64, file: !64, line: 1073, type: !6812, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6814)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!921, !1970}
!6814 = !{!6815}
!6815 = !DILocalVariable(name: "f", arg: 1, scope: !6811, file: !64, line: 1073, type: !1970)
!6816 = !DILocation(line: 1073, column: 59, scope: !6811)
!6817 = !DILocation(line: 1075, column: 9, scope: !6811)
!6818 = !DILocation(line: 1075, column: 12, scope: !6811)
!6819 = !DILocation(line: 1075, column: 2, scope: !6811)
!6820 = !DISubprogram(name: "proc_readdir_de", scope: !3568, file: !3568, line: 193, type: !6821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6821 = !DISubroutineType(types: !6822)
!6822 = !{!98, !544, !2967, !3566}
!6823 = distinct !DISubprogram(name: "proc_net_ns_init", scope: !3, file: !3, line: 347, type: !5500, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6824)
!6824 = !{!6825, !6826, !6827, !6828, !6829, !6830, !6831, !6832}
!6825 = !DILocalVariable(name: "net", arg: 1, scope: !6823, file: !3, line: 347, type: !3491)
!6826 = !DILocalVariable(name: "netd", scope: !6823, file: !3, line: 349, type: !3566)
!6827 = !DILocalVariable(name: "net_statd", scope: !6823, file: !3, line: 349, type: !3566)
!6828 = !DILocalVariable(name: "uid", scope: !6823, file: !3, line: 350, type: !646)
!6829 = !DILocalVariable(name: "gid", scope: !6823, file: !3, line: 351, type: !664)
!6830 = !DILocalVariable(name: "err", scope: !6823, file: !3, line: 352, type: !98)
!6831 = !DILabel(scope: !6823, name: "free_net", file: !3, line: 395)
!6832 = !DILabel(scope: !6823, name: "out", file: !3, line: 397)
!6833 = !DILocation(line: 347, column: 52, scope: !6823)
!6834 = !DILocation(line: 349, column: 2, scope: !6823)
!6835 = !DILocation(line: 349, column: 25, scope: !6823)
!6836 = !DILocation(line: 349, column: 32, scope: !6823)
!6837 = !DILocation(line: 350, column: 2, scope: !6823)
!6838 = !DILocation(line: 350, column: 9, scope: !6823)
!6839 = !DILocation(line: 351, column: 2, scope: !6823)
!6840 = !DILocation(line: 351, column: 9, scope: !6823)
!6841 = !DILocation(line: 352, column: 2, scope: !6823)
!6842 = !DILocation(line: 352, column: 6, scope: !6823)
!6843 = !DILocation(line: 360, column: 6, scope: !6823)
!6844 = !DILocation(line: 361, column: 27, scope: !6823)
!6845 = !DILocation(line: 361, column: 9, scope: !6823)
!6846 = !DILocation(line: 361, column: 7, scope: !6823)
!6847 = !DILocation(line: 362, column: 7, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 362, column: 6)
!6849 = !DILocation(line: 362, column: 6, scope: !6823)
!6850 = !DILocation(line: 363, column: 3, scope: !6848)
!6851 = !DILocation(line: 365, column: 2, scope: !6823)
!6852 = !DILocation(line: 365, column: 8, scope: !6823)
!6853 = !DILocation(line: 365, column: 17, scope: !6823)
!6854 = !DILocation(line: 366, column: 15, scope: !6823)
!6855 = !DILocation(line: 366, column: 2, scope: !6823)
!6856 = !DILocation(line: 366, column: 8, scope: !6823)
!6857 = !DILocation(line: 366, column: 13, scope: !6823)
!6858 = !DILocation(line: 367, column: 2, scope: !6823)
!6859 = !DILocation(line: 367, column: 8, scope: !6823)
!6860 = !DILocation(line: 367, column: 14, scope: !6823)
!6861 = !DILocation(line: 368, column: 2, scope: !6823)
!6862 = !DILocation(line: 368, column: 8, scope: !6823)
!6863 = !DILocation(line: 368, column: 16, scope: !6823)
!6864 = !DILocation(line: 369, column: 2, scope: !6823)
!6865 = !DILocation(line: 369, column: 8, scope: !6823)
!6866 = !DILocation(line: 369, column: 15, scope: !6823)
!6867 = !DILocation(line: 370, column: 15, scope: !6823)
!6868 = !DILocation(line: 370, column: 21, scope: !6823)
!6869 = !DILocation(line: 370, column: 2, scope: !6823)
!6870 = !DILocation(line: 370, column: 8, scope: !6823)
!6871 = !DILocation(line: 370, column: 13, scope: !6823)
!6872 = !DILocation(line: 371, column: 9, scope: !6823)
!6873 = !DILocation(line: 371, column: 15, scope: !6823)
!6874 = !DILocation(line: 371, column: 2, scope: !6823)
!6875 = !DILocation(line: 373, column: 8, scope: !6823)
!6876 = !DILocation(line: 373, column: 18, scope: !6823)
!6877 = !DILocation(line: 373, column: 23, scope: !6823)
!6878 = !DILocation(line: 374, column: 7, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 374, column: 6)
!6880 = !DILocation(line: 374, column: 6, scope: !6823)
!6881 = !DILocation(line: 375, column: 9, scope: !6879)
!6882 = !DILocation(line: 375, column: 15, scope: !6879)
!6883 = !DILocation(line: 375, column: 3, scope: !6879)
!6884 = !DILocation(line: 377, column: 8, scope: !6823)
!6885 = !DILocation(line: 377, column: 18, scope: !6823)
!6886 = !DILocation(line: 377, column: 23, scope: !6823)
!6887 = !DILocation(line: 378, column: 7, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 378, column: 6)
!6889 = !DILocation(line: 378, column: 6, scope: !6823)
!6890 = !DILocation(line: 379, column: 9, scope: !6888)
!6891 = !DILocation(line: 379, column: 15, scope: !6888)
!6892 = !DILocation(line: 379, column: 3, scope: !6888)
!6893 = !DILocation(line: 381, column: 16, scope: !6823)
!6894 = !DILocation(line: 381, column: 2, scope: !6823)
!6895 = !DILocation(line: 384, column: 19, scope: !6823)
!6896 = !DILocation(line: 384, column: 2, scope: !6823)
!6897 = !DILocation(line: 386, column: 6, scope: !6823)
!6898 = !DILocation(line: 387, column: 29, scope: !6823)
!6899 = !DILocation(line: 387, column: 42, scope: !6823)
!6900 = !DILocation(line: 387, column: 14, scope: !6823)
!6901 = !DILocation(line: 387, column: 12, scope: !6823)
!6902 = !DILocation(line: 388, column: 7, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 388, column: 6)
!6904 = !DILocation(line: 388, column: 6, scope: !6823)
!6905 = !DILocation(line: 389, column: 3, scope: !6903)
!6906 = !DILocation(line: 391, column: 18, scope: !6823)
!6907 = !DILocation(line: 391, column: 2, scope: !6823)
!6908 = !DILocation(line: 391, column: 7, scope: !6823)
!6909 = !DILocation(line: 391, column: 16, scope: !6823)
!6910 = !DILocation(line: 392, column: 23, scope: !6823)
!6911 = !DILocation(line: 392, column: 2, scope: !6823)
!6912 = !DILocation(line: 392, column: 7, scope: !6823)
!6913 = !DILocation(line: 392, column: 21, scope: !6823)
!6914 = !DILocation(line: 393, column: 2, scope: !6823)
!6915 = !DILocation(line: 395, column: 1, scope: !6823)
!6916 = !DILocation(line: 396, column: 11, scope: !6823)
!6917 = !DILocation(line: 396, column: 2, scope: !6823)
!6918 = !DILocation(line: 397, column: 1, scope: !6823)
!6919 = !DILocation(line: 398, column: 9, scope: !6823)
!6920 = !DILocation(line: 398, column: 2, scope: !6823)
!6921 = !DILocation(line: 399, column: 1, scope: !6823)
!6922 = distinct !DISubprogram(name: "proc_net_ns_exit", scope: !3, file: !3, line: 401, type: !5504, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6923)
!6923 = !{!6924}
!6924 = !DILocalVariable(name: "net", arg: 1, scope: !6922, file: !3, line: 401, type: !3491)
!6925 = !DILocation(line: 401, column: 53, scope: !6922)
!6926 = !DILocation(line: 403, column: 28, scope: !6922)
!6927 = !DILocation(line: 403, column: 33, scope: !6922)
!6928 = !DILocation(line: 403, column: 2, scope: !6922)
!6929 = !DILocation(line: 404, column: 11, scope: !6922)
!6930 = !DILocation(line: 404, column: 16, scope: !6922)
!6931 = !DILocation(line: 404, column: 2, scope: !6922)
!6932 = !DILocation(line: 405, column: 1, scope: !6922)
!6933 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !6934, file: !6934, line: 709, type: !6935, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6937)
!6934 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6935 = !DISubroutineType(types: !6936)
!6936 = !{!96, !4182, !197}
!6937 = !{!6938, !6939}
!6938 = !DILocalVariable(name: "k", arg: 1, scope: !6933, file: !6934, line: 709, type: !4182)
!6939 = !DILocalVariable(name: "flags", arg: 2, scope: !6933, file: !6934, line: 709, type: !197)
!6940 = !DILocation(line: 709, column: 58, scope: !6933)
!6941 = !DILocation(line: 709, column: 67, scope: !6933)
!6942 = !DILocation(line: 711, column: 26, scope: !6933)
!6943 = !DILocation(line: 711, column: 29, scope: !6933)
!6944 = !DILocation(line: 711, column: 35, scope: !6933)
!6945 = !DILocation(line: 711, column: 9, scope: !6933)
!6946 = !DILocation(line: 711, column: 2, scope: !6933)
!6947 = distinct !DISubprogram(name: "make_kuid", scope: !647, file: !647, line: 143, type: !6948, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6950)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!646, !848, !651}
!6950 = !{!6951, !6952}
!6951 = !DILocalVariable(name: "from", arg: 1, scope: !6947, file: !647, line: 143, type: !848)
!6952 = !DILocalVariable(name: "uid", arg: 2, scope: !6947, file: !647, line: 143, type: !651)
!6953 = !DILocation(line: 143, column: 55, scope: !6947)
!6954 = !DILocation(line: 143, column: 67, scope: !6947)
!6955 = !DILocation(line: 145, column: 9, scope: !6947)
!6956 = !DILocation(line: 145, column: 2, scope: !6947)
!6957 = distinct !DISubprogram(name: "uid_valid", scope: !647, file: !647, line: 111, type: !6958, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6960)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{!764, !646}
!6960 = !{!6961}
!6961 = !DILocalVariable(name: "uid", arg: 1, scope: !6957, file: !647, line: 111, type: !646)
!6962 = !DILocation(line: 111, column: 37, scope: !6957)
!6963 = !DILocation(line: 113, column: 9, scope: !6957)
!6964 = !DILocation(line: 113, column: 25, scope: !6957)
!6965 = !DILocation(line: 113, column: 2, scope: !6957)
!6966 = distinct !DISubprogram(name: "make_kgid", scope: !647, file: !647, line: 148, type: !6967, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6969)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{!664, !848, !668}
!6969 = !{!6970, !6971}
!6970 = !DILocalVariable(name: "from", arg: 1, scope: !6966, file: !647, line: 148, type: !848)
!6971 = !DILocalVariable(name: "gid", arg: 2, scope: !6966, file: !647, line: 148, type: !668)
!6972 = !DILocation(line: 148, column: 55, scope: !6966)
!6973 = !DILocation(line: 148, column: 67, scope: !6966)
!6974 = !DILocation(line: 150, column: 9, scope: !6966)
!6975 = !DILocation(line: 150, column: 2, scope: !6966)
!6976 = distinct !DISubprogram(name: "gid_valid", scope: !647, file: !647, line: 116, type: !6977, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6979)
!6977 = !DISubroutineType(types: !6978)
!6978 = !{!764, !664}
!6979 = !{!6980}
!6980 = !DILocalVariable(name: "gid", arg: 1, scope: !6976, file: !647, line: 116, type: !664)
!6981 = !DILocation(line: 116, column: 37, scope: !6976)
!6982 = !DILocation(line: 118, column: 9, scope: !6976)
!6983 = !DILocation(line: 118, column: 25, scope: !6976)
!6984 = !DILocation(line: 118, column: 2, scope: !6976)
!6985 = !DISubprogram(name: "proc_set_user", scope: !3583, file: !3583, line: 112, type: !6986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{null, !3566, !646, !664}
!6988 = distinct !DISubprogram(name: "proc_net_mkdir", scope: !3583, file: !3583, line: 228, type: !6989, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!3566, !3491, !92, !3566}
!6991 = !{!6992, !6993, !6994}
!6992 = !DILocalVariable(name: "net", arg: 1, scope: !6988, file: !3583, line: 229, type: !3491)
!6993 = !DILocalVariable(name: "name", arg: 2, scope: !6988, file: !3583, line: 229, type: !92)
!6994 = !DILocalVariable(name: "parent", arg: 3, scope: !6988, file: !3583, line: 229, type: !3566)
!6995 = !DILocation(line: 229, column: 14, scope: !6988)
!6996 = !DILocation(line: 229, column: 31, scope: !6988)
!6997 = !DILocation(line: 229, column: 60, scope: !6988)
!6998 = !DILocation(line: 231, column: 21, scope: !6988)
!6999 = !DILocation(line: 231, column: 30, scope: !6988)
!7000 = !DILocation(line: 231, column: 38, scope: !6988)
!7001 = !DILocation(line: 231, column: 9, scope: !6988)
!7002 = !DILocation(line: 231, column: 2, scope: !6988)
!7003 = !DISubprogram(name: "pde_free", scope: !3568, file: !3568, line: 88, type: !5678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7004 = !DISubprogram(name: "kmem_cache_alloc", scope: !6934, file: !6934, line: 500, type: !6935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7005 = distinct !DISubprogram(name: "__kuid_val", scope: !647, file: !647, line: 34, type: !7006, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7008)
!7006 = !DISubroutineType(types: !7007)
!7007 = !{!651, !646}
!7008 = !{!7009}
!7009 = !DILocalVariable(name: "uid", arg: 1, scope: !7005, file: !647, line: 34, type: !646)
!7010 = !DILocation(line: 34, column: 39, scope: !7005)
!7011 = !DILocation(line: 36, column: 13, scope: !7005)
!7012 = !DILocation(line: 36, column: 2, scope: !7005)
!7013 = distinct !DISubprogram(name: "__kgid_val", scope: !647, file: !647, line: 39, type: !7014, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7016)
!7014 = !DISubroutineType(types: !7015)
!7015 = !{!668, !664}
!7016 = !{!7017}
!7017 = !DILocalVariable(name: "gid", arg: 1, scope: !7013, file: !647, line: 39, type: !664)
!7018 = !DILocation(line: 39, column: 39, scope: !7013)
!7019 = !DILocation(line: 41, column: 13, scope: !7013)
!7020 = !DILocation(line: 41, column: 2, scope: !7013)
!7021 = !DISubprogram(name: "_proc_mkdir", scope: !3583, file: !3583, line: 84, type: !7022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7022 = !DISubroutineType(types: !7023)
!7023 = !{!3566, !92, !100, !3566, !96, !764}
!7024 = !DISubprogram(name: "remove_proc_entry", scope: !3583, file: !3583, line: 125, type: !7025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7025 = !DISubroutineType(types: !7026)
!7026 = !{null, !92, !3566}
