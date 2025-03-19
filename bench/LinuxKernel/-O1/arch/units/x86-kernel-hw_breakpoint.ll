; ModuleID = 'arch/x86/kernel/hw_breakpoint.c'
source_filename = "arch/x86/kernel/hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_dr7: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_dr7 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hw_breakpoint_restore: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hw_breakpoint_restore ; .previous"

%struct.cpuinfo_x86 = type { %union.anon.28, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.30, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.28 = type { i32 }
%union.anon.30 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.tss_struct = type { %struct.x86_hw_tss, %struct.x86_io_bitmap, [3960 x i8] }
%struct.x86_hw_tss = type <{ i32, i64, i64, i64, i64, [7 x i64], i32, i32, i16, i16 }>
%struct.x86_io_bitmap = type { i64, i32, [1025 x i64], [1025 x i64] }
%struct.tlb_state = type { ptr, %union.anon.31, i16, i16, i8, i16, i64, [6 x %struct.tlb_context] }
%union.anon.31 = type { ptr }
%struct.tlb_context = type { i64, i64 }
%struct.gdt_page = type { [16 x %struct.desc_struct], [3968 x i8] }
%struct.desc_struct = type { i16, i16, i32 }
%struct.pcpu_hot = type { %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [16 x i8] }
%struct.anon.35 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.arch_hw_breakpoint = type { i64, i64, i8, i8 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.13, i64, i64, i64, %union.anon.14, i32, %union.anon.15, %union.anon.16, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.hw_perf_event = type { %union.anon.18, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.25, i64, i64, i64, i64 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { i64, %struct.local64_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.anon.23 = type { %struct.arch_hw_breakpoint, %struct.rhlist_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
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
%struct.die_args = type { ptr, ptr, i64, i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.32, i64, i64, %union.anon.33 }
%union.anon.32 = type { i64 }
%union.anon.33 = type { i64 }

@cpu_dr7 = hidden global i64 0, section ".data..percpu", align 8, !dbg !0
@__UNIQUE_ID___addressable_cpu_dr7318 = internal global ptr @cpu_dr7, section ".discard.addressable", align 8, !dbg !5653
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@bp_per_reg = internal global [4 x ptr] zeroinitializer, section ".data..percpu", align 16, !dbg !5754
@arch_install_hw_breakpoint.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5655
@.str = private unnamed_addr constant [31 x i8] c"Can't find any breakpoint slot\00", align 1, !dbg !5697
@.str.1 = private unnamed_addr constant [32 x i8] c"arch/x86/kernel/hw_breakpoint.c\00", align 1, !dbg !5702
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !5704
@cpu_debugreg = internal global [4 x i64] zeroinitializer, section ".data..percpu", align 16, !dbg !5752
@arch_uninstall_hw_breakpoint.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5706
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !5747
@__UNIQUE_ID___addressable_hw_breakpoint_restore319 = internal global ptr @hw_breakpoint_restore, section ".discard.addressable", align 8, !dbg !5750
@.str.4 = private unnamed_addr constant [32 x i8] c"arch/x86/include/asm/debugreg.h\00", align 1, !dbg !5756
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpu_tss_rw = external dso_local global %struct.tss_struct, section ".data..percpu..page_aligned", align 4096
@cpu_tlbstate = external dso_local global %struct.tlb_state, section ".data..percpu..shared_aligned", align 64
@gdt_page = external dso_local global %struct.gdt_page, section ".data..percpu..page_aligned", align 4096
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_cpu_dr7318, ptr @__UNIQUE_ID___addressable_hw_breakpoint_restore319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @encode_dr7(i32 noundef %drnum, i32 noundef %len, i32 noundef %type) #0 align 16 !dbg !5768 {
entry:
  %drnum.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %drnum, ptr %drnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %drnum.addr, metadata !5772, metadata !DIExpression()), !dbg !5775
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5773, metadata !DIExpression()), !dbg !5776
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5774, metadata !DIExpression()), !dbg !5777
  %0 = load i32, ptr %drnum.addr, align 4, !dbg !5778
  %1 = load i32, ptr %len.addr, align 4, !dbg !5779
  %2 = load i32, ptr %type.addr, align 4, !dbg !5780
  %call = call i64 @__encode_dr7(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !5781
  %or = or i64 %call, 512, !dbg !5782
  ret i64 %or, !dbg !5783
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__encode_dr7(i32 noundef %drnum, i32 noundef %len, i32 noundef %type) #2 align 16 !dbg !5784 {
entry:
  %drnum.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %bp_info = alloca i64, align 8
  store i32 %drnum, ptr %drnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %drnum.addr, metadata !5786, metadata !DIExpression()), !dbg !5790
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5787, metadata !DIExpression()), !dbg !5791
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5788, metadata !DIExpression()), !dbg !5792
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp_info) #11, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %bp_info, metadata !5789, metadata !DIExpression()), !dbg !5794
  %0 = load i32, ptr %len.addr, align 4, !dbg !5795
  %1 = load i32, ptr %type.addr, align 4, !dbg !5796
  %or = or i32 %0, %1, !dbg !5797
  %and = and i32 %or, 15, !dbg !5798
  %conv = zext i32 %and to i64, !dbg !5799
  store i64 %conv, ptr %bp_info, align 8, !dbg !5800
  %2 = load i32, ptr %drnum.addr, align 4, !dbg !5801
  %mul = mul i32 %2, 4, !dbg !5802
  %add = add i32 16, %mul, !dbg !5803
  %3 = load i64, ptr %bp_info, align 8, !dbg !5804
  %sh_prom = zext i32 %add to i64, !dbg !5804
  %shl = shl i64 %3, %sh_prom, !dbg !5804
  store i64 %shl, ptr %bp_info, align 8, !dbg !5804
  %4 = load i32, ptr %drnum.addr, align 4, !dbg !5805
  %mul1 = mul i32 %4, 2, !dbg !5806
  %shl2 = shl i32 2, %mul1, !dbg !5807
  %conv3 = sext i32 %shl2 to i64, !dbg !5808
  %5 = load i64, ptr %bp_info, align 8, !dbg !5809
  %or4 = or i64 %5, %conv3, !dbg !5809
  store i64 %or4, ptr %bp_info, align 8, !dbg !5809
  %6 = load i64, ptr %bp_info, align 8, !dbg !5810
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp_info) #11, !dbg !5811
  ret i64 %6, !dbg !5812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @decode_dr7(i64 noundef %dr7, i32 noundef %bpnum, ptr noundef %len, ptr noundef %type) #0 align 16 !dbg !5813 {
entry:
  %dr7.addr = alloca i64, align 8
  %bpnum.addr = alloca i32, align 4
  %len.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %bp_info = alloca i32, align 4
  store i64 %dr7, ptr %dr7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dr7.addr, metadata !5817, metadata !DIExpression()), !dbg !5822
  store i32 %bpnum, ptr %bpnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bpnum.addr, metadata !5818, metadata !DIExpression()), !dbg !5823
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5819, metadata !DIExpression()), !dbg !5824
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5820, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 4, ptr %bp_info) #11, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %bp_info, metadata !5821, metadata !DIExpression()), !dbg !5827
  %0 = load i64, ptr %dr7.addr, align 8, !dbg !5828
  %1 = load i32, ptr %bpnum.addr, align 4, !dbg !5829
  %mul = mul i32 %1, 4, !dbg !5830
  %add = add i32 16, %mul, !dbg !5831
  %sh_prom = zext i32 %add to i64, !dbg !5832
  %shr = lshr i64 %0, %sh_prom, !dbg !5832
  %conv = trunc i64 %shr to i32, !dbg !5828
  store i32 %conv, ptr %bp_info, align 4, !dbg !5827
  %2 = load i32, ptr %bp_info, align 4, !dbg !5833
  %and = and i32 %2, 12, !dbg !5834
  %or = or i32 %and, 64, !dbg !5835
  %3 = load ptr, ptr %len.addr, align 8, !dbg !5836
  store i32 %or, ptr %3, align 4, !dbg !5837
  %4 = load i32, ptr %bp_info, align 4, !dbg !5838
  %and1 = and i32 %4, 3, !dbg !5839
  %or2 = or i32 %and1, 128, !dbg !5840
  %5 = load ptr, ptr %type.addr, align 8, !dbg !5841
  store i32 %or2, ptr %5, align 4, !dbg !5842
  %6 = load i64, ptr %dr7.addr, align 8, !dbg !5843
  %7 = load i32, ptr %bpnum.addr, align 4, !dbg !5844
  %mul3 = mul i32 %7, 2, !dbg !5845
  %sh_prom4 = zext i32 %mul3 to i64, !dbg !5846
  %shr5 = lshr i64 %6, %sh_prom4, !dbg !5846
  %and6 = and i64 %shr5, 3, !dbg !5847
  %conv7 = trunc i64 %and6 to i32, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 4, ptr %bp_info) #11, !dbg !5849
  ret i32 %conv7, !dbg !5850
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_install_hw_breakpoint(ptr noundef %bp) #0 align 16 !dbg !5657 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %dr7 = alloca ptr, align 8
  %i = alloca i32, align 4
  %slot = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp19 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  %__vpp_verify82 = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %__vpp_verify94 = alloca ptr, align 8
  %tmp97 = alloca ptr, align 8
  %tcp_ptr__98 = alloca i64, align 8
  %tmp99 = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !5659, metadata !DIExpression()), !dbg !5851
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !5852
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5660, metadata !DIExpression()), !dbg !5853
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !5854
  %call = call ptr @counter_arch_bp(ptr noundef %0) #10, !dbg !5855
  store ptr %call, ptr %info, align 8, !dbg !5853
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr7) #11, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %dr7, metadata !5662, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5663, metadata !DIExpression()), !dbg !5859
  br label %do.body, !dbg !5860

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5861

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5861

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !5863
  br label %for.cond, !dbg !5864

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !5865
  %cmp = icmp slt i32 %1, 4, !dbg !5866
  br i1 %cmp, label %for.body, label %for.end, !dbg !5867

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #11, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5664, metadata !DIExpression()), !dbg !5869
  br label %do.body1, !dbg !5870

do.body1:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5668, metadata !DIExpression()), !dbg !5871
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5871
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5870
  br label %do.cond2, !dbg !5871

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5871

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5671, metadata !DIExpression()), !dbg !5872
  %3 = load i32, ptr %i, align 4, !dbg !5872
  %idxprom = sext i32 %3 to i64, !dbg !5872
  %arrayidx = getelementptr [4 x ptr], ptr @bp_per_reg, i64 0, i64 %idxprom, !dbg !5872
  %4 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %arrayidx) #12, !dbg !5872, !srcloc !5873
  store i64 %4, ptr %tcp_ptr__, align 8, !dbg !5872
  %5 = load i64, ptr %tcp_ptr__, align 8, !dbg !5872
  %6 = inttoptr i64 %5 to ptr, !dbg !5872
  store ptr %6, ptr %tmp4, align 8, !dbg !5872
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !5870
  %7 = load ptr, ptr %tmp4, align 8, !dbg !5872
  store ptr %7, ptr %tmp, align 8, !dbg !5871
  %8 = load ptr, ptr %tmp, align 8, !dbg !5870
  store ptr %8, ptr %slot, align 8, !dbg !5869
  %9 = load ptr, ptr %slot, align 8, !dbg !5874
  %10 = load ptr, ptr %9, align 8, !dbg !5876
  %tobool = icmp ne ptr %10, null, !dbg !5876
  br i1 %tobool, label %if.end, label %if.then, !dbg !5877

if.then:                                          ; preds = %do.end3
  %11 = load ptr, ptr %bp.addr, align 8, !dbg !5878
  %12 = load ptr, ptr %slot, align 8, !dbg !5880
  store ptr %11, ptr %12, align 8, !dbg !5881
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5882

if.end:                                           ; preds = %do.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5883
  br label %cleanup, !dbg !5883

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #11, !dbg !5883
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5884

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i32, ptr %i, align 4, !dbg !5885
  %inc = add i32 %13, 1, !dbg !5885
  store i32 %inc, ptr %i, align 4, !dbg !5885
  br label %for.cond, !dbg !5886, !llvm.loop !5887

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #11, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5673, metadata !DIExpression()), !dbg !5891
  %14 = load i32, ptr %i, align 4, !dbg !5891
  %cmp5 = icmp eq i32 %14, 4, !dbg !5891
  %lnot = xor i1 %cmp5, true, !dbg !5891
  %lnot6 = xor i1 %lnot, true, !dbg !5891
  %frombool = zext i1 %lnot6 to i8, !dbg !5891
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !5891
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #11, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5676, metadata !DIExpression()), !dbg !5892
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !5892, !range !5893, !noundef !643
  %tobool7 = trunc i8 %15 to i1, !dbg !5892
  %lnot8 = xor i1 %tobool7, true, !dbg !5892
  %lnot9 = xor i1 %lnot8, true, !dbg !5892
  %frombool10 = zext i1 %lnot9 to i8, !dbg !5892
  store i8 %frombool10, ptr %__ret_cond, align 1, !dbg !5892
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #11, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5679, metadata !DIExpression()), !dbg !5892
  store i8 0, ptr %__ret_once, align 1, !dbg !5892
  %16 = load i8, ptr %__ret_cond, align 1, !dbg !5894, !range !5893, !noundef !643
  %tobool11 = trunc i8 %16 to i1, !dbg !5894
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !5894

land.rhs:                                         ; preds = %for.end
  %17 = load i8, ptr @arch_install_hw_breakpoint.__already_done, align 1, !dbg !5894, !range !5893, !noundef !643
  %tobool12 = trunc i8 %17 to i1, !dbg !5894
  %lnot13 = xor i1 %tobool12, true, !dbg !5894
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %18 = phi i1 [ false, %for.end ], [ %lnot13, %land.rhs ], !dbg !5896
  %lnot14 = xor i1 %18, true, !dbg !5894
  %lnot15 = xor i1 %lnot14, true, !dbg !5894
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5894
  %conv = sext i32 %lnot.ext to i64, !dbg !5894
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5894
  %tobool16 = icmp ne i64 %expval, 0, !dbg !5894
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5892

if.then17:                                        ; preds = %land.end
  store i8 1, ptr @arch_install_hw_breakpoint.__already_done, align 1, !dbg !5897
  store i8 1, ptr %__ret_once, align 1, !dbg !5897
  br label %if.end18, !dbg !5897

if.end18:                                         ; preds = %if.then17, %land.end
  %19 = load i8, ptr %__ret_once, align 1, !dbg !5892, !range !5893, !noundef !643
  %tobool20 = trunc i8 %19 to i1, !dbg !5892
  %lnot21 = xor i1 %tobool20, true, !dbg !5892
  %lnot23 = xor i1 %lnot21, true, !dbg !5892
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5892
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5892
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5892
  store i64 %expval26, ptr %tmp19, align 8, !dbg !5894
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #11, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #11, !dbg !5899
  %20 = load i64, ptr %tmp19, align 8, !dbg !5892
  %tobool27 = icmp ne i64 %20, 0, !dbg !5899
  br i1 %tobool27, label %if.then28, label %if.end68, !dbg !5891

if.then28:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5680, metadata !DIExpression()), !dbg !5900
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5900
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !5901
  %tobool29 = icmp ne i32 %21, 0, !dbg !5901
  %lnot30 = xor i1 %tobool29, true, !dbg !5901
  %lnot32 = xor i1 %lnot30, true, !dbg !5901
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5901
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !5901
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !5901
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !5901
  br i1 %tobool36, label %if.then37, label %if.end59, !dbg !5900

if.then37:                                        ; preds = %if.then28
  br label %do.body38, !dbg !5901

do.body38:                                        ; preds = %if.then37
  br label %do.body39, !dbg !5902

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !5903

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5903

do.end41:                                         ; preds = %do.cond40
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #10, !dbg !5902
  br label %do.body42, !dbg !5902

do.body42:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5682, metadata !DIExpression()), !dbg !5905
  store i32 2313, ptr %__flags, align 4, !dbg !5905
  br label %do.body43, !dbg !5905

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !5906

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5906

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !5905

do.body46:                                        ; preds = %do.end45
  %22 = load i32, ptr %__flags, align 4, !dbg !5908
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 113, i32 %22, i64 12) #11, !dbg !5908, !srcloc !5910
  br label %do.cond47, !dbg !5908

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5908

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !5905

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !5911

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5911

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5902
  br label %do.cond52, !dbg !5905

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5905

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !5902

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !5913

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !5913

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !5902

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !5902

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !5902

if.end59:                                         ; preds = %do.end58, %if.then28
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5900
  %tobool61 = icmp ne i32 %23, 0, !dbg !5900
  %lnot62 = xor i1 %tobool61, true, !dbg !5900
  %lnot64 = xor i1 %lnot62, true, !dbg !5900
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !5900
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !5900
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !5900
  store i64 %expval67, ptr %tmp60, align 8, !dbg !5901
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5899
  %24 = load i64, ptr %tmp60, align 8, !dbg !5900
  br label %if.end68, !dbg !5899

if.end68:                                         ; preds = %if.end59, %if.end18
  %25 = load i8, ptr %__ret_do_once, align 1, !dbg !5891, !range !5893, !noundef !643
  %tobool70 = trunc i8 %25 to i1, !dbg !5891
  %lnot71 = xor i1 %tobool70, true, !dbg !5891
  %lnot73 = xor i1 %lnot71, true, !dbg !5891
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !5891
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !5891
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !5891
  store i64 %expval76, ptr %tmp69, align 8, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #11, !dbg !5915
  %26 = load i64, ptr %tmp69, align 8, !dbg !5891
  %tobool77 = icmp ne i64 %26, 0, !dbg !5915
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !5916

if.then78:                                        ; preds = %if.end68
  store i32 -16, ptr %retval, align 4, !dbg !5917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !5917

if.end79:                                         ; preds = %if.end68
  %27 = load i32, ptr %i, align 4, !dbg !5918
  %28 = load ptr, ptr %info, align 8, !dbg !5918
  %address = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %28, i32 0, i32 0, !dbg !5918
  %29 = load i64, ptr %address, align 8, !dbg !5918
  call void @native_set_debugreg(i32 noundef %27, i64 noundef %29) #10, !dbg !5918
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #10, !dbg !5919
  br label %do.body80, !dbg !5919

do.body80:                                        ; preds = %if.end79
  br label %do.body81, !dbg !5920

do.body81:                                        ; preds = %do.body80
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify82) #11, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify82, metadata !5686, metadata !DIExpression()), !dbg !5921
  store ptr null, ptr %__vpp_verify82, align 8, !dbg !5921
  %30 = load ptr, ptr %__vpp_verify82, align 8, !dbg !5921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify82) #11, !dbg !5920
  br label %do.cond83, !dbg !5921

do.cond83:                                        ; preds = %do.body81
  br label %do.end84, !dbg !5921

do.end84:                                         ; preds = %do.cond83
  br label %do.body85, !dbg !5920

do.body85:                                        ; preds = %do.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #11, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5690, metadata !DIExpression()), !dbg !5922
  %31 = load ptr, ptr %info, align 8, !dbg !5922
  %address86 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %31, i32 0, i32 0, !dbg !5922
  %32 = load i64, ptr %address86, align 8, !dbg !5922
  store i64 %32, ptr %pto_val__, align 8, !dbg !5922
  %33 = load i32, ptr %i, align 4, !dbg !5922
  %idxprom87 = sext i32 %33 to i64, !dbg !5922
  %arrayidx88 = getelementptr [4 x i64], ptr @cpu_debugreg, i64 0, i64 %idxprom87, !dbg !5922
  %34 = load i64, ptr %pto_val__, align 8, !dbg !5922
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx88, i64 %34, ptr elementtype(i64) %arrayidx88) #11, !dbg !5922, !srcloc !5923
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #11, !dbg !5920
  br label %do.cond89, !dbg !5922

do.cond89:                                        ; preds = %do.body85
  br label %do.end90, !dbg !5922

do.end90:                                         ; preds = %do.cond89
  br label %do.cond91, !dbg !5920

do.cond91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !5920

do.end92:                                         ; preds = %do.cond91
  br label %do.body93, !dbg !5924

do.body93:                                        ; preds = %do.end92
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify94) #11, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify94, metadata !5692, metadata !DIExpression()), !dbg !5925
  store ptr null, ptr %__vpp_verify94, align 8, !dbg !5925
  %35 = load ptr, ptr %__vpp_verify94, align 8, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify94) #11, !dbg !5924
  br label %do.cond95, !dbg !5925

do.cond95:                                        ; preds = %do.body93
  br label %do.end96, !dbg !5925

do.end96:                                         ; preds = %do.cond95
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__98) #11, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__98, metadata !5695, metadata !DIExpression()), !dbg !5926
  %36 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_dr7) #12, !dbg !5926, !srcloc !5927
  store i64 %36, ptr %tcp_ptr__98, align 8, !dbg !5926
  %37 = load i64, ptr %tcp_ptr__98, align 8, !dbg !5926
  %38 = inttoptr i64 %37 to ptr, !dbg !5926
  store ptr %38, ptr %tmp99, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__98) #11, !dbg !5924
  %39 = load ptr, ptr %tmp99, align 8, !dbg !5926
  store ptr %39, ptr %tmp97, align 8, !dbg !5925
  %40 = load ptr, ptr %tmp97, align 8, !dbg !5924
  store ptr %40, ptr %dr7, align 8, !dbg !5928
  %41 = load i32, ptr %i, align 4, !dbg !5929
  %42 = load ptr, ptr %info, align 8, !dbg !5930
  %len = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %42, i32 0, i32 2, !dbg !5931
  %43 = load i8, ptr %len, align 8, !dbg !5931
  %conv100 = zext i8 %43 to i32, !dbg !5930
  %44 = load ptr, ptr %info, align 8, !dbg !5932
  %type = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %44, i32 0, i32 3, !dbg !5933
  %45 = load i8, ptr %type, align 1, !dbg !5933
  %conv101 = zext i8 %45 to i32, !dbg !5932
  %call102 = call i64 @encode_dr7(i32 noundef %41, i32 noundef %conv100, i32 noundef %conv101) #10, !dbg !5934
  %46 = load ptr, ptr %dr7, align 8, !dbg !5935
  %47 = load i64, ptr %46, align 8, !dbg !5936
  %or = or i64 %47, %call102, !dbg !5936
  store i64 %or, ptr %46, align 8, !dbg !5936
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5937, !srcloc !5938
  %48 = load ptr, ptr %dr7, align 8, !dbg !5939
  %49 = load i64, ptr %48, align 8, !dbg !5939
  call void @native_set_debugreg(i32 noundef 7, i64 noundef %49) #10, !dbg !5939
  %50 = load ptr, ptr %info, align 8, !dbg !5940
  %mask = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %50, i32 0, i32 1, !dbg !5942
  %51 = load i64, ptr %mask, align 8, !dbg !5942
  %tobool103 = icmp ne i64 %51, 0, !dbg !5940
  br i1 %tobool103, label %if.then104, label %if.end106, !dbg !5943

if.then104:                                       ; preds = %do.end96
  %52 = load ptr, ptr %info, align 8, !dbg !5944
  %mask105 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %52, i32 0, i32 1, !dbg !5945
  %53 = load i64, ptr %mask105, align 8, !dbg !5945
  %54 = load i32, ptr %i, align 4, !dbg !5946
  call void @amd_set_dr_addr_mask(i64 noundef %53, i32 noundef %54) #10, !dbg !5947
  br label %if.end106, !dbg !5947

if.end106:                                        ; preds = %if.then104, %do.end96
  store i32 0, ptr %retval, align 4, !dbg !5948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107, !dbg !5948

cleanup107:                                       ; preds = %if.end106, %if.then78
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr7) #11, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !5949
  %55 = load i32, ptr %retval, align 4, !dbg !5949
  ret i32 %55, !dbg !5949

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @counter_arch_bp(ptr noundef %bp) #2 align 16 !dbg !5950 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !5957
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !5958
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !5959
  %info = getelementptr inbounds %struct.anon.23, ptr %1, i32 0, i32 0, !dbg !5959
  ret ptr %info, !dbg !5960
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5961 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_debugreg(i32 noundef %regno, i64 noundef %value) #6 align 16 !dbg !5964 {
entry:
  %regno.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  store i32 %regno, ptr %regno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regno.addr, metadata !5968, metadata !DIExpression()), !dbg !5970
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  %0 = load i32, ptr %regno.addr, align 4, !dbg !5972
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
  ], !dbg !5973

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %value.addr, align 8, !dbg !5974
  call void asm sideeffect "mov $0, %db0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %1) #11, !dbg !5976, !srcloc !5977
  br label %sw.epilog, !dbg !5978

sw.bb1:                                           ; preds = %entry
  %2 = load i64, ptr %value.addr, align 8, !dbg !5979
  call void asm sideeffect "mov $0, %db1", "r,~{dirflag},~{fpsr},~{flags}"(i64 %2) #11, !dbg !5980, !srcloc !5981
  br label %sw.epilog, !dbg !5982

sw.bb2:                                           ; preds = %entry
  %3 = load i64, ptr %value.addr, align 8, !dbg !5983
  call void asm sideeffect "mov $0, %db2", "r,~{dirflag},~{fpsr},~{flags}"(i64 %3) #11, !dbg !5984, !srcloc !5985
  br label %sw.epilog, !dbg !5986

sw.bb3:                                           ; preds = %entry
  %4 = load i64, ptr %value.addr, align 8, !dbg !5987
  call void asm sideeffect "mov $0, %db3", "r,~{dirflag},~{fpsr},~{flags}"(i64 %4) #11, !dbg !5988, !srcloc !5989
  br label %sw.epilog, !dbg !5990

sw.bb4:                                           ; preds = %entry
  %5 = load i64, ptr %value.addr, align 8, !dbg !5991
  call void asm sideeffect "mov $0, %db6", "r,~{dirflag},~{fpsr},~{flags}"(i64 %5) #11, !dbg !5992, !srcloc !5993
  br label %sw.epilog, !dbg !5994

sw.bb5:                                           ; preds = %entry
  %6 = load i64, ptr %value.addr, align 8, !dbg !5995
  call void asm sideeffect "mov $0, %db7", "r,*m,~{dirflag},~{fpsr},~{flags}"(i64 %6, ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #11, !dbg !5996, !srcloc !5997
  br label %sw.epilog, !dbg !5998

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5999

do.body:                                          ; preds = %sw.default
  br label %do.body6, !dbg !6000

do.body6:                                         ; preds = %do.body
  br label %do.end, !dbg !6002

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !6000

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 94, i32 0, i64 12) #11, !dbg !6004, !srcloc !6006
  br label %do.end8, !dbg !6004

do.end8:                                          ; preds = %do.body7
  unreachable, !dbg !6000

do.end9:                                          ; No predecessors!
  br label %sw.epilog, !dbg !6007

sw.epilog:                                        ; preds = %do.end9, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !6008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !6009 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  ret void, !dbg !6016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6017 dso_local void @amd_set_dr_addr_mask(i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_uninstall_hw_breakpoint(ptr noundef %bp) #0 align 16 !dbg !5708 {
entry:
  %bp.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %dr7 = alloca i64, align 8
  %i = alloca i32, align 4
  %slot = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp19 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify81 = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp84 = alloca i64, align 8
  %tmp85 = alloca i64, align 8
  %__vpp_verify94 = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !5710, metadata !DIExpression()), !dbg !6020
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5711, metadata !DIExpression()), !dbg !6022
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !6023
  %call = call ptr @counter_arch_bp(ptr noundef %0) #10, !dbg !6024
  store ptr %call, ptr %info, align 8, !dbg !6022
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr7) #11, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %dr7, metadata !5712, metadata !DIExpression()), !dbg !6026
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5713, metadata !DIExpression()), !dbg !6028
  br label %do.body, !dbg !6029

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6030

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6030

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !6032
  br label %for.cond, !dbg !6033

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !6034
  %cmp = icmp slt i32 %1, 4, !dbg !6035
  br i1 %cmp, label %for.body, label %for.end, !dbg !6036

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #11, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5714, metadata !DIExpression()), !dbg !6038
  br label %do.body1, !dbg !6039

do.body1:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5718, metadata !DIExpression()), !dbg !6040
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6040
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6039
  br label %do.cond2, !dbg !6040

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6040

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5721, metadata !DIExpression()), !dbg !6041
  %3 = load i32, ptr %i, align 4, !dbg !6041
  %idxprom = sext i32 %3 to i64, !dbg !6041
  %arrayidx = getelementptr [4 x ptr], ptr @bp_per_reg, i64 0, i64 %idxprom, !dbg !6041
  %4 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %arrayidx) #12, !dbg !6041, !srcloc !6042
  store i64 %4, ptr %tcp_ptr__, align 8, !dbg !6041
  %5 = load i64, ptr %tcp_ptr__, align 8, !dbg !6041
  %6 = inttoptr i64 %5 to ptr, !dbg !6041
  store ptr %6, ptr %tmp4, align 8, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !6039
  %7 = load ptr, ptr %tmp4, align 8, !dbg !6041
  store ptr %7, ptr %tmp, align 8, !dbg !6040
  %8 = load ptr, ptr %tmp, align 8, !dbg !6039
  store ptr %8, ptr %slot, align 8, !dbg !6038
  %9 = load ptr, ptr %slot, align 8, !dbg !6043
  %10 = load ptr, ptr %9, align 8, !dbg !6045
  %11 = load ptr, ptr %bp.addr, align 8, !dbg !6046
  %cmp5 = icmp eq ptr %10, %11, !dbg !6047
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6048

if.then:                                          ; preds = %do.end3
  %12 = load ptr, ptr %slot, align 8, !dbg !6049
  store ptr null, ptr %12, align 8, !dbg !6051
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

if.end:                                           ; preds = %do.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6053
  br label %cleanup, !dbg !6053

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #11, !dbg !6053
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6054

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i32, ptr %i, align 4, !dbg !6055
  %inc = add i32 %13, 1, !dbg !6055
  store i32 %inc, ptr %i, align 4, !dbg !6055
  br label %for.cond, !dbg !6056, !llvm.loop !6057

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #11, !dbg !6059
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5723, metadata !DIExpression()), !dbg !6059
  %14 = load i32, ptr %i, align 4, !dbg !6059
  %cmp6 = icmp eq i32 %14, 4, !dbg !6059
  %lnot = xor i1 %cmp6, true, !dbg !6059
  %lnot7 = xor i1 %lnot, true, !dbg !6059
  %frombool = zext i1 %lnot7 to i8, !dbg !6059
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !6059
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #11, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5726, metadata !DIExpression()), !dbg !6060
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !6060, !range !5893, !noundef !643
  %tobool = trunc i8 %15 to i1, !dbg !6060
  %lnot8 = xor i1 %tobool, true, !dbg !6060
  %lnot9 = xor i1 %lnot8, true, !dbg !6060
  %frombool10 = zext i1 %lnot9 to i8, !dbg !6060
  store i8 %frombool10, ptr %__ret_cond, align 1, !dbg !6060
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #11, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5729, metadata !DIExpression()), !dbg !6060
  store i8 0, ptr %__ret_once, align 1, !dbg !6060
  %16 = load i8, ptr %__ret_cond, align 1, !dbg !6061, !range !5893, !noundef !643
  %tobool11 = trunc i8 %16 to i1, !dbg !6061
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !6061

land.rhs:                                         ; preds = %for.end
  %17 = load i8, ptr @arch_uninstall_hw_breakpoint.__already_done, align 1, !dbg !6061, !range !5893, !noundef !643
  %tobool12 = trunc i8 %17 to i1, !dbg !6061
  %lnot13 = xor i1 %tobool12, true, !dbg !6061
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %18 = phi i1 [ false, %for.end ], [ %lnot13, %land.rhs ], !dbg !6063
  %lnot14 = xor i1 %18, true, !dbg !6061
  %lnot15 = xor i1 %lnot14, true, !dbg !6061
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6061
  %conv = sext i32 %lnot.ext to i64, !dbg !6061
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6061
  %tobool16 = icmp ne i64 %expval, 0, !dbg !6061
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6060

if.then17:                                        ; preds = %land.end
  store i8 1, ptr @arch_uninstall_hw_breakpoint.__already_done, align 1, !dbg !6064
  store i8 1, ptr %__ret_once, align 1, !dbg !6064
  br label %if.end18, !dbg !6064

if.end18:                                         ; preds = %if.then17, %land.end
  %19 = load i8, ptr %__ret_once, align 1, !dbg !6060, !range !5893, !noundef !643
  %tobool20 = trunc i8 %19 to i1, !dbg !6060
  %lnot21 = xor i1 %tobool20, true, !dbg !6060
  %lnot23 = xor i1 %lnot21, true, !dbg !6060
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6060
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6060
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6060
  store i64 %expval26, ptr %tmp19, align 8, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #11, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #11, !dbg !6066
  %20 = load i64, ptr %tmp19, align 8, !dbg !6060
  %tobool27 = icmp ne i64 %20, 0, !dbg !6066
  br i1 %tobool27, label %if.then28, label %if.end68, !dbg !6059

if.then28:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5730, metadata !DIExpression()), !dbg !6067
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6067
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !6068
  %tobool29 = icmp ne i32 %21, 0, !dbg !6068
  %lnot30 = xor i1 %tobool29, true, !dbg !6068
  %lnot32 = xor i1 %lnot30, true, !dbg !6068
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !6068
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !6068
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !6068
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !6068
  br i1 %tobool36, label %if.then37, label %if.end59, !dbg !6067

if.then37:                                        ; preds = %if.then28
  br label %do.body38, !dbg !6068

do.body38:                                        ; preds = %if.then37
  br label %do.body39, !dbg !6069

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !6070

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6070

do.end41:                                         ; preds = %do.cond40
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #10, !dbg !6069
  br label %do.body42, !dbg !6069

do.body42:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5732, metadata !DIExpression()), !dbg !6072
  store i32 2313, ptr %__flags, align 4, !dbg !6072
  br label %do.body43, !dbg !6072

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !6073

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6073

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !6072

do.body46:                                        ; preds = %do.end45
  %22 = load i32, ptr %__flags, align 4, !dbg !6075
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 161, i32 %22, i64 12) #11, !dbg !6075, !srcloc !6077
  br label %do.cond47, !dbg !6075

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6075

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !6072

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !6078

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6078

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6069
  br label %do.cond52, !dbg !6072

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !6072

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !6069

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !6080

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !6080

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !6069

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !6069

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !6069

if.end59:                                         ; preds = %do.end58, %if.then28
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !6067
  %tobool61 = icmp ne i32 %23, 0, !dbg !6067
  %lnot62 = xor i1 %tobool61, true, !dbg !6067
  %lnot64 = xor i1 %lnot62, true, !dbg !6067
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !6067
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !6067
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !6067
  store i64 %expval67, ptr %tmp60, align 8, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6066
  %24 = load i64, ptr %tmp60, align 8, !dbg !6067
  br label %if.end68, !dbg !6066

if.end68:                                         ; preds = %if.end59, %if.end18
  %25 = load i8, ptr %__ret_do_once, align 1, !dbg !6059, !range !5893, !noundef !643
  %tobool70 = trunc i8 %25 to i1, !dbg !6059
  %lnot71 = xor i1 %tobool70, true, !dbg !6059
  %lnot73 = xor i1 %lnot71, true, !dbg !6059
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !6059
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !6059
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !6059
  store i64 %expval76, ptr %tmp69, align 8, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #11, !dbg !6082
  %26 = load i64, ptr %tmp69, align 8, !dbg !6059
  %tobool77 = icmp ne i64 %26, 0, !dbg !6082
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !6083

if.then78:                                        ; preds = %if.end68
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup102, !dbg !6084

if.end79:                                         ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6085
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5736, metadata !DIExpression()), !dbg !6085
  br label %do.body80, !dbg !6085

do.body80:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify81) #11, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify81, metadata !5738, metadata !DIExpression()), !dbg !6086
  store ptr null, ptr %__vpp_verify81, align 8, !dbg !6086
  %27 = load ptr, ptr %__vpp_verify81, align 8, !dbg !6086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify81) #11, !dbg !6085
  br label %do.cond82, !dbg !6086

do.cond82:                                        ; preds = %do.body80
  br label %do.end83, !dbg !6086

do.end83:                                         ; preds = %do.cond82
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5740, metadata !DIExpression()), !dbg !6087
  %28 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cpu_dr7) #11, !dbg !6087, !srcloc !6088
  store i64 %28, ptr %pfo_val__, align 8, !dbg !6087
  %29 = load i64, ptr %pfo_val__, align 8, !dbg !6087
  store i64 %29, ptr %tmp84, align 8, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6085
  %30 = load i64, ptr %tmp84, align 8, !dbg !6087
  store i64 %30, ptr %pscr_ret__, align 8, !dbg !6085
  %31 = load i64, ptr %pscr_ret__, align 8, !dbg !6085
  store i64 %31, ptr %tmp85, align 8, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6089
  %32 = load i64, ptr %tmp85, align 8, !dbg !6085
  store i64 %32, ptr %dr7, align 8, !dbg !6090
  %33 = load i32, ptr %i, align 4, !dbg !6091
  %34 = load ptr, ptr %info, align 8, !dbg !6092
  %len = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %34, i32 0, i32 2, !dbg !6093
  %35 = load i8, ptr %len, align 8, !dbg !6093
  %conv86 = zext i8 %35 to i32, !dbg !6092
  %36 = load ptr, ptr %info, align 8, !dbg !6094
  %type = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %36, i32 0, i32 3, !dbg !6095
  %37 = load i8, ptr %type, align 1, !dbg !6095
  %conv87 = zext i8 %37 to i32, !dbg !6094
  %call88 = call i64 @__encode_dr7(i32 noundef %33, i32 noundef %conv86, i32 noundef %conv87) #10, !dbg !6096
  %not = xor i64 %call88, -1, !dbg !6097
  %38 = load i64, ptr %dr7, align 8, !dbg !6098
  %and = and i64 %38, %not, !dbg !6098
  store i64 %and, ptr %dr7, align 8, !dbg !6098
  %39 = load i64, ptr %dr7, align 8, !dbg !6099
  call void @native_set_debugreg(i32 noundef 7, i64 noundef %39) #10, !dbg !6099
  %40 = load ptr, ptr %info, align 8, !dbg !6100
  %mask = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %40, i32 0, i32 1, !dbg !6102
  %41 = load i64, ptr %mask, align 8, !dbg !6102
  %tobool89 = icmp ne i64 %41, 0, !dbg !6100
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !6103

if.then90:                                        ; preds = %do.end83
  %42 = load i32, ptr %i, align 4, !dbg !6104
  call void @amd_set_dr_addr_mask(i64 noundef 0, i32 noundef %42) #10, !dbg !6105
  br label %if.end91, !dbg !6105

if.end91:                                         ; preds = %if.then90, %do.end83
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6106, !srcloc !6107
  br label %do.body92, !dbg !6108

do.body92:                                        ; preds = %if.end91
  br label %do.body93, !dbg !6109

do.body93:                                        ; preds = %do.body92
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify94) #11, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify94, metadata !5742, metadata !DIExpression()), !dbg !6110
  store ptr null, ptr %__vpp_verify94, align 8, !dbg !6110
  %43 = load ptr, ptr %__vpp_verify94, align 8, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify94) #11, !dbg !6109
  br label %do.cond95, !dbg !6110

do.cond95:                                        ; preds = %do.body93
  br label %do.end96, !dbg !6110

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !6109

do.body97:                                        ; preds = %do.end96
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #11, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5745, metadata !DIExpression()), !dbg !6111
  %44 = load i64, ptr %dr7, align 8, !dbg !6111
  store i64 %44, ptr %pto_val__, align 8, !dbg !6111
  %45 = load i64, ptr %pto_val__, align 8, !dbg !6111
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cpu_dr7, i64 %45, ptr elementtype(i64) @cpu_dr7) #11, !dbg !6111, !srcloc !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #11, !dbg !6109
  br label %do.cond98, !dbg !6111

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !6111

do.end99:                                         ; preds = %do.cond98
  br label %do.cond100, !dbg !6109

do.cond100:                                       ; preds = %do.end99
  br label %do.end101, !dbg !6109

do.end101:                                        ; preds = %do.cond100
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6113
  br label %cleanup102, !dbg !6113

cleanup102:                                       ; preds = %do.end101, %if.then78
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr7) #11, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !6113
  %cleanup.dest105 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest105, label %unreachable [
    i32 0, label %cleanup.cont106
    i32 1, label %cleanup.cont106
  ]

cleanup.cont106:                                  ; preds = %cleanup102, %cleanup102
  ret void, !dbg !6113

unreachable:                                      ; preds = %cleanup102, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_bp_generic_fields(i32 noundef %x86_len, i32 noundef %x86_type, ptr noundef %gen_len, ptr noundef %gen_type) #0 align 16 !dbg !6114 {
entry:
  %retval = alloca i32, align 4
  %x86_len.addr = alloca i32, align 4
  %x86_type.addr = alloca i32, align 4
  %gen_len.addr = alloca ptr, align 8
  %gen_type.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %x86_len, ptr %x86_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x86_len.addr, metadata !6118, metadata !DIExpression()), !dbg !6123
  store i32 %x86_type, ptr %x86_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x86_type.addr, metadata !6119, metadata !DIExpression()), !dbg !6124
  store ptr %gen_len, ptr %gen_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gen_len.addr, metadata !6120, metadata !DIExpression()), !dbg !6125
  store ptr %gen_type, ptr %gen_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gen_type.addr, metadata !6121, metadata !DIExpression()), !dbg !6126
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11, !dbg !6127
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6122, metadata !DIExpression()), !dbg !6128
  %0 = load i32, ptr %x86_type.addr, align 4, !dbg !6129
  switch i32 %0, label %sw.default [
    i32 128, label %sw.bb
    i32 129, label %sw.bb1
    i32 131, label %sw.bb2
  ], !dbg !6130

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x86_len.addr, align 4, !dbg !6131
  %cmp = icmp ne i32 %1, 64, !dbg !6134
  br i1 %cmp, label %if.then, label %if.end, !dbg !6135

if.then:                                          ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !6136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6136

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr %gen_type.addr, align 8, !dbg !6137
  store i32 4, ptr %2, align 4, !dbg !6138
  %3 = load ptr, ptr %gen_len.addr, align 8, !dbg !6139
  store i32 8, ptr %3, align 4, !dbg !6140
  store i32 0, ptr %retval, align 4, !dbg !6141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6141

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %gen_type.addr, align 8, !dbg !6142
  store i32 2, ptr %4, align 4, !dbg !6143
  br label %sw.epilog, !dbg !6144

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %gen_type.addr, align 8, !dbg !6145
  store i32 3, ptr %5, align 4, !dbg !6146
  br label %sw.epilog, !dbg !6147

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6148

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1
  %6 = load i32, ptr %x86_len.addr, align 4, !dbg !6149
  %call = call i32 @arch_bp_generic_len(i32 noundef %6) #10, !dbg !6150
  store i32 %call, ptr %len, align 4, !dbg !6151
  %7 = load i32, ptr %len, align 4, !dbg !6152
  %cmp3 = icmp slt i32 %7, 0, !dbg !6154
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6155

if.then4:                                         ; preds = %sw.epilog
  store i32 -22, ptr %retval, align 4, !dbg !6156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6156

if.end5:                                          ; preds = %sw.epilog
  %8 = load i32, ptr %len, align 4, !dbg !6157
  %9 = load ptr, ptr %gen_len.addr, align 8, !dbg !6158
  store i32 %8, ptr %9, align 4, !dbg !6159
  store i32 0, ptr %retval, align 4, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6160

cleanup:                                          ; preds = %if.end5, %if.then4, %sw.default, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11, !dbg !6161
  %10 = load i32, ptr %retval, align 4, !dbg !6161
  ret i32 %10, !dbg !6161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_bp_generic_len(i32 noundef %x86_len) #0 align 16 !dbg !6162 {
entry:
  %retval = alloca i32, align 4
  %x86_len.addr = alloca i32, align 4
  store i32 %x86_len, ptr %x86_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x86_len.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load i32, ptr %x86_len.addr, align 4, !dbg !6166
  switch i32 %0, label %sw.default [
    i32 64, label %sw.bb
    i32 68, label %sw.bb1
    i32 76, label %sw.bb2
    i32 72, label %sw.bb3
  ], !dbg !6167

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6170
  br label %return, !dbg !6170

sw.bb2:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

sw.bb3:                                           ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !6172
  br label %return, !dbg !6172

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6173
  br label %return, !dbg !6173

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !6174
  ret i32 %1, !dbg !6174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_check_bp_in_kernelspace(ptr noundef %hw) #0 align 16 !dbg !6175 {
entry:
  %hw.addr = alloca ptr, align 8
  %va = alloca i64, align 8
  %len = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6179, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #11, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %va, metadata !6180, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6181, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %hw.addr, align 8, !dbg !6192
  %address = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %0, i32 0, i32 0, !dbg !6193
  %1 = load i64, ptr %address, align 8, !dbg !6193
  store i64 %1, ptr %va, align 8, !dbg !6194
  %2 = load ptr, ptr %hw.addr, align 8, !dbg !6195
  %len1 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %2, i32 0, i32 2, !dbg !6196
  %3 = load i8, ptr %len1, align 8, !dbg !6196
  %conv = zext i8 %3 to i32, !dbg !6195
  %call = call i32 @arch_bp_generic_len(i32 noundef %conv) #10, !dbg !6197
  store i32 %call, ptr %len, align 4, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6182, metadata !DIExpression()), !dbg !6199
  %4 = load i32, ptr %len, align 4, !dbg !6199
  %cmp = icmp slt i32 %4, 0, !dbg !6199
  %lnot = xor i1 %cmp, true, !dbg !6199
  %lnot3 = xor i1 %lnot, true, !dbg !6199
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6199
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6199
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6200
  %tobool = icmp ne i32 %5, 0, !dbg !6200
  %lnot4 = xor i1 %tobool, true, !dbg !6200
  %lnot6 = xor i1 %lnot4, true, !dbg !6200
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6200
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !6200
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6200
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6200
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6199

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6200

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6184, metadata !DIExpression()), !dbg !6201
  store i32 2307, ptr %__flags, align 4, !dbg !6201
  br label %do.body10, !dbg !6201

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6202

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6202

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6201

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !6204
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 241, i32 %6, i64 12) #11, !dbg !6204, !srcloc !6206
  br label %do.cond12, !dbg !6204

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6204

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6201

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !6207

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6207

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6200
  br label %do.cond17, !dbg !6201

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6201

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6201

if.end:                                           ; preds = %do.end18, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6199
  %tobool19 = icmp ne i32 %7, 0, !dbg !6199
  %lnot20 = xor i1 %tobool19, true, !dbg !6199
  %lnot22 = xor i1 %lnot20, true, !dbg !6199
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6199
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6199
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6199
  store i64 %expval25, ptr %tmp, align 8, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6209
  %8 = load i64, ptr %tmp, align 8, !dbg !6199
  %9 = load i64, ptr %va, align 8, !dbg !6210
  %call26 = call i64 @task_size_max() #10, !dbg !6211
  %cmp27 = icmp uge i64 %9, %call26, !dbg !6212
  br i1 %cmp27, label %lor.end, label %lor.rhs, !dbg !6213

lor.rhs:                                          ; preds = %if.end
  %10 = load i64, ptr %va, align 8, !dbg !6214
  %11 = load i32, ptr %len, align 4, !dbg !6215
  %conv29 = sext i32 %11 to i64, !dbg !6215
  %add = add i64 %10, %conv29, !dbg !6216
  %sub = sub i64 %add, 1, !dbg !6217
  %call30 = call i64 @task_size_max() #10, !dbg !6218
  %cmp31 = icmp uge i64 %sub, %call30, !dbg !6219
  br label %lor.end, !dbg !6213

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %cmp31, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32, !dbg !6213
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #11, !dbg !6220
  ret i32 %lor.ext, !dbg !6221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #6 align 16 !dbg !6222 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !6228
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6227, metadata !DIExpression()), !dbg !6229
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #11, !dbg !6230, !srcloc !6231
  store i64 %0, ptr %ret, align 8, !dbg !6230
  %1 = load i64, ptr %ret, align 8, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !6233
  ret i64 %1, !dbg !6234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hw_breakpoint_arch_parse(ptr noundef %bp, ptr noundef %attr, ptr noundef %hw) #0 align 16 !dbg !6235 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %hw.addr = alloca ptr, align 8
  %align = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !6241, metadata !DIExpression()), !dbg !6252
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6242, metadata !DIExpression()), !dbg !6253
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6243, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 4, ptr %align) #11, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %align, metadata !6244, metadata !DIExpression()), !dbg !6256
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6245, metadata !DIExpression()), !dbg !6258
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !6259
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !6260
  %2 = load ptr, ptr %hw.addr, align 8, !dbg !6261
  %call = call i32 @arch_build_bp_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10, !dbg !6262
  store i32 %call, ptr %ret, align 4, !dbg !6263
  %3 = load i32, ptr %ret, align 4, !dbg !6264
  %tobool = icmp ne i32 %3, 0, !dbg !6264
  br i1 %tobool, label %if.then, label %if.end, !dbg !6266

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !6267
  store i32 %4, ptr %retval, align 4, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6268

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %hw.addr, align 8, !dbg !6269
  %len = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %5, i32 0, i32 2, !dbg !6270
  %6 = load i8, ptr %len, align 8, !dbg !6270
  %conv = zext i8 %6 to i32, !dbg !6269
  switch i32 %conv, label %sw.default [
    i32 64, label %sw.bb
    i32 68, label %sw.bb6
    i32 76, label %sw.bb7
    i32 72, label %sw.bb8
  ], !dbg !6271

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %align, align 4, !dbg !6272
  %7 = load ptr, ptr %hw.addr, align 8, !dbg !6273
  %mask = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %7, i32 0, i32 1, !dbg !6275
  %8 = load i64, ptr %mask, align 8, !dbg !6275
  %tobool1 = icmp ne i64 %8, 0, !dbg !6273
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !6276

if.then2:                                         ; preds = %sw.bb
  %9 = load ptr, ptr %hw.addr, align 8, !dbg !6277
  %mask3 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %9, i32 0, i32 1, !dbg !6278
  %10 = load i64, ptr %mask3, align 8, !dbg !6278
  %conv4 = trunc i64 %10 to i32, !dbg !6277
  store i32 %conv4, ptr %align, align 4, !dbg !6279
  br label %if.end5, !dbg !6280

if.end5:                                          ; preds = %if.then2, %sw.bb
  br label %sw.epilog, !dbg !6281

sw.bb6:                                           ; preds = %if.end
  store i32 1, ptr %align, align 4, !dbg !6282
  br label %sw.epilog, !dbg !6283

sw.bb7:                                           ; preds = %if.end
  store i32 3, ptr %align, align 4, !dbg !6284
  br label %sw.epilog, !dbg !6285

sw.bb8:                                           ; preds = %if.end
  store i32 7, ptr %align, align 4, !dbg !6286
  br label %sw.epilog, !dbg !6287

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6246, metadata !DIExpression()), !dbg !6288
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6288
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6289
  %tobool9 = icmp ne i32 %11, 0, !dbg !6289
  %lnot = xor i1 %tobool9, true, !dbg !6289
  %lnot10 = xor i1 %lnot, true, !dbg !6289
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !6289
  %conv11 = sext i32 %lnot.ext to i64, !dbg !6289
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6289
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6289
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !6288

if.then13:                                        ; preds = %sw.default
  br label %do.body, !dbg !6289

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6249, metadata !DIExpression()), !dbg !6290
  store i32 2307, ptr %__flags, align 4, !dbg !6290
  br label %do.body14, !dbg !6290

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !6291

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !6291

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !6290

do.body15:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !6293
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 452, i32 %12, i64 12) #11, !dbg !6293, !srcloc !6295
  br label %do.cond16, !dbg !6293

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6293

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6290

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !6296

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6296

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6289
  br label %do.cond21, !dbg !6290

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6290

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !6290

if.end23:                                         ; preds = %do.end22, %sw.default
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6288
  %tobool24 = icmp ne i32 %13, 0, !dbg !6288
  %lnot25 = xor i1 %tobool24, true, !dbg !6288
  %lnot27 = xor i1 %lnot25, true, !dbg !6288
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6288
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6288
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6288
  store i64 %expval30, ptr %tmp, align 8, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6298
  %14 = load i64, ptr %tmp, align 8, !dbg !6288
  store i32 -22, ptr %retval, align 4, !dbg !6299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6299

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %if.end5
  %15 = load ptr, ptr %hw.addr, align 8, !dbg !6300
  %address = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %15, i32 0, i32 0, !dbg !6302
  %16 = load i64, ptr %address, align 8, !dbg !6302
  %17 = load i32, ptr %align, align 4, !dbg !6303
  %conv31 = zext i32 %17 to i64, !dbg !6303
  %and = and i64 %16, %conv31, !dbg !6304
  %tobool32 = icmp ne i64 %and, 0, !dbg !6304
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6305

if.then33:                                        ; preds = %sw.epilog
  store i32 -22, ptr %retval, align 4, !dbg !6306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6306

if.end34:                                         ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !6307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6307

cleanup:                                          ; preds = %if.end34, %if.then33, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 4, ptr %align) #11, !dbg !6308
  %18 = load i32, ptr %retval, align 4, !dbg !6308
  ret i32 %18, !dbg !6308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_build_bp_info(ptr noundef %bp, ptr noundef %attr, ptr noundef %hw) #0 align 16 !dbg !6309 {
entry:
  %retval = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %hw.addr = alloca ptr, align 8
  %bp_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !6311, metadata !DIExpression()), !dbg !6315
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6312, metadata !DIExpression()), !dbg !6316
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6313, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp_end) #11, !dbg !6318
  call void @llvm.dbg.declare(metadata ptr %bp_end, metadata !6314, metadata !DIExpression()), !dbg !6319
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6320
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %0, i32 0, i32 9, !dbg !6321
  %2 = load i64, ptr %1, align 8, !dbg !6321
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !6322
  %4 = getelementptr inbounds %struct.perf_event_attr, ptr %3, i32 0, i32 10, !dbg !6323
  %5 = load i64, ptr %4, align 8, !dbg !6323
  %add = add i64 %2, %5, !dbg !6324
  %sub = sub i64 %add, 1, !dbg !6325
  store i64 %sub, ptr %bp_end, align 8, !dbg !6326
  %6 = load i64, ptr %bp_end, align 8, !dbg !6327
  %7 = load ptr, ptr %attr.addr, align 8, !dbg !6329
  %8 = getelementptr inbounds %struct.perf_event_attr, ptr %7, i32 0, i32 9, !dbg !6330
  %9 = load i64, ptr %8, align 8, !dbg !6330
  %cmp = icmp ult i64 %6, %9, !dbg !6331
  br i1 %cmp, label %if.then, label %if.end, !dbg !6332

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %attr.addr, align 8, !dbg !6334
  %11 = getelementptr inbounds %struct.perf_event_attr, ptr %10, i32 0, i32 9, !dbg !6336
  %12 = load i64, ptr %11, align 8, !dbg !6336
  %13 = load i64, ptr %bp_end, align 8, !dbg !6337
  %call = call zeroext i1 @within_cpu_entry(i64 noundef %12, i64 noundef %13) #10, !dbg !6338
  br i1 %call, label %if.then1, label %if.end2, !dbg !6339

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6340

if.end2:                                          ; preds = %if.end
  %14 = load ptr, ptr %attr.addr, align 8, !dbg !6341
  %15 = getelementptr inbounds %struct.perf_event_attr, ptr %14, i32 0, i32 9, !dbg !6342
  %16 = load i64, ptr %15, align 8, !dbg !6342
  %17 = load ptr, ptr %hw.addr, align 8, !dbg !6343
  %address = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %17, i32 0, i32 0, !dbg !6344
  store i64 %16, ptr %address, align 8, !dbg !6345
  %18 = load ptr, ptr %hw.addr, align 8, !dbg !6346
  %mask = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %18, i32 0, i32 1, !dbg !6347
  store i64 0, ptr %mask, align 8, !dbg !6348
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !6349
  %bp_type = getelementptr inbounds %struct.perf_event_attr, ptr %19, i32 0, i32 8, !dbg !6350
  %20 = load i32, ptr %bp_type, align 4, !dbg !6350
  switch i32 %20, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
  ], !dbg !6351

sw.bb:                                            ; preds = %if.end2
  %21 = load ptr, ptr %hw.addr, align 8, !dbg !6352
  %type = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %21, i32 0, i32 3, !dbg !6354
  store i8 -127, ptr %type, align 1, !dbg !6355
  br label %sw.epilog, !dbg !6356

sw.bb3:                                           ; preds = %if.end2
  %22 = load ptr, ptr %hw.addr, align 8, !dbg !6357
  %type4 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %22, i32 0, i32 3, !dbg !6358
  store i8 -125, ptr %type4, align 1, !dbg !6359
  br label %sw.epilog, !dbg !6360

sw.bb5:                                           ; preds = %if.end2
  %23 = load ptr, ptr %attr.addr, align 8, !dbg !6361
  %24 = getelementptr inbounds %struct.perf_event_attr, ptr %23, i32 0, i32 9, !dbg !6363
  %25 = load i64, ptr %24, align 8, !dbg !6363
  %call6 = call i64 @task_size_max() #10, !dbg !6364
  %cmp7 = icmp uge i64 %25, %call6, !dbg !6365
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !6366

if.then8:                                         ; preds = %sw.bb5
  %26 = load ptr, ptr %attr.addr, align 8, !dbg !6367
  %27 = getelementptr inbounds %struct.perf_event_attr, ptr %26, i32 0, i32 9, !dbg !6370
  %28 = load i64, ptr %27, align 8, !dbg !6370
  %call9 = call zeroext i1 @within_kprobe_blacklist(i64 noundef %28) #10, !dbg !6371
  br i1 %call9, label %if.then10, label %if.end11, !dbg !6372

if.then10:                                        ; preds = %if.then8
  store i32 -22, ptr %retval, align 4, !dbg !6373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6373

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !6374

if.end12:                                         ; preds = %if.end11, %sw.bb5
  %29 = load ptr, ptr %hw.addr, align 8, !dbg !6375
  %type13 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %29, i32 0, i32 3, !dbg !6376
  store i8 -128, ptr %type13, align 1, !dbg !6377
  %30 = load ptr, ptr %attr.addr, align 8, !dbg !6378
  %31 = getelementptr inbounds %struct.perf_event_attr, ptr %30, i32 0, i32 10, !dbg !6380
  %32 = load i64, ptr %31, align 8, !dbg !6380
  %cmp14 = icmp eq i64 %32, 8, !dbg !6381
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6382

if.then15:                                        ; preds = %if.end12
  %33 = load ptr, ptr %hw.addr, align 8, !dbg !6383
  %len = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %33, i32 0, i32 2, !dbg !6385
  store i8 64, ptr %len, align 8, !dbg !6386
  store i32 0, ptr %retval, align 4, !dbg !6387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6387

if.end16:                                         ; preds = %if.end12
  br label %sw.default, !dbg !6388

sw.default:                                       ; preds = %if.end2, %if.end16
  store i32 -22, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %34 = load ptr, ptr %attr.addr, align 8, !dbg !6390
  %35 = getelementptr inbounds %struct.perf_event_attr, ptr %34, i32 0, i32 10, !dbg !6391
  %36 = load i64, ptr %35, align 8, !dbg !6391
  switch i64 %36, label %sw.default25 [
    i64 1, label %sw.bb17
    i64 2, label %sw.bb19
    i64 4, label %sw.bb21
    i64 8, label %sw.bb23
  ], !dbg !6392

sw.bb17:                                          ; preds = %sw.epilog
  %37 = load ptr, ptr %hw.addr, align 8, !dbg !6393
  %len18 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %37, i32 0, i32 2, !dbg !6395
  store i8 64, ptr %len18, align 8, !dbg !6396
  br label %sw.epilog38, !dbg !6397

sw.bb19:                                          ; preds = %sw.epilog
  %38 = load ptr, ptr %hw.addr, align 8, !dbg !6398
  %len20 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %38, i32 0, i32 2, !dbg !6399
  store i8 68, ptr %len20, align 8, !dbg !6400
  br label %sw.epilog38, !dbg !6401

sw.bb21:                                          ; preds = %sw.epilog
  %39 = load ptr, ptr %hw.addr, align 8, !dbg !6402
  %len22 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %39, i32 0, i32 2, !dbg !6403
  store i8 76, ptr %len22, align 8, !dbg !6404
  br label %sw.epilog38, !dbg !6405

sw.bb23:                                          ; preds = %sw.epilog
  %40 = load ptr, ptr %hw.addr, align 8, !dbg !6406
  %len24 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %40, i32 0, i32 2, !dbg !6407
  store i8 72, ptr %len24, align 8, !dbg !6408
  br label %sw.epilog38, !dbg !6409

sw.default25:                                     ; preds = %sw.epilog
  %41 = load ptr, ptr %attr.addr, align 8, !dbg !6410
  %42 = getelementptr inbounds %struct.perf_event_attr, ptr %41, i32 0, i32 10, !dbg !6412
  %43 = load i64, ptr %42, align 8, !dbg !6412
  %call26 = call zeroext i1 @is_power_of_2(i64 noundef %43) #13, !dbg !6413
  br i1 %call26, label %if.end28, label %if.then27, !dbg !6414

if.then27:                                        ; preds = %sw.default25
  store i32 -22, ptr %retval, align 4, !dbg !6415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6415

if.end28:                                         ; preds = %sw.default25
  %44 = load ptr, ptr %attr.addr, align 8, !dbg !6416
  %45 = getelementptr inbounds %struct.perf_event_attr, ptr %44, i32 0, i32 9, !dbg !6418
  %46 = load i64, ptr %45, align 8, !dbg !6418
  %47 = load ptr, ptr %attr.addr, align 8, !dbg !6419
  %48 = getelementptr inbounds %struct.perf_event_attr, ptr %47, i32 0, i32 10, !dbg !6420
  %49 = load i64, ptr %48, align 8, !dbg !6420
  %sub29 = sub i64 %49, 1, !dbg !6421
  %and = and i64 %46, %sub29, !dbg !6422
  %tobool = icmp ne i64 %and, 0, !dbg !6422
  br i1 %tobool, label %if.then30, label %if.end31, !dbg !6423

if.then30:                                        ; preds = %if.end28
  store i32 -22, ptr %retval, align 4, !dbg !6424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6424

if.end31:                                         ; preds = %if.end28
  br i1 false, label %cond.true, label %cond.false, !dbg !6425

cond.true:                                        ; preds = %if.end31
  br i1 true, label %if.end34, label %if.then33, !dbg !6426

cond.false:                                       ; preds = %if.end31
  %call32 = call zeroext i1 @arch_test_bit(i64 noundef 218, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !6426
  br i1 %call32, label %if.end34, label %if.then33, !dbg !6425

if.then33:                                        ; preds = %cond.false, %cond.true
  store i32 -95, ptr %retval, align 4, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.end34:                                         ; preds = %cond.false, %cond.true
  %50 = load ptr, ptr %attr.addr, align 8, !dbg !6429
  %51 = getelementptr inbounds %struct.perf_event_attr, ptr %50, i32 0, i32 10, !dbg !6430
  %52 = load i64, ptr %51, align 8, !dbg !6430
  %sub35 = sub i64 %52, 1, !dbg !6431
  %53 = load ptr, ptr %hw.addr, align 8, !dbg !6432
  %mask36 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %53, i32 0, i32 1, !dbg !6433
  store i64 %sub35, ptr %mask36, align 8, !dbg !6434
  %54 = load ptr, ptr %hw.addr, align 8, !dbg !6435
  %len37 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %54, i32 0, i32 2, !dbg !6436
  store i8 64, ptr %len37, align 8, !dbg !6437
  br label %sw.epilog38, !dbg !6438

sw.epilog38:                                      ; preds = %if.end34, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17
  store i32 0, ptr %retval, align 4, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

cleanup:                                          ; preds = %sw.epilog38, %if.then33, %if.then30, %if.then27, %sw.default, %if.then15, %if.then10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp_end) #11, !dbg !6440
  %55 = load i32, ptr %retval, align 4, !dbg !6440
  ret i32 %55, !dbg !6440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @flush_ptrace_hw_breakpoint(ptr noundef %tsk) #0 align 16 !dbg !6441 {
entry:
  %tsk.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6443, metadata !DIExpression()), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6444, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #11, !dbg !6450
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6445, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6452
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !6453
  store ptr %thread, ptr %t, align 8, !dbg !6451
  store i32 0, ptr %i, align 4, !dbg !6454
  br label %for.cond, !dbg !6456

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6457
  %cmp = icmp slt i32 %1, 4, !dbg !6459
  br i1 %cmp, label %for.body, label %for.end, !dbg !6460

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %t, align 8, !dbg !6461
  %ptrace_bps = getelementptr inbounds %struct.thread_struct, ptr %2, i32 0, i32 8, !dbg !6463
  %3 = load i32, ptr %i, align 4, !dbg !6464
  %idxprom = sext i32 %3 to i64, !dbg !6461
  %arrayidx = getelementptr [4 x ptr], ptr %ptrace_bps, i64 0, i64 %idxprom, !dbg !6461
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6461
  call void @unregister_hw_breakpoint(ptr noundef %4) #10, !dbg !6465
  %5 = load ptr, ptr %t, align 8, !dbg !6466
  %ptrace_bps1 = getelementptr inbounds %struct.thread_struct, ptr %5, i32 0, i32 8, !dbg !6467
  %6 = load i32, ptr %i, align 4, !dbg !6468
  %idxprom2 = sext i32 %6 to i64, !dbg !6466
  %arrayidx3 = getelementptr [4 x ptr], ptr %ptrace_bps1, i64 0, i64 %idxprom2, !dbg !6466
  store ptr null, ptr %arrayidx3, align 8, !dbg !6469
  br label %for.inc, !dbg !6470

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !6471
  %inc = add i32 %7, 1, !dbg !6471
  store i32 %inc, ptr %i, align 4, !dbg !6471
  br label %for.cond, !dbg !6472, !llvm.loop !6473

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %t, align 8, !dbg !6475
  %virtual_dr6 = getelementptr inbounds %struct.thread_struct, ptr %8, i32 0, i32 9, !dbg !6476
  store i64 0, ptr %virtual_dr6, align 8, !dbg !6477
  %9 = load ptr, ptr %t, align 8, !dbg !6478
  %ptrace_dr7 = getelementptr inbounds %struct.thread_struct, ptr %9, i32 0, i32 10, !dbg !6479
  store i64 0, ptr %ptrace_dr7, align 32, !dbg !6480
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #11, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6481
  ret void, !dbg !6481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6482 dso_local void @unregister_hw_breakpoint(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hw_breakpoint_restore() #0 align 16 !dbg !6483 {
entry:
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %pscr_ret__4 = alloca i64, align 8
  %__vpp_verify6 = alloca ptr, align 8
  %pfo_val__9 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %pscr_ret__13 = alloca i64, align 8
  %__vpp_verify15 = alloca ptr, align 8
  %pfo_val__18 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %tmp20 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  %pscr_ret__22 = alloca i64, align 8
  %__vpp_verify24 = alloca ptr, align 8
  %pfo_val__27 = alloca i64, align 8
  %tmp28 = alloca i64, align 8
  %tmp29 = alloca i64, align 8
  %tmp30 = alloca i64, align 8
  %pscr_ret__31 = alloca i64, align 8
  %__vpp_verify33 = alloca ptr, align 8
  %pfo_val__36 = alloca i64, align 8
  %tmp37 = alloca i64, align 8
  %tmp38 = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6485, metadata !DIExpression()), !dbg !6521
  br label %do.body, !dbg !6521

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6522
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6488, metadata !DIExpression()), !dbg !6522
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6522
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6521
  br label %do.cond, !dbg !6522

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6522

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6490, metadata !DIExpression()), !dbg !6523
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cpu_debugreg) #12, !dbg !6523, !srcloc !6524
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6523
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6523
  store i64 %2, ptr %tmp1, align 8, !dbg !6523
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6521
  %3 = load i64, ptr %tmp1, align 8, !dbg !6523
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !6521
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !6521
  store i64 %4, ptr %tmp2, align 8, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6520
  %5 = load i64, ptr %tmp2, align 8, !dbg !6521
  store i64 %5, ptr %tmp, align 8, !dbg !6520
  %6 = load i64, ptr %tmp, align 8, !dbg !6520
  call void @native_set_debugreg(i32 noundef 0, i64 noundef %6) #10, !dbg !6525
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !6526
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__4) #11, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__4, metadata !6492, metadata !DIExpression()), !dbg !6527
  br label %do.body5, !dbg !6527

do.body5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #11, !dbg !6528
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !6495, metadata !DIExpression()), !dbg !6528
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !6528
  %7 = load ptr, ptr %__vpp_verify6, align 8, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #11, !dbg !6527
  br label %do.cond7, !dbg !6528

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !6528

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__9) #11, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %pfo_val__9, metadata !6497, metadata !DIExpression()), !dbg !6529
  %8 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds ([4 x i64], ptr @cpu_debugreg, i64 0, i64 1)) #12, !dbg !6529, !srcloc !6530
  store i64 %8, ptr %pfo_val__9, align 8, !dbg !6529
  %9 = load i64, ptr %pfo_val__9, align 8, !dbg !6529
  store i64 %9, ptr %tmp10, align 8, !dbg !6529
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__9) #11, !dbg !6527
  %10 = load i64, ptr %tmp10, align 8, !dbg !6529
  store i64 %10, ptr %pscr_ret__4, align 8, !dbg !6527
  %11 = load i64, ptr %pscr_ret__4, align 8, !dbg !6527
  store i64 %11, ptr %tmp11, align 8, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__4) #11, !dbg !6526
  %12 = load i64, ptr %tmp11, align 8, !dbg !6527
  store i64 %12, ptr %tmp3, align 8, !dbg !6526
  %13 = load i64, ptr %tmp3, align 8, !dbg !6526
  call void @native_set_debugreg(i32 noundef 1, i64 noundef %13) #10, !dbg !6531
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !6532
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__13) #11, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__13, metadata !6499, metadata !DIExpression()), !dbg !6533
  br label %do.body14, !dbg !6533

do.body14:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify15) #11, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify15, metadata !6502, metadata !DIExpression()), !dbg !6534
  store ptr null, ptr %__vpp_verify15, align 8, !dbg !6534
  %14 = load ptr, ptr %__vpp_verify15, align 8, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify15) #11, !dbg !6533
  br label %do.cond16, !dbg !6534

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !6534

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__18) #11, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %pfo_val__18, metadata !6504, metadata !DIExpression()), !dbg !6535
  %15 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds ([4 x i64], ptr @cpu_debugreg, i64 0, i64 2)) #12, !dbg !6535, !srcloc !6536
  store i64 %15, ptr %pfo_val__18, align 8, !dbg !6535
  %16 = load i64, ptr %pfo_val__18, align 8, !dbg !6535
  store i64 %16, ptr %tmp19, align 8, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__18) #11, !dbg !6533
  %17 = load i64, ptr %tmp19, align 8, !dbg !6535
  store i64 %17, ptr %pscr_ret__13, align 8, !dbg !6533
  %18 = load i64, ptr %pscr_ret__13, align 8, !dbg !6533
  store i64 %18, ptr %tmp20, align 8, !dbg !6533
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__13) #11, !dbg !6532
  %19 = load i64, ptr %tmp20, align 8, !dbg !6533
  store i64 %19, ptr %tmp12, align 8, !dbg !6532
  %20 = load i64, ptr %tmp12, align 8, !dbg !6532
  call void @native_set_debugreg(i32 noundef 2, i64 noundef %20) #10, !dbg !6537
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !6538
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__22) #11, !dbg !6539
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__22, metadata !6506, metadata !DIExpression()), !dbg !6539
  br label %do.body23, !dbg !6539

do.body23:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify24) #11, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify24, metadata !6509, metadata !DIExpression()), !dbg !6540
  store ptr null, ptr %__vpp_verify24, align 8, !dbg !6540
  %21 = load ptr, ptr %__vpp_verify24, align 8, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify24) #11, !dbg !6539
  br label %do.cond25, !dbg !6540

do.cond25:                                        ; preds = %do.body23
  br label %do.end26, !dbg !6540

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__27) #11, !dbg !6541
  call void @llvm.dbg.declare(metadata ptr %pfo_val__27, metadata !6511, metadata !DIExpression()), !dbg !6541
  %22 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds ([4 x i64], ptr @cpu_debugreg, i64 0, i64 3)) #12, !dbg !6541, !srcloc !6542
  store i64 %22, ptr %pfo_val__27, align 8, !dbg !6541
  %23 = load i64, ptr %pfo_val__27, align 8, !dbg !6541
  store i64 %23, ptr %tmp28, align 8, !dbg !6541
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__27) #11, !dbg !6539
  %24 = load i64, ptr %tmp28, align 8, !dbg !6541
  store i64 %24, ptr %pscr_ret__22, align 8, !dbg !6539
  %25 = load i64, ptr %pscr_ret__22, align 8, !dbg !6539
  store i64 %25, ptr %tmp29, align 8, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__22) #11, !dbg !6538
  %26 = load i64, ptr %tmp29, align 8, !dbg !6539
  store i64 %26, ptr %tmp21, align 8, !dbg !6538
  %27 = load i64, ptr %tmp21, align 8, !dbg !6538
  call void @native_set_debugreg(i32 noundef 3, i64 noundef %27) #10, !dbg !6543
  call void @native_set_debugreg(i32 noundef 6, i64 noundef 4294905840) #10, !dbg !6544
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !6545
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__31) #11, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__31, metadata !6513, metadata !DIExpression()), !dbg !6546
  br label %do.body32, !dbg !6546

do.body32:                                        ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify33) #11, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify33, metadata !6516, metadata !DIExpression()), !dbg !6547
  store ptr null, ptr %__vpp_verify33, align 8, !dbg !6547
  %28 = load ptr, ptr %__vpp_verify33, align 8, !dbg !6547
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify33) #11, !dbg !6546
  br label %do.cond34, !dbg !6547

do.cond34:                                        ; preds = %do.body32
  br label %do.end35, !dbg !6547

do.end35:                                         ; preds = %do.cond34
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__36) #11, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %pfo_val__36, metadata !6518, metadata !DIExpression()), !dbg !6548
  %29 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cpu_dr7) #12, !dbg !6548, !srcloc !6549
  store i64 %29, ptr %pfo_val__36, align 8, !dbg !6548
  %30 = load i64, ptr %pfo_val__36, align 8, !dbg !6548
  store i64 %30, ptr %tmp37, align 8, !dbg !6548
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__36) #11, !dbg !6546
  %31 = load i64, ptr %tmp37, align 8, !dbg !6548
  store i64 %31, ptr %pscr_ret__31, align 8, !dbg !6546
  %32 = load i64, ptr %pscr_ret__31, align 8, !dbg !6546
  store i64 %32, ptr %tmp38, align 8, !dbg !6546
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__31) #11, !dbg !6545
  %33 = load i64, ptr %tmp38, align 8, !dbg !6546
  store i64 %33, ptr %tmp30, align 8, !dbg !6545
  %34 = load i64, ptr %tmp30, align 8, !dbg !6545
  call void @native_set_debugreg(i32 noundef 7, i64 noundef %34) #10, !dbg !6550
  ret void, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hw_breakpoint_exceptions_notify(ptr noundef %unused, i64 noundef %val, ptr noundef %data) #0 align 16 !dbg !6552 {
entry:
  %retval = alloca i32, align 4
  %unused.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6567, metadata !DIExpression()), !dbg !6570
  %0 = load i64, ptr %val.addr, align 8, !dbg !6571
  %cmp = icmp ne i64 %0, 3, !dbg !6573
  br i1 %cmp, label %if.then, label %if.end, !dbg !6574

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6575
  br label %return, !dbg !6575

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !6576
  %call = call i32 @hw_breakpoint_handler(ptr noundef %1) #10, !dbg !6577
  store i32 %call, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6579
  ret i32 %2, !dbg !6579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hw_breakpoint_handler(ptr noundef %args) #0 align 16 !dbg !6580 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %bp = alloca ptr, align 8
  %dr6_p = alloca ptr, align 8
  %dr6 = alloca i64, align 8
  %bpx = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !6593, metadata !DIExpression()), !dbg !6609
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6594, metadata !DIExpression()), !dbg !6611
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6595, metadata !DIExpression()), !dbg !6612
  store i32 32769, ptr %rc, align 4, !dbg !6612
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #11, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !6596, metadata !DIExpression()), !dbg !6614
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr6_p) #11, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %dr6_p, metadata !6597, metadata !DIExpression()), !dbg !6616
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr6) #11, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %dr6, metadata !6598, metadata !DIExpression()), !dbg !6618
  call void @llvm.lifetime.start.p0(i64 1, ptr %bpx) #11, !dbg !6619
  call void @llvm.dbg.declare(metadata ptr %bpx, metadata !6599, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %args.addr, align 8, !dbg !6621
  %err = getelementptr inbounds %struct.die_args, ptr %0, i32 0, i32 2, !dbg !6622
  %1 = load i64, ptr %err, align 8, !dbg !6622
  %call = call ptr @ERR_PTR(i64 noundef %1) #10, !dbg !6623
  store ptr %call, ptr %dr6_p, align 8, !dbg !6624
  %2 = load ptr, ptr %dr6_p, align 8, !dbg !6625
  %3 = load i64, ptr %2, align 8, !dbg !6626
  store i64 %3, ptr %dr6, align 8, !dbg !6627
  %4 = load i64, ptr %dr6, align 8, !dbg !6628
  %and = and i64 %4, 15, !dbg !6630
  %cmp = icmp eq i64 %and, 0, !dbg !6631
  br i1 %cmp, label %if.then, label %if.end, !dbg !6632

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6633

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6634
  br label %for.cond, !dbg !6635

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !6636
  %cmp1 = icmp slt i32 %5, 4, !dbg !6637
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6638

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %dr6, align 8, !dbg !6639
  %7 = load i32, ptr %i, align 4, !dbg !6639
  %shl = shl i32 1, %7, !dbg !6639
  %conv = sext i32 %shl to i64, !dbg !6639
  %and2 = and i64 %6, %conv, !dbg !6639
  %tobool = icmp ne i64 %and2, 0, !dbg !6639
  %lnot = xor i1 %tobool, true, !dbg !6639
  %lnot3 = xor i1 %lnot, true, !dbg !6639
  %lnot4 = xor i1 %lnot3, true, !dbg !6639
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6639
  %conv5 = sext i32 %lnot.ext to i64, !dbg !6639
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 1), !dbg !6639
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6639
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6641

if.then7:                                         ; preds = %for.body
  br label %for.inc, !dbg !6642

if.end8:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6643
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6600, metadata !DIExpression()), !dbg !6643
  br label %do.body, !dbg !6643

do.body:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6605, metadata !DIExpression()), !dbg !6644
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6644
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !6644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6643
  br label %do.cond, !dbg !6644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6644

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6607, metadata !DIExpression()), !dbg !6645
  %9 = load i32, ptr %i, align 4, !dbg !6645
  %idxprom = sext i32 %9 to i64, !dbg !6645
  %arrayidx = getelementptr [4 x ptr], ptr @bp_per_reg, i64 0, i64 %idxprom, !dbg !6645
  %10 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %arrayidx) #11, !dbg !6645, !srcloc !6646
  store i64 %10, ptr %pfo_val__, align 8, !dbg !6645
  %11 = load i64, ptr %pfo_val__, align 8, !dbg !6645
  %12 = inttoptr i64 %11 to ptr, !dbg !6645
  store ptr %12, ptr %tmp, align 8, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6643
  %13 = load ptr, ptr %tmp, align 8, !dbg !6645
  store ptr %13, ptr %pscr_ret__, align 8, !dbg !6643
  %14 = load ptr, ptr %pscr_ret__, align 8, !dbg !6643
  store ptr %14, ptr %tmp9, align 8, !dbg !6643
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6647
  %15 = load ptr, ptr %tmp9, align 8, !dbg !6643
  store ptr %15, ptr %bp, align 8, !dbg !6648
  %16 = load ptr, ptr %bp, align 8, !dbg !6649
  %tobool10 = icmp ne ptr %16, null, !dbg !6649
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6651

if.then11:                                        ; preds = %do.end
  br label %for.inc, !dbg !6652

if.end12:                                         ; preds = %do.end
  %17 = load ptr, ptr %bp, align 8, !dbg !6653
  %hw = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 26, !dbg !6654
  %18 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6655
  %info = getelementptr inbounds %struct.anon.23, ptr %18, i32 0, i32 0, !dbg !6655
  %type = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %info, i32 0, i32 3, !dbg !6656
  %19 = load i8, ptr %type, align 1, !dbg !6656
  %conv13 = zext i8 %19 to i32, !dbg !6653
  %cmp14 = icmp eq i32 %conv13, 128, !dbg !6657
  %frombool = zext i1 %cmp14 to i8, !dbg !6658
  store i8 %frombool, ptr %bpx, align 1, !dbg !6658
  %20 = load i8, ptr %bpx, align 1, !dbg !6659, !range !5893, !noundef !643
  %tobool16 = trunc i8 %20 to i1, !dbg !6659
  br i1 %tobool16, label %land.lhs.true, label %if.end21, !dbg !6661

land.lhs.true:                                    ; preds = %if.end12
  %21 = load i64, ptr %dr6, align 8, !dbg !6662
  %and18 = and i64 %21, 16384, !dbg !6663
  %tobool19 = icmp ne i64 %and18, 0, !dbg !6663
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6664

if.then20:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !6665

if.end21:                                         ; preds = %land.lhs.true, %if.end12
  %22 = load i32, ptr %i, align 4, !dbg !6666
  %shl22 = shl i32 1, %22, !dbg !6667
  %not = xor i32 %shl22, -1, !dbg !6668
  %conv23 = sext i32 %not to i64, !dbg !6668
  %23 = load ptr, ptr %dr6_p, align 8, !dbg !6669
  %24 = load i64, ptr %23, align 8, !dbg !6670
  %and24 = and i64 %24, %conv23, !dbg !6670
  store i64 %and24, ptr %23, align 8, !dbg !6670
  %25 = load ptr, ptr %bp, align 8, !dbg !6671
  %26 = load ptr, ptr %args.addr, align 8, !dbg !6672
  %regs = getelementptr inbounds %struct.die_args, ptr %26, i32 0, i32 0, !dbg !6673
  %27 = load ptr, ptr %regs, align 8, !dbg !6673
  call void @perf_bp_event(ptr noundef %25, ptr noundef %27) #10, !dbg !6674
  %28 = load i8, ptr %bpx, align 1, !dbg !6675, !range !5893, !noundef !643
  %tobool25 = trunc i8 %28 to i1, !dbg !6675
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !6677

if.then26:                                        ; preds = %if.end21
  %29 = load ptr, ptr %args.addr, align 8, !dbg !6678
  %regs27 = getelementptr inbounds %struct.die_args, ptr %29, i32 0, i32 0, !dbg !6679
  %30 = load ptr, ptr %regs27, align 8, !dbg !6679
  %flags = getelementptr inbounds %struct.pt_regs, ptr %30, i32 0, i32 18, !dbg !6680
  %31 = load i64, ptr %flags, align 8, !dbg !6681
  %or = or i64 %31, 65536, !dbg !6681
  store i64 %or, ptr %flags, align 8, !dbg !6681
  br label %if.end28, !dbg !6678

if.end28:                                         ; preds = %if.then26, %if.end21
  br label %for.inc, !dbg !6682

for.inc:                                          ; preds = %if.end28, %if.then20, %if.then11, %if.then7
  %32 = load i32, ptr %i, align 4, !dbg !6683
  %inc = add i32 %32, 1, !dbg !6683
  store i32 %inc, ptr %i, align 4, !dbg !6683
  br label %for.cond, !dbg !6684, !llvm.loop !6685

for.end:                                          ; preds = %for.cond
  %call29 = call ptr @get_current() #10, !dbg !6687
  %thread = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 197, !dbg !6689
  %virtual_dr6 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 9, !dbg !6690
  %33 = load i64, ptr %virtual_dr6, align 8, !dbg !6690
  %and30 = and i64 %33, 15, !dbg !6691
  %tobool31 = icmp ne i64 %and30, 0, !dbg !6691
  br i1 %tobool31, label %if.then34, label %lor.lhs.false, !dbg !6692

lor.lhs.false:                                    ; preds = %for.end
  %34 = load i64, ptr %dr6, align 8, !dbg !6693
  %and32 = and i64 %34, -16, !dbg !6694
  %tobool33 = icmp ne i64 %and32, 0, !dbg !6694
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6695

if.then34:                                        ; preds = %lor.lhs.false, %for.end
  store i32 0, ptr %rc, align 4, !dbg !6696
  br label %if.end35, !dbg !6697

if.end35:                                         ; preds = %if.then34, %lor.lhs.false
  %35 = load i32, ptr %rc, align 4, !dbg !6698
  store i32 %35, ptr %retval, align 4, !dbg !6699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6699

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bpx) #11, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr6) #11, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr6_p) #11, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #11, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !6700
  %36 = load i32, ptr %retval, align 4, !dbg !6700
  ret i32 %36, !dbg !6700
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hw_breakpoint_pmu_read(ptr noundef %bp) #0 align 16 !dbg !6701 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !6703, metadata !DIExpression()), !dbg !6704
  ret void, !dbg !6705
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_cpu_entry(i64 noundef %addr, i64 noundef %end) #2 align 16 !dbg !6706 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  %__vpp_verify17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__ptr21 = alloca i64, align 8
  %tmp22 = alloca ptr, align 8
  %__vpp_verify30 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %__ptr34 = alloca i64, align 8
  %tmp35 = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6710, metadata !DIExpression()), !dbg !6734
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6711, metadata !DIExpression()), !dbg !6735
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !6736
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6712, metadata !DIExpression()), !dbg !6737
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6738
  %1 = load i64, ptr %end.addr, align 8, !dbg !6740
  %call = call zeroext i1 @within_area(i64 noundef %0, i64 noundef %1, i64 noundef -2199023255552, i64 noundef 549755813888) #10, !dbg !6741
  br i1 %call, label %if.then, label %if.end, !dbg !6742

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6743

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6744
  %3 = load i64, ptr %end.addr, align 8, !dbg !6746
  %4 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6747
  %conv = zext i32 %4 to i64, !dbg !6747
  %mul = mul i64 8, %conv, !dbg !6748
  %call1 = call zeroext i1 @within_area(i64 noundef %2, i64 noundef %3, i64 noundef ptrtoint (ptr @__per_cpu_offset to i64), i64 noundef %mul) #10, !dbg !6749
  br i1 %call1, label %if.then2, label %if.end3, !dbg !6750

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6751

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %cpu, align 4, !dbg !6752
  br label %for.cond, !dbg !6752

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i32, ptr %cpu, align 4, !dbg !6753
  %conv4 = sext i32 %5 to i64, !dbg !6753
  %call5 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv4) #10, !dbg !6753
  %conv6 = trunc i64 %call5 to i32, !dbg !6753
  store i32 %conv6, ptr %cpu, align 4, !dbg !6753
  %6 = load i32, ptr %cpu, align 4, !dbg !6753
  %cmp = icmp ult i32 %6, 64, !dbg !6753
  br i1 %cmp, label %for.body, label %for.end, !dbg !6752

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %addr.addr, align 8, !dbg !6754
  %8 = load i64, ptr %end.addr, align 8, !dbg !6756
  %9 = load i32, ptr %cpu, align 4, !dbg !6757
  %call8 = call ptr @get_cpu_gdt_rw(i32 noundef %9) #10, !dbg !6758
  %10 = ptrtoint ptr %call8 to i64, !dbg !6759
  %call9 = call zeroext i1 @within_area(i64 noundef %7, i64 noundef %8, i64 noundef %10, i64 noundef 128) #10, !dbg !6760
  br i1 %call9, label %if.then10, label %if.end11, !dbg !6761

if.then10:                                        ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !6762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6762

if.end11:                                         ; preds = %for.body
  %11 = load i64, ptr %addr.addr, align 8, !dbg !6763
  %12 = load i64, ptr %end.addr, align 8, !dbg !6764
  br label %do.body, !dbg !6765

do.body:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6766
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6713, metadata !DIExpression()), !dbg !6766
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6766
  %13 = load ptr, ptr %__vpp_verify, align 8, !dbg !6766
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6765
  br label %do.cond, !dbg !6766

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6766

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6720, metadata !DIExpression()), !dbg !6767
  store i64 ptrtoint (ptr @cpu_tss_rw to i64), ptr %__ptr, align 8, !dbg !6767
  %14 = load i64, ptr %__ptr, align 8, !dbg !6767
  %15 = load i32, ptr %cpu, align 4, !dbg !6767
  %idxprom = sext i32 %15 to i64, !dbg !6767
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6767
  %16 = load i64, ptr %arrayidx, align 8, !dbg !6767
  %add = add i64 %14, %16, !dbg !6767
  %17 = inttoptr i64 %add to ptr, !dbg !6767
  store ptr %17, ptr %tmp12, align 8, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6765
  %18 = load ptr, ptr %tmp12, align 8, !dbg !6767
  store ptr %18, ptr %tmp, align 8, !dbg !6766
  %19 = load ptr, ptr %tmp, align 8, !dbg !6765
  %20 = ptrtoint ptr %19 to i64, !dbg !6768
  %call13 = call zeroext i1 @within_area(i64 noundef %11, i64 noundef %12, i64 noundef %20, i64 noundef 20480) #10, !dbg !6769
  br i1 %call13, label %if.then14, label %if.end15, !dbg !6770

if.then14:                                        ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !6771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6771

if.end15:                                         ; preds = %do.end
  %21 = load i64, ptr %addr.addr, align 8, !dbg !6772
  %22 = load i64, ptr %end.addr, align 8, !dbg !6773
  br label %do.body16, !dbg !6774

do.body16:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify17) #11, !dbg !6775
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify17, metadata !6722, metadata !DIExpression()), !dbg !6775
  store ptr null, ptr %__vpp_verify17, align 8, !dbg !6775
  %23 = load ptr, ptr %__vpp_verify17, align 8, !dbg !6775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify17) #11, !dbg !6774
  br label %do.cond18, !dbg !6775

do.cond18:                                        ; preds = %do.body16
  br label %do.end19, !dbg !6775

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr21) #11, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %__ptr21, metadata !6726, metadata !DIExpression()), !dbg !6776
  store i64 ptrtoint (ptr @cpu_tlbstate to i64), ptr %__ptr21, align 8, !dbg !6776
  %24 = load i64, ptr %__ptr21, align 8, !dbg !6776
  %25 = load i32, ptr %cpu, align 4, !dbg !6776
  %idxprom23 = sext i32 %25 to i64, !dbg !6776
  %arrayidx24 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom23, !dbg !6776
  %26 = load i64, ptr %arrayidx24, align 8, !dbg !6776
  %add25 = add i64 %24, %26, !dbg !6776
  %27 = inttoptr i64 %add25 to ptr, !dbg !6776
  store ptr %27, ptr %tmp22, align 8, !dbg !6776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr21) #11, !dbg !6774
  %28 = load ptr, ptr %tmp22, align 8, !dbg !6776
  store ptr %28, ptr %tmp20, align 8, !dbg !6775
  %29 = load ptr, ptr %tmp20, align 8, !dbg !6774
  %30 = ptrtoint ptr %29 to i64, !dbg !6777
  %call26 = call zeroext i1 @within_area(i64 noundef %21, i64 noundef %22, i64 noundef %30, i64 noundef 128) #10, !dbg !6778
  br i1 %call26, label %if.then27, label %if.end28, !dbg !6779

if.then27:                                        ; preds = %do.end19
  store i1 true, ptr %retval, align 1, !dbg !6780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6780

if.end28:                                         ; preds = %do.end19
  %31 = load i64, ptr %addr.addr, align 8, !dbg !6781
  %32 = load i64, ptr %end.addr, align 8, !dbg !6782
  br label %do.body29, !dbg !6783

do.body29:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify30, metadata !6728, metadata !DIExpression()), !dbg !6784
  store ptr null, ptr %__vpp_verify30, align 8, !dbg !6784
  %33 = load ptr, ptr %__vpp_verify30, align 8, !dbg !6784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !6783
  br label %do.cond31, !dbg !6784

do.cond31:                                        ; preds = %do.body29
  br label %do.end32, !dbg !6784

do.end32:                                         ; preds = %do.cond31
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr34) #11, !dbg !6785
  call void @llvm.dbg.declare(metadata ptr %__ptr34, metadata !6732, metadata !DIExpression()), !dbg !6785
  store i64 ptrtoint (ptr @cpu_dr7 to i64), ptr %__ptr34, align 8, !dbg !6785
  %34 = load i64, ptr %__ptr34, align 8, !dbg !6785
  %35 = load i32, ptr %cpu, align 4, !dbg !6785
  %idxprom36 = sext i32 %35 to i64, !dbg !6785
  %arrayidx37 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom36, !dbg !6785
  %36 = load i64, ptr %arrayidx37, align 8, !dbg !6785
  %add38 = add i64 %34, %36, !dbg !6785
  %37 = inttoptr i64 %add38 to ptr, !dbg !6785
  store ptr %37, ptr %tmp35, align 8, !dbg !6785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr34) #11, !dbg !6783
  %38 = load ptr, ptr %tmp35, align 8, !dbg !6785
  store ptr %38, ptr %tmp33, align 8, !dbg !6784
  %39 = load ptr, ptr %tmp33, align 8, !dbg !6783
  %40 = ptrtoint ptr %39 to i64, !dbg !6786
  %call39 = call zeroext i1 @within_area(i64 noundef %31, i64 noundef %32, i64 noundef %40, i64 noundef 8) #10, !dbg !6787
  br i1 %call39, label %if.then40, label %if.end41, !dbg !6788

if.then40:                                        ; preds = %do.end32
  store i1 true, ptr %retval, align 1, !dbg !6789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6789

if.end41:                                         ; preds = %do.end32
  br label %for.inc, !dbg !6790

for.inc:                                          ; preds = %if.end41
  %41 = load i32, ptr %cpu, align 4, !dbg !6753
  %inc = add i32 %41, 1, !dbg !6753
  store i32 %inc, ptr %cpu, align 4, !dbg !6753
  br label %for.cond, !dbg !6753, !llvm.loop !6791

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6793

cleanup:                                          ; preds = %for.end, %if.then40, %if.then27, %if.then14, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !6794
  %42 = load i1, ptr %retval, align 1, !dbg !6794
  ret i1 %42, !dbg !6794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6795 dso_local zeroext i1 @within_kprobe_blacklist(i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #7 align 16 !dbg !6799 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6802, metadata !DIExpression()), !dbg !6803
  %0 = load i64, ptr %n.addr, align 8, !dbg !6804
  %cmp = icmp ne i64 %0, 0, !dbg !6805
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6806

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !6807
  %2 = load i64, ptr %n.addr, align 8, !dbg !6808
  %sub = sub i64 %2, 1, !dbg !6809
  %and = and i64 %1, %sub, !dbg !6810
  %cmp1 = icmp eq i64 %and, 0, !dbg !6811
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6812
  ret i1 %3, !dbg !6813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6814 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6822, metadata !DIExpression()), !dbg !6824
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6823, metadata !DIExpression()), !dbg !6825
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6826
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6827
  br i1 %1, label %cond.true, label %cond.false, !dbg !6827

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6828
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6829
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !6830
  %conv = zext i1 %call to i32, !dbg !6830
  br label %cond.end, !dbg !6827

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6831
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6832
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !6833
  %conv2 = zext i1 %call1 to i32, !dbg !6833
  br label %cond.end, !dbg !6827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6827
  %tobool = icmp ne i32 %cond, 0, !dbg !6827
  ret i1 %tobool, !dbg !6834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_area(i64 noundef %addr, i64 noundef %end, i64 noundef %base, i64 noundef %size) #2 align 16 !dbg !6835 {
entry:
  %addr.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6839, metadata !DIExpression()), !dbg !6843
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6840, metadata !DIExpression()), !dbg !6844
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6841, metadata !DIExpression()), !dbg !6845
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6842, metadata !DIExpression()), !dbg !6846
  %0 = load i64, ptr %end.addr, align 8, !dbg !6847
  %1 = load i64, ptr %base.addr, align 8, !dbg !6848
  %cmp = icmp uge i64 %0, %1, !dbg !6849
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6850

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6851
  %3 = load i64, ptr %base.addr, align 8, !dbg !6852
  %4 = load i64, ptr %size.addr, align 8, !dbg !6853
  %add = add i64 %3, %4, !dbg !6854
  %cmp1 = icmp ult i64 %2, %add, !dbg !6855
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6856
  ret i1 %5, !dbg !6857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #2 align 16 !dbg !6858 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6864, metadata !DIExpression()), !dbg !6870
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6865, metadata !DIExpression()), !dbg !6871
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6866, metadata !DIExpression()), !dbg !6872
  %0 = load i64, ptr %size.addr, align 8, !dbg !6873
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6873
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6873

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6873
  %cmp = icmp ule i64 %2, 64, !dbg !6873
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6873

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6873
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6873
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6874

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6867, metadata !DIExpression()), !dbg !6876
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6877
  %5 = load i64, ptr %size.addr, align 8, !dbg !6877
  %cmp3 = icmp uge i64 %4, %5, !dbg !6877
  %lnot = xor i1 %cmp3, true, !dbg !6877
  %lnot4 = xor i1 %lnot, true, !dbg !6877
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6877
  %conv = sext i32 %lnot.ext to i64, !dbg !6877
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6877
  %tobool = icmp ne i64 %expval, 0, !dbg !6877
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6879

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6880
  store i64 %6, ptr %retval, align 8, !dbg !6881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6881

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6882
  %8 = load i64, ptr %7, align 8, !dbg !6883
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6884
  %shl = shl i64 1, %9, !dbg !6884
  %sub = sub i64 -1, %shl, !dbg !6884
  %add = add i64 %sub, 1, !dbg !6884
  %10 = load i64, ptr %size.addr, align 8, !dbg !6884
  %sub6 = sub i64 %10, 1, !dbg !6884
  %sub7 = sub i64 63, %sub6, !dbg !6884
  %shr = lshr i64 -1, %sub7, !dbg !6884
  %and = and i64 %add, %shr, !dbg !6884
  %add8 = add i64 0, %and, !dbg !6884
  %and9 = and i64 %8, %add8, !dbg !6885
  store i64 %and9, ptr %val, align 8, !dbg !6886
  %11 = load i64, ptr %val, align 8, !dbg !6887
  %tobool10 = icmp ne i64 %11, 0, !dbg !6887
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6887

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6888
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6888
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6888

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6888
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6888
  %cast = trunc i64 %15 to i32, !dbg !6888
  %conv12 = sext i32 %cast to i64, !dbg !6888
  br label %cond.end, !dbg !6888

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6888
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !6888
  br label %cond.end, !dbg !6888

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6888
  br label %cond.end14, !dbg !6887

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6889
  br label %cond.end14, !dbg !6887

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6887
  store i64 %cond15, ptr %retval, align 8, !dbg !6890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6890

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !6891
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6892
  %19 = load i64, ptr %size.addr, align 8, !dbg !6893
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6894
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !6895
  store i64 %call17, ptr %retval, align 8, !dbg !6896
  br label %return, !dbg !6896

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6897
  ret i64 %21, !dbg !6897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_gdt_rw(i32 noundef %cpu) #2 align 16 !dbg !6898 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6903, metadata !DIExpression()), !dbg !6909
  br label %do.body, !dbg !6910

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6911
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6904, metadata !DIExpression()), !dbg !6911
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6911
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6910
  br label %do.end, !dbg !6911

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6907, metadata !DIExpression()), !dbg !6912
  store i64 ptrtoint (ptr @gdt_page to i64), ptr %__ptr, align 8, !dbg !6912
  %1 = load i64, ptr %__ptr, align 8, !dbg !6912
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6912
  %idxprom = zext i32 %2 to i64, !dbg !6912
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6912
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6912
  %add = add i64 %1, %3, !dbg !6912
  %4 = inttoptr i64 %add to ptr, !dbg !6912
  store ptr %4, ptr %tmp1, align 8, !dbg !6912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6910
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6912
  store ptr %5, ptr %tmp, align 8, !dbg !6911
  %6 = load ptr, ptr %tmp, align 8, !dbg !6910
  %gdt = getelementptr inbounds %struct.gdt_page, ptr %6, i32 0, i32 0, !dbg !6913
  %arraydecay = getelementptr inbounds [16 x %struct.desc_struct], ptr %gdt, i64 0, i64 0, !dbg !6914
  ret ptr %arraydecay, !dbg !6915
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !6916 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6920, metadata !DIExpression()), !dbg !6921
  %0 = load i64, ptr %word.addr, align 8, !dbg !6922
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !6923, !srcloc !6924
  store i64 %1, ptr %word.addr, align 8, !dbg !6923
  %2 = load i64, ptr %word.addr, align 8, !dbg !6925
  ret i64 %2, !dbg !6926
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6927 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6928 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6932, metadata !DIExpression()), !dbg !6934
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6933, metadata !DIExpression()), !dbg !6935
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6936
  %and = and i64 %0, 63, !dbg !6937
  %shl = shl i64 1, %and, !dbg !6938
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6939
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6940
  %shr = ashr i64 %2, 6, !dbg !6941
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6939
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6939
  %and1 = and i64 %shl, %3, !dbg !6942
  %cmp = icmp ne i64 %and1, 0, !dbg !6943
  ret i1 %cmp, !dbg !6944
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6945 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6947, metadata !DIExpression()), !dbg !6950
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6948, metadata !DIExpression()), !dbg !6951
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !6952
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6949, metadata !DIExpression()), !dbg !6953
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6954
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6955
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !6956, !srcloc !6957
  %3 = icmp ult i8 %2, 2, !dbg !6956
  call void @llvm.assume(i1 %3), !dbg !6956
  store i8 %2, ptr %oldbit, align 1, !dbg !6956
  %4 = load i8, ptr %oldbit, align 1, !dbg !6958, !range !5893, !noundef !643
  %tobool = trunc i8 %4 to i1, !dbg !6958
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !6959
  ret i1 %tobool, !dbg !6960
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !6961 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6966, metadata !DIExpression()), !dbg !6967
  %0 = load i64, ptr %error.addr, align 8, !dbg !6968
  %1 = inttoptr i64 %0 to ptr, !dbg !6969
  ret ptr %1, !dbg !6970
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6971 dso_local void @perf_bp_event(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6974 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6985
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6979, metadata !DIExpression()), !dbg !6985
  br label %do.body, !dbg !6985

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6986
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6981, metadata !DIExpression()), !dbg !6986
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6986
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6985
  br label %do.cond, !dbg !6986

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6986

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6987
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6983, metadata !DIExpression()), !dbg !6987
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !6987, !srcloc !6988
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6987
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6987
  %3 = inttoptr i64 %2 to ptr, !dbg !6987
  store ptr %3, ptr %tmp, align 8, !dbg !6987
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6985
  %4 = load ptr, ptr %tmp, align 8, !dbg !6987
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6985
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6985
  store ptr %5, ptr %tmp1, align 8, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6989
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6985
  ret ptr %6, !dbg !6990
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(read) }
attributes #13 = { noredzone nounwind willreturn memory(none) }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766}
!llvm.ident = !{!5767}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_dr7", scope: !2, file: !3, line: 39, type: !51, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.hw_breakpoint.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/hw_breakpoint\22 -D KBUILD_BASENAME=\22hw_breakpoint\22 -D KBUILD_MODNAME=\22hw_breakpoint\22 -D __KBUILD_MODNAME=kmod_hw_breakpoint -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/hw_breakpoint.ll arch/x86/kernel/hw_breakpoint.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !284, globals: !5652, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/hw_breakpoint.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13707aac36a627a808b8084d6f79b931")
!4 = !{!5, !13, !18, !23, !119, !125, !141, !149, !156, !164, !170, !177, !183, !189, !196, !204, !211, !220, !225, !230, !236, !245, !250, !259, !274}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !120, line: 16, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "TT_NONE", value: 0)
!123 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!124 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !157, line: 9, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!160 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!161 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!162 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!163 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !171, line: 15, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!174 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!175 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!176 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !178, line: 26, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!181 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!182 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !184, line: 45, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!187 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!188 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !190, line: 487, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!193 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!194 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!195 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !197, line: 620, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!200 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!201 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!202 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!203 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !197, line: 597, baseType: !34, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!207 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!208 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!209 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!210 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !190, line: 547, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219}
!213 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!214 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!215 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!216 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!217 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!218 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!219 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !190, line: 564, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !190, line: 577, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !190, line: 503, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!234 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !237, line: 593, baseType: !34, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 10, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!247 = !{!248, !249}
!248 = !DIEnumerator(name: "false", value: 0)
!249 = !DIEnumerator(name: "true", value: 1)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 16, baseType: !7, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/uapi/linux/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dcffc268889704c87a9dee13d68313ae")
!252 = !{!253, !254, !255, !256, !257, !258}
!253 = !DIEnumerator(name: "HW_BREAKPOINT_EMPTY", value: 0)
!254 = !DIEnumerator(name: "HW_BREAKPOINT_R", value: 1)
!255 = !DIEnumerator(name: "HW_BREAKPOINT_W", value: 2)
!256 = !DIEnumerator(name: "HW_BREAKPOINT_RW", value: 3)
!257 = !DIEnumerator(name: "HW_BREAKPOINT_X", value: 4)
!258 = !DIEnumerator(name: "HW_BREAKPOINT_INVALID", value: 7)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "die_val", file: !260, line: 10, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./arch/x86/include/asm/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b9e116c256f8ca47b10b852f08e11a")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!262 = !DIEnumerator(name: "DIE_OOPS", value: 1)
!263 = !DIEnumerator(name: "DIE_INT3", value: 2)
!264 = !DIEnumerator(name: "DIE_DEBUG", value: 3)
!265 = !DIEnumerator(name: "DIE_PANIC", value: 4)
!266 = !DIEnumerator(name: "DIE_NMI", value: 5)
!267 = !DIEnumerator(name: "DIE_DIE", value: 6)
!268 = !DIEnumerator(name: "DIE_KERNELDEBUG", value: 7)
!269 = !DIEnumerator(name: "DIE_TRAP", value: 8)
!270 = !DIEnumerator(name: "DIE_GPF", value: 9)
!271 = !DIEnumerator(name: "DIE_CALL", value: 10)
!272 = !DIEnumerator(name: "DIE_PAGE_FAULT", value: 11)
!273 = !DIEnumerator(name: "DIE_NMIUNKNOWN", value: 12)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 5, baseType: !7, size: 32, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283}
!276 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_1", value: 1)
!277 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_2", value: 2)
!278 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_3", value: 3)
!279 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_4", value: 4)
!280 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_5", value: 5)
!281 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_6", value: 6)
!282 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_7", value: 7)
!283 = !DIEnumerator(name: "HW_BREAKPOINT_LEN_8", value: 8)
!284 = !{!32, !285, !4702, !301, !51, !3825, !34, !5595, !7, !5597, !5624, !5645, !286, !5651, !867}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !237, line: 671, size: 8512, elements: !288)
!288 = !{!289, !290, !291, !292, !300, !304, !305, !312, !313, !314, !315, !316, !317, !318, !5192, !5193, !5194, !5195, !5201, !5202, !5203, !5204, !5205, !5289, !5290, !5291, !5292, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5412, !5413, !5414, !5415, !5416, !5417, !5428, !5429, !5430, !5431, !5432, !5438, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5455, !5574, !5575, !5576, !5579, !5592, !5593, !5594}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !287, file: !237, line: 678, baseType: !109, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !287, file: !237, line: 684, baseType: !109, size: 128, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !287, file: !237, line: 685, baseType: !109, size: 128, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !287, file: !237, line: 689, baseType: !293, size: 192, align: 64, offset: 384)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !294, line: 5, size: 192, align: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!295 = !{!296, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !293, file: !294, line: 6, baseType: !51, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !293, file: !294, line: 7, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !293, file: !294, line: 8, baseType: !298, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !287, file: !237, line: 690, baseType: !301, size: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !303)
!303 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !287, file: !237, line: 696, baseType: !109, size: 128, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !287, file: !237, line: 698, baseType: !306, size: 128, offset: 768)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !37, line: 199, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !306, file: !37, line: 199, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !287, file: !237, line: 699, baseType: !109, size: 128, offset: 896)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !287, file: !237, line: 700, baseType: !34, size: 32, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !287, file: !237, line: 703, baseType: !34, size: 32, offset: 1056)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !287, file: !237, line: 705, baseType: !34, size: 32, offset: 1088)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !287, file: !237, line: 707, baseType: !7, size: 32, offset: 1120)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !287, file: !237, line: 708, baseType: !286, size: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !287, file: !237, line: 714, baseType: !319, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !237, line: 302, size: 2432, elements: !321)
!321 = !{!322, !323, !4716, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5102, !5103, !5104, !5105, !5106, !5110, !5111, !5115, !5119, !5120, !5124, !5128, !5129, !5130, !5134, !5138, !5142, !5143, !5144, !5148, !5149, !5153, !5157, !5158, !5178, !5182, !5183, !5184, !5188}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !320, file: !237, line: 303, baseType: !109, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !320, file: !237, line: 305, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !326)
!326 = !{!327, !328, !329, !333, !4394, !4420, !4421, !4422, !4423, !4427, !4430, !4431, !4432, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4499, !4503, !4521, !4538, !4539, !4540, !4541, !4550, !4573, !4574, !4577, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4591, !4592, !4677, !4685, !4686, !4687, !4689, !4693, !4694, !4698, !4699, !4700, !4701, !4703, !4704, !4705, !4712, !4713, !4714, !4715}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !6, line: 403, baseType: !5, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !325, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !6, line: 409, baseType: !330, size: 448, offset: 192)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 56)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !325, file: !6, line: 417, baseType: !334, size: 768, offset: 640)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !335)
!335 = !{!336, !4388, !4389, !4390, !4393}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !334, file: !6, line: 46, baseType: !337, size: 512)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !338, line: 64, size: 512, elements: !339)
!338 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!339 = !{!340, !341, !342, !344, !391, !4377, !4378, !4383, !4384, !4385, !4386, !4387}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !338, line: 65, baseType: !28, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !337, file: !338, line: 66, baseType: !109, size: 128, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !337, file: !338, line: 67, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !337, file: !338, line: 68, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !338, line: 168, size: 768, elements: !347)
!347 = !{!348, !349, !350, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !346, file: !338, line: 169, baseType: !109, size: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !346, file: !338, line: 170, baseType: !71, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !346, file: !338, line: 171, baseType: !337, size: 512, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !346, file: !338, line: 172, baseType: !352, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !338, line: 133, size: 192, elements: !355)
!355 = !{!356, !363, !368}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !354, file: !338, line: 134, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!34, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !338, line: 135, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!28, !361}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !354, file: !338, line: 136, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!34, !361, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !338, line: 125, size: 20736, elements: !375)
!375 = !{!376, !381, !385, !386, !390}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !374, file: !338, line: 126, baseType: !377, size: 192)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 192, elements: !379)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!379 = !{!380}
!380 = !DISubrange(count: 3)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !374, file: !338, line: 127, baseType: !382, size: 4096, offset: 192)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 4096, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !374, file: !338, line: 128, baseType: !34, size: 32, offset: 4288)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !374, file: !338, line: 129, baseType: !387, size: 16384, offset: 4320)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2048)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !374, file: !338, line: 130, baseType: !34, size: 32, offset: 20704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !337, file: !338, line: 69, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !338, line: 116, size: 384, elements: !395)
!395 = !{!396, !400, !423, !4341, !4369, !4373}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !394, file: !338, line: 117, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !343}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !394, file: !338, line: 118, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !404, line: 254, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!405 = !{!406, !419}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !403, file: !404, line: 255, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !343, !414, !378}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !413)
!413 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !404, line: 30, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !404, line: 31, baseType: !28, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !415, file: !404, line: 32, baseType: !36, size: 16, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !403, file: !404, line: 256, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!410, !343, !414, !28, !47}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !394, file: !338, line: 119, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !404, line: 84, size: 320, elements: !428)
!428 = !{!429, !430, !434, !4337, !4339}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !404, line: 85, baseType: !28, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !427, file: !404, line: 86, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!36, !343, !414, !34}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !427, file: !404, line: 88, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!36, !343, !438, !34}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !404, line: 175, size: 512, elements: !440)
!440 = !{!441, !442, !443, !444, !4328, !4332, !4333}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !439, file: !404, line: 176, baseType: !415, size: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !439, file: !404, line: 177, baseType: !47, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !439, file: !404, line: 178, baseType: !32, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !439, file: !404, line: 179, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !450)
!450 = !{!451, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4322, !4323, !4324, !4325, !4326, !4327}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !449, file: !14, line: 473, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !454)
!454 = !{!455, !456, !457, !465, !466, !473, !474, !477, !478, !4100, !4101, !4102, !4103, !4104, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4144, !4147, !4148, !4149, !4158, !4159, !4160, !4161}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !453, file: !14, line: 642, baseType: !36, size: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !453, file: !14, line: 643, baseType: !38, size: 16, offset: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !453, file: !14, line: 644, baseType: !458, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !459, line: 23, baseType: !460)
!459 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 21, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !460, file: !459, line: 22, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !453, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !453, file: !14, line: 646, baseType: !467, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !459, line: 28, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 26, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !459, line: 27, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !453, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !453, file: !14, line: 650, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !453, file: !14, line: 651, baseType: !475, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !453, file: !14, line: 654, baseType: !479, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !482)
!482 = !{!483, !3931, !3944, !3948, !3952, !3956, !3960, !3964, !3968, !3972, !3976, !3977, !3981, !3985, !4022, !4051, !4055, !4061, !4065, !4069, !4073, !4077, !4081, !4087, !4091}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !481, file: !14, line: 1967, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !452, !487, !7}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !489, line: 82, size: 1536, elements: !490)
!489 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!490 = !{!491, !492, !502, !510, !511, !528, !529, !533, !546, !3914, !3915, !3916, !3917, !3923, !3924, !3925}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !488, file: !489, line: 84, baseType: !7, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !488, file: !489, line: 85, baseType: !493, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !494, line: 275, baseType: !495)
!494 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !494, line: 275, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !495, file: !494, line: 275, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !494, line: 69, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !494, line: 64, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !499, file: !494, line: 65, baseType: !7, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !488, file: !489, line: 86, baseType: !503, size: 128, offset: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !504, line: 38, size: 128, elements: !505)
!504 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!505 = !{!506, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !504, line: 39, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !503, file: !504, line: 39, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !488, file: !489, line: 87, baseType: !487, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !488, file: !489, line: 88, baseType: !512, size: 128, offset: 256)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !489, line: 49, size: 128, elements: !513)
!513 = !{!514, !525}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !489, line: 50, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !489, line: 50, size: 64, elements: !516)
!516 = !{!517, !524}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !489, line: 51, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !489, line: 51, size: 64, elements: !519)
!519 = !{!520, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !518, file: !489, line: 52, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !518, file: !489, line: 52, baseType: !521, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !515, file: !489, line: 54, baseType: !301, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !489, line: 56, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !488, file: !489, line: 89, baseType: !452, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !488, file: !489, line: 91, baseType: !530, size: 256, offset: 448)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !488, file: !489, line: 94, baseType: !534, size: 64, offset: 704)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !535, line: 25, size: 64, elements: !536)
!535 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !535, line: 26, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !535, line: 26, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !538, file: !535, line: 28, baseType: !302, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !535, line: 30, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !538, file: !535, line: 30, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !535, line: 31, baseType: !71, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !542, file: !535, line: 32, baseType: !34, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !488, file: !489, line: 95, baseType: !547, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !489, line: 128, size: 1024, align: 512, elements: !550)
!550 = !{!551, !555, !556, !563, !569, !573, !577, !581, !582, !586, !590, !3904, !3908}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !549, file: !489, line: 129, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!34, !487, !7}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !549, file: !489, line: 130, baseType: !552, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !549, file: !489, line: 131, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!34, !560, !562}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !549, file: !489, line: 132, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!34, !560, !7, !28, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !549, file: !489, line: 134, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!34, !560}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !549, file: !489, line: 135, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!34, !487}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !549, file: !489, line: 136, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !487}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !549, file: !489, line: 137, baseType: !578, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !549, file: !489, line: 138, baseType: !583, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !487, !452}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !549, file: !489, line: 139, baseType: !587, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!378, !487, !378, !34}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !549, file: !489, line: 140, baseType: !591, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !3903}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !596, line: 70, size: 256, elements: !597)
!596 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!597 = !{!598, !599, !3899, !3900}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !595, file: !596, line: 71, baseType: !487, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !595, file: !596, line: 72, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !602)
!602 = !{!603, !604, !607, !608, !609, !610, !652, !3604, !3644, !3729, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3746, !3750, !3751, !3754, !3757, !3760, !3763, !3764, !3765, !3806, !3833, !3834, !3835, !3836, !3837, !3838, !3841, !3842, !3849, !3850, !3851, !3852, !3853, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !601, file: !14, line: 1191, baseType: !109, size: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !601, file: !14, line: 1192, baseType: !605, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !521)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !601, file: !14, line: 1193, baseType: !99, size: 8, offset: 160)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !601, file: !14, line: 1194, baseType: !51, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !601, file: !14, line: 1195, baseType: !53, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !601, file: !14, line: 1196, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !613)
!613 = !{!614, !615, !616, !622, !626, !630, !634, !635, !636, !640, !644, !645, !646, !648, !649, !650, !651}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !14, line: 2367, baseType: !28, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !612, file: !14, line: 2368, baseType: !34, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !612, file: !14, line: 2376, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!34, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !596, line: 21, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !612, file: !14, line: 2377, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !612, file: !14, line: 2378, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!487, !611, !34, !28, !32}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !612, file: !14, line: 2380, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !600}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !612, file: !14, line: 2381, baseType: !324, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !14, line: 2382, baseType: !611, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !612, file: !14, line: 2383, baseType: !637, size: 64, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !37, line: 195, baseType: !309, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !612, file: !14, line: 2385, baseType: !641, offset: 576)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !642, line: 206, elements: !643)
!642 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!643 = !{}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !612, file: !14, line: 2386, baseType: !641, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !612, file: !14, line: 2387, baseType: !641, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !612, file: !14, line: 2388, baseType: !647, offset: 576)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, elements: !379)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !612, file: !14, line: 2390, baseType: !641, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !612, file: !14, line: 2391, baseType: !641, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !612, file: !14, line: 2392, baseType: !641, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !612, file: !14, line: 2393, baseType: !641, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !601, file: !14, line: 1197, baseType: !653, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !656)
!656 = !{!657, !661, !665, !666, !670, !676, !680, !681, !682, !686, !690, !694, !695, !696, !702, !707, !708, !3529, !3530, !3531, !3532, !3536, !3540, !3587, !3602, !3603}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !655, file: !14, line: 2058, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!452, !600}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !655, file: !14, line: 2059, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !452}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !655, file: !14, line: 2060, baseType: !662, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !655, file: !14, line: 2062, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !452, !34}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !655, file: !14, line: 2063, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!34, !452, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !655, file: !14, line: 2064, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!34, !452}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !655, file: !14, line: 2065, baseType: !662, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !655, file: !14, line: 2066, baseType: !631, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !655, file: !14, line: 2067, baseType: !683, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!34, !600, !34}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !655, file: !14, line: 2068, baseType: !687, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!34, !600, !13}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !655, file: !14, line: 2069, baseType: !691, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!34, !600}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !655, file: !14, line: 2070, baseType: !687, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !655, file: !14, line: 2071, baseType: !691, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !655, file: !14, line: 2072, baseType: !697, size: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!34, !487, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !655, file: !14, line: 2073, baseType: !703, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!34, !600, !706, !378}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !655, file: !14, line: 2074, baseType: !631, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !655, file: !14, line: 2076, baseType: !709, size: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!34, !712, !487}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !714, line: 17, size: 960, elements: !715)
!714 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !744, !765, !766, !3528}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !713, file: !714, line: 18, baseType: !378, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !713, file: !714, line: 19, baseType: !47, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !713, file: !714, line: 20, baseType: !47, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !713, file: !714, line: 21, baseType: !47, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !713, file: !714, line: 22, baseType: !47, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !713, file: !714, line: 23, baseType: !53, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !713, file: !714, line: 24, baseType: !53, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !714, line: 25, baseType: !724, size: 256, offset: 448)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !725, line: 66, size: 256, elements: !726)
!725 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!726 = !{!727, !736, !738, !743}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !724, file: !725, line: 67, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !729, line: 13, baseType: !730)
!729 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !731, file: !37, line: 180, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !724, file: !725, line: 68, baseType: !737, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !724, file: !725, line: 70, baseType: !739, size: 32, offset: 96)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !740, line: 15, size: 32, elements: !741)
!740 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !739, file: !740, line: 20, baseType: !61, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !724, file: !725, line: 72, baseType: !109, size: 128, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !713, file: !714, line: 26, baseType: !745, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !714, line: 32, size: 256, elements: !748)
!748 = !{!749, !753, !757, !761}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !747, file: !714, line: 33, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!32, !712, !52}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !747, file: !714, line: 34, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !712, !32}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !714, line: 35, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!32, !712, !32, !52}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !747, file: !714, line: 36, baseType: !762, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!34, !712, !32}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !713, file: !714, line: 27, baseType: !34, size: 32, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !713, file: !714, line: 28, baseType: !767, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !770)
!770 = !{!771, !790, !791, !793, !794, !795, !796, !797, !3346, !3347, !3356, !3362, !3363, !3518, !3519, !3520, !3521, !3523, !3524, !3527}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !14, line: 995, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !14, line: 995, size: 128, elements: !773)
!773 = !{!774, !780, !789}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !772, file: !14, line: 996, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !776, line: 60, size: 64, elements: !777)
!776 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !776, line: 61, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !772, file: !14, line: 997, baseType: !781, size: 128, align: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !782)
!782 = !{!783, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !37, line: 233, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !781, file: !37, line: 234, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !784}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !772, file: !14, line: 998, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !769, file: !14, line: 1005, baseType: !71, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !769, file: !14, line: 1006, baseType: !792, size: 32, offset: 160)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !769, file: !14, line: 1007, baseType: !728, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !769, file: !14, line: 1008, baseType: !724, size: 256, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !769, file: !14, line: 1009, baseType: !53, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !769, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !769, file: !14, line: 1011, baseType: !798, size: 256, offset: 640)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !799)
!799 = !{!800, !821, !3342, !3343, !3344, !3345}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !14, line: 949, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !802, line: 34, baseType: !803)
!802 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 25, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !803, file: !802, line: 26, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !807, line: 27, baseType: !808)
!807 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !807, line: 13, size: 64, elements: !809)
!809 = !{!810, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !807, line: 14, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !807, line: 14, size: 32, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !811, file: !807, line: 15, baseType: !61, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !807, line: 16, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !807, line: 16, size: 32, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !815, file: !807, line: 18, baseType: !95, size: 8)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !815, file: !807, line: 19, baseType: !819, size: 24, offset: 8)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !379)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !808, file: !807, line: 26, baseType: !83, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !798, file: !14, line: 950, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !157, line: 59, size: 768, elements: !824)
!824 = !{!825, !831, !832, !833, !837, !838, !839, !840}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !157, line: 61, baseType: !826, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !827, line: 113, baseType: !828)
!827 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !827, line: 111, size: 32, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !828, file: !827, line: 112, baseType: !61, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !823, file: !157, line: 62, baseType: !7, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !823, file: !157, line: 63, baseType: !71, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !823, file: !157, line: 65, baseType: !834, size: 256, offset: 128)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 4)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !823, file: !157, line: 66, baseType: !637, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !823, file: !157, line: 68, baseType: !66, size: 192, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !823, file: !157, line: 69, baseType: !781, size: 128, align: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !823, file: !157, line: 70, baseType: !841, offset: 768)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, elements: !1591)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !157, line: 54, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !842, file: !157, line: 55, baseType: !34, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !842, file: !157, line: 56, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !848, line: 26, size: 1152, elements: !849)
!848 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!849 = !{!850, !864, !865, !866, !3328, !3332, !3333, !3334, !3337, !3338, !3339, !3340, !3341}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !847, file: !848, line: 27, baseType: !851, size: 192)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !852, line: 19, size: 192, elements: !853)
!852 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!853 = !{!854, !862, !863}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !851, file: !852, line: 20, baseType: !855, size: 128)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !856, line: 296, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!857 = !{!858, !859, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !855, file: !856, line: 297, baseType: !71, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !855, file: !856, line: 299, baseType: !860, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !855, file: !856, line: 300, baseType: !32, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !851, file: !852, line: 21, baseType: !7, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !851, file: !852, line: 22, baseType: !7, size: 32, offset: 160)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !847, file: !848, line: 28, baseType: !781, size: 128, align: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !847, file: !848, line: 29, baseType: !7, size: 32, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !847, file: !848, line: 30, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !869, line: 746, size: 58368, elements: !870)
!869 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!870 = !{!871, !879, !880, !881, !882, !883, !884, !885, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !951, !962, !1057, !1061, !1064, !1095, !1096, !1097, !1098, !1109, !1111, !1112, !1113, !1114, !1115, !1116, !1127, !1128, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1145, !1146, !1153, !1154, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1672, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1720, !1726, !1796, !1797, !1798, !1799, !1803, !1806, !1813, !1818, !1821, !1824, !1827, !2510, !2711, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2750, !2751, !2760, !2768, !2769, !2770, !2771, !2772, !2777, !2778, !2779, !2782, !2783, !2786, !2789, !2792, !2800, !2803, !2804, !2890, !2891, !2892, !2893, !2894, !2900, !2901, !2902, !2903, !2904, !2905, !2908, !2911, !2912, !2915, !2916, !2917, !2955, !2956, !2957, !2958, !2959, !2960, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2992, !2995, !3001, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3085, !3087, !3088, !3089, !3090, !3091, !3092, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3109, !3110, !3111}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !868, file: !869, line: 752, baseType: !872, size: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !873, line: 56, size: 192, elements: !874)
!873 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!874 = !{!875, !876, !877, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !873, line: 57, baseType: !51, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !872, file: !873, line: 58, baseType: !51, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !872, file: !873, line: 59, baseType: !521, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !872, file: !873, line: 61, baseType: !521, size: 32, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !868, file: !869, line: 754, baseType: !7, size: 32, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !868, file: !869, line: 767, baseType: !32, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !868, file: !869, line: 768, baseType: !826, size: 32, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !869, line: 770, baseType: !7, size: 32, offset: 352)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !868, file: !869, line: 771, baseType: !7, size: 32, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !868, file: !869, line: 774, baseType: !34, size: 32, offset: 416)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !868, file: !869, line: 775, baseType: !886, size: 128, offset: 448)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !887, line: 58, size: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!888 = !{!889, !890, !895, !896}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !886, file: !887, line: 59, baseType: !775, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !887, line: 60, baseType: !891, size: 32, offset: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !887, line: 60, size: 32, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !891, file: !887, line: 61, baseType: !7, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !891, file: !887, line: 62, baseType: !61, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !886, file: !887, line: 65, baseType: !105, size: 16, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !886, file: !887, line: 65, baseType: !105, size: 16, offset: 112)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !868, file: !869, line: 776, baseType: !7, size: 32, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !868, file: !869, line: 777, baseType: !51, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !868, file: !869, line: 778, baseType: !867, size: 64, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !868, file: !869, line: 787, baseType: !34, size: 32, offset: 768)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !868, file: !869, line: 788, baseType: !34, size: 32, offset: 800)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !868, file: !869, line: 790, baseType: !34, size: 32, offset: 832)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !868, file: !869, line: 792, baseType: !34, size: 32, offset: 864)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !868, file: !869, line: 793, baseType: !34, size: 32, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !868, file: !869, line: 794, baseType: !34, size: 32, offset: 928)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !868, file: !869, line: 795, baseType: !7, size: 32, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !868, file: !869, line: 797, baseType: !908, size: 2048, offset: 1024)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !869, line: 551, size: 2048, elements: !909)
!909 = !{!910, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !930, !933, !934, !935}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !908, file: !869, line: 553, baseType: !911, size: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !869, line: 411, size: 128, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !911, file: !869, line: 412, baseType: !51, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !911, file: !869, line: 413, baseType: !521, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !908, file: !869, line: 554, baseType: !293, size: 192, align: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !908, file: !869, line: 555, baseType: !301, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !908, file: !869, line: 556, baseType: !301, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !908, file: !869, line: 558, baseType: !109, size: 128, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !908, file: !869, line: 559, baseType: !7, size: 32, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !908, file: !869, line: 561, baseType: !301, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !908, file: !869, line: 562, baseType: !301, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !908, file: !869, line: 563, baseType: !301, size: 64, offset: 768)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !908, file: !869, line: 564, baseType: !301, size: 64, offset: 832)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !908, file: !869, line: 565, baseType: !734, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !908, file: !869, line: 566, baseType: !301, size: 64, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !908, file: !869, line: 568, baseType: !301, size: 64, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !908, file: !869, line: 571, baseType: !34, size: 32, offset: 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !908, file: !869, line: 572, baseType: !929, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !908, file: !869, line: 574, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !869, line: 49, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !908, file: !869, line: 576, baseType: !931, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !908, file: !869, line: 578, baseType: !51, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !908, file: !869, line: 588, baseType: !936, size: 512, align: 512, offset: 1536)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !869, line: 497, size: 512, align: 512, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !936, file: !869, line: 498, baseType: !301, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !936, file: !869, line: 499, baseType: !301, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !936, file: !869, line: 500, baseType: !301, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !936, file: !869, line: 501, baseType: !521, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !936, file: !869, line: 502, baseType: !521, size: 32, offset: 224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !936, file: !869, line: 503, baseType: !51, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !936, file: !869, line: 504, baseType: !51, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !936, file: !869, line: 505, baseType: !51, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !936, file: !869, line: 506, baseType: !947, size: 64, align: 64, offset: 448)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !869, line: 445, size: 64, align: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !947, file: !869, line: 446, baseType: !7, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !947, file: !869, line: 447, baseType: !7, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !868, file: !869, line: 798, baseType: !952, size: 384, offset: 3072)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !869, line: 592, size: 384, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !952, file: !869, line: 593, baseType: !109, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !952, file: !869, line: 594, baseType: !51, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !952, file: !869, line: 595, baseType: !51, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !952, file: !869, line: 596, baseType: !7, size: 32, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !952, file: !869, line: 597, baseType: !38, size: 16, offset: 288)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !952, file: !869, line: 598, baseType: !38, size: 16, offset: 304)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !952, file: !869, line: 600, baseType: !961, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !868, file: !869, line: 799, baseType: !963, size: 1792, offset: 3456)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !869, line: 610, size: 1792, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !1054, !1055}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !963, file: !869, line: 611, baseType: !293, size: 192, align: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !963, file: !869, line: 618, baseType: !301, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !963, file: !869, line: 619, baseType: !301, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !963, file: !869, line: 620, baseType: !301, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !963, file: !869, line: 621, baseType: !301, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !963, file: !869, line: 622, baseType: !301, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !963, file: !869, line: 629, baseType: !734, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !963, file: !869, line: 630, baseType: !301, size: 64, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !869, line: 631, baseType: !7, size: 32, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !963, file: !869, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !963, file: !869, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !963, file: !869, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !963, file: !869, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !963, file: !869, line: 662, baseType: !979, size: 512, offset: 704)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !980)
!980 = !{!981, !989, !990, !995, !1050, !1051, !1052, !1053}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !979, file: !19, line: 119, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !983, line: 9, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !982, file: !983, line: 10, baseType: !293, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !982, file: !983, line: 11, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !988, line: 29, baseType: !734)
!988 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !979, file: !19, line: 120, baseType: !987, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !979, file: !19, line: 121, baseType: !991, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!18, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !979, file: !19, line: 122, baseType: !996, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !998)
!998 = !{!999, !1024, !1025, !1028, !1033, !1034, !1045, !1049}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !997, file: !19, line: 160, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !19, line: 216, baseType: !737, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1001, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1001, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1001, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1001, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1001, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1001, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1001, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1001, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1001, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1001, file: !19, line: 227, baseType: !38, size: 16, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1001, file: !19, line: 228, baseType: !38, size: 16, offset: 208)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1001, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1001, file: !19, line: 235, baseType: !987, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1001, file: !19, line: 236, baseType: !994, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1001, file: !19, line: 237, baseType: !987, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1001, file: !19, line: 238, baseType: !994, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1001, file: !19, line: 239, baseType: !1021, size: 4096, align: 512, offset: 512)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 4096, align: 512, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 8)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !997, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !997, file: !19, line: 162, baseType: !1026, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !997, file: !19, line: 163, baseType: !1029, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !494, line: 274, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !494, line: 274, size: 32, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1030, file: !494, line: 274, baseType: !498, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !997, file: !19, line: 164, baseType: !994, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !997, file: !19, line: 165, baseType: !1035, size: 128, offset: 256)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !983, line: 14, size: 128, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1035, file: !983, line: 15, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !294, line: 26, size: 128, elements: !1039)
!1039 = !{!1040, !1044}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1038, file: !294, line: 27, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !294, line: 12, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1041, file: !294, line: 13, baseType: !298, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1038, file: !294, line: 28, baseType: !298, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !997, file: !19, line: 166, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!987}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !997, file: !19, line: 167, baseType: !987, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !979, file: !19, line: 123, baseType: !95, size: 8, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !979, file: !19, line: 124, baseType: !95, size: 8, offset: 456)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !979, file: !19, line: 125, baseType: !95, size: 8, offset: 464)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !979, file: !19, line: 126, baseType: !95, size: 8, offset: 472)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !963, file: !869, line: 671, baseType: !979, size: 512, offset: 1216)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !963, file: !869, line: 679, baseType: !1056, size: 64, offset: 1728)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !868, file: !869, line: 800, baseType: !1058, size: 64, offset: 5248)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !869, line: 800, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !868, file: !869, line: 809, baseType: !1062, size: 64, offset: 5312)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !869, line: 70, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !868, file: !869, line: 825, baseType: !1065, size: 2048, align: 512, offset: 5632)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !869, line: 509, size: 2048, align: 512, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1065, file: !869, line: 511, baseType: !301, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1065, file: !869, line: 512, baseType: !301, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1065, file: !869, line: 513, baseType: !301, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1065, file: !869, line: 514, baseType: !301, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1065, file: !869, line: 515, baseType: !301, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1065, file: !869, line: 516, baseType: !301, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1065, file: !869, line: 518, baseType: !301, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1065, file: !869, line: 519, baseType: !301, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1065, file: !869, line: 520, baseType: !734, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1065, file: !869, line: 522, baseType: !301, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1065, file: !869, line: 523, baseType: !301, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1065, file: !869, line: 524, baseType: !734, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1065, file: !869, line: 526, baseType: !734, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1065, file: !869, line: 527, baseType: !301, size: 64, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1065, file: !869, line: 529, baseType: !301, size: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1065, file: !869, line: 530, baseType: !301, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1065, file: !869, line: 531, baseType: !301, size: 64, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1065, file: !869, line: 532, baseType: !301, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1065, file: !869, line: 533, baseType: !301, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1065, file: !869, line: 535, baseType: !301, size: 64, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1065, file: !869, line: 536, baseType: !301, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1065, file: !869, line: 537, baseType: !301, size: 64, offset: 1344)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1065, file: !869, line: 538, baseType: !301, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1065, file: !869, line: 539, baseType: !301, size: 64, offset: 1472)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1065, file: !869, line: 540, baseType: !301, size: 64, offset: 1536)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1065, file: !869, line: 541, baseType: !301, size: 64, offset: 1600)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1065, file: !869, line: 542, baseType: !301, size: 64, offset: 1664)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1065, file: !869, line: 543, baseType: !301, size: 64, offset: 1728)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !868, file: !869, line: 833, baseType: !7, size: 32, offset: 7680)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !868, file: !869, line: 836, baseType: !7, size: 32, offset: 7712)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !868, file: !869, line: 837, baseType: !34, size: 32, offset: 7744)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !868, file: !869, line: 838, baseType: !1099, size: 64, offset: 7808)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1102, line: 19, baseType: !1103)
!1102 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1102, line: 19, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1103, file: !1102, line: 19, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 1)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !868, file: !869, line: 839, baseType: !1110, size: 64, offset: 7872)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !868, file: !869, line: 840, baseType: !1101, size: 64, offset: 7936)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !868, file: !869, line: 841, baseType: !32, size: 64, offset: 8000)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !868, file: !869, line: 843, baseType: !38, size: 16, offset: 8064)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !868, file: !869, line: 845, baseType: !38, size: 16, offset: 8080)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !868, file: !869, line: 848, baseType: !34, size: 32, offset: 8096)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !868, file: !869, line: 849, baseType: !1117, size: 32, offset: 8128)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !869, line: 718, size: 32, elements: !1118)
!1118 = !{!1119, !1126}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1117, file: !869, line: 724, baseType: !1120, size: 32)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1117, file: !869, line: 719, size: 32, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1120, file: !869, line: 720, baseType: !95, size: 8)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1120, file: !869, line: 721, baseType: !95, size: 8, offset: 8)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1120, file: !869, line: 722, baseType: !95, size: 8, offset: 16)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1120, file: !869, line: 723, baseType: !95, size: 8, offset: 24)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1117, file: !869, line: 725, baseType: !521, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !868, file: !869, line: 850, baseType: !109, size: 128, offset: 8192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !868, file: !869, line: 851, baseType: !1129, size: 64, offset: 8320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !869, line: 60, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !868, file: !869, line: 855, baseType: !51, size: 64, offset: 8384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !868, file: !869, line: 856, baseType: !95, size: 8, offset: 8448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !868, file: !869, line: 857, baseType: !95, size: 8, offset: 8456)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !868, file: !869, line: 858, baseType: !34, size: 32, offset: 8480)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !868, file: !869, line: 859, baseType: !109, size: 128, offset: 8512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !868, file: !869, line: 860, baseType: !34, size: 32, offset: 8640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !868, file: !869, line: 861, baseType: !109, size: 128, offset: 8704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !868, file: !869, line: 873, baseType: !1139, size: 256, offset: 8832)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !869, line: 376, size: 256, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1139, file: !869, line: 381, baseType: !51, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1139, file: !869, line: 384, baseType: !303, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1139, file: !869, line: 389, baseType: !303, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1139, file: !869, line: 392, baseType: !303, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !868, file: !869, line: 875, baseType: !109, size: 128, offset: 9088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !868, file: !869, line: 877, baseType: !1147, size: 320, offset: 9216)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1148, line: 86, size: 320, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1147, file: !1148, line: 87, baseType: !34, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1147, file: !1148, line: 88, baseType: !109, size: 128, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1147, file: !1148, line: 89, baseType: !109, size: 128, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !868, file: !869, line: 878, baseType: !293, size: 192, align: 64, offset: 9536)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !868, file: !869, line: 881, baseType: !1155, size: 64, offset: 9728)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !1157)
!1157 = !{!1158, !1589}
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !126, line: 734, baseType: !1159, size: 10240)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !126, line: 734, size: 10240, elements: !1160)
!1160 = !{!1161, !1165, !1178, !1183, !1184, !1185, !1186, !1187, !1188, !1197, !1198, !1199, !1205, !1206, !1207, !1208, !1209, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1246, !1258, !1261, !1309, !1310, !1311, !1314, !1575, !1576, !1579, !1580, !1581, !1587, !1588}
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !126, line: 739, baseType: !1162, size: 512, align: 512)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !126, line: 739, size: 512, align: 512, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1162, file: !126, line: 747, baseType: !61, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1159, file: !126, line: 750, baseType: !1166, size: 128, offset: 512)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1167, line: 218, size: 128, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1168 = !{!1169, !1176, !1177}
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1167, line: 219, baseType: !1170, size: 32)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 219, size: 32, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1170, file: !1167, line: 220, baseType: !71, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1170, file: !1167, line: 221, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1167, line: 197, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1167, line: 197, elements: !643)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1166, file: !1167, line: 223, baseType: !7, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1166, file: !1167, line: 224, baseType: !32, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1159, file: !126, line: 752, baseType: !1179, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!51, !1182, !51, !51, !51, !51}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1159, file: !126, line: 756, baseType: !51, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1159, file: !126, line: 757, baseType: !51, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1159, file: !126, line: 760, baseType: !51, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1159, file: !126, line: 761, baseType: !51, size: 64, offset: 896)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1159, file: !126, line: 763, baseType: !51, size: 64, offset: 960)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1159, file: !126, line: 764, baseType: !1189, size: 64, offset: 1024)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1191, line: 299, baseType: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1191, line: 299, size: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1192, file: !1191, line: 299, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1196, line: 18, baseType: !51)
!1196 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1159, file: !126, line: 773, baseType: !61, size: 32, offset: 1088)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1159, file: !126, line: 785, baseType: !61, size: 32, offset: 1120)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1159, file: !126, line: 795, baseType: !1200, size: 64, offset: 1152)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1201, file: !126, line: 727, baseType: !301, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1201, file: !126, line: 728, baseType: !34, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1159, file: !126, line: 801, baseType: !51, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1159, file: !126, line: 804, baseType: !728, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1159, file: !126, line: 806, baseType: !34, size: 32, offset: 1344)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1159, file: !126, line: 808, baseType: !71, size: 32, offset: 1376)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1159, file: !126, line: 823, baseType: !1210, size: 320, offset: 1408)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1211, line: 48, size: 320, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1212 = !{!1213, !1214, !1215, !1216, !1217}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1210, file: !1211, line: 49, baseType: !728, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1210, file: !1211, line: 55, baseType: !728, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1210, file: !1211, line: 57, baseType: !739, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1210, file: !1211, line: 59, baseType: !737, size: 32, offset: 160)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1210, file: !1211, line: 60, baseType: !109, size: 128, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1159, file: !126, line: 825, baseType: !109, size: 128, offset: 1728)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1159, file: !126, line: 845, baseType: !34, size: 32, offset: 1856)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1159, file: !126, line: 849, baseType: !51, size: 64, offset: 1920)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1159, file: !126, line: 850, baseType: !51, size: 64, offset: 1984)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1159, file: !126, line: 852, baseType: !51, size: 64, offset: 2048)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1159, file: !126, line: 853, baseType: !51, size: 64, offset: 2112)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1159, file: !126, line: 854, baseType: !730, size: 64, offset: 2176)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1159, file: !126, line: 855, baseType: !51, size: 64, offset: 2240)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1159, file: !126, line: 856, baseType: !51, size: 64, offset: 2304)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1159, file: !126, line: 857, baseType: !51, size: 64, offset: 2368)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1159, file: !126, line: 858, baseType: !51, size: 64, offset: 2432)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1159, file: !126, line: 865, baseType: !498, size: 32, offset: 2496)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1159, file: !126, line: 867, baseType: !71, size: 32, offset: 2528)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1159, file: !126, line: 869, baseType: !51, size: 64, offset: 2560)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1159, file: !126, line: 869, baseType: !51, size: 64, offset: 2624)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1159, file: !126, line: 869, baseType: !51, size: 64, offset: 2688)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1159, file: !126, line: 869, baseType: !51, size: 64, offset: 2752)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1159, file: !126, line: 870, baseType: !51, size: 64, offset: 2816)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1159, file: !126, line: 870, baseType: !51, size: 64, offset: 2880)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1159, file: !126, line: 870, baseType: !51, size: 64, offset: 2944)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1159, file: !126, line: 871, baseType: !51, size: 64, offset: 3008)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1159, file: !126, line: 871, baseType: !51, size: 64, offset: 3072)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1159, file: !126, line: 871, baseType: !51, size: 64, offset: 3136)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1159, file: !126, line: 871, baseType: !51, size: 64, offset: 3200)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1159, file: !126, line: 873, baseType: !1243, size: 3328, offset: 3264)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 52)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1159, file: !126, line: 875, baseType: !1247, size: 1280, offset: 6592)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1248, size: 1280, elements: !835)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1249, line: 22, size: 320, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !1249, line: 23, baseType: !737, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1248, file: !1249, line: 24, baseType: !734, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1248, file: !1249, line: 26, baseType: !109, size: 128, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1248, file: !1249, line: 28, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1159, file: !126, line: 877, baseType: !1259, size: 64, offset: 7872)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1159, file: !126, line: 880, baseType: !1262, size: 1088, offset: 7936)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1263, line: 72, baseType: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1263, line: 23, size: 1088, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1273, !1274, !1275, !1276, !1303, !1304, !1305}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1264, file: !1263, line: 28, baseType: !301, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1264, file: !1263, line: 38, baseType: !730, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1264, file: !1263, line: 40, baseType: !51, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1264, file: !1263, line: 43, baseType: !1210, size: 320, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1264, file: !1263, line: 44, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1263, line: 44, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1263, line: 48, baseType: !51, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1264, file: !1263, line: 59, baseType: !724, size: 256, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1264, file: !1263, line: 60, baseType: !32, size: 64, offset: 896)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1264, file: !1263, line: 61, baseType: !1277, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1280, line: 13, size: 1216, elements: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1279, file: !1280, line: 14, baseType: !32, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1279, file: !1280, line: 15, baseType: !51, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1279, file: !1280, line: 17, baseType: !51, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1279, file: !1280, line: 17, baseType: !51, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1279, file: !1280, line: 18, baseType: !51, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1279, file: !1280, line: 18, baseType: !51, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1279, file: !1280, line: 19, baseType: !1289, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1279, file: !1280, line: 21, baseType: !413, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1279, file: !1280, line: 23, baseType: !413, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1279, file: !1280, line: 24, baseType: !413, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1279, file: !1280, line: 25, baseType: !413, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1279, file: !1280, line: 26, baseType: !413, size: 64, offset: 704)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1279, file: !1280, line: 27, baseType: !413, size: 64, offset: 768)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1279, file: !1280, line: 28, baseType: !413, size: 64, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1279, file: !1280, line: 29, baseType: !413, size: 64, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1279, file: !1280, line: 30, baseType: !413, size: 64, offset: 960)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1279, file: !1280, line: 31, baseType: !413, size: 64, offset: 1024)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1279, file: !1280, line: 32, baseType: !413, size: 64, offset: 1088)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1279, file: !1280, line: 33, baseType: !413, size: 64, offset: 1152)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1264, file: !1263, line: 63, baseType: !61, size: 32, offset: 1024)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1264, file: !1263, line: 69, baseType: !105, size: 16, offset: 1056)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1264, file: !1263, line: 70, baseType: !1306, size: 16, offset: 1072)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !1308)
!1308 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1159, file: !126, line: 882, baseType: !51, size: 64, offset: 9024)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1159, file: !126, line: 885, baseType: !71, size: 32, offset: 9088)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1159, file: !126, line: 886, baseType: !1312, size: 64, offset: 9152)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1159, file: !126, line: 901, baseType: !1315, size: 64, offset: 9216)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1317, line: 68, size: 4800, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1318 = !{!1319, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1358, !1359, !1362, !1363, !1473, !1474, !1486, !1556, !1557, !1571, !1573}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1316, file: !1317, line: 69, baseType: !1320, size: 576)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1317, line: 23, size: 576, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1320, file: !1317, line: 24, baseType: !521, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1317, line: 25, baseType: !1324, size: 512, offset: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !1317, line: 25, size: 512, elements: !1325)
!1325 = !{!1326, !1335}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1324, file: !1317, line: 26, baseType: !1327, size: 480)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 480, elements: !1333)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1317, line: 17, size: 96, elements: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1328, file: !1317, line: 18, baseType: !521, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1328, file: !1317, line: 19, baseType: !521, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !1317, line: 20, baseType: !521, size: 32, offset: 64)
!1333 = !{!1334}
!1334 = !DISubrange(count: 5)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1317, line: 27, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !1317, line: 27, size: 128, elements: !1337)
!1337 = !{!1338, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1336, file: !1317, line: 28, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1336, file: !1317, line: 29, baseType: !1339, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1316, file: !1317, line: 70, baseType: !1320, size: 576, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1316, file: !1317, line: 71, baseType: !1320, size: 576, offset: 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1316, file: !1317, line: 72, baseType: !1315, size: 64, offset: 1728)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1316, file: !1317, line: 73, baseType: !34, size: 32, offset: 1792)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1316, file: !1317, line: 74, baseType: !458, size: 32, offset: 1824)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1316, file: !1317, line: 75, baseType: !467, size: 32, offset: 1856)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1316, file: !1317, line: 76, baseType: !1348, size: 192, offset: 1920)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1349, line: 9, size: 192, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1350 = !{!1351, !1352, !1356, !1357}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1348, file: !1349, line: 10, baseType: !728, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1348, file: !1349, line: 11, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1349, line: 7, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1348, file: !1349, line: 12, baseType: !7, size: 32, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1348, file: !1349, line: 13, baseType: !826, size: 32, offset: 160)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !1317, line: 77, baseType: !51, size: 64, offset: 2112)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1316, file: !1317, line: 80, baseType: !1360, size: 8, offset: 2176)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !1361)
!1361 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1316, file: !1317, line: 88, baseType: !109, size: 128, offset: 2240)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1316, file: !1317, line: 89, baseType: !1364, size: 64, offset: 2368)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1366, line: 195, size: 1728, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1367 = !{!1368, !1369, !1372, !1377, !1378, !1381, !1382, !1389, !1390, !1391, !1392, !1395, !1396, !1397, !1398, !1399, !1437, !1458}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1365, file: !1366, line: 196, baseType: !826, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1365, file: !1366, line: 197, baseType: !1370, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1366, line: 28, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !1256)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1366, line: 198, baseType: !1373, size: 192, offset: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !1366, line: 198, size: 192, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1373, file: !1366, line: 199, baseType: !109, size: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1373, file: !1366, line: 200, baseType: !293, size: 192, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1365, file: !1366, line: 205, baseType: !1210, size: 320, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1365, file: !1366, line: 206, baseType: !1379, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1366, line: 206, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1365, file: !1366, line: 207, baseType: !32, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1366, line: 208, baseType: !1383, size: 64, offset: 704)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !1366, line: 208, size: 64, elements: !1384)
!1384 = !{!1385, !1388}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1383, file: !1366, line: 209, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1387, line: 8, baseType: !735)
!1387 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1383, file: !1366, line: 210, baseType: !1386, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1365, file: !1366, line: 212, baseType: !1386, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1365, file: !1366, line: 213, baseType: !458, size: 32, offset: 832)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1365, file: !1366, line: 214, baseType: !467, size: 32, offset: 864)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1365, file: !1366, line: 215, baseType: !1393, size: 32, offset: 896)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1366, line: 31, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !521)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1365, file: !1366, line: 216, baseType: !38, size: 16, offset: 928)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1365, file: !1366, line: 217, baseType: !38, size: 16, offset: 944)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1365, file: !1366, line: 221, baseType: !1308, size: 16, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1365, file: !1366, line: 228, baseType: !51, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1366, line: 245, baseType: !1400, size: 320, offset: 1088)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !1366, line: 245, size: 320, elements: !1401)
!1401 = !{!1402, !1429}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1400, file: !1366, line: 246, baseType: !1403, size: 320)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1366, line: 114, size: 320, elements: !1404)
!1404 = !{!1405, !1406, !1418, !1421, !1428}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1403, file: !1366, line: 116, baseType: !51, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1366, line: 117, baseType: !1407, size: 64, offset: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !1366, line: 117, size: 64, elements: !1408)
!1408 = !{!1409, !1417}
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !1366, line: 118, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1407, file: !1366, line: 118, size: 64, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1410, file: !1366, line: 120, baseType: !105, size: 16)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1410, file: !1366, line: 121, baseType: !1414, size: 48, offset: 16)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 6)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1407, file: !1366, line: 127, baseType: !51, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !1366, line: 129, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1366, line: 102, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1403, file: !1366, line: 130, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1366, line: 108, size: 192, elements: !1424)
!1424 = !{!1425, !1426, !1427}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1423, file: !1366, line: 109, baseType: !781, size: 128, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1423, file: !1366, line: 110, baseType: !826, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1423, file: !1366, line: 111, baseType: !1360, size: 8, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1403, file: !1366, line: 131, baseType: !28, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1366, line: 247, baseType: !1430, size: 320)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1366, line: 247, size: 320, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1430, file: !1366, line: 248, baseType: !51, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1430, file: !1366, line: 249, baseType: !51, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1430, file: !1366, line: 250, baseType: !1419, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1430, file: !1366, line: 251, baseType: !1422, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1430, file: !1366, line: 252, baseType: !378, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1366, line: 260, baseType: !1438, size: 256, offset: 1408)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !1366, line: 260, size: 256, elements: !1439)
!1439 = !{!1440, !1446}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1438, file: !1366, line: 261, baseType: !1441, size: 256)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1366, line: 134, size: 256, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1441, file: !1366, line: 135, baseType: !32, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1441, file: !1366, line: 136, baseType: !1445, size: 256)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !835)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1366, line: 262, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1438, file: !1366, line: 262, size: 256, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1447, file: !1366, line: 264, baseType: !109, size: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1447, file: !1366, line: 265, baseType: !1451, size: 128, offset: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1452, line: 22, size: 128, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1453 = !{!1454, !1457}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1451, file: !1452, line: 23, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1452, line: 23, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1451, file: !1452, line: 24, baseType: !51, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1365, file: !1366, line: 280, baseType: !1459, size: 64, offset: 1664)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1366, line: 176, size: 192, elements: !1461)
!1461 = !{!1462, !1471, !1472}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1460, file: !1366, line: 177, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1366, line: 171, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!34, !1364, !1467, !1469, !1364}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1460, file: !1366, line: 178, baseType: !1364, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1460, file: !1366, line: 179, baseType: !1419, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1316, file: !1317, line: 90, baseType: !1210, size: 320, offset: 2432)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1316, file: !1317, line: 97, baseType: !1475, size: 256, offset: 2752)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1476, line: 98, size: 256, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1475, file: !1476, line: 99, baseType: !728, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1475, file: !1476, line: 100, baseType: !109, size: 128, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1475, file: !1476, line: 101, baseType: !1481, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1476, line: 21, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1316, file: !1317, line: 99, baseType: !1487, size: 768, offset: 3008)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !1488)
!1488 = !{!1489, !1494}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1487, file: !24, line: 200, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!34, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1487, file: !24, line: 201, baseType: !1495, size: 704, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !1496)
!1496 = !{!1497, !1555}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1495, file: !24, line: 195, baseType: !1498, size: 640)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !1499)
!1499 = !{!1500, !1512, !1524, !1525, !1545, !1546, !1548, !1554}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !24, line: 174, baseType: !1501, size: 192)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !24, line: 174, size: 192, elements: !1502)
!1502 = !{!1503, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !24, line: 175, baseType: !1504, size: 192)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !24, line: 175, size: 192, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1504, file: !24, line: 176, baseType: !45, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1504, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1504, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1504, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1504, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !24, line: 182, baseType: !781, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1498, file: !24, line: 184, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1515, line: 26, size: 256, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1514, file: !1515, line: 27, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1514, file: !1515, line: 28, baseType: !1519, size: 192, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1520, line: 43, size: 192, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1520, line: 44, baseType: !737, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1519, file: !1520, line: 45, baseType: !109, size: 128, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1498, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1498, file: !24, line: 186, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !1528)
!1528 = !{!1529, !1530, !1534, !1541}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1527, file: !24, line: 205, baseType: !1487, size: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1527, file: !24, line: 206, baseType: !1531, size: 64, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1493, !1526}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1527, file: !24, line: 207, baseType: !1535, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1527, file: !24, line: 209, baseType: !1542, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!34, !1538, !45}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1498, file: !24, line: 187, baseType: !1493, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1498, file: !24, line: 188, baseType: !1547, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1498, file: !24, line: 189, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1550, file: !24, line: 158, baseType: !293, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1550, file: !24, line: 159, baseType: !1538, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1498, file: !24, line: 190, baseType: !637, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1495, file: !24, line: 196, baseType: !1041, size: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1316, file: !1317, line: 100, baseType: !1538, size: 64, offset: 3776)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1316, file: !1317, line: 102, baseType: !1558, size: 64, offset: 3840)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1317, line: 107, size: 1152, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1569}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1559, file: !1317, line: 108, baseType: !306, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1559, file: !1317, line: 109, baseType: !1315, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1559, file: !1317, line: 110, baseType: !458, size: 32, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1559, file: !1317, line: 111, baseType: !61, size: 32, offset: 224)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1559, file: !1317, line: 112, baseType: !1566, size: 640, offset: 256)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 640, elements: !1567)
!1567 = !{!1568}
!1568 = !DISubrange(count: 10)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1559, file: !1317, line: 113, baseType: !1570, size: 256, offset: 896)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !835)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1316, file: !1317, line: 103, baseType: !1572, size: 640, offset: 3904)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 640, elements: !1567)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1316, file: !1317, line: 104, baseType: !1574, size: 256, offset: 4544)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 256, elements: !835)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1159, file: !126, line: 904, baseType: !1182, size: 64, offset: 9280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1159, file: !126, line: 906, baseType: !1577, size: 64, offset: 9344)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1159, file: !126, line: 930, baseType: !61, size: 32, offset: 9408)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1159, file: !126, line: 933, baseType: !61, size: 32, offset: 9440)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1159, file: !126, line: 935, baseType: !1582, size: 64, offset: 9472)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1582, file: !150, line: 104, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1159, file: !126, line: 940, baseType: !728, size: 64, offset: 9536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1159, file: !126, line: 942, baseType: !1475, size: 256, offset: 9600)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1156, file: !126, line: 986, baseType: !1590, offset: 10240)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: -1)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !868, file: !869, line: 882, baseType: !1155, size: 64, offset: 9792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !868, file: !869, line: 884, baseType: !34, size: 32, offset: 9856)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !868, file: !869, line: 885, baseType: !34, size: 32, offset: 9888)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !868, file: !869, line: 886, baseType: !34, size: 32, offset: 9920)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !868, file: !869, line: 888, baseType: !34, size: 32, offset: 9952)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !868, file: !869, line: 890, baseType: !51, size: 64, offset: 9984)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !868, file: !869, line: 893, baseType: !7, size: 32, offset: 10048)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !868, file: !869, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !868, file: !869, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !868, file: !869, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !868, file: !869, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !868, file: !869, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !868, file: !869, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !868, file: !869, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !868, file: !869, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !868, file: !869, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !868, file: !869, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !868, file: !869, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !868, file: !869, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !868, file: !869, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !868, file: !869, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !868, file: !869, line: 969, baseType: !51, size: 64, offset: 10176)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !868, file: !869, line: 971, baseType: !1616, size: 448, offset: 10240)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !120, line: 25, size: 448, elements: !1617)
!1617 = !{!1618, !1619, !1624}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1616, file: !120, line: 26, baseType: !51, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1616, file: !120, line: 27, baseType: !1620, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!413, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !120, line: 28, baseType: !1625, size: 320, offset: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !120, line: 28, size: 320, elements: !1626)
!1626 = !{!1627, !1637, !1662}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1625, file: !120, line: 37, baseType: !1628, size: 320)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !120, line: 30, size: 320, elements: !1629)
!1629 = !{!1630, !1632, !1633, !1634, !1635, !1636}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1628, file: !120, line: 31, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1628, file: !120, line: 32, baseType: !521, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !120, line: 33, baseType: !521, size: 32, offset: 96)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1628, file: !120, line: 34, baseType: !521, size: 32, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1628, file: !120, line: 35, baseType: !301, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1628, file: !120, line: 36, baseType: !1631, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1625, file: !120, line: 47, baseType: !1638, size: 192)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !120, line: 39, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1661}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1638, file: !120, line: 40, baseType: !1026, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1638, file: !120, line: 41, baseType: !119, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !120, line: 42, baseType: !1643, size: 64, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !120, line: 42, size: 64, elements: !1644)
!1644 = !{!1645, !1653}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1643, file: !120, line: 43, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1648, line: 7, size: 128, elements: !1649)
!1648 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1649 = !{!1650, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1647, file: !1648, line: 8, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1647, file: !1648, line: 9, baseType: !55, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1643, file: !120, line: 44, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1656, line: 7, size: 64, elements: !1657)
!1656 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1657 = !{!1658, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1655, file: !1656, line: 8, baseType: !1659, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1656, line: 5, baseType: !1256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1655, file: !1656, line: 9, baseType: !1256, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1638, file: !120, line: 46, baseType: !301, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1625, file: !120, line: 55, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !120, line: 49, size: 256, elements: !1664)
!1664 = !{!1665, !1668, !1669, !1670, !1671}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1663, file: !120, line: 50, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !120, line: 14, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1663, file: !120, line: 51, baseType: !34, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1663, file: !120, line: 52, baseType: !34, size: 32, offset: 96)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1663, file: !120, line: 53, baseType: !51, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1663, file: !120, line: 54, baseType: !51, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !868, file: !869, line: 973, baseType: !1673, size: 32, offset: 10688)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !868, file: !869, line: 974, baseType: !1673, size: 32, offset: 10720)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !868, file: !869, line: 978, baseType: !51, size: 64, offset: 10752)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !868, file: !869, line: 987, baseType: !867, size: 64, offset: 10816)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !868, file: !869, line: 990, baseType: !867, size: 64, offset: 10880)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !868, file: !869, line: 995, baseType: !109, size: 128, offset: 10944)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !868, file: !869, line: 996, baseType: !109, size: 128, offset: 11072)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !868, file: !869, line: 997, baseType: !867, size: 64, offset: 11200)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !868, file: !869, line: 1005, baseType: !109, size: 128, offset: 11264)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !868, file: !869, line: 1006, baseType: !109, size: 128, offset: 11392)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !868, file: !869, line: 1009, baseType: !822, size: 64, offset: 11520)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !868, file: !869, line: 1010, baseType: !1686, size: 512, offset: 11584)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 512, elements: !835)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !868, file: !869, line: 1011, baseType: !109, size: 128, offset: 12096)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !868, file: !869, line: 1012, baseType: !109, size: 128, offset: 12224)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !868, file: !869, line: 1014, baseType: !1513, size: 64, offset: 12352)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !868, file: !869, line: 1017, baseType: !706, size: 64, offset: 12416)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !868, file: !869, line: 1020, baseType: !706, size: 64, offset: 12480)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !868, file: !869, line: 1023, baseType: !32, size: 64, offset: 12544)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !868, file: !869, line: 1025, baseType: !301, size: 64, offset: 12608)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !868, file: !869, line: 1026, baseType: !301, size: 64, offset: 12672)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !868, file: !869, line: 1031, baseType: !301, size: 64, offset: 12736)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !868, file: !869, line: 1032, baseType: !1697, size: 192, offset: 12800)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !869, line: 324, size: 192, elements: !1698)
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1697, file: !869, line: 326, baseType: !301, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1697, file: !869, line: 327, baseType: !301, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !869, line: 328, baseType: !737, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !868, file: !869, line: 1041, baseType: !51, size: 64, offset: 12992)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !868, file: !869, line: 1042, baseType: !51, size: 64, offset: 13056)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !868, file: !869, line: 1045, baseType: !301, size: 64, offset: 13120)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !868, file: !869, line: 1048, baseType: !301, size: 64, offset: 13184)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !868, file: !869, line: 1051, baseType: !51, size: 64, offset: 13248)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !868, file: !869, line: 1052, baseType: !51, size: 64, offset: 13312)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !868, file: !869, line: 1055, baseType: !1709, size: 640, offset: 13376)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1710, line: 132, size: 640, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1711 = !{!1712, !1718, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1709, file: !1710, line: 133, baseType: !1713, size: 576)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1714, size: 576, elements: !379)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1710, line: 117, size: 192, elements: !1715)
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1714, file: !1710, line: 118, baseType: !301, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1714, file: !1710, line: 119, baseType: !1035, size: 128, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1709, file: !1710, line: 134, baseType: !7, size: 32, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1709, file: !1710, line: 135, baseType: !7, size: 32, offset: 608)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !868, file: !869, line: 1058, baseType: !1721, size: 448, offset: 14016)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1710, line: 144, size: 448, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1721, file: !1710, line: 145, baseType: !781, size: 128, align: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1721, file: !1710, line: 146, baseType: !724, size: 256, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1721, file: !1710, line: 147, baseType: !7, size: 32, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !868, file: !869, line: 1064, baseType: !1727, size: 64, offset: 14464)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1730, line: 110, size: 1472, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1781, !1782, !1783, !1791}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1730, line: 111, baseType: !728, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1730, line: 112, baseType: !458, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1729, file: !1730, line: 113, baseType: !467, size: 32, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1729, file: !1730, line: 114, baseType: !458, size: 32, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1729, file: !1730, line: 115, baseType: !467, size: 32, offset: 160)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1729, file: !1730, line: 116, baseType: !458, size: 32, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1729, file: !1730, line: 117, baseType: !467, size: 32, offset: 224)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1729, file: !1730, line: 118, baseType: !458, size: 32, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1729, file: !1730, line: 119, baseType: !467, size: 32, offset: 288)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1729, file: !1730, line: 120, baseType: !7, size: 32, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1729, file: !1730, line: 121, baseType: !1743, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1744, line: 24, baseType: !1745)
!1744 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1744, line: 24, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1745, file: !1744, line: 24, baseType: !301, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1729, file: !1730, line: 122, baseType: !1743, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1729, file: !1730, line: 123, baseType: !1743, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1729, file: !1730, line: 124, baseType: !1743, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1729, file: !1730, line: 125, baseType: !1743, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1729, file: !1730, line: 127, baseType: !99, size: 8, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1729, file: !1730, line: 129, baseType: !1364, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1729, file: !1730, line: 130, baseType: !1364, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1729, file: !1730, line: 131, baseType: !1364, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1729, file: !1730, line: 132, baseType: !1364, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1729, file: !1730, line: 135, baseType: !32, size: 64, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1729, file: !1730, line: 137, baseType: !1759, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1761, line: 14, size: 1088, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1760, file: !1761, line: 15, baseType: !826, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1760, file: !1761, line: 17, baseType: !1248, size: 320, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1760, file: !1761, line: 19, baseType: !51, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1760, file: !1761, line: 20, baseType: !728, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1760, file: !1761, line: 23, baseType: !306, size: 128, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1760, file: !1761, line: 24, baseType: !458, size: 32, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1760, file: !1761, line: 29, baseType: !728, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1760, file: !1761, line: 36, baseType: !1771, size: 320, offset: 768)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1772, line: 15, size: 320, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !1772, line: 16, baseType: !737, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1771, file: !1772, line: 18, baseType: !34, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1771, file: !1772, line: 19, baseType: !34, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1771, file: !1772, line: 20, baseType: !34, size: 32, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1771, file: !1772, line: 21, baseType: !34, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1771, file: !1772, line: 22, baseType: !51, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 23, baseType: !51, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1729, file: !1730, line: 138, baseType: !1315, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1729, file: !1730, line: 139, baseType: !1558, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1729, file: !1730, line: 140, baseType: !1784, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1730, line: 25, size: 64, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1785, file: !1730, line: 26, baseType: !61, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1785, file: !1730, line: 27, baseType: !34, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1785, file: !1730, line: 28, baseType: !1790, offset: 64)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, elements: !1591)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 142, baseType: !1792, size: 128, offset: 1344)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 142, size: 128, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1792, file: !1730, line: 143, baseType: !34, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1792, file: !1730, line: 144, baseType: !781, size: 128, align: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !868, file: !869, line: 1067, baseType: !1727, size: 64, offset: 14528)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !868, file: !869, line: 1070, baseType: !1727, size: 64, offset: 14592)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !868, file: !869, line: 1074, baseType: !1364, size: 64, offset: 14656)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !868, file: !869, line: 1084, baseType: !1800, size: 128, offset: 14720)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 16)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !868, file: !869, line: 1086, baseType: !1804, size: 64, offset: 14848)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !869, line: 55, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !868, file: !869, line: 1089, baseType: !1807, size: 64, offset: 14912)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1808, line: 12, size: 64, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1807, file: !1808, line: 13, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1808, line: 8, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !868, file: !869, line: 1090, baseType: !1814, size: 128, offset: 14976)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1815, line: 13, size: 128, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1814, file: !1815, line: 14, baseType: !109, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !868, file: !869, line: 1097, baseType: !1819, size: 64, offset: 15104)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !869, line: 50, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !868, file: !869, line: 1100, baseType: !1822, size: 64, offset: 15168)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !869, line: 1100, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !868, file: !869, line: 1103, baseType: !1825, size: 64, offset: 15232)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !869, line: 53, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !868, file: !869, line: 1107, baseType: !1828, size: 64, offset: 15296)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1830, line: 31, size: 576, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1831 = !{!1832, !1833, !1836, !1839, !1842, !1843, !1846, !1849, !1850}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1829, file: !1830, line: 32, baseType: !826, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1829, file: !1830, line: 33, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1830, line: 9, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1829, file: !1830, line: 34, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1830, line: 10, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1829, file: !1830, line: 35, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1830, line: 8, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1829, file: !1830, line: 36, baseType: !846, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1829, file: !1830, line: 37, baseType: !1844, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1366, line: 34, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1829, file: !1830, line: 38, baseType: !1847, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1830, line: 38, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1829, file: !1830, line: 39, baseType: !1847, size: 64, offset: 448)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1829, file: !1830, line: 40, baseType: !1851, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1853, line: 771, size: 384, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1852, file: !1853, line: 772, baseType: !1348, size: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1852, file: !1853, line: 773, baseType: !1315, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1852, file: !1853, line: 774, baseType: !1558, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1852, file: !1853, line: 775, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1861, line: 209, size: 4736, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1862 = !{!1863, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1860, file: !1861, line: 215, baseType: !1864, size: 896)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, size: 896, elements: !2314)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1861, line: 152, size: 1600, elements: !1867)
!1867 = !{!1868, !2365, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2488}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1866, file: !1861, line: 154, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1861, line: 389, size: 7872, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !2265, !2282, !2283, !2287, !2288, !2289, !2290, !2291, !2292, !2311, !2312, !2316, !2317, !2318, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2352, !2355, !2356, !2363}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1870, file: !1861, line: 391, baseType: !1866, size: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1861, line: 393, baseType: !51, size: 64, offset: 1600)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1870, file: !1861, line: 401, baseType: !34, size: 32, offset: 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1870, file: !1861, line: 404, baseType: !34, size: 32, offset: 1696)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1870, file: !1861, line: 417, baseType: !34, size: 32, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1870, file: !1861, line: 418, baseType: !34, size: 32, offset: 1760)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1870, file: !1861, line: 419, baseType: !34, size: 32, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1870, file: !1861, line: 432, baseType: !34, size: 32, offset: 1824)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1870, file: !1861, line: 433, baseType: !34, size: 32, offset: 1856)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1870, file: !1861, line: 434, baseType: !34, size: 32, offset: 1888)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1870, file: !1861, line: 436, baseType: !34, size: 32, offset: 1920)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1870, file: !1861, line: 439, baseType: !7, size: 32, offset: 1952)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1870, file: !1861, line: 441, baseType: !1885, size: 64, offset: 1984)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1887, line: 190, size: 1152, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !2257, !2258, !2259, !2260, !2261, !2264}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1886, file: !1887, line: 191, baseType: !61, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1886, file: !1887, line: 192, baseType: !61, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1886, file: !1887, line: 202, baseType: !1885, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1886, file: !1887, line: 203, baseType: !28, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1886, file: !1887, line: 205, baseType: !293, size: 192, align: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1886, file: !1887, line: 207, baseType: !1289, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1886, file: !1887, line: 208, baseType: !7, size: 32, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1887, line: 209, baseType: !1897, size: 256, offset: 512)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !1887, line: 209, size: 256, elements: !1898)
!1898 = !{!1899, !1908, !1912}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1897, file: !1887, line: 210, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1887, line: 153, size: 256, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1907}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1900, file: !1887, line: 154, baseType: !51, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1900, file: !1887, line: 156, baseType: !1041, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1900, file: !1887, line: 162, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1887, line: 162, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1900, file: !1887, line: 167, baseType: !51, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1897, file: !1887, line: 211, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1887, line: 170, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1909, file: !1887, line: 171, baseType: !1885, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1897, file: !1887, line: 212, baseType: !1913, size: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1887, line: 174, size: 256, elements: !1914)
!1914 = !{!1915, !2252, !2255, !2256}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1913, file: !1887, line: 175, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1887, line: 271, size: 768, elements: !1919)
!1919 = !{!1920, !2225, !2229, !2230, !2231, !2232, !2233, !2237, !2238, !2239, !2240, !2248}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1918, file: !1887, line: 276, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!34, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1887, line: 251, size: 1216, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1925, file: !1887, line: 253, baseType: !1885, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1925, file: !1887, line: 254, baseType: !1182, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1925, file: !1887, line: 255, baseType: !712, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1925, file: !1887, line: 256, baseType: !32, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1925, file: !1887, line: 259, baseType: !724, size: 256, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1925, file: !1887, line: 260, baseType: !724, size: 256, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1925, file: !1887, line: 261, baseType: !34, size: 32, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1925, file: !1887, line: 262, baseType: !109, size: 128, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1925, file: !1887, line: 263, baseType: !378, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1925, file: !1887, line: 265, baseType: !47, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1925, file: !1887, line: 266, baseType: !1360, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1925, file: !1887, line: 267, baseType: !1360, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1925, file: !1887, line: 268, baseType: !1940, size: 64, offset: 1152)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1943, line: 563, size: 1024, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1944 = !{!1945, !2001, !2002, !2006, !2010, !2014, !2191, !2195, !2199, !2203, !2204, !2205, !2209, !2213, !2217, !2221}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1942, file: !1943, line: 564, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !1951)
!1951 = !{!1952, !1961, !1962, !1968, !1975, !1976, !1981, !1982, !1987, !1988, !1991, !1992, !1993, !1994, !1995, !1996, !1999}
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !126, line: 628, baseType: !1953, size: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !126, line: 628, size: 128, elements: !1954)
!1954 = !{!1955, !1960}
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1953, file: !126, line: 629, baseType: !1956, size: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !126, line: 629, size: 128, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1956, file: !126, line: 631, baseType: !51, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1956, file: !126, line: 632, baseType: !51, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1953, file: !126, line: 635, baseType: !781, size: 128, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1950, file: !126, line: 639, baseType: !1155, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1950, file: !126, line: 640, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1191, line: 297, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1191, line: 297, size: 64, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1964, file: !1191, line: 297, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1196, line: 19, baseType: !51)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !126, line: 646, baseType: !1969, size: 64, offset: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !126, line: 646, size: 64, elements: !1970)
!1970 = !{!1971, !1974}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1969, file: !126, line: 647, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !51)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1969, file: !126, line: 648, baseType: !1973, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1950, file: !126, line: 666, baseType: !34, size: 32, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1950, file: !126, line: 667, baseType: !1977, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !126, line: 580, baseType: !1210, size: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1950, file: !126, line: 670, baseType: !1360, size: 8, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1950, file: !126, line: 681, baseType: !1983, size: 256, offset: 512)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !126, line: 678, size: 256, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1983, file: !126, line: 679, baseType: !293, size: 192, align: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1983, file: !126, line: 680, baseType: !51, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1950, file: !126, line: 689, baseType: !109, size: 128, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1950, file: !126, line: 691, baseType: !1989, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1950, file: !126, line: 694, baseType: !1940, size: 64, offset: 960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1950, file: !126, line: 697, baseType: !51, size: 64, offset: 1024)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1950, file: !126, line: 699, baseType: !1182, size: 64, offset: 1088)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1950, file: !126, line: 700, baseType: !32, size: 64, offset: 1152)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1950, file: !126, line: 711, baseType: !728, size: 64, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1950, file: !126, line: 717, baseType: !1997, size: 64, offset: 1280)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !869, line: 54, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1950, file: !126, line: 722, baseType: !2000, offset: 1344)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !643)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1942, file: !1943, line: 569, baseType: !1946, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1942, file: !1943, line: 571, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!34, !1949, !51}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1942, file: !1943, line: 572, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!34, !1949}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1942, file: !1943, line: 578, baseType: !2011, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!34, !1949, !51, !51, !51}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1942, file: !1943, line: 580, baseType: !2015, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1943, line: 512, size: 896, elements: !2021)
!2021 = !{!2022, !2030, !2031, !2038, !2045, !2055, !2184, !2185, !2187, !2189}
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !1943, line: 513, baseType: !2023, size: 320)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1943, line: 513, size: 320, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2023, file: !1943, line: 514, baseType: !1949, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2023, file: !1943, line: 515, baseType: !860, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2023, file: !1943, line: 516, baseType: !51, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2023, file: !1943, line: 517, baseType: !51, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2023, file: !1943, line: 518, baseType: !51, size: 64, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !1943, line: 520, baseType: !125, size: 32, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2020, file: !1943, line: 522, baseType: !2032, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1196, line: 22, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 22, size: 64, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2034, file: !1196, line: 22, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1196, line: 15, baseType: !51)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2020, file: !1943, line: 524, baseType: !2039, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1191, line: 372, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1191, line: 372, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2041, file: !1191, line: 372, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1196, line: 16, baseType: !51)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !1943, line: 527, baseType: !2046, size: 64, offset: 512)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !1943, line: 527, size: 64, elements: !2047)
!2047 = !{!2048, !2054}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2046, file: !1943, line: 528, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1196, line: 21, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 21, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2050, file: !1196, line: 21, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1196, line: 14, baseType: !51)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2046, file: !1943, line: 529, baseType: !2033, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2020, file: !1943, line: 534, baseType: !2056, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !2058)
!2058 = !{!2059, !2060, !2178, !2183}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !126, line: 75, baseType: !51, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !126, line: 83, baseType: !2061, size: 320, offset: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !126, line: 83, size: 320, elements: !2062)
!2062 = !{!2063, !2084, !2098, !2102, !2177}
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !126, line: 84, baseType: !2064, size: 320)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !126, line: 84, size: 320, elements: !2065)
!2065 = !{!2066, !2077, !2078, !2083}
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !126, line: 90, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !126, line: 90, size: 128, elements: !2068)
!2068 = !{!2069, !2070, !2075, !2076}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2067, file: !126, line: 91, baseType: !109, size: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !126, line: 94, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !126, line: 94, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2071, file: !126, line: 96, baseType: !32, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2071, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2067, file: !126, line: 102, baseType: !109, size: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2067, file: !126, line: 103, baseType: !109, size: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2064, file: !126, line: 106, baseType: !448, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !126, line: 107, baseType: !2079, size: 64, offset: 192)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !126, line: 107, size: 64, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2079, file: !126, line: 108, baseType: !51, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2079, file: !126, line: 109, baseType: !51, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2064, file: !126, line: 117, baseType: !51, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !126, line: 119, baseType: !2085, size: 320)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !126, line: 119, size: 320, elements: !2086)
!2086 = !{!2087, !2088, !2091, !2092, !2093}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2085, file: !126, line: 124, baseType: !51, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2085, file: !126, line: 125, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2085, file: !126, line: 126, baseType: !51, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2085, file: !126, line: 127, baseType: !51, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !126, line: 128, baseType: !2094, size: 64, offset: 256)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2085, file: !126, line: 128, size: 64, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2094, file: !126, line: 133, baseType: !51, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2094, file: !126, line: 138, baseType: !728, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !126, line: 141, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !126, line: 141, size: 64, elements: !2100)
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2099, file: !126, line: 142, baseType: !51, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !126, line: 144, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !126, line: 144, size: 128, elements: !2104)
!2104 = !{!2105, !2176}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2103, file: !126, line: 146, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !2108)
!2108 = !{!2109, !2119, !2140, !2141, !2142, !2143, !2144, !2158, !2159, !2160}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2107, file: !142, line: 127, baseType: !2110, size: 384)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !2111)
!2111 = !{!2112, !2113, !2115, !2116, !2117, !2118}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2110, file: !142, line: 22, baseType: !51, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2110, file: !142, line: 23, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2110, file: !142, line: 24, baseType: !2114, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2110, file: !142, line: 25, baseType: !51, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2110, file: !142, line: 26, baseType: !51, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2110, file: !142, line: 27, baseType: !51, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2107, file: !142, line: 128, baseType: !2120, size: 128, offset: 384)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2121, line: 105, size: 128, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2120, file: !2121, line: 110, baseType: !51, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2120, file: !2121, line: 118, baseType: !2125, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2121, line: 95, size: 448, elements: !2127)
!2127 = !{!2128, !2129, !2135, !2136, !2137, !2138, !2139}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2126, file: !2121, line: 96, baseType: !728, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2126, file: !2121, line: 97, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2121, line: 60, baseType: !2132)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2126, file: !2121, line: 98, baseType: !2130, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2126, file: !2121, line: 99, baseType: !1360, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2126, file: !2121, line: 100, baseType: !1360, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2126, file: !2121, line: 101, baseType: !781, size: 128, align: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2126, file: !2121, line: 102, baseType: !2134, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2107, file: !142, line: 129, baseType: !1514, size: 256, offset: 512)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2107, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2107, file: !142, line: 132, baseType: !51, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2107, file: !142, line: 133, baseType: !2145, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !2148)
!2148 = !{!2149, !2153, !2154}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2147, file: !142, line: 83, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !2056}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2147, file: !142, line: 89, baseType: !2015, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2147, file: !142, line: 100, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!34, !2106, !51, !51, !34}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2107, file: !142, line: 134, baseType: !32, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2107, file: !142, line: 135, baseType: !34, size: 32, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !142, line: 136, baseType: !2161, size: 128, offset: 1088)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !142, line: 136, size: 128, elements: !2162)
!2162 = !{!2163, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2161, file: !142, line: 137, baseType: !2164, size: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2165, line: 6, size: 128, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2164, file: !2165, line: 7, baseType: !301, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2164, file: !2165, line: 8, baseType: !301, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !142, line: 138, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !142, line: 138, elements: !2171)
!2171 = !{!2172, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2170, file: !142, line: 138, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2170, file: !142, line: 138, elements: !643)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2170, file: !142, line: 138, baseType: !2175)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, elements: !1591)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2103, file: !126, line: 147, baseType: !32, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2061, file: !126, line: 161, baseType: !781, size: 128, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !126, line: 164, baseType: !2179, size: 32, offset: 384)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !126, line: 164, size: 32, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2179, file: !126, line: 169, baseType: !61, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2179, file: !126, line: 177, baseType: !7, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2057, file: !126, line: 181, baseType: !61, size: 32, offset: 416)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2020, file: !1943, line: 535, baseType: !2056, size: 64, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2020, file: !1943, line: 541, baseType: !2186, size: 64, offset: 704)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2020, file: !1943, line: 545, baseType: !2188, size: 64, offset: 768)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2020, file: !1943, line: 549, baseType: !2190, size: 64, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1191, line: 520, baseType: !2056)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1942, file: !1943, line: 581, baseType: !2192, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!2018, !2019, !7}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1942, file: !1943, line: 582, baseType: !2196, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2018, !2019, !51, !51}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1942, file: !1943, line: 584, baseType: !2200, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!51, !1949}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1942, file: !1943, line: 588, baseType: !2015, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1942, file: !1943, line: 591, baseType: !2015, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1942, file: !1943, line: 597, baseType: !2206, size: 64, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!34, !1949, !51, !32, !34, !34}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1942, file: !1943, line: 603, baseType: !2210, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!28, !1949}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1942, file: !1943, line: 613, baseType: !2214, size: 64, offset: 832)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!34, !1949, !1997}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1942, file: !1943, line: 625, baseType: !2218, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!1997, !1949, !51}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1942, file: !1943, line: 633, baseType: !2222, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2056, !1949, !51}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1918, file: !1887, line: 277, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !1924}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1918, file: !1887, line: 290, baseType: !762, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1918, file: !1887, line: 292, baseType: !750, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1918, file: !1887, line: 293, baseType: !758, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1918, file: !1887, line: 294, baseType: !754, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1918, file: !1887, line: 296, baseType: !2234, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!410, !1924, !378, !47, !53}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1918, file: !1887, line: 306, baseType: !47, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1918, file: !1887, line: 313, baseType: !1360, size: 8, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1918, file: !1887, line: 314, baseType: !2234, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1918, file: !1887, line: 317, baseType: !2241, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !1924, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2245, line: 59, baseType: !7)
!2245 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1918, file: !1887, line: 320, baseType: !2249, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!34, !1924, !1949}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1913, file: !1887, line: 176, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1887, line: 35, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1913, file: !1887, line: 177, baseType: !53, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1913, file: !1887, line: 178, baseType: !1885, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1886, file: !1887, line: 215, baseType: !32, size: 64, offset: 768)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1886, file: !1887, line: 221, baseType: !301, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !1887, line: 223, baseType: !38, size: 16, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 224, baseType: !36, size: 16, offset: 912)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1886, file: !1887, line: 225, baseType: !2262, size: 64, offset: 960)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1887, line: 36, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1886, file: !1887, line: 227, baseType: !781, size: 128, align: 64, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1870, file: !1861, line: 442, baseType: !2266, size: 448, offset: 2048)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1861, line: 138, size: 448, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2266, file: !1861, line: 140, baseType: !1885, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2266, file: !1861, line: 141, baseType: !51, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2266, file: !1861, line: 142, baseType: !2271, size: 320, offset: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2272, line: 11, size: 320, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2273 = !{!2274, !2275, !2276, !2281}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2271, file: !2272, line: 16, baseType: !306, size: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2271, file: !2272, line: 17, baseType: !51, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2271, file: !2272, line: 18, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !2272, line: 19, baseType: !521, size: 32, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1870, file: !1861, line: 443, baseType: !2266, size: 448, offset: 2496)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1870, file: !1861, line: 446, baseType: !2284, offset: 2944)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, elements: !2285)
!2285 = !{!2286}
!2286 = !DISubrange(count: 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1870, file: !1861, line: 455, baseType: !105, size: 16, offset: 2944)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1870, file: !1861, line: 456, baseType: !105, size: 16, offset: 2960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1870, file: !1861, line: 457, baseType: !105, size: 16, offset: 2976)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1870, file: !1861, line: 458, baseType: !105, size: 16, offset: 2992)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1870, file: !1861, line: 461, baseType: !1864, size: 896, offset: 3008)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1870, file: !1861, line: 463, baseType: !2293, size: 64, offset: 3904)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1861, line: 537, size: 41664, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2309}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2294, file: !1861, line: 538, baseType: !1905, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2294, file: !1861, line: 541, baseType: !7, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2294, file: !1861, line: 544, baseType: !34, size: 32, offset: 96)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2294, file: !1861, line: 547, baseType: !109, size: 128, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2294, file: !1861, line: 548, baseType: !781, size: 128, align: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2294, file: !1861, line: 555, baseType: !1870, size: 7872, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2294, file: !1861, line: 558, baseType: !1869, size: 64, offset: 8256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2294, file: !1861, line: 561, baseType: !61, size: 32, offset: 8320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !1861, line: 564, baseType: !7, size: 32, offset: 8352)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2294, file: !1861, line: 567, baseType: !2306, size: 32768, offset: 8384)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 4096)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2294, file: !1861, line: 570, baseType: !2310, size: 512, offset: 41152)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !383)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1870, file: !1861, line: 469, baseType: !109, size: 128, offset: 3968)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1870, file: !1861, line: 478, baseType: !2313, size: 1792, offset: 4096)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !2314)
!2314 = !{!2315}
!2315 = !DISubrange(count: 14)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1870, file: !1861, line: 487, baseType: !1869, size: 64, offset: 5888)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1870, file: !1861, line: 488, baseType: !1869, size: 64, offset: 5952)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1870, file: !1861, line: 491, baseType: !2319, size: 64, offset: 6016)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1861, line: 327, size: 896, elements: !2321)
!2321 = !{!2322, !2325, !2335, !2336, !2337, !2338, !2339}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2320, file: !1861, line: 332, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2324, line: 64, elements: !643)
!2324 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2320, file: !1861, line: 333, baseType: !2326, size: 192)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1861, line: 299, size: 192, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2326, file: !1861, line: 300, baseType: !2329, size: 192)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2330, line: 17, size: 192, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2329, file: !2330, line: 18, baseType: !301, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2329, file: !2330, line: 19, baseType: !301, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2329, file: !2330, line: 20, baseType: !303, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2320, file: !1861, line: 339, baseType: !2326, size: 192, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2320, file: !1861, line: 347, baseType: !2326, size: 192, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2320, file: !1861, line: 353, baseType: !2326, size: 192, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2320, file: !1861, line: 366, baseType: !1869, size: 64, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2320, file: !1861, line: 367, baseType: !1869, size: 64, offset: 832)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1870, file: !1861, line: 492, baseType: !109, size: 128, offset: 6080)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1870, file: !1861, line: 495, baseType: !2326, size: 192, offset: 6208)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1870, file: !1861, line: 496, baseType: !2326, size: 192, offset: 6400)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1870, file: !1861, line: 497, baseType: !1697, size: 192, offset: 6592)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1870, file: !1861, line: 503, baseType: !109, size: 128, offset: 6784)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1870, file: !1861, line: 504, baseType: !724, size: 256, offset: 6912)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1870, file: !1861, line: 507, baseType: !66, size: 192, offset: 7168)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1870, file: !1861, line: 510, baseType: !1475, size: 256, offset: 7360)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1870, file: !1861, line: 513, baseType: !2349, size: 64, offset: 7616)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2351, line: 214, elements: !643)
!2351 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1870, file: !1861, line: 516, baseType: !2353, offset: 7680)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2354, line: 76, elements: !643)
!2354 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1870, file: !1861, line: 519, baseType: !61, size: 32, offset: 7680)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1870, file: !1861, line: 522, baseType: !2357, size: 128, offset: 7712)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1861, line: 370, size: 128, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2362}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2357, file: !1861, line: 372, baseType: !1360, size: 8)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2357, file: !1861, line: 375, baseType: !34, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2357, file: !1861, line: 380, baseType: !34, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2357, file: !1861, line: 386, baseType: !34, size: 32, offset: 96)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1870, file: !1861, line: 529, baseType: !2364, offset: 7872)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, elements: !1591)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1866, file: !1861, line: 157, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1861, line: 669, size: 1984, elements: !2368)
!2368 = !{!2369, !2373, !2377, !2381, !2382, !2383, !2384, !2388, !2392, !2393, !2399, !2403, !2404, !2408, !2412, !2416, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2469, !2470}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2367, file: !1861, line: 670, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!1865, !1865}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2367, file: !1861, line: 671, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!34, !1865}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2367, file: !1861, line: 672, baseType: !2378, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !1865}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2367, file: !1861, line: 673, baseType: !2378, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2367, file: !1861, line: 674, baseType: !2378, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2367, file: !1861, line: 675, baseType: !2378, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2367, file: !1861, line: 676, baseType: !2385, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1865, !34}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2367, file: !1861, line: 677, baseType: !2389, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!34, !712, !1865}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2367, file: !1861, line: 679, baseType: !2389, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2367, file: !1861, line: 682, baseType: !2394, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!34, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1861, line: 30, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2367, file: !1861, line: 683, baseType: !2400, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2397}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2367, file: !1861, line: 684, baseType: !2400, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2367, file: !1861, line: 685, baseType: !2405, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2367, file: !1861, line: 686, baseType: !2409, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!34, !867, !1859}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2367, file: !1861, line: 688, baseType: !2413, size: 64, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !867, !1859}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2367, file: !1861, line: 689, baseType: !2417, size: 64, offset: 960)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !867}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2367, file: !1861, line: 690, baseType: !2417, size: 64, offset: 1024)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2367, file: !1861, line: 691, baseType: !2417, size: 64, offset: 1088)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2367, file: !1861, line: 692, baseType: !2378, size: 64, offset: 1152)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2367, file: !1861, line: 694, baseType: !1360, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2367, file: !1861, line: 707, baseType: !1360, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2367, file: !1861, line: 719, baseType: !1360, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2367, file: !1861, line: 722, baseType: !34, size: 32, offset: 1248)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2367, file: !1861, line: 723, baseType: !28, size: 64, offset: 1280)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2367, file: !1861, line: 726, baseType: !28, size: 64, offset: 1344)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2367, file: !1861, line: 729, baseType: !2293, size: 64, offset: 1408)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2367, file: !1861, line: 732, baseType: !851, size: 192, offset: 1472)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2367, file: !1861, line: 738, baseType: !109, size: 128, offset: 1664)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2367, file: !1861, line: 744, baseType: !2433, size: 64, offset: 1792)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1861, line: 580, size: 1728, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2446, !2447, !2451, !2455, !2456, !2457, !2458, !2459, !2463, !2467, !2468}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2434, file: !1861, line: 586, baseType: !2310, size: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2434, file: !1861, line: 587, baseType: !51, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2434, file: !1861, line: 593, baseType: !47, size: 64, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2434, file: !1861, line: 596, baseType: !7, size: 32, offset: 640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2434, file: !1861, line: 604, baseType: !7, size: 32, offset: 672)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2434, file: !1861, line: 610, baseType: !2366, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2434, file: !1861, line: 611, baseType: !109, size: 128, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2434, file: !1861, line: 612, baseType: !2444, size: 64, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2434, file: !1861, line: 614, baseType: !1921, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2434, file: !1861, line: 615, baseType: !2226, size: 64, offset: 1024)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2434, file: !1861, line: 621, baseType: !2448, size: 64, offset: 1088)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!301, !1865, !2433}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2434, file: !1861, line: 625, baseType: !2452, size: 64, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!734, !1865, !2433}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2434, file: !1861, line: 628, baseType: !762, size: 64, offset: 1216)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2434, file: !1861, line: 631, baseType: !750, size: 64, offset: 1280)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2434, file: !1861, line: 632, baseType: !758, size: 64, offset: 1344)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2434, file: !1861, line: 633, baseType: !754, size: 64, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2434, file: !1861, line: 640, baseType: !2460, size: 64, offset: 1472)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!34, !1865, !2433, !301}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2434, file: !1861, line: 645, baseType: !2464, size: 64, offset: 1536)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!34, !1865, !2433, !734}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2434, file: !1861, line: 654, baseType: !2234, size: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2434, file: !1861, line: 657, baseType: !2241, size: 64, offset: 1664)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2367, file: !1861, line: 745, baseType: !2433, size: 64, offset: 1856)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2367, file: !1861, line: 754, baseType: !7, size: 32, offset: 1920)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1866, file: !1861, line: 160, baseType: !2120, size: 128, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1866, file: !1861, line: 163, baseType: !109, size: 128, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1866, file: !1861, line: 164, baseType: !109, size: 128, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1866, file: !1861, line: 167, baseType: !109, size: 128, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1866, file: !1861, line: 173, baseType: !34, size: 32, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1866, file: !1861, line: 175, baseType: !7, size: 32, offset: 672)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1866, file: !1861, line: 183, baseType: !301, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1866, file: !1861, line: 189, baseType: !61, size: 32, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1866, file: !1861, line: 192, baseType: !1475, size: 256, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1866, file: !1861, line: 193, baseType: !2481, size: 448, offset: 1088)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1476, line: 120, size: 448, elements: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2481, file: !1476, line: 121, baseType: !1475, size: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2481, file: !1476, line: 122, baseType: !781, size: 128, align: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2481, file: !1476, line: 125, baseType: !2486, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1476, line: 18, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1866, file: !1861, line: 199, baseType: !1865, size: 64, offset: 1536)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1860, file: !1861, line: 218, baseType: !826, size: 32, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1860, file: !1861, line: 226, baseType: !1859, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1860, file: !1861, line: 229, baseType: !1869, size: 64, offset: 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1860, file: !1861, line: 232, baseType: !34, size: 32, offset: 1088)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1860, file: !1861, line: 241, baseType: !109, size: 128, offset: 1152)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1860, file: !1861, line: 242, baseType: !109, size: 128, offset: 1280)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1860, file: !1861, line: 243, baseType: !109, size: 128, offset: 1408)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1860, file: !1861, line: 246, baseType: !109, size: 128, offset: 1536)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1860, file: !1861, line: 255, baseType: !2313, size: 1792, offset: 1664)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1860, file: !1861, line: 258, baseType: !109, size: 128, offset: 3456)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1860, file: !1861, line: 259, baseType: !109, size: 128, offset: 3584)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1860, file: !1861, line: 265, baseType: !306, size: 128, offset: 3712)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1860, file: !1861, line: 271, baseType: !109, size: 128, offset: 3840)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1860, file: !1861, line: 277, baseType: !109, size: 128, offset: 3968)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1860, file: !1861, line: 278, baseType: !109, size: 128, offset: 4096)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1860, file: !1861, line: 279, baseType: !109, size: 128, offset: 4224)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1860, file: !1861, line: 288, baseType: !1869, size: 64, offset: 4352)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1860, file: !1861, line: 289, baseType: !1869, size: 64, offset: 4416)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1860, file: !1861, line: 290, baseType: !1859, size: 64, offset: 4480)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1860, file: !1861, line: 293, baseType: !1360, size: 8, offset: 4544)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1860, file: !1861, line: 296, baseType: !781, size: 128, align: 64, offset: 4608)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !868, file: !869, line: 1110, baseType: !2511, size: 64, offset: 15360)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2513, line: 93, size: 8768, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2565, !2574, !2575, !2577, !2578, !2579, !2582, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2620, !2621, !2628, !2638, !2701, !2702, !2705, !2706, !2707, !2708, !2709, !2710}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2512, file: !2513, line: 94, baseType: !826, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2512, file: !2513, line: 95, baseType: !61, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2512, file: !2513, line: 96, baseType: !34, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2512, file: !2513, line: 97, baseType: !34, size: 32, offset: 96)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2512, file: !2513, line: 98, baseType: !109, size: 128, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2512, file: !2513, line: 100, baseType: !66, size: 192, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2512, file: !2513, line: 103, baseType: !867, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2512, file: !2513, line: 106, baseType: !2523, size: 192, offset: 512)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2524, line: 32, size: 192, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2523, file: !2524, line: 33, baseType: !109, size: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2523, file: !2524, line: 34, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2529, line: 25, baseType: !2530)
!2529 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2529, line: 23, size: 64, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2530, file: !2529, line: 24, baseType: !1106, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2512, file: !2513, line: 109, baseType: !637, size: 64, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2512, file: !2513, line: 112, baseType: !34, size: 32, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2512, file: !2513, line: 114, baseType: !34, size: 32, offset: 800)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2512, file: !2513, line: 115, baseType: !867, size: 64, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2512, file: !2513, line: 118, baseType: !34, size: 32, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2512, file: !2513, line: 119, baseType: !7, size: 32, offset: 928)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2512, file: !2513, line: 121, baseType: !2540, size: 64, offset: 960)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2513, line: 80, size: 448, elements: !2542)
!2542 = !{!2543, !2544, !2550}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2541, file: !2513, line: 81, baseType: !61, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2541, file: !2513, line: 82, baseType: !2545, size: 128, offset: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2513, line: 75, size: 128, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2545, file: !2513, line: 76, baseType: !867, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2545, file: !2513, line: 77, baseType: !2549, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2541, file: !2513, line: 83, baseType: !1514, size: 256, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2512, file: !2513, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2512, file: !2513, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2512, file: !2513, line: 138, baseType: !7, size: 32, offset: 1056)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2512, file: !2513, line: 139, baseType: !109, size: 128, offset: 1088)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2512, file: !2513, line: 142, baseType: !979, size: 512, offset: 1216)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2512, file: !2513, line: 143, baseType: !987, size: 64, offset: 1728)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2512, file: !2513, line: 150, baseType: !2558, size: 256, offset: 1792)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2559, size: 256, elements: !2563)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2513, line: 38, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2559, file: !2513, line: 39, baseType: !301, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2559, file: !2513, line: 40, baseType: !301, size: 64, offset: 64)
!2563 = !{!2564}
!2564 = !DISubrange(count: 2)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2512, file: !2513, line: 156, baseType: !2566, size: 192, offset: 2048)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2513, line: 66, size: 192, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2566, file: !2513, line: 67, baseType: !2569, size: 192)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2513, line: 47, size: 192, elements: !2570)
!2570 = !{!2571, !2572, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2569, file: !2513, line: 48, baseType: !730, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2569, file: !2513, line: 49, baseType: !730, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2569, file: !2513, line: 50, baseType: !730, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2512, file: !2513, line: 160, baseType: !1709, size: 640, offset: 2240)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2512, file: !2513, line: 163, baseType: !2576, size: 256, offset: 2880)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !835)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2512, file: !2513, line: 169, baseType: !822, size: 64, offset: 3136)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2512, file: !2513, line: 172, baseType: !34, size: 32, offset: 3200)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2512, file: !2513, line: 174, baseType: !2580, size: 64, offset: 3264)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2513, line: 174, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2512, file: !2513, line: 185, baseType: !2583, size: 64, offset: 3328)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !494, line: 860, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 853, size: 64, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2584, file: !494, line: 858, baseType: !493, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2584, file: !494, line: 859, baseType: !71, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2512, file: !2513, line: 186, baseType: !301, size: 64, offset: 3392)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2512, file: !2513, line: 186, baseType: !301, size: 64, offset: 3456)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2512, file: !2513, line: 186, baseType: !301, size: 64, offset: 3520)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2512, file: !2513, line: 186, baseType: !301, size: 64, offset: 3584)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2512, file: !2513, line: 187, baseType: !301, size: 64, offset: 3648)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2512, file: !2513, line: 188, baseType: !301, size: 64, offset: 3712)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2512, file: !2513, line: 189, baseType: !1697, size: 192, offset: 3776)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2512, file: !2513, line: 190, baseType: !51, size: 64, offset: 3968)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2512, file: !2513, line: 190, baseType: !51, size: 64, offset: 4032)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2512, file: !2513, line: 190, baseType: !51, size: 64, offset: 4096)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2512, file: !2513, line: 190, baseType: !51, size: 64, offset: 4160)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2512, file: !2513, line: 191, baseType: !51, size: 64, offset: 4224)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2512, file: !2513, line: 191, baseType: !51, size: 64, offset: 4288)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2512, file: !2513, line: 191, baseType: !51, size: 64, offset: 4352)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2512, file: !2513, line: 191, baseType: !51, size: 64, offset: 4416)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2512, file: !2513, line: 192, baseType: !51, size: 64, offset: 4480)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2512, file: !2513, line: 192, baseType: !51, size: 64, offset: 4544)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2512, file: !2513, line: 192, baseType: !51, size: 64, offset: 4608)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2512, file: !2513, line: 192, baseType: !51, size: 64, offset: 4672)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2512, file: !2513, line: 193, baseType: !51, size: 64, offset: 4736)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2512, file: !2513, line: 193, baseType: !51, size: 64, offset: 4800)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2512, file: !2513, line: 194, baseType: !2610, size: 448, offset: 4864)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2611, line: 12, size: 448, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2610, file: !2611, line: 15, baseType: !301, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2610, file: !2611, line: 17, baseType: !301, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2610, file: !2611, line: 19, baseType: !301, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2610, file: !2611, line: 21, baseType: !301, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2610, file: !2611, line: 29, baseType: !301, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2610, file: !2611, line: 35, baseType: !301, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2610, file: !2611, line: 44, baseType: !301, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2512, file: !2513, line: 202, baseType: !303, size: 64, offset: 5312)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2512, file: !2513, line: 213, baseType: !2622, size: 2048, offset: 5376)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 2048, elements: !1801)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2624, line: 43, size: 128, elements: !2625)
!2624 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2623, file: !2624, line: 44, baseType: !50, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2623, file: !2624, line: 45, baseType: !50, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2512, file: !2513, line: 216, baseType: !2629, size: 448, offset: 7424)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2513, line: 30, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2629, file: !2513, line: 31, baseType: !34, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2629, file: !2513, line: 32, baseType: !413, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2629, file: !2513, line: 33, baseType: !51, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2629, file: !2513, line: 34, baseType: !301, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2629, file: !2513, line: 34, baseType: !301, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2629, file: !2513, line: 35, baseType: !51, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2629, file: !2513, line: 35, baseType: !51, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2512, file: !2513, line: 219, baseType: !2639, size: 64, offset: 7872)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2641, line: 41, size: 3456, elements: !2642)
!2641 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2657, !2658, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2640, file: !2641, line: 47, baseType: !106, size: 16)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2640, file: !2641, line: 48, baseType: !522, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2640, file: !2641, line: 54, baseType: !97, size: 8, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2640, file: !2641, line: 55, baseType: !97, size: 8, offset: 72)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2640, file: !2641, line: 73, baseType: !302, size: 64, align: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2640, file: !2641, line: 74, baseType: !302, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2640, file: !2641, line: 81, baseType: !302, size: 64, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2640, file: !2641, line: 82, baseType: !302, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2640, file: !2641, line: 85, baseType: !302, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2640, file: !2641, line: 86, baseType: !302, size: 64, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2640, file: !2641, line: 94, baseType: !302, size: 64, offset: 512)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2640, file: !2641, line: 102, baseType: !302, size: 64, offset: 576)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2640, file: !2641, line: 107, baseType: !2656, size: 256, offset: 640)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !531)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2640, file: !2641, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2640, file: !2641, line: 110, baseType: !2659, size: 24, offset: 904)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !379)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2640, file: !2641, line: 111, baseType: !522, size: 32, align: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2640, file: !2641, line: 113, baseType: !522, size: 32, offset: 992)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2640, file: !2641, line: 114, baseType: !522, size: 32, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2640, file: !2641, line: 115, baseType: !522, size: 32, offset: 1056)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2640, file: !2641, line: 117, baseType: !522, size: 32, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2640, file: !2641, line: 118, baseType: !302, size: 64, align: 64, offset: 1152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2640, file: !2641, line: 120, baseType: !302, size: 64, offset: 1216)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2640, file: !2641, line: 121, baseType: !302, size: 64, offset: 1280)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2640, file: !2641, line: 122, baseType: !302, size: 64, offset: 1344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2640, file: !2641, line: 123, baseType: !302, size: 64, offset: 1408)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2640, file: !2641, line: 133, baseType: !302, size: 64, offset: 1472)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2640, file: !2641, line: 137, baseType: !302, size: 64, offset: 1536)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2640, file: !2641, line: 142, baseType: !302, size: 64, offset: 1600)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2640, file: !2641, line: 143, baseType: !302, size: 64, offset: 1664)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2640, file: !2641, line: 146, baseType: !302, size: 64, offset: 1728)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2640, file: !2641, line: 147, baseType: !302, size: 64, offset: 1792)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2640, file: !2641, line: 148, baseType: !302, size: 64, offset: 1856)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2640, file: !2641, line: 149, baseType: !302, size: 64, offset: 1920)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2640, file: !2641, line: 154, baseType: !302, size: 64, offset: 1984)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2640, file: !2641, line: 155, baseType: !302, size: 64, offset: 2048)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2640, file: !2641, line: 156, baseType: !302, size: 64, offset: 2112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2640, file: !2641, line: 158, baseType: !302, size: 64, offset: 2176)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2640, file: !2641, line: 159, baseType: !302, size: 64, offset: 2240)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2640, file: !2641, line: 162, baseType: !302, size: 64, offset: 2304)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2640, file: !2641, line: 163, baseType: !302, size: 64, offset: 2368)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2640, file: !2641, line: 164, baseType: !302, size: 64, offset: 2432)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2640, file: !2641, line: 167, baseType: !302, size: 64, offset: 2496)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2640, file: !2641, line: 168, baseType: !302, size: 64, offset: 2560)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2640, file: !2641, line: 171, baseType: !302, size: 64, offset: 2624)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2640, file: !2641, line: 172, baseType: !302, size: 64, offset: 2688)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2640, file: !2641, line: 175, baseType: !302, size: 64, offset: 2752)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2640, file: !2641, line: 178, baseType: !302, size: 64, offset: 2816)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2640, file: !2641, line: 179, baseType: !302, size: 64, offset: 2880)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2640, file: !2641, line: 182, baseType: !522, size: 32, offset: 2944)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2640, file: !2641, line: 186, baseType: !302, size: 64, align: 64, offset: 3008)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2640, file: !2641, line: 194, baseType: !302, size: 64, offset: 3072)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2640, file: !2641, line: 195, baseType: !302, size: 64, offset: 3136)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2640, file: !2641, line: 199, baseType: !302, size: 64, offset: 3200)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2640, file: !2641, line: 200, baseType: !302, size: 64, offset: 3264)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2640, file: !2641, line: 203, baseType: !302, size: 64, offset: 3328)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2640, file: !2641, line: 204, baseType: !302, size: 64, offset: 3392)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2512, file: !2513, line: 222, baseType: !7, size: 32, offset: 7936)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2512, file: !2513, line: 223, baseType: !2703, size: 64, offset: 8000)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2513, line: 223, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2512, file: !2513, line: 230, baseType: !1360, size: 8, offset: 8064)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2512, file: !2513, line: 231, baseType: !1308, size: 16, offset: 8080)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2512, file: !2513, line: 232, baseType: !1308, size: 16, offset: 8096)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2512, file: !2513, line: 234, baseType: !1155, size: 64, offset: 8128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2512, file: !2513, line: 237, baseType: !724, size: 256, offset: 8192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2512, file: !2513, line: 243, baseType: !1210, size: 320, offset: 8448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !868, file: !869, line: 1111, baseType: !2712, size: 64, offset: 15424)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2513, line: 20, size: 16640, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2713, file: !2513, line: 21, baseType: !71, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2713, file: !2513, line: 22, baseType: !826, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2713, file: !2513, line: 23, baseType: !66, size: 192, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2713, file: !2513, line: 24, baseType: !2719, size: 16384, offset: 256)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 16384, elements: !383)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2524, line: 51, size: 256, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2720, file: !2524, line: 52, baseType: !2723, size: 256)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2524, line: 37, size: 256, elements: !2724)
!2724 = !{!2725, !2732, !2733, !2737}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2723, file: !2524, line: 39, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2727, line: 83, baseType: !2728)
!2727 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2727, line: 82, baseType: !2730)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !34}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2723, file: !2524, line: 40, baseType: !51, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2723, file: !2524, line: 46, baseType: !2734, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2727, line: 86, baseType: !2735)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2727, line: 85, baseType: !2406)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2723, file: !2524, line: 48, baseType: !2528, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !868, file: !869, line: 1112, baseType: !2528, size: 64, offset: 15488)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !868, file: !869, line: 1113, baseType: !2528, size: 64, offset: 15552)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !868, file: !869, line: 1115, baseType: !2528, size: 64, offset: 15616)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !868, file: !869, line: 1116, baseType: !2523, size: 192, offset: 15680)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !868, file: !869, line: 1117, baseType: !51, size: 64, offset: 15872)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !868, file: !869, line: 1118, baseType: !47, size: 64, offset: 15936)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !868, file: !869, line: 1119, baseType: !7, size: 32, offset: 16000)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !868, file: !869, line: 1121, baseType: !784, size: 64, offset: 16064)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !868, file: !869, line: 1125, baseType: !2747, size: 64, offset: 16128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !869, line: 43, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !868, file: !869, line: 1127, baseType: !458, size: 32, offset: 16192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !868, file: !869, line: 1128, baseType: !7, size: 32, offset: 16224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !868, file: !869, line: 1130, baseType: !2752, size: 128, offset: 16256)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2753, line: 37, size: 128, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2752, file: !2753, line: 38, baseType: !34, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2752, file: !2753, line: 39, baseType: !61, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2752, file: !2753, line: 40, baseType: !2758, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2753, line: 24, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !868, file: !869, line: 1131, baseType: !2761, size: 256, offset: 16384)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2762, line: 12, size: 256, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2761, file: !2762, line: 13, baseType: !378, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2761, file: !2762, line: 14, baseType: !51, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2761, file: !2762, line: 15, baseType: !51, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2761, file: !2762, line: 16, baseType: !1360, size: 8, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !868, file: !869, line: 1134, baseType: !301, size: 64, offset: 16640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !868, file: !869, line: 1135, baseType: !301, size: 64, offset: 16704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !868, file: !869, line: 1138, baseType: !71, size: 32, offset: 16768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !868, file: !869, line: 1141, baseType: !737, size: 32, offset: 16800)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !868, file: !869, line: 1143, baseType: !2773, size: 64, offset: 16832)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !869, line: 735, size: 64, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2773, file: !869, line: 736, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !868, file: !869, line: 1147, baseType: !1038, size: 128, offset: 16896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !868, file: !869, line: 1149, baseType: !867, size: 64, offset: 17024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !868, file: !869, line: 1151, baseType: !2780, size: 64, offset: 17088)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !869, line: 1151, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !868, file: !869, line: 1188, baseType: !32, size: 64, offset: 17152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !868, file: !869, line: 1191, baseType: !2784, size: 64, offset: 17216)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !869, line: 44, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !868, file: !869, line: 1194, baseType: !2787, size: 64, offset: 17280)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !869, line: 45, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !868, file: !869, line: 1197, baseType: !2790, size: 64, offset: 17344)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !869, line: 61, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !868, file: !869, line: 1199, baseType: !2793, size: 64, offset: 17408)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2795, line: 99, size: 128, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2794, file: !2795, line: 100, baseType: !728, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2794, file: !2795, line: 101, baseType: !61, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2794, file: !2795, line: 103, baseType: !38, size: 16, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !868, file: !869, line: 1202, baseType: !2801, size: 64, offset: 17472)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !869, line: 48, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !868, file: !869, line: 1205, baseType: !51, size: 64, offset: 17536)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !868, file: !869, line: 1206, baseType: !2805, size: 64, offset: 17600)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2524, line: 14, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2524, line: 12, size: 384, elements: !2808)
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2807, file: !2524, line: 13, baseType: !2810, size: 384)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !2524, line: 13, size: 384, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2810, file: !2524, line: 13, baseType: !34, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2810, file: !2524, line: 13, baseType: !34, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2810, file: !2524, line: 13, baseType: !34, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2810, file: !2524, line: 13, baseType: !2816, size: 256, offset: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2817, line: 37, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2818 = !{!2819, !2824, !2837, !2843, !2852, !2879, !2884}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2816, file: !2817, line: 42, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 39, size: 64, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2820, file: !2817, line: 40, baseType: !1674, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2820, file: !2817, line: 41, baseType: !464, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2816, file: !2817, line: 50, baseType: !2825, size: 192)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 45, size: 192, elements: !2826)
!2826 = !{!2827, !2829, !2830, !2836}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2825, file: !2817, line: 46, baseType: !2828, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2825, file: !2817, line: 47, baseType: !34, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2825, file: !2817, line: 48, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2817, line: 11, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2817, line: 8, size: 64, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2832, file: !2817, line: 9, baseType: !34, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2832, file: !2817, line: 10, baseType: !32, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2825, file: !2817, line: 49, baseType: !34, size: 32, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2816, file: !2817, line: 57, baseType: !2838, size: 128)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 53, size: 128, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2838, file: !2817, line: 54, baseType: !1674, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2838, file: !2817, line: 55, baseType: !464, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2838, file: !2817, line: 56, baseType: !2831, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2816, file: !2817, line: 66, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 60, size: 256, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2851}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2844, file: !2817, line: 61, baseType: !1674, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2844, file: !2817, line: 62, baseType: !464, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2844, file: !2817, line: 63, baseType: !34, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2844, file: !2817, line: 64, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !412)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2844, file: !2817, line: 65, baseType: !2850, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2816, file: !2817, line: 105, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 69, size: 256, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2853, file: !2817, line: 70, baseType: !32, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !2817, line: 79, baseType: !2857, size: 192, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2853, file: !2817, line: 79, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2868, !2873}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2857, file: !2817, line: 81, baseType: !34, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2857, file: !2817, line: 86, baseType: !1308, size: 16)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2857, file: !2817, line: 92, baseType: !2862, size: 192)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 88, size: 192, elements: !2863)
!2863 = !{!2864, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2862, file: !2817, line: 89, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !1022)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2862, file: !2817, line: 90, baseType: !32, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2862, file: !2817, line: 91, baseType: !32, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2857, file: !2817, line: 97, baseType: !2869, size: 96)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 94, size: 96, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2869, file: !2817, line: 95, baseType: !2865, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2869, file: !2817, line: 96, baseType: !522, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2857, file: !2817, line: 103, baseType: !2874, size: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 99, size: 128, elements: !2875)
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2874, file: !2817, line: 100, baseType: !51, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2874, file: !2817, line: 101, baseType: !522, size: 32, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2874, file: !2817, line: 102, baseType: !522, size: 32, offset: 96)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2816, file: !2817, line: 111, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 108, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2880, file: !2817, line: 109, baseType: !413, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2880, file: !2817, line: 110, baseType: !34, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2816, file: !2817, line: 118, baseType: !2885, size: 128)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 114, size: 128, elements: !2886)
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2885, file: !2817, line: 115, baseType: !32, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2885, file: !2817, line: 116, baseType: !34, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2885, file: !2817, line: 117, baseType: !7, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !868, file: !869, line: 1208, baseType: !2610, size: 448, offset: 17664)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !868, file: !869, line: 1215, baseType: !301, size: 64, offset: 18112)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !868, file: !869, line: 1217, baseType: !301, size: 64, offset: 18176)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !868, file: !869, line: 1219, baseType: !301, size: 64, offset: 18240)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !868, file: !869, line: 1223, baseType: !2895, size: 64, offset: 18304)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2896, line: 99, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 99, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2897, file: !2896, line: 99, baseType: !1106, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !868, file: !869, line: 1225, baseType: !493, size: 32, offset: 18368)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !868, file: !869, line: 1226, baseType: !34, size: 32, offset: 18400)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !868, file: !869, line: 1227, baseType: !34, size: 32, offset: 18432)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !868, file: !869, line: 1231, baseType: !1859, size: 64, offset: 18496)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !868, file: !869, line: 1233, baseType: !109, size: 128, offset: 18560)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !868, file: !869, line: 1240, baseType: !2906, size: 64, offset: 18688)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !869, line: 62, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !868, file: !869, line: 1242, baseType: !2909, size: 64, offset: 18752)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !869, line: 1242, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !868, file: !869, line: 1244, baseType: !109, size: 128, offset: 18816)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !868, file: !869, line: 1245, baseType: !2913, size: 64, offset: 18944)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !869, line: 51, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !868, file: !869, line: 1246, baseType: !724, size: 256, offset: 19008)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !868, file: !869, line: 1247, baseType: !7, size: 32, offset: 19264)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !868, file: !869, line: 1250, baseType: !2918, size: 64, offset: 19328)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !237, line: 912, size: 1792, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !237, line: 917, baseType: !737, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2919, file: !237, line: 923, baseType: !724, size: 256, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2919, file: !237, line: 925, baseType: !109, size: 128, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2919, file: !237, line: 926, baseType: !2925, size: 128, offset: 448)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !237, line: 901, size: 128, elements: !2926)
!2926 = !{!2927, !2928}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2925, file: !237, line: 902, baseType: !1041, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2925, file: !237, line: 903, baseType: !301, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2919, file: !237, line: 927, baseType: !2925, size: 128, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2919, file: !237, line: 928, baseType: !109, size: 128, offset: 704)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2919, file: !237, line: 930, baseType: !34, size: 32, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2919, file: !237, line: 931, baseType: !34, size: 32, offset: 864)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2919, file: !237, line: 932, baseType: !34, size: 32, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2919, file: !237, line: 934, baseType: !34, size: 32, offset: 928)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2919, file: !237, line: 935, baseType: !34, size: 32, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2919, file: !237, line: 936, baseType: !34, size: 32, offset: 992)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2919, file: !237, line: 937, baseType: !34, size: 32, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2919, file: !237, line: 939, baseType: !826, size: 32, offset: 1056)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2919, file: !237, line: 940, baseType: !867, size: 64, offset: 1088)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2919, file: !237, line: 945, baseType: !301, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2919, file: !237, line: 946, baseType: !301, size: 64, offset: 1216)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2919, file: !237, line: 947, baseType: !301, size: 64, offset: 1280)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2919, file: !237, line: 953, baseType: !2918, size: 64, offset: 1344)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2919, file: !237, line: 954, baseType: !301, size: 64, offset: 1408)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2919, file: !237, line: 955, baseType: !301, size: 64, offset: 1472)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2919, file: !237, line: 956, baseType: !34, size: 32, offset: 1536)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2919, file: !237, line: 958, baseType: !34, size: 32, offset: 1568)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2919, file: !237, line: 960, baseType: !781, size: 128, align: 64, offset: 1600)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2919, file: !237, line: 968, baseType: !2950, size: 64, offset: 1728)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2951, line: 12, baseType: !2952)
!2951 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2951, line: 10, size: 64, elements: !2953)
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2952, file: !2951, line: 11, baseType: !728, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !868, file: !869, line: 1251, baseType: !724, size: 256, offset: 19392)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !868, file: !869, line: 1252, baseType: !109, size: 128, offset: 19648)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !868, file: !869, line: 1259, baseType: !1997, size: 64, offset: 19776)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !868, file: !869, line: 1260, baseType: !1308, size: 16, offset: 19840)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !868, file: !869, line: 1261, baseType: !1308, size: 16, offset: 19856)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !868, file: !869, line: 1314, baseType: !2961, size: 64, offset: 19904)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2963, line: 62, size: 256, align: 256, elements: !2964)
!2963 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2962, file: !2963, line: 75, baseType: !522, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2962, file: !2963, line: 90, baseType: !522, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2962, file: !2963, line: 112, baseType: !302, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2962, file: !2963, line: 132, baseType: !522, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2962, file: !2963, line: 140, baseType: !522, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2962, file: !2963, line: 149, baseType: !522, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2962, file: !2963, line: 154, baseType: !2972, offset: 224)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !1591)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !868, file: !869, line: 1315, baseType: !521, size: 32, offset: 19968)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !868, file: !869, line: 1316, baseType: !521, size: 32, offset: 20000)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !868, file: !869, line: 1321, baseType: !51, size: 64, offset: 20032)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !868, file: !869, line: 1325, baseType: !34, size: 32, offset: 20096)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !868, file: !869, line: 1326, baseType: !34, size: 32, offset: 20128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !868, file: !869, line: 1327, baseType: !34, size: 32, offset: 20160)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !868, file: !869, line: 1328, baseType: !34, size: 32, offset: 20192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !868, file: !869, line: 1329, baseType: !781, size: 128, align: 64, offset: 20224)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !868, file: !869, line: 1332, baseType: !2982, size: 128, offset: 20352)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2983, line: 51, size: 128, elements: !2984)
!2983 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2984 = !{!2985, !2990, !2991}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2982, file: !2983, line: 60, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2987, line: 7, size: 64, elements: !2988)
!2987 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2986, file: !2987, line: 12, baseType: !1103, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2982, file: !2983, line: 63, baseType: !1360, size: 8, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2982, file: !2983, line: 70, baseType: !1360, size: 8, offset: 72)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !868, file: !869, line: 1335, baseType: !2993, size: 64, offset: 20480)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !869, line: 59, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !868, file: !869, line: 1337, baseType: !2996, size: 128, offset: 20544)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2983, line: 39, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2996, file: !2983, line: 40, baseType: !2056, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2996, file: !2983, line: 42, baseType: !522, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2996, file: !2983, line: 43, baseType: !522, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !868, file: !869, line: 1340, baseType: !3002, size: 64, offset: 20672)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !869, line: 69, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !868, file: !869, line: 1351, baseType: !34, size: 32, offset: 20736)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !868, file: !869, line: 1352, baseType: !34, size: 32, offset: 20768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !868, file: !869, line: 1354, baseType: !51, size: 64, offset: 20800)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !868, file: !869, line: 1364, baseType: !301, size: 64, offset: 20864)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !868, file: !869, line: 1365, baseType: !301, size: 64, offset: 20928)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !868, file: !869, line: 1412, baseType: !51, size: 64, offset: 20992)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !868, file: !869, line: 1453, baseType: !3011, size: 64, offset: 21056)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !869, line: 1453, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !868, file: !869, line: 1457, baseType: !3014, size: 64, offset: 21120)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3016)
!3016 = !{!3017, !3018, !3037, !3040, !3041, !3074, !3084}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3015, file: !150, line: 62, baseType: !149, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !150, line: 64, baseType: !3019, size: 192, offset: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !150, line: 64, size: 192, elements: !3020)
!3020 = !{!3021, !3032}
!3021 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !150, line: 65, baseType: !3022, size: 192)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3019, file: !150, line: 65, size: 192, elements: !3023)
!3023 = !{!3024, !3031}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3022, file: !150, line: 66, baseType: !3025, size: 128)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3026, line: 50, size: 128, elements: !3027)
!3026 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3025, file: !3026, line: 52, baseType: !51, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3025, file: !3026, line: 54, baseType: !7, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3025, file: !3026, line: 55, baseType: !7, size: 32, offset: 96)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3022, file: !150, line: 67, baseType: !51, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !150, line: 70, baseType: !3033, size: 192)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3019, file: !150, line: 70, size: 192, elements: !3034)
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3033, file: !150, line: 71, baseType: !781, size: 128, align: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3033, file: !150, line: 72, baseType: !51, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3015, file: !150, line: 76, baseType: !3038, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3015, file: !150, line: 77, baseType: !51, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3015, file: !150, line: 79, baseType: !3042, size: 64, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3026, line: 25, size: 256, elements: !3044)
!3044 = !{!3045, !3051, !3055}
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !3026, line: 26, baseType: !3046, size: 128)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3043, file: !3026, line: 26, size: 128, elements: !3047)
!3047 = !{!3048, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3046, file: !3026, line: 27, baseType: !3049, size: 128)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !1801)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3046, file: !3026, line: 28, baseType: !3049, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3043, file: !3026, line: 31, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3026, line: 23, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !3026, line: 33, baseType: !3056, size: 64, offset: 192)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3043, file: !3026, line: 33, size: 64, elements: !3057)
!3057 = !{!3058, !3064, !3069}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3056, file: !3026, line: 38, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3056, file: !3026, line: 34, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3059, file: !3026, line: 35, baseType: !1256, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3059, file: !3026, line: 36, baseType: !95, size: 8, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3059, file: !3026, line: 37, baseType: !95, size: 8, offset: 40)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3056, file: !3026, line: 42, baseType: !3065, size: 16)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3056, file: !3026, line: 39, size: 16, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3065, file: !3026, line: 40, baseType: !95, size: 8)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3065, file: !3026, line: 41, baseType: !95, size: 8, offset: 8)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3056, file: !3026, line: 46, baseType: !3070, size: 16)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3056, file: !3026, line: 43, size: 16, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3070, file: !3026, line: 44, baseType: !95, size: 8)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3070, file: !3026, line: 45, baseType: !95, size: 8, offset: 8)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3015, file: !150, line: 81, baseType: !3075, size: 64, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3076, file: !150, line: 86, baseType: !3038, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3076, file: !150, line: 87, baseType: !51, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3076, file: !150, line: 88, baseType: !51, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3076, file: !150, line: 89, baseType: !51, size: 64, offset: 192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3076, file: !150, line: 90, baseType: !1360, size: 8, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3076, file: !150, line: 92, baseType: !3075, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3015, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !868, file: !869, line: 1463, baseType: !3086, offset: 21184)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !869, line: 739, elements: !643)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !868, file: !869, line: 1470, baseType: !781, size: 128, align: 64, offset: 21184)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !868, file: !869, line: 1471, baseType: !826, size: 32, offset: 21312)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !868, file: !869, line: 1472, baseType: !34, size: 32, offset: 21344)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !868, file: !869, line: 1474, baseType: !867, size: 64, offset: 21376)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !868, file: !869, line: 1475, baseType: !2271, size: 320, offset: 21440)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !868, file: !869, line: 1478, baseType: !3093, size: 64, offset: 21760)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !869, line: 1478, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !868, file: !869, line: 1482, baseType: !826, size: 32, offset: 21824)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !868, file: !869, line: 1489, baseType: !32, size: 64, offset: 21888)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !868, file: !869, line: 1504, baseType: !32, size: 64, offset: 21952)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !868, file: !869, line: 1505, baseType: !302, size: 64, offset: 22016)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !868, file: !869, line: 1506, baseType: !301, size: 64, offset: 22080)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !868, file: !869, line: 1507, baseType: !302, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !868, file: !869, line: 1508, baseType: !302, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !868, file: !869, line: 1509, baseType: !302, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !868, file: !869, line: 1510, baseType: !781, size: 128, align: 64, offset: 22208)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !868, file: !869, line: 1511, baseType: !34, size: 32, offset: 22336)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !868, file: !869, line: 1515, baseType: !3106, size: 64, offset: 22400)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !776, line: 56, size: 64, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3106, file: !776, line: 57, baseType: !779, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !868, file: !869, line: 1518, baseType: !3106, size: 64, offset: 22464)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !868, file: !869, line: 1528, baseType: !781, size: 128, align: 64, offset: 22528)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !868, file: !869, line: 1552, baseType: !3112, size: 35328, offset: 23040)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3113, line: 430, size: 35328, elements: !3114)
!3113 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3114 = !{!3115, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3142, !3143, !3144, !3145, !3146, !3147, !3150, !3151, !3152, !3153}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3112, file: !3113, line: 432, baseType: !3116, size: 192)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3117, size: 192, elements: !379)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3118, line: 16, size: 64, elements: !3119)
!3118 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3117, file: !3118, line: 17, baseType: !105, size: 16)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3117, file: !3118, line: 18, baseType: !105, size: 16, offset: 16)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3117, file: !3118, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3117, file: !3118, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3117, file: !3118, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3117, file: !3118, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3117, file: !3118, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3117, file: !3118, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3117, file: !3118, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3117, file: !3118, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3117, file: !3118, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3117, file: !3118, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3117, file: !3118, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3112, file: !3113, line: 436, baseType: !51, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3112, file: !3113, line: 440, baseType: !38, size: 16, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3112, file: !3113, line: 441, baseType: !38, size: 16, offset: 272)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3112, file: !3113, line: 442, baseType: !38, size: 16, offset: 288)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3112, file: !3113, line: 443, baseType: !38, size: 16, offset: 304)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3112, file: !3113, line: 447, baseType: !51, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3112, file: !3113, line: 448, baseType: !51, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3112, file: !3113, line: 459, baseType: !3141, size: 256, offset: 448)
!3141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !835)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3112, file: !3113, line: 461, baseType: !51, size: 64, offset: 704)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3112, file: !3113, line: 463, baseType: !51, size: 64, offset: 768)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3112, file: !3113, line: 465, baseType: !51, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3112, file: !3113, line: 466, baseType: !51, size: 64, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3112, file: !3113, line: 467, baseType: !51, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3112, file: !3113, line: 473, baseType: !3148, size: 64, offset: 1024)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3113, line: 10, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3112, file: !3113, line: 480, baseType: !51, size: 64, offset: 1088)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3112, file: !3113, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3112, file: !3113, line: 491, baseType: !521, size: 32, offset: 1184)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3112, file: !3113, line: 501, baseType: !3154, size: 33792, offset: 1536)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3155, line: 448, size: 33792, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3156 = !{!3157, !3158, !3159, !3319, !3320, !3326, !3327}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3154, file: !3155, line: 461, baseType: !7, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3154, file: !3155, line: 468, baseType: !51, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3154, file: !3155, line: 476, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3155, line: 356, size: 33280, align: 512, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3161, file: !3155, line: 358, baseType: !7, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3161, file: !3155, line: 361, baseType: !7, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3161, file: !3155, line: 364, baseType: !301, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3161, file: !3155, line: 367, baseType: !301, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3161, file: !3155, line: 370, baseType: !301, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3161, file: !3155, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3161, file: !3155, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3161, file: !3155, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3161, file: !3155, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3161, file: !3155, line: 397, baseType: !3173, size: 32768, offset: 512)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3155, line: 348, size: 32768, elements: !3174)
!3174 = !{!3175, !3190, !3227, !3304, !3317}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3173, file: !3155, line: 349, baseType: !3176, size: 896)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3155, line: 12, size: 896, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3189}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3176, file: !3155, line: 13, baseType: !521, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3176, file: !3155, line: 14, baseType: !521, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3176, file: !3155, line: 15, baseType: !521, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3176, file: !3155, line: 16, baseType: !521, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3176, file: !3155, line: 17, baseType: !521, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3176, file: !3155, line: 18, baseType: !521, size: 32, offset: 160)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3176, file: !3155, line: 19, baseType: !521, size: 32, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3176, file: !3155, line: 22, baseType: !3186, size: 640, offset: 224)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 640, elements: !3187)
!3187 = !{!3188}
!3188 = !DISubrange(count: 20)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3176, file: !3155, line: 25, baseType: !521, size: 32, offset: 864)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3173, file: !3155, line: 350, baseType: !3191, size: 4096, align: 128)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3155, line: 34, size: 4096, align: 128, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3212, !3213, !3214, !3216, !3218, !3222}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3191, file: !3155, line: 35, baseType: !105, size: 16)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3191, file: !3155, line: 36, baseType: !105, size: 16, offset: 16)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3191, file: !3155, line: 37, baseType: !105, size: 16, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3191, file: !3155, line: 38, baseType: !105, size: 16, offset: 48)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3191, file: !3155, line: 39, baseType: !3198, size: 128, offset: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3191, file: !3155, line: 39, size: 128, elements: !3199)
!3199 = !{!3200, !3205}
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3155, line: 40, baseType: !3201, size: 128)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3155, line: 40, size: 128, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3201, file: !3155, line: 41, baseType: !301, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3201, file: !3155, line: 42, baseType: !301, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3155, line: 44, baseType: !3206, size: 128)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3155, line: 44, size: 128, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3206, file: !3155, line: 45, baseType: !521, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3206, file: !3155, line: 46, baseType: !521, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3206, file: !3155, line: 47, baseType: !521, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3206, file: !3155, line: 48, baseType: !521, size: 32, offset: 96)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3191, file: !3155, line: 51, baseType: !521, size: 32, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3191, file: !3155, line: 52, baseType: !521, size: 32, offset: 224)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3191, file: !3155, line: 55, baseType: !3215, size: 1024, offset: 256)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 1024, elements: !531)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3191, file: !3155, line: 58, baseType: !3217, size: 2048, offset: 1280)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 2048, elements: !383)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3191, file: !3155, line: 60, baseType: !3219, size: 384, offset: 3328)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 384, elements: !3220)
!3220 = !{!3221}
!3221 = !DISubrange(count: 12)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3191, file: !3155, line: 62, baseType: !3223, size: 384, offset: 3712)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3191, file: !3155, line: 62, size: 384, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3223, file: !3155, line: 63, baseType: !3219, size: 384)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3223, file: !3155, line: 64, baseType: !3219, size: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3173, file: !3155, line: 351, baseType: !3228, size: 1088)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3155, line: 79, size: 1088, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3303}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3228, file: !3155, line: 80, baseType: !521, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3228, file: !3155, line: 81, baseType: !521, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3228, file: !3155, line: 82, baseType: !521, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3228, file: !3155, line: 83, baseType: !521, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3228, file: !3155, line: 84, baseType: !521, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3228, file: !3155, line: 85, baseType: !521, size: 32, offset: 160)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3228, file: !3155, line: 86, baseType: !521, size: 32, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3228, file: !3155, line: 88, baseType: !3186, size: 640, offset: 224)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3228, file: !3155, line: 89, baseType: !95, size: 8, offset: 864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3228, file: !3155, line: 90, baseType: !95, size: 8, offset: 872)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3228, file: !3155, line: 91, baseType: !95, size: 8, offset: 880)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3228, file: !3155, line: 92, baseType: !95, size: 8, offset: 888)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3228, file: !3155, line: 93, baseType: !95, size: 8, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3228, file: !3155, line: 94, baseType: !95, size: 8, offset: 904)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3228, file: !3155, line: 95, baseType: !3245, size: 64, offset: 960)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3247, line: 11, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3246, file: !3247, line: 12, baseType: !413, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3246, file: !3247, line: 13, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3253, line: 103, size: 1344, elements: !3254)
!3253 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3283, !3284, !3285}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3252, file: !3253, line: 109, baseType: !51, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3252, file: !3253, line: 110, baseType: !51, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3252, file: !3253, line: 111, baseType: !51, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3252, file: !3253, line: 112, baseType: !51, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3252, file: !3253, line: 113, baseType: !51, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3252, file: !3253, line: 114, baseType: !51, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3252, file: !3253, line: 117, baseType: !51, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3252, file: !3253, line: 118, baseType: !51, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3252, file: !3253, line: 119, baseType: !51, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3252, file: !3253, line: 120, baseType: !51, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3252, file: !3253, line: 121, baseType: !51, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3252, file: !3253, line: 122, baseType: !51, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3252, file: !3253, line: 123, baseType: !51, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3252, file: !3253, line: 124, baseType: !51, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3252, file: !3253, line: 125, baseType: !51, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3252, file: !3253, line: 139, baseType: !51, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3252, file: !3253, line: 142, baseType: !51, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 144, baseType: !3273, size: 64, offset: 1088)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 144, size: 64, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3273, file: !3253, line: 146, baseType: !105, size: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3273, file: !3253, line: 148, baseType: !301, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3273, file: !3253, line: 150, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3253, line: 59, size: 64, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3278, file: !3253, line: 61, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3278, file: !3253, line: 63, baseType: !301, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3278, file: !3253, line: 65, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3252, file: !3253, line: 153, baseType: !51, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3252, file: !3253, line: 154, baseType: !51, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 156, baseType: !3286, size: 64, offset: 1280)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 156, size: 64, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3286, file: !3253, line: 158, baseType: !105, size: 16)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3286, file: !3253, line: 160, baseType: !301, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3286, file: !3253, line: 162, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3253, line: 69, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3291, file: !3253, line: 71, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3291, file: !3253, line: 73, baseType: !301, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3291, file: !3253, line: 75, baseType: !301, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3291, file: !3253, line: 77, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3291, file: !3253, line: 80, baseType: !301, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3291, file: !3253, line: 83, baseType: !301, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3291, file: !3253, line: 86, baseType: !301, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3291, file: !3253, line: 88, baseType: !301, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3291, file: !3253, line: 93, baseType: !301, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3291, file: !3253, line: 100, baseType: !301, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3228, file: !3155, line: 96, baseType: !521, size: 32, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3173, file: !3155, line: 352, baseType: !3305, size: 4608, align: 512)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3155, line: 333, size: 4608, align: 512, elements: !3306)
!3306 = !{!3307, !3308, !3315}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3305, file: !3155, line: 334, baseType: !3191, size: 4096, align: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3305, file: !3155, line: 335, baseType: !3309, size: 512, offset: 4096)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3155, line: 312, size: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3309, file: !3155, line: 313, baseType: !301, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3309, file: !3155, line: 314, baseType: !301, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3309, file: !3155, line: 315, baseType: !3314, size: 384, offset: 128)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 384, elements: !1415)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3305, file: !3155, line: 336, baseType: !3316, offset: 4608)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !1591)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3173, file: !3155, line: 353, baseType: !3318, size: 32768)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !2307)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3154, file: !3155, line: 484, baseType: !3160, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3154, file: !3155, line: 491, baseType: !3321, size: 128, offset: 256)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3155, line: 404, size: 128, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3321, file: !3155, line: 424, baseType: !301, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3321, file: !3155, line: 432, baseType: !7, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3321, file: !3155, line: 440, baseType: !7, size: 32, offset: 96)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3154, file: !3155, line: 498, baseType: !3321, size: 128, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3154, file: !3155, line: 508, baseType: !3161, size: 33280, align: 512, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !847, file: !848, line: 31, baseType: !3329, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3331, line: 325, flags: DIFlagFwdDecl)
!3331 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !847, file: !848, line: 32, baseType: !7, size: 32, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !847, file: !848, line: 33, baseType: !846, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !847, file: !848, line: 35, baseType: !3335, size: 64, offset: 640)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !848, line: 17, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !847, file: !848, line: 37, baseType: !1315, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !847, file: !848, line: 38, baseType: !1558, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !847, file: !848, line: 39, baseType: !34, size: 32, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !847, file: !848, line: 40, baseType: !1348, size: 192, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !847, file: !848, line: 42, baseType: !34, size: 32, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !798, file: !14, line: 951, baseType: !156, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !798, file: !14, line: 952, baseType: !458, size: 32, offset: 160)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !798, file: !14, line: 952, baseType: !458, size: 32, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !798, file: !14, line: 953, baseType: !34, size: 32, offset: 224)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !769, file: !14, line: 1012, baseType: !1727, size: 64, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !769, file: !14, line: 1013, baseType: !3348, size: 256, offset: 960)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3348, file: !14, line: 971, baseType: !51, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3348, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3348, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3348, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3348, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3348, file: !14, line: 976, baseType: !53, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !769, file: !14, line: 1014, baseType: !3357, size: 128, offset: 1216)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3358, line: 8, size: 128, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3357, file: !3358, line: 9, baseType: !594, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3357, file: !3358, line: 10, baseType: !487, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !769, file: !14, line: 1015, baseType: !452, size: 64, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !769, file: !14, line: 1016, baseType: !3364, size: 64, offset: 1408)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3367)
!3367 = !{!3368, !3369, !3373, !3377, !3381, !3409, !3410, !3416, !3429, !3433, !3437, !3438, !3442, !3443, !3447, !3452, !3453, !3457, !3461, !3467, !3468, !3472, !3473, !3477, !3481, !3485, !3491, !3495, !3499, !3503, !3507, !3508, !3514}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3366, file: !14, line: 1915, baseType: !324, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3366, file: !14, line: 1916, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!53, !1182, !53, !34}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3366, file: !14, line: 1917, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!410, !1182, !378, !47, !52}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3366, file: !14, line: 1918, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!410, !1182, !28, !47, !52}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3366, file: !14, line: 1919, baseType: !3382, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!410, !3385, !3407}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3394, !3395, !3396, !3397}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3386, file: !14, line: 374, baseType: !1182, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3386, file: !14, line: 375, baseType: !53, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3386, file: !14, line: 376, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3385, !413}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3386, file: !14, line: 377, baseType: !32, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3386, file: !14, line: 378, baseType: !34, size: 32, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3386, file: !14, line: 379, baseType: !105, size: 16, offset: 288)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !14, line: 380, baseType: !3398, size: 64, offset: 320)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !14, line: 380, size: 64, elements: !3399)
!3399 = !{!3400, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3398, file: !14, line: 386, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3398, file: !14, line: 395, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!410, !32}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3366, file: !14, line: 1920, baseType: !3382, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3366, file: !14, line: 1921, baseType: !3411, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!34, !3385, !3414, !7}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3366, file: !14, line: 1923, baseType: !3417, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!34, !1182, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3422)
!3422 = !{!3423, !3428}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3421, file: !14, line: 1859, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3425)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!1360, !3420, !28, !34, !53, !301, !7}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3421, file: !14, line: 1860, baseType: !53, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3366, file: !14, line: 1924, baseType: !3430, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!2244, !1182, !2246}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3366, file: !14, line: 1925, baseType: !3434, size: 64, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!413, !1182, !7, !51}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3366, file: !14, line: 1926, baseType: !3434, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3366, file: !14, line: 1927, baseType: !3439, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!34, !1182, !1949}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3366, file: !14, line: 1928, baseType: !51, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3366, file: !14, line: 1929, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!34, !452, !1182}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3366, file: !14, line: 1930, baseType: !3448, size: 64, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!34, !1182, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3366, file: !14, line: 1931, baseType: !3444, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3366, file: !14, line: 1932, baseType: !3454, size: 64, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!34, !1182, !53, !53, !34}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3366, file: !14, line: 1933, baseType: !3458, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!34, !34, !1182, !34}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3366, file: !14, line: 1934, baseType: !3462, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!34, !1182, !34, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3366, file: !14, line: 1935, baseType: !1179, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3366, file: !14, line: 1936, baseType: !3469, size: 64, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!34, !34}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3366, file: !14, line: 1937, baseType: !3462, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3366, file: !14, line: 1938, baseType: !3474, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!410, !2993, !1182, !52, !47, !7}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3366, file: !14, line: 1939, baseType: !3478, size: 64, offset: 1472)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!410, !1182, !52, !2993, !47, !7}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3366, file: !14, line: 1940, baseType: !3482, size: 64, offset: 1536)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !1182}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3366, file: !14, line: 1941, baseType: !3486, size: 64, offset: 1600)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!34, !1182, !34, !3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3366, file: !14, line: 1942, baseType: !3492, size: 64, offset: 1664)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!413, !1182, !34, !53, !53}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3366, file: !14, line: 1944, baseType: !3496, size: 64, offset: 1728)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !712, !1182}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3366, file: !14, line: 1948, baseType: !3500, size: 64, offset: 1792)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!410, !1182, !53, !1182, !53, !47, !7}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3366, file: !14, line: 1950, baseType: !3504, size: 64, offset: 1856)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!53, !1182, !53, !1182, !53, !53, !7}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3366, file: !14, line: 1953, baseType: !3454, size: 64, offset: 1920)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3366, file: !14, line: 1954, baseType: !3509, size: 64, offset: 1984)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!34, !3512, !7}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3366, file: !14, line: 1955, baseType: !3515, size: 64, offset: 2048)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!34, !3512, !3414, !7}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !769, file: !14, line: 1018, baseType: !301, size: 64, offset: 1472)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !769, file: !14, line: 1020, baseType: !32, size: 64, offset: 1536)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !769, file: !14, line: 1023, baseType: !32, size: 64, offset: 1600)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !769, file: !14, line: 1027, baseType: !3522, size: 64, offset: 1664)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !769, file: !14, line: 1029, baseType: !448, size: 64, offset: 1728)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !769, file: !14, line: 1030, baseType: !3525, size: 32, offset: 1792)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3526, line: 8, baseType: !521)
!3526 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !769, file: !14, line: 1031, baseType: !3525, size: 32, offset: 1824)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !713, file: !714, line: 29, baseType: !32, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !655, file: !14, line: 2077, baseType: !709, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !655, file: !14, line: 2078, baseType: !709, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !655, file: !14, line: 2079, baseType: !709, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !655, file: !14, line: 2081, baseType: !3533, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!410, !600, !34, !378, !47, !53}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !655, file: !14, line: 2082, baseType: !3537, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!410, !600, !34, !28, !47, !53}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !655, file: !14, line: 2083, baseType: !3541, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!3544, !452}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3572, !3573, !3574}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3546, file: !165, line: 297, baseType: !306, size: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3546, file: !165, line: 298, baseType: !109, size: 128, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3546, file: !165, line: 299, baseType: !109, size: 128, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3546, file: !165, line: 300, baseType: !109, size: 128, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3546, file: !165, line: 301, baseType: !724, size: 256, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3546, file: !165, line: 302, baseType: !71, size: 32, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3546, file: !165, line: 303, baseType: !61, size: 32, offset: 800)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3546, file: !165, line: 304, baseType: !600, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3546, file: !165, line: 305, baseType: !3557, size: 64, offset: 896)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !3558)
!3558 = !{!3559, !3571}
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !165, line: 69, baseType: !3560, size: 32)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !165, line: 69, size: 32, elements: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3560, file: !165, line: 70, baseType: !458, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3560, file: !165, line: 71, baseType: !467, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3560, file: !165, line: 72, baseType: !3565, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3566, line: 24, baseType: !3567)
!3566 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3566, line: 22, size: 32, elements: !3568)
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3567, file: !3566, line: 23, baseType: !3570, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3566, line: 20, baseType: !464)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3557, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3546, file: !165, line: 306, baseType: !53, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3546, file: !165, line: 307, baseType: !51, size: 64, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3546, file: !165, line: 308, baseType: !3575, size: 576, offset: 1088)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !3576)
!3576 = !{!3577, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3575, file: !165, line: 206, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !55)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3575, file: !165, line: 207, baseType: !3578, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3575, file: !165, line: 208, baseType: !3578, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3575, file: !165, line: 209, baseType: !3578, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3575, file: !165, line: 210, baseType: !3578, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3575, file: !165, line: 211, baseType: !3578, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3575, file: !165, line: 212, baseType: !3578, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3575, file: !165, line: 213, baseType: !1386, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3575, file: !165, line: 214, baseType: !1386, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !655, file: !14, line: 2085, baseType: !3588, size: 64, offset: 1472)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!413, !600, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3593, line: 15, size: 256, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3594 = !{!3595, !3596, !3597, !3598, !3599}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3592, file: !3593, line: 16, baseType: !860, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3592, file: !3593, line: 19, baseType: !34, size: 32, offset: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3592, file: !3593, line: 26, baseType: !51, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3592, file: !3593, line: 33, baseType: !51, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3592, file: !3593, line: 36, baseType: !3600, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !655, file: !14, line: 2087, baseType: !3588, size: 64, offset: 1536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !655, file: !14, line: 2089, baseType: !631, size: 64, offset: 1600)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !601, file: !14, line: 1198, baseType: !3605, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !3608)
!3608 = !{!3609, !3613, !3617, !3621, !3622, !3623, !3624, !3625, !3630, !3635, !3639}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3607, file: !165, line: 325, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!34, !3545}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3607, file: !165, line: 326, baseType: !3614, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!3545, !600, !34}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3607, file: !165, line: 327, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3545}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3607, file: !165, line: 328, baseType: !3610, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3607, file: !165, line: 329, baseType: !3610, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3607, file: !165, line: 330, baseType: !3610, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3607, file: !165, line: 331, baseType: !683, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3607, file: !165, line: 334, baseType: !3626, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!3629, !452}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3607, file: !165, line: 335, baseType: !3631, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!34, !452, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3607, file: !165, line: 337, baseType: !3636, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!34, !452, !3629}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3607, file: !165, line: 339, baseType: !3640, size: 64, offset: 640)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!34, !600, !3643}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !601, file: !14, line: 1199, baseType: !3645, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !3648)
!3648 = !{!3649, !3655, !3656, !3660, !3661, !3662, !3677, !3700, !3704, !3705, !3728}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3647, file: !165, line: 431, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!34, !600, !34, !34, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3647, file: !165, line: 432, baseType: !683, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3647, file: !165, line: 433, baseType: !3657, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!34, !600, !7}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3647, file: !165, line: 434, baseType: !3657, size: 64, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3647, file: !165, line: 435, baseType: !683, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3647, file: !165, line: 436, baseType: !3663, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!34, !600, !34, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3667, file: !165, line: 418, baseType: !34, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3667, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3667, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3667, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3667, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3667, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3667, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3667, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3647, file: !165, line: 437, baseType: !3678, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!34, !600, !3557, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3682, file: !165, line: 346, baseType: !34, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3682, file: !165, line: 347, baseType: !301, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3682, file: !165, line: 348, baseType: !301, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3682, file: !165, line: 349, baseType: !301, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3682, file: !165, line: 350, baseType: !301, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3682, file: !165, line: 351, baseType: !301, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3682, file: !165, line: 352, baseType: !301, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3682, file: !165, line: 353, baseType: !734, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3682, file: !165, line: 355, baseType: !734, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3682, file: !165, line: 356, baseType: !34, size: 32, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3682, file: !165, line: 357, baseType: !34, size: 32, offset: 608)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3682, file: !165, line: 358, baseType: !301, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3682, file: !165, line: 359, baseType: !301, size: 64, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3682, file: !165, line: 360, baseType: !301, size: 64, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3682, file: !165, line: 361, baseType: !734, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3682, file: !165, line: 362, baseType: !34, size: 32, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3647, file: !165, line: 438, baseType: !3701, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!34, !600, !3643, !3681}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3647, file: !165, line: 440, baseType: !3678, size: 64, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3647, file: !165, line: 441, baseType: !3706, size: 64, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!34, !600, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3710, file: !165, line: 412, baseType: !7, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3710, file: !165, line: 413, baseType: !3714, size: 1344, offset: 64)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3715, size: 1344, elements: !379)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3727}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3715, file: !165, line: 398, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3715, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3715, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3715, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3715, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3715, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3715, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3715, file: !165, line: 406, baseType: !303, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3715, file: !165, line: 407, baseType: !3726, size: 64, offset: 320)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !301)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3715, file: !165, line: 408, baseType: !3726, size: 64, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3647, file: !165, line: 442, baseType: !3657, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !601, file: !14, line: 1200, baseType: !3730, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !601, file: !14, line: 1201, baseType: !51, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !601, file: !14, line: 1202, baseType: !51, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !601, file: !14, line: 1203, baseType: !51, size: 64, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !601, file: !14, line: 1204, baseType: !487, size: 64, offset: 832)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !601, file: !14, line: 1205, baseType: !1210, size: 320, offset: 896)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !601, file: !14, line: 1206, baseType: !34, size: 32, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !601, file: !14, line: 1207, baseType: !61, size: 32, offset: 1248)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !601, file: !14, line: 1209, baseType: !32, size: 64, offset: 1280)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !601, file: !14, line: 1211, baseType: !3742, size: 64, offset: 1344)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !601, file: !14, line: 1223, baseType: !3747, size: 64, offset: 1408)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !504, line: 34, size: 64, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3747, file: !504, line: 35, baseType: !507, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !601, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !601, file: !14, line: 1225, baseType: !3752, size: 64, offset: 1600)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !601, file: !14, line: 1226, baseType: !3755, size: 64, offset: 1664)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !601, file: !14, line: 1227, baseType: !3758, size: 64, offset: 1728)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !601, file: !14, line: 1228, baseType: !3761, size: 64, offset: 1792)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !601, file: !14, line: 1229, baseType: !306, size: 128, offset: 1856)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !601, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !601, file: !14, line: 1231, baseType: !3766, size: 2496, offset: 2048)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3772, !3804}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3766, file: !165, line: 522, baseType: !7, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3766, file: !165, line: 523, baseType: !1210, size: 320, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3766, file: !165, line: 524, baseType: !3771, size: 192, offset: 384)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !379)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3766, file: !165, line: 525, baseType: !3773, size: 1728, offset: 576)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3774, size: 1728, elements: !379)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !3775)
!3775 = !{!3776, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3774, file: !165, line: 223, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !3779)
!3779 = !{!3780, !3781, !3794, !3795}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3778, file: !165, line: 446, baseType: !34, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3778, file: !165, line: 447, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3784, file: !165, line: 313, baseType: !683, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3784, file: !165, line: 314, baseType: !683, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3784, file: !165, line: 315, baseType: !683, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3784, file: !165, line: 316, baseType: !683, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3784, file: !165, line: 317, baseType: !3610, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3784, file: !165, line: 318, baseType: !3610, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3784, file: !165, line: 319, baseType: !3610, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3784, file: !165, line: 320, baseType: !3640, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3778, file: !165, line: 448, baseType: !324, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3778, file: !165, line: 449, baseType: !3777, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3774, file: !165, line: 224, baseType: !34, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3774, file: !165, line: 226, baseType: !109, size: 128, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3774, file: !165, line: 227, baseType: !51, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3774, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3774, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3774, file: !165, line: 230, baseType: !3578, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3774, file: !165, line: 231, baseType: !3578, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3774, file: !165, line: 232, baseType: !32, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3766, file: !165, line: 526, baseType: !3805, size: 192, offset: 2304)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3782, size: 192, elements: !379)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !601, file: !14, line: 1233, baseType: !3807, size: 2368, offset: 4544)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3807, file: !14, line: 1185, baseType: !38, size: 16)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3807, file: !14, line: 1186, baseType: !38, size: 16, offset: 16)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3807, file: !14, line: 1187, baseType: !3812, size: 2304, offset: 64)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3813, size: 2304, elements: !379)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3814, line: 12, size: 768, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3815 = !{!3816, !3824, !3826, !3831, !3832}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3813, file: !3814, line: 13, baseType: !3817, size: 384)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3818, line: 17, size: 384, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3817, file: !3818, line: 18, baseType: !34, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3817, file: !3818, line: 19, baseType: !34, size: 32, offset: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3817, file: !3818, line: 20, baseType: !66, size: 192, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3817, file: !3818, line: 22, baseType: !781, size: 128, align: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3813, file: !3814, line: 14, baseType: !3825, size: 64, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3813, file: !3814, line: 15, baseType: !3827, size: 64, offset: 448)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3828, line: 16, size: 64, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3827, file: !3828, line: 17, baseType: !867, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3813, file: !3814, line: 16, baseType: !66, size: 192, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3813, file: !3814, line: 17, baseType: !61, size: 32, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !601, file: !14, line: 1240, baseType: !32, size: 64, offset: 6912)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !601, file: !14, line: 1243, baseType: !521, size: 32, offset: 6976)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !601, file: !14, line: 1245, baseType: !1386, size: 64, offset: 7040)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !601, file: !14, line: 1246, baseType: !1386, size: 64, offset: 7104)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !601, file: !14, line: 1248, baseType: !522, size: 32, offset: 7168)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !601, file: !14, line: 1249, baseType: !3839, size: 64, offset: 7232)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !601, file: !14, line: 1252, baseType: !2656, size: 256, offset: 7296)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !601, file: !14, line: 1253, baseType: !3843, size: 128, offset: 7552)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3844, line: 21, baseType: !3845)
!3844 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3844, line: 19, size: 128, elements: !3846)
!3846 = !{!3847}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3845, file: !3844, line: 20, baseType: !3848, size: 128)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !1801)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !601, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !601, file: !14, line: 1261, baseType: !724, size: 256, offset: 7744)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !601, file: !14, line: 1267, baseType: !28, size: 64, offset: 8000)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !601, file: !14, line: 1269, baseType: !547, size: 64, offset: 8064)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !601, file: !14, line: 1271, baseType: !3854, size: 448, offset: 8128)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3593, line: 63, size: 448, elements: !3855)
!3855 = !{!3856, !3861, !3862, !3863, !3864, !3865, !3866}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3854, file: !3593, line: 64, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!51, !3860, !3591}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3854, file: !3593, line: 66, baseType: !3857, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3854, file: !3593, line: 69, baseType: !413, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3854, file: !3593, line: 70, baseType: !34, size: 32, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3854, file: !3593, line: 71, baseType: !7, size: 32, offset: 224)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3854, file: !3593, line: 74, baseType: !109, size: 128, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3854, file: !3593, line: 85, baseType: !3867, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !601, file: !14, line: 1274, baseType: !728, size: 64, offset: 8576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !601, file: !14, line: 1280, baseType: !728, size: 64, offset: 8640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !601, file: !14, line: 1283, baseType: !34, size: 32, offset: 8704)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !601, file: !14, line: 1286, baseType: !3525, size: 32, offset: 8736)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !601, file: !14, line: 1289, baseType: !2486, size: 64, offset: 8768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !601, file: !14, line: 1290, baseType: !637, size: 64, offset: 8832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !601, file: !14, line: 1297, baseType: !1315, size: 64, offset: 8896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !601, file: !14, line: 1304, baseType: !3876, size: 64, offset: 8960)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3877, line: 49, size: 64, elements: !3878)
!3877 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3878 = !{!3879}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3876, file: !3877, line: 50, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3877, line: 41, size: 512, align: 512, elements: !3882)
!3882 = !{!3883, !3884, !3889}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3881, file: !3877, line: 43, baseType: !71, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3881, file: !3877, line: 45, baseType: !3885, size: 192, offset: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3877, line: 29, size: 192, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3885, file: !3877, line: 30, baseType: !109, size: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3885, file: !3877, line: 32, baseType: !413, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3881, file: !3877, line: 46, baseType: !413, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !601, file: !14, line: 1305, baseType: !3876, size: 64, offset: 9024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !601, file: !14, line: 1306, baseType: !781, size: 128, align: 64, offset: 9088)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !601, file: !14, line: 1307, baseType: !1475, size: 256, offset: 9216)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !601, file: !14, line: 1309, baseType: !724, size: 256, offset: 9472)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !601, file: !14, line: 1314, baseType: !34, size: 32, offset: 9728)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !601, file: !14, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !601, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !601, file: !14, line: 1320, baseType: !71, size: 32, offset: 10432)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !601, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !595, file: !596, line: 73, baseType: !34, size: 32, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !595, file: !596, line: 74, baseType: !3901, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1744, line: 42, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !549, file: !489, line: 141, baseType: !3905, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!34, !3653, !1360}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !549, file: !489, line: 142, baseType: !3909, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!487, !487, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !488, file: !489, line: 96, baseType: !600, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !488, file: !489, line: 97, baseType: !51, size: 64, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !488, file: !489, line: 98, baseType: !32, size: 64, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !489, line: 100, baseType: !3918, size: 128, offset: 1024)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 100, size: 128, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3918, file: !489, line: 101, baseType: !109, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3918, file: !489, line: 102, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !488, file: !489, line: 104, baseType: !109, size: 128, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !488, file: !489, line: 105, baseType: !109, size: 128, offset: 1280)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !488, file: !489, line: 113, baseType: !3926, size: 128, offset: 1408)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 109, size: 128, elements: !3927)
!3927 = !{!3928, !3929, !3930}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3926, file: !489, line: 110, baseType: !306, size: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3926, file: !489, line: 111, baseType: !503, size: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3926, file: !489, line: 112, baseType: !781, size: 128, align: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !481, file: !14, line: 1968, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!28, !487, !452, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3937, line: 10, size: 128, elements: !3938)
!3937 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3938 = !{!3939, !3943}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3936, file: !3937, line: 11, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !32}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3936, file: !3937, line: 12, baseType: !32, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !481, file: !14, line: 1969, baseType: !3945, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!34, !3901, !452, !34}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !481, file: !14, line: 1970, baseType: !3949, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!475, !452, !34, !1360}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !481, file: !14, line: 1972, baseType: !3953, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!34, !487, !378, !34}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !481, file: !14, line: 1974, baseType: !3957, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!34, !3901, !452, !487, !36, !1360}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !481, file: !14, line: 1976, baseType: !3961, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!34, !487, !452, !487}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !481, file: !14, line: 1977, baseType: !3965, size: 64, offset: 448)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!34, !452, !487}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !481, file: !14, line: 1978, baseType: !3969, size: 64, offset: 512)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!34, !3901, !452, !487, !28}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !481, file: !14, line: 1980, baseType: !3973, size: 64, offset: 576)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!34, !3901, !452, !487, !36}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !481, file: !14, line: 1982, baseType: !3965, size: 64, offset: 640)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !481, file: !14, line: 1983, baseType: !3978, size: 64, offset: 704)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!34, !3901, !452, !487, !36, !605}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !481, file: !14, line: 1985, baseType: !3982, size: 64, offset: 768)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!34, !3901, !452, !487, !452, !487, !7}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !481, file: !14, line: 1987, baseType: !3986, size: 64, offset: 832)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!34, !3901, !487, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3991)
!3991 = !{!3992, !3993, !3994, !4004, !4013, !4014, !4019, !4020, !4021}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3990, file: !14, line: 227, baseType: !7, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3990, file: !14, line: 228, baseType: !36, size: 16, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !3990, file: !14, line: 241, baseType: !3995, size: 32, offset: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3990, file: !14, line: 241, size: 32, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3995, file: !14, line: 242, baseType: !458, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3995, file: !14, line: 243, baseType: !3999, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4000, line: 16, baseType: !4001)
!4000 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4000, line: 14, size: 32, elements: !4002)
!4002 = !{!4003}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4001, file: !4000, line: 15, baseType: !463, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !3990, file: !14, line: 245, baseType: !4005, size: 32, offset: 96)
!4005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3990, file: !14, line: 245, size: 32, elements: !4006)
!4006 = !{!4007, !4008}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4005, file: !14, line: 246, baseType: !467, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4005, file: !14, line: 247, baseType: !4009, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4000, line: 20, baseType: !4010)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4000, line: 18, size: 32, elements: !4011)
!4011 = !{!4012}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4010, file: !4000, line: 19, baseType: !471, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3990, file: !14, line: 249, baseType: !53, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3990, file: !14, line: 250, baseType: !4015, size: 128, offset: 192)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1387, line: 13, size: 128, elements: !4016)
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4015, file: !1387, line: 14, baseType: !1386, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4015, file: !1387, line: 15, baseType: !413, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3990, file: !14, line: 251, baseType: !4015, size: 128, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3990, file: !14, line: 252, baseType: !4015, size: 128, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3990, file: !14, line: 259, baseType: !1182, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !481, file: !14, line: 1988, baseType: !4023, size: 64, offset: 896)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!34, !3901, !3653, !4026, !521, !7}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4028, line: 22, size: 1280, elements: !4029)
!4028 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4027, file: !4028, line: 23, baseType: !521, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4027, file: !4028, line: 24, baseType: !36, size: 16, offset: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4027, file: !4028, line: 25, baseType: !7, size: 32, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4027, file: !4028, line: 26, baseType: !1394, size: 32, offset: 96)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4027, file: !4028, line: 27, baseType: !301, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4027, file: !4028, line: 28, baseType: !301, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4027, file: !4028, line: 41, baseType: !301, size: 64, offset: 256)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4027, file: !4028, line: 42, baseType: !605, size: 32, offset: 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4027, file: !4028, line: 43, baseType: !605, size: 32, offset: 352)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4027, file: !4028, line: 44, baseType: !458, size: 32, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4027, file: !4028, line: 45, baseType: !467, size: 32, offset: 416)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4027, file: !4028, line: 46, baseType: !53, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4027, file: !4028, line: 47, baseType: !4015, size: 128, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4027, file: !4028, line: 48, baseType: !4015, size: 128, offset: 640)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4027, file: !4028, line: 49, baseType: !4015, size: 128, offset: 768)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4027, file: !4028, line: 50, baseType: !4015, size: 128, offset: 896)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4027, file: !4028, line: 51, baseType: !301, size: 64, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4027, file: !4028, line: 52, baseType: !301, size: 64, offset: 1088)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4027, file: !4028, line: 53, baseType: !521, size: 32, offset: 1152)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4027, file: !4028, line: 54, baseType: !521, size: 32, offset: 1184)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4027, file: !4028, line: 55, baseType: !301, size: 64, offset: 1216)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !481, file: !14, line: 1990, baseType: !4052, size: 64, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!410, !487, !378, !47}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !481, file: !14, line: 1991, baseType: !4056, size: 64, offset: 1024)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!34, !452, !4059, !301, !301}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !481, file: !14, line: 1993, baseType: !4062, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!34, !452, !34}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !481, file: !14, line: 1994, baseType: !4066, size: 64, offset: 1152)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!34, !452, !487, !1182, !7, !36}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !481, file: !14, line: 1997, baseType: !4070, size: 64, offset: 1216)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!34, !3901, !452, !1182, !36}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !481, file: !14, line: 1999, baseType: !4074, size: 64, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!475, !3901, !487, !34}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !481, file: !14, line: 2001, baseType: !4078, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!34, !3901, !487, !475, !34}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !481, file: !14, line: 2003, baseType: !4082, size: 64, offset: 1408)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!34, !3901, !487, !4085}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !481, file: !14, line: 2005, baseType: !4088, size: 64, offset: 1472)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!34, !487, !4085}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !481, file: !14, line: 2006, baseType: !4092, size: 64, offset: 1536)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!4095, !452}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4096, file: !14, line: 3193, baseType: !855, size: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4096, file: !14, line: 3194, baseType: !521, size: 32, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !453, file: !14, line: 655, baseType: !600, size: 64, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !453, file: !14, line: 656, baseType: !448, size: 64, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !453, file: !14, line: 659, baseType: !32, size: 64, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !453, file: !14, line: 663, baseType: !51, size: 64, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !14, line: 671, baseType: !4105, size: 32, offset: 704)
!4105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !14, line: 671, size: 32, elements: !4106)
!4106 = !{!4107, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4105, file: !14, line: 672, baseType: !4108, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4105, file: !14, line: 673, baseType: !7, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !453, file: !14, line: 675, baseType: !605, size: 32, offset: 736)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !453, file: !14, line: 676, baseType: !53, size: 64, offset: 768)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !453, file: !14, line: 677, baseType: !4015, size: 128, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !453, file: !14, line: 678, baseType: !4015, size: 128, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !453, file: !14, line: 679, baseType: !4015, size: 128, offset: 1088)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !453, file: !14, line: 680, baseType: !71, size: 32, offset: 1216)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !453, file: !14, line: 681, baseType: !38, size: 16, offset: 1248)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !453, file: !14, line: 682, baseType: !95, size: 8, offset: 1264)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !453, file: !14, line: 683, baseType: !95, size: 8, offset: 1272)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !453, file: !14, line: 684, baseType: !3726, size: 64, offset: 1280)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !453, file: !14, line: 691, baseType: !51, size: 64, offset: 1344)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !453, file: !14, line: 692, baseType: !1210, size: 320, offset: 1408)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !453, file: !14, line: 694, baseType: !51, size: 64, offset: 1728)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !453, file: !14, line: 695, baseType: !51, size: 64, offset: 1792)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !453, file: !14, line: 697, baseType: !306, size: 128, offset: 1856)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !453, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !453, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !453, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!4128 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !14, line: 709, baseType: !4129, size: 128, offset: 2368)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !14, line: 709, size: 128, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4129, file: !14, line: 710, baseType: !637, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4129, file: !14, line: 711, baseType: !781, size: 128, align: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !453, file: !14, line: 713, baseType: !730, size: 64, offset: 2496)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !453, file: !14, line: 714, baseType: !730, size: 64, offset: 2560)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !453, file: !14, line: 715, baseType: !61, size: 32, offset: 2624)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !453, file: !14, line: 716, baseType: !61, size: 32, offset: 2656)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !453, file: !14, line: 717, baseType: !61, size: 32, offset: 2688)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !453, file: !14, line: 719, baseType: !61, size: 32, offset: 2720)
!4139 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !14, line: 721, baseType: !4140, size: 64, offset: 2752)
!4140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !14, line: 721, size: 64, elements: !4141)
!4141 = !{!4142, !4143}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4140, file: !14, line: 722, baseType: !3364, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4140, file: !14, line: 723, baseType: !662, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !453, file: !14, line: 725, baseType: !4145, size: 64, offset: 2816)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !453, file: !14, line: 726, baseType: !449, size: 1536, align: 64, offset: 2880)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !453, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!4149 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !14, line: 728, baseType: !4150, size: 64, offset: 4544)
!4150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !14, line: 728, size: 64, elements: !4151)
!4151 = !{!4152, !4153, !4156, !4157}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4150, file: !14, line: 729, baseType: !2993, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4150, file: !14, line: 730, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4150, file: !14, line: 731, baseType: !378, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4150, file: !14, line: 732, baseType: !7, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !453, file: !14, line: 735, baseType: !522, size: 32, offset: 4608)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !453, file: !14, line: 738, baseType: !522, size: 32, offset: 4640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !453, file: !14, line: 739, baseType: !3839, size: 64, offset: 4672)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !453, file: !14, line: 750, baseType: !32, size: 64, offset: 4736)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !449, file: !14, line: 474, baseType: !855, size: 128, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !449, file: !14, line: 475, baseType: !1210, size: 320, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !449, file: !14, line: 476, baseType: !860, size: 32, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !449, file: !14, line: 477, baseType: !61, size: 32, offset: 544)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !449, file: !14, line: 482, baseType: !1038, size: 128, offset: 576)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !449, file: !14, line: 483, baseType: !51, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !449, file: !14, line: 484, baseType: !51, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !449, file: !14, line: 485, baseType: !4170, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4173)
!4173 = !{!4174, !4178, !4248, !4252, !4256, !4262, !4267, !4271, !4276, !4280, !4284, !4288, !4289, !4293, !4297, !4301, !4306, !4310, !4317, !4318}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4172, file: !14, line: 405, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!34, !2056, !674}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4172, file: !14, line: 406, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!34, !1182, !4182}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !4184)
!4184 = !{!4185, !4215, !4229}
!4185 = !DIDerivedType(tag: DW_TAG_member, scope: !4183, file: !126, line: 295, baseType: !4186, size: 512)
!4186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4183, file: !126, line: 295, size: 512, elements: !4187)
!4187 = !{!4188, !4214}
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !4186, file: !126, line: 296, baseType: !4189, size: 448)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4186, file: !126, line: 296, size: 448, elements: !4190)
!4190 = !{!4191, !4192, !4201, !4202, !4203, !4212, !4213}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4189, file: !126, line: 298, baseType: !51, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !126, line: 299, baseType: !4193, size: 128, offset: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !126, line: 299, size: 128, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4193, file: !126, line: 300, baseType: !109, size: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !126, line: 302, baseType: !4197, size: 128)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4193, file: !126, line: 302, size: 128, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4197, file: !126, line: 303, baseType: !32, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4197, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4189, file: !126, line: 310, baseType: !448, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4189, file: !126, line: 311, baseType: !51, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !126, line: 312, baseType: !4204, size: 64, offset: 320)
!4204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !126, line: 312, size: 64, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4204, file: !126, line: 313, baseType: !32, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4204, file: !126, line: 314, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !4210)
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4209, file: !126, line: 256, baseType: !51, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4189, file: !126, line: 316, baseType: !61, size: 32, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4189, file: !126, line: 317, baseType: !61, size: 32, offset: 416)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4186, file: !126, line: 323, baseType: !2057, size: 512, align: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, scope: !4183, file: !126, line: 325, baseType: !4216, size: 512, offset: 512)
!4216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4183, file: !126, line: 325, size: 512, elements: !4217)
!4217 = !{!4218, !4228}
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !4216, file: !126, line: 326, baseType: !4219, size: 320)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !126, line: 326, size: 320, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4219, file: !126, line: 327, baseType: !51, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4219, file: !126, line: 328, baseType: !51, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4219, file: !126, line: 329, baseType: !51, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4219, file: !126, line: 331, baseType: !61, size: 32, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4219, file: !126, line: 332, baseType: !61, size: 32, offset: 224)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4219, file: !126, line: 333, baseType: !61, size: 32, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4219, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4216, file: !126, line: 339, baseType: !2057, size: 512, align: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, scope: !4183, file: !126, line: 341, baseType: !4230, size: 512, offset: 1024)
!4230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4183, file: !126, line: 341, size: 512, elements: !4231)
!4231 = !{!4232, !4241, !4247}
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !126, line: 342, baseType: !4233, size: 384)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4230, file: !126, line: 342, size: 384, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4233, file: !126, line: 343, baseType: !51, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4233, file: !126, line: 344, baseType: !51, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4233, file: !126, line: 346, baseType: !32, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4233, file: !126, line: 347, baseType: !32, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4233, file: !126, line: 348, baseType: !32, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4233, file: !126, line: 349, baseType: !32, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !126, line: 352, baseType: !4242, size: 256)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4230, file: !126, line: 352, size: 256, elements: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4242, file: !126, line: 353, baseType: !51, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4242, file: !126, line: 354, baseType: !51, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4242, file: !126, line: 356, baseType: !109, size: 128, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4230, file: !126, line: 359, baseType: !2057, size: 512, align: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4172, file: !14, line: 409, baseType: !4249, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!34, !448, !674}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4172, file: !14, line: 412, baseType: !4253, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!1360, !448, !4182}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4172, file: !14, line: 414, baseType: !4257, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4172, file: !14, line: 416, baseType: !4263, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!34, !1182, !448, !53, !7, !4266, !3490}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4172, file: !14, line: 419, baseType: !4268, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!34, !1182, !448, !53, !7, !7, !2056, !32}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4172, file: !14, line: 424, baseType: !4272, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!4275, !448, !4275}
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !301)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4172, file: !14, line: 425, baseType: !4277, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !4182, !47, !47}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4172, file: !14, line: 426, baseType: !4281, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!1360, !4182, !860}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4172, file: !14, line: 427, baseType: !4285, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{null, !4182}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4172, file: !14, line: 428, baseType: !3382, size: 64, offset: 704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4172, file: !14, line: 433, baseType: !4290, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!34, !448, !4182, !4182, !170}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4172, file: !14, line: 435, baseType: !4294, size: 64, offset: 832)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!34, !4182}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4172, file: !14, line: 436, baseType: !4298, size: 64, offset: 896)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!1360, !4182, !47, !47}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4172, file: !14, line: 438, baseType: !4302, size: 64, offset: 960)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !4182, !4305, !4305}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4172, file: !14, line: 439, baseType: !4307, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!34, !448, !2056}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4172, file: !14, line: 442, baseType: !4311, size: 64, offset: 1088)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!34, !4314, !1182, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4172, file: !14, line: 444, baseType: !3482, size: 64, offset: 1152)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4172, file: !14, line: 445, baseType: !4319, size: 64, offset: 1216)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!34, !3385, !3407}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !14, line: 486, baseType: !51, size: 64, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !449, file: !14, line: 487, baseType: !1210, size: 320, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !449, file: !14, line: 488, baseType: !3525, size: 32, offset: 1280)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !449, file: !14, line: 489, baseType: !71, size: 32, offset: 1312)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !449, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !449, file: !14, line: 491, baseType: !32, size: 64, offset: 1472)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !439, file: !404, line: 180, baseType: !4329, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!410, !1182, !343, !438, !378, !53, !47}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !439, file: !404, line: 182, baseType: !4329, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !439, file: !404, line: 184, baseType: !4334, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!34, !1182, !343, !438, !1949}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !427, file: !404, line: 90, baseType: !4338, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !427, file: !404, line: 91, baseType: !4340, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !394, file: !338, line: 120, baseType: !4342, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!4345, !361}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !178, line: 39, size: 384, elements: !4348)
!4348 = !{!4349, !4350, !4354, !4358, !4364, !4368}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4347, file: !178, line: 40, baseType: !177, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4347, file: !178, line: 41, baseType: !4351, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!1360}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4347, file: !178, line: 42, baseType: !4355, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!32}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4347, file: !178, line: 43, baseType: !4359, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!1289, !4362}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !178, line: 19, flags: DIFlagFwdDecl)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4347, file: !178, line: 44, baseType: !4365, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!1289}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4347, file: !178, line: 45, baseType: !3940, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !394, file: !338, line: 121, baseType: !4370, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!1289, !361}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !394, file: !338, line: 122, baseType: !4374, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !361, !1539, !1540}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !337, file: !338, line: 70, baseType: !1885, size: 64, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !337, file: !338, line: 71, baseType: !4379, size: 32, offset: 448)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4380, line: 19, size: 32, elements: !4381)
!4380 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4381 = !{!4382}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4379, file: !4380, line: 20, baseType: !826, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !337, file: !338, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !337, file: !338, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !337, file: !338, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !337, file: !338, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !337, file: !338, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !334, file: !6, line: 47, baseType: !324, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !334, file: !6, line: 48, baseType: !343, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !334, file: !6, line: 49, baseType: !4391, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !334, file: !6, line: 50, baseType: !1513, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !325, file: !6, line: 418, baseType: !4395, size: 64, offset: 1408)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4397)
!4397 = !{!4398, !4399, !4404, !4408, !4412, !4416}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4396, file: !6, line: 54, baseType: !415, size: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4396, file: !6, line: 55, baseType: !4400, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!410, !4395, !4403, !378}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4396, file: !6, line: 57, baseType: !4405, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!410, !4395, !4403, !28, !47}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4396, file: !6, line: 59, baseType: !4409, size: 64, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !324, !28}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4396, file: !6, line: 60, baseType: !4413, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!34, !324}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4396, file: !6, line: 61, baseType: !4417, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !324}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !325, file: !6, line: 419, baseType: !28, size: 64, offset: 1472)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !325, file: !6, line: 420, baseType: !28, size: 64, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !325, file: !6, line: 421, baseType: !343, size: 64, offset: 1600)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !325, file: !6, line: 424, baseType: !4424, size: 64, offset: 1664)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !325, file: !6, line: 425, baseType: !4428, size: 64, offset: 1728)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !325, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !325, file: !6, line: 435, baseType: !724, size: 256, offset: 1856)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !325, file: !6, line: 437, baseType: !4433, size: 64, offset: 2112)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4435, line: 69, size: 320, elements: !4436)
!4435 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4436 = !{!4437, !4438, !4439, !4456, !4458, !4462, !4463}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4434, file: !4435, line: 70, baseType: !28, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4434, file: !4435, line: 71, baseType: !324, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4434, file: !4435, line: 72, baseType: !4440, size: 64, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4442)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4435, line: 47, size: 256, elements: !4443)
!4443 = !{!4444, !4445, !4451, !4455}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4442, file: !4435, line: 49, baseType: !7, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4442, file: !4435, line: 51, baseType: !4446, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!34, !28, !4449}
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4434)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4442, file: !4435, line: 53, baseType: !4452, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!34, !378, !4449}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4442, file: !4435, line: 55, baseType: !3940, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4434, file: !4435, line: 73, baseType: !4457, size: 16, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4434, file: !4435, line: 74, baseType: !4459, size: 8, offset: 208)
!4459 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !4460)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !4461)
!4461 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4434, file: !4435, line: 75, baseType: !95, size: 8, offset: 216)
!4463 = !DIDerivedType(tag: DW_TAG_member, scope: !4434, file: !4435, line: 76, baseType: !4464, size: 64, offset: 256)
!4464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4434, file: !4435, line: 76, size: 64, elements: !4465)
!4465 = !{!4466, !4467, !4474}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4464, file: !4435, line: 77, baseType: !32, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4464, file: !4435, line: 78, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4470)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4435, line: 86, size: 128, elements: !4471)
!4471 = !{!4472, !4473}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4470, file: !4435, line: 87, baseType: !7, size: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4470, file: !4435, line: 88, baseType: !378, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4464, file: !4435, line: 79, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4435, line: 92, size: 256, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4477, file: !4435, line: 94, baseType: !7, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4477, file: !4435, line: 95, baseType: !7, size: 32, offset: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4477, file: !4435, line: 96, baseType: !3825, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4477, file: !4435, line: 97, baseType: !4440, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4477, file: !4435, line: 98, baseType: !32, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !325, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !325, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !325, file: !6, line: 442, baseType: !4424, size: 64, offset: 2240)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !325, file: !6, line: 443, baseType: !4428, size: 64, offset: 2304)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !325, file: !6, line: 444, baseType: !1360, size: 8, offset: 2368)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !325, file: !6, line: 451, baseType: !1360, size: 8, offset: 2376)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !325, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !325, file: !6, line: 455, baseType: !4492, size: 64, offset: 2432)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4494, line: 23, size: 96, elements: !4495)
!4494 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4495 = !{!4496, !4497, !4498}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4493, file: !4494, line: 24, baseType: !34, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4493, file: !4494, line: 24, baseType: !34, size: 32, offset: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4493, file: !4494, line: 24, baseType: !34, size: 32, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !325, file: !6, line: 458, baseType: !4500, size: 64, offset: 2496)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!34}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !325, file: !6, line: 460, baseType: !4504, size: 4032, align: 512, offset: 2560)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4505, size: 4032, elements: !4519)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4506)
!4506 = !{!4507, !4508, !4509}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4505, file: !6, line: 363, baseType: !32, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4505, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4505, file: !6, line: 367, baseType: !4510, size: 448, offset: 128)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4510, file: !6, line: 320, baseType: !324, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4510, file: !6, line: 321, baseType: !4514, size: 384, offset: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4515, line: 40, size: 384, elements: !4516)
!4515 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4516 = !{!4517}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4514, file: !4515, line: 41, baseType: !4518, size: 384, align: 64)
!4518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 384, align: 64, elements: !2563)
!4519 = !{!4520}
!4520 = !DISubrange(count: 7)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !325, file: !6, line: 463, baseType: !4522, size: 192, offset: 6592)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4523, line: 8, size: 192, elements: !4524)
!4523 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4524 = !{!4525, !4526, !4527}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4522, file: !4523, line: 10, baseType: !7, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4522, file: !4523, line: 11, baseType: !706, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4522, file: !4523, line: 12, baseType: !4528, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4530, line: 59, size: 48, elements: !4531)
!4530 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4529, file: !4530, line: 60, baseType: !1306, size: 16)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4529, file: !4530, line: 61, baseType: !1306, size: 16, offset: 16)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4529, file: !4530, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4529, file: !4530, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4529, file: !4530, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4529, file: !4530, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !325, file: !6, line: 465, baseType: !51, size: 64, offset: 6784)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !325, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !325, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !325, file: !6, line: 471, baseType: !4542, size: 64, offset: 7040)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4544, line: 33, size: 96, elements: !4545)
!4544 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4545 = !{!4546, !4547, !4548, !4549}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4543, file: !4544, line: 37, baseType: !34, size: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4543, file: !4544, line: 43, baseType: !34, size: 32, offset: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4543, file: !4544, line: 45, baseType: !38, size: 16, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4543, file: !4544, line: 47, baseType: !38, size: 16, offset: 80)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !325, file: !6, line: 476, baseType: !4551, size: 64, offset: 7104)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4553)
!4553 = !{!4554, !4570, !4571, !4572}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4552, file: !6, line: 379, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4557, line: 204, baseType: !4558)
!4557 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4557, line: 197, size: 192, elements: !4559)
!4559 = !{!4560, !4562, !4563, !4564, !4566, !4568}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4558, file: !4557, line: 198, baseType: !4561, size: 32)
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4557, line: 21, baseType: !522)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4558, file: !4557, line: 199, baseType: !99, size: 8, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4558, file: !4557, line: 200, baseType: !99, size: 8, offset: 40)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4558, file: !4557, line: 201, baseType: !4565, size: 16, offset: 48)
!4565 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4557, line: 17, baseType: !106)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4558, file: !4557, line: 202, baseType: !4567, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4557, line: 16, baseType: !302)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4558, file: !4557, line: 203, baseType: !4569, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4557, line: 22, baseType: !302)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4552, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4552, file: !6, line: 381, baseType: !378, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4552, file: !6, line: 382, baseType: !378, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !325, file: !6, line: 477, baseType: !4552, size: 256, offset: 7168)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !325, file: !6, line: 480, baseType: !4575, size: 64, offset: 7424)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !325, file: !6, line: 483, baseType: !4578, size: 64, offset: 7488)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !325, file: !6, line: 488, baseType: !378, size: 64, offset: 7552)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !325, file: !6, line: 492, baseType: !32, size: 64, offset: 7616)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !325, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !325, file: !6, line: 495, baseType: !32, size: 64, offset: 7744)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !325, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !325, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !325, file: !6, line: 500, baseType: !4587, size: 64, offset: 7872)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4589, line: 45, baseType: !4590)
!4589 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !325, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !325, file: !6, line: 504, baseType: !4593, size: 64, offset: 8000)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4596, line: 96, size: 192, elements: !4597)
!4596 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4597 = !{!4598, !4599, !4641, !4643}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4595, file: !4596, line: 97, baseType: !7, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4595, file: !4596, line: 98, baseType: !4600, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4596, line: 24, size: 3072, elements: !4602)
!4602 = !{!4603, !4605, !4606, !4607, !4608, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4638, !4639, !4640}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4601, file: !4596, line: 26, baseType: !4604, size: 128)
!4604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 128, elements: !2563)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4601, file: !4596, line: 27, baseType: !4604, size: 128, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4601, file: !4596, line: 28, baseType: !34, size: 32, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4601, file: !4596, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4601, file: !4596, line: 32, baseType: !4609, size: 960, offset: 576)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4610, line: 206, size: 960, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4611 = !{!4612, !4613, !4616, !4618, !4619, !4620}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4609, file: !4610, line: 207, baseType: !784, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4609, file: !4610, line: 208, baseType: !4614, size: 256, offset: 64)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4615, size: 256, elements: !835)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4609, file: !4610, line: 209, baseType: !4617, size: 256, offset: 320)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !835)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4609, file: !4610, line: 213, baseType: !413, size: 64, offset: 576)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4609, file: !4610, line: 215, baseType: !1574, size: 256, offset: 640)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4609, file: !4610, line: 216, baseType: !95, size: 8, offset: 896)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4601, file: !4596, line: 33, baseType: !51, size: 64, offset: 1536)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4601, file: !4596, line: 34, baseType: !51, size: 64, offset: 1600)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4601, file: !4596, line: 35, baseType: !1360, size: 8, offset: 1664)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4601, file: !4596, line: 36, baseType: !2271, size: 320, offset: 1728)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4601, file: !4596, line: 37, baseType: !1475, size: 256, offset: 2048)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4601, file: !4596, line: 38, baseType: !781, size: 128, align: 64, offset: 2304)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4601, file: !4596, line: 39, baseType: !4628, size: 64, offset: 2432)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4596, line: 49, size: 768, elements: !4630)
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4636, !4637}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4629, file: !4596, line: 50, baseType: !71, size: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4629, file: !4596, line: 51, baseType: !4617, size: 256, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4629, file: !4596, line: 53, baseType: !4617, size: 256, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4629, file: !4596, line: 54, baseType: !51, size: 64, offset: 576)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4629, file: !4596, line: 55, baseType: !4628, size: 64, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4629, file: !4596, line: 56, baseType: !34, size: 32, offset: 704)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4629, file: !4596, line: 57, baseType: !34, size: 32, offset: 736)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4601, file: !4596, line: 40, baseType: !51, size: 64, offset: 2496)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4601, file: !4596, line: 42, baseType: !34, size: 32, offset: 2560)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4601, file: !4596, line: 43, baseType: !4594, size: 64, offset: 2624)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4595, file: !4596, line: 99, baseType: !4642, offset: 128)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !642, line: 211, elements: !643)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4595, file: !4596, line: 100, baseType: !4644, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4596, line: 63, size: 3008, elements: !4646)
!4646 = !{!4647, !4648, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4676}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4645, file: !4596, line: 64, baseType: !4628, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4645, file: !4596, line: 65, baseType: !4649, size: 192, offset: 64)
!4649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4628, size: 192, elements: !379)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4645, file: !4596, line: 67, baseType: !34, size: 32, offset: 256)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4645, file: !4596, line: 68, baseType: !724, size: 256, offset: 320)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4645, file: !4596, line: 69, baseType: !71, size: 32, offset: 576)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4645, file: !4596, line: 70, baseType: !724, size: 256, offset: 640)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4645, file: !4596, line: 71, baseType: !51, size: 64, offset: 896)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4645, file: !4596, line: 72, baseType: !51, size: 64, offset: 960)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4645, file: !4596, line: 73, baseType: !51, size: 64, offset: 1024)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4645, file: !4596, line: 74, baseType: !51, size: 64, offset: 1088)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4645, file: !4596, line: 75, baseType: !51, size: 64, offset: 1152)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4645, file: !4596, line: 76, baseType: !51, size: 64, offset: 1216)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4645, file: !4596, line: 77, baseType: !51, size: 64, offset: 1280)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4645, file: !4596, line: 78, baseType: !51, size: 64, offset: 1344)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4645, file: !4596, line: 79, baseType: !1360, size: 8, offset: 1408)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4645, file: !4596, line: 80, baseType: !51, size: 64, offset: 1472)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4645, file: !4596, line: 81, baseType: !724, size: 256, offset: 1536)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4645, file: !4596, line: 82, baseType: !1514, size: 256, offset: 1792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4645, file: !4596, line: 84, baseType: !61, size: 32, offset: 2048)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4645, file: !4596, line: 87, baseType: !51, size: 64, offset: 2112)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4645, file: !4596, line: 88, baseType: !51, size: 64, offset: 2176)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4645, file: !4596, line: 89, baseType: !4670, size: 704, offset: 2240)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1476, line: 111, size: 704, elements: !4671)
!4671 = !{!4672, !4673, !4674, !4675}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4670, file: !1476, line: 112, baseType: !1475, size: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4670, file: !1476, line: 113, baseType: !2271, size: 320, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4670, file: !1476, line: 116, baseType: !2486, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4670, file: !1476, line: 117, baseType: !34, size: 32, offset: 640)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4645, file: !4596, line: 90, baseType: !4594, size: 64, offset: 2944)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !325, file: !6, line: 515, baseType: !4678, size: 64, offset: 8064)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4680, line: 117, size: 128, elements: !4681)
!4680 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4681 = !{!4682, !4683, !4684}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4679, file: !4680, line: 118, baseType: !1256, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4679, file: !4680, line: 119, baseType: !1256, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4679, file: !4680, line: 120, baseType: !413, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !325, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !325, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !325, file: !6, line: 520, baseType: !4688, size: 64, offset: 8192)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !325, file: !6, line: 523, baseType: !4690, size: 64, offset: 8256)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !325, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !325, file: !6, line: 525, baseType: !4695, size: 64, offset: 8384)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !325, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !325, file: !6, line: 533, baseType: !32, size: 64, offset: 8512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !325, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !325, file: !6, line: 535, baseType: !4702, size: 64, offset: 8640)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !325, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !325, file: !6, line: 539, baseType: !34, size: 32, offset: 8736)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !325, file: !6, line: 540, baseType: !4706, size: 64, offset: 8768)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4708, line: 32, size: 64, elements: !4709)
!4708 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4709 = !{!4710, !4711}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4707, file: !4708, line: 33, baseType: !1256, size: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4707, file: !4708, line: 34, baseType: !1256, size: 32, offset: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !325, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !325, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !325, file: !6, line: 568, baseType: !2405, size: 64, offset: 9088)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !325, file: !6, line: 570, baseType: !61, size: 32, offset: 9152)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !320, file: !237, line: 306, baseType: !4717, size: 64, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !190, line: 705, size: 5824, elements: !4719)
!4719 = !{!4720, !4721, !4722, !4725, !4726, !4779, !4849, !4850, !4851, !4852, !4853, !4860, !4952, !4965, !4975, !4979, !4981, !4982, !4983, !4987, !4994, !4995, !4998, !5001, !5005, !5008, !5009, !5010, !5011, !5012, !5013, !5043, !5044, !5045, !5048, !5051, !5060, !5061, !5062, !5063, !5064, !5065}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4718, file: !190, line: 706, baseType: !337, size: 512)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4718, file: !190, line: 707, baseType: !4717, size: 64, offset: 512)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4718, file: !190, line: 709, baseType: !4723, size: 64, offset: 576)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !190, line: 37, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4718, file: !190, line: 711, baseType: !28, size: 64, offset: 640)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4718, file: !190, line: 712, baseType: !4727, size: 64, offset: 704)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4729)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !190, line: 89, size: 384, elements: !4730)
!4730 = !{!4731, !4732, !4733, !4739, !4744, !4748}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4729, file: !190, line: 90, baseType: !28, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4729, file: !190, line: 91, baseType: !424, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4729, file: !190, line: 92, baseType: !4734, size: 64, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!34, !4737, !373}
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4729, file: !190, line: 93, baseType: !4740, size: 64, offset: 192)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!378, !4737, !4743, !1539, !1540}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4729, file: !190, line: 95, baseType: !4745, size: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !4717}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4729, file: !190, line: 97, baseType: !4749, size: 64, offset: 320)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4751)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !197, line: 286, size: 1472, elements: !4752)
!4752 = !{!4753, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4751, file: !197, line: 287, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!34, !4717}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4751, file: !197, line: 288, baseType: !4745, size: 64, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4751, file: !197, line: 289, baseType: !4754, size: 64, offset: 128)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4751, file: !197, line: 290, baseType: !4754, size: 64, offset: 192)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4751, file: !197, line: 291, baseType: !4754, size: 64, offset: 256)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4751, file: !197, line: 292, baseType: !4754, size: 64, offset: 320)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4751, file: !197, line: 293, baseType: !4754, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4751, file: !197, line: 294, baseType: !4754, size: 64, offset: 448)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4751, file: !197, line: 295, baseType: !4754, size: 64, offset: 512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4751, file: !197, line: 296, baseType: !4754, size: 64, offset: 576)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4751, file: !197, line: 297, baseType: !4754, size: 64, offset: 640)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4751, file: !197, line: 298, baseType: !4754, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4751, file: !197, line: 299, baseType: !4754, size: 64, offset: 768)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4751, file: !197, line: 300, baseType: !4754, size: 64, offset: 832)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4751, file: !197, line: 301, baseType: !4754, size: 64, offset: 896)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4751, file: !197, line: 302, baseType: !4754, size: 64, offset: 960)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4751, file: !197, line: 303, baseType: !4754, size: 64, offset: 1024)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4751, file: !197, line: 304, baseType: !4754, size: 64, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4751, file: !197, line: 305, baseType: !4754, size: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4751, file: !197, line: 306, baseType: !4754, size: 64, offset: 1216)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4751, file: !197, line: 307, baseType: !4754, size: 64, offset: 1280)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4751, file: !197, line: 308, baseType: !4754, size: 64, offset: 1344)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4751, file: !197, line: 309, baseType: !4754, size: 64, offset: 1408)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4718, file: !190, line: 714, baseType: !4780, size: 64, offset: 768)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4782)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4783, line: 80, size: 1344, elements: !4784)
!4783 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4848}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4782, file: !4783, line: 81, baseType: !28, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4782, file: !4783, line: 82, baseType: !28, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4782, file: !4783, line: 83, baseType: !424, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4782, file: !4783, line: 84, baseType: !424, size: 64, offset: 192)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4782, file: !4783, line: 85, baseType: !424, size: 64, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4782, file: !4783, line: 87, baseType: !4791, size: 64, offset: 320)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!34, !4717, !4794}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !184, line: 96, size: 1152, elements: !4796)
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803, !4807, !4811, !4812, !4813, !4814, !4815, !4823, !4824, !4825, !4826, !4827, !4828}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4795, file: !184, line: 97, baseType: !28, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4795, file: !184, line: 98, baseType: !4780, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4795, file: !184, line: 100, baseType: !324, size: 64, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4795, file: !184, line: 101, baseType: !28, size: 64, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4795, file: !184, line: 103, baseType: !1360, size: 8, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4795, file: !184, line: 104, baseType: !183, size: 32, offset: 288)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4795, file: !184, line: 106, baseType: !4804, size: 64, offset: 320)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4806)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !184, line: 106, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4795, file: !184, line: 107, baseType: !4808, size: 64, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4810)
!4810 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !184, line: 107, flags: DIFlagFwdDecl)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4795, file: !184, line: 109, baseType: !4754, size: 64, offset: 448)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4795, file: !184, line: 110, baseType: !4745, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4795, file: !184, line: 111, baseType: !4754, size: 64, offset: 576)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4795, file: !184, line: 112, baseType: !4745, size: 64, offset: 640)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4795, file: !184, line: 113, baseType: !4816, size: 64, offset: 704)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!34, !4717, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !197, line: 60, baseType: !4820)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !197, line: 58, size: 32, elements: !4821)
!4821 = !{!4822}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4820, file: !197, line: 59, baseType: !34, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4795, file: !184, line: 114, baseType: !4754, size: 64, offset: 768)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4795, file: !184, line: 115, baseType: !424, size: 64, offset: 832)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4795, file: !184, line: 116, baseType: !424, size: 64, offset: 896)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4795, file: !184, line: 118, baseType: !4749, size: 64, offset: 960)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4795, file: !184, line: 119, baseType: !4745, size: 64, offset: 1024)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4795, file: !184, line: 121, baseType: !4829, size: 64, offset: 1088)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !184, line: 121, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4782, file: !4783, line: 88, baseType: !4734, size: 64, offset: 384)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4782, file: !4783, line: 89, baseType: !4754, size: 64, offset: 448)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4782, file: !4783, line: 90, baseType: !4745, size: 64, offset: 512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4782, file: !4783, line: 91, baseType: !4745, size: 64, offset: 576)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4782, file: !4783, line: 92, baseType: !4745, size: 64, offset: 640)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4782, file: !4783, line: 94, baseType: !4754, size: 64, offset: 704)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4782, file: !4783, line: 95, baseType: !4754, size: 64, offset: 768)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4782, file: !4783, line: 97, baseType: !4816, size: 64, offset: 832)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4782, file: !4783, line: 98, baseType: !4754, size: 64, offset: 896)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4782, file: !4783, line: 100, baseType: !4754, size: 64, offset: 960)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4782, file: !4783, line: 102, baseType: !4754, size: 64, offset: 1024)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4782, file: !4783, line: 103, baseType: !4745, size: 64, offset: 1088)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4782, file: !4783, line: 105, baseType: !4749, size: 64, offset: 1152)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4782, file: !4783, line: 107, baseType: !4845, size: 64, offset: 1216)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4847)
!4847 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4783, line: 107, flags: DIFlagFwdDecl)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4782, file: !4783, line: 109, baseType: !1360, size: 8, offset: 1280)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4718, file: !190, line: 715, baseType: !4794, size: 64, offset: 832)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4718, file: !190, line: 717, baseType: !32, size: 64, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4718, file: !190, line: 719, baseType: !32, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4718, file: !190, line: 721, baseType: !724, size: 256, offset: 1024)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4718, file: !190, line: 725, baseType: !4854, size: 448, offset: 1280)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !190, line: 517, size: 448, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4859}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4854, file: !190, line: 518, baseType: !109, size: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4854, file: !190, line: 519, baseType: !109, size: 128, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4854, file: !190, line: 520, baseType: !109, size: 128, offset: 256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4854, file: !190, line: 521, baseType: !189, size: 32, offset: 384)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4718, file: !190, line: 726, baseType: !4861, size: 2496, offset: 1728)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !197, line: 663, size: 2496, elements: !4862)
!4862 = !{!4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4945, !4949}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4861, file: !197, line: 664, baseType: !4819, size: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4861, file: !197, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4861, file: !197, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4861, file: !197, line: 667, baseType: !1360, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4861, file: !197, line: 668, baseType: !1360, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4861, file: !197, line: 669, baseType: !1360, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4861, file: !197, line: 670, baseType: !1360, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4861, file: !197, line: 671, baseType: !1360, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4861, file: !197, line: 672, baseType: !1360, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4861, file: !197, line: 673, baseType: !1360, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4861, file: !197, line: 674, baseType: !1360, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4861, file: !197, line: 675, baseType: !521, size: 32, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4861, file: !197, line: 676, baseType: !71, size: 32, offset: 96)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4861, file: !197, line: 678, baseType: !109, size: 128, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4861, file: !197, line: 679, baseType: !1514, size: 256, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4861, file: !197, line: 680, baseType: !4879, size: 64, offset: 512)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4881, line: 43, size: 1536, elements: !4882)
!4881 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4880, file: !4881, line: 44, baseType: !28, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4880, file: !4881, line: 45, baseType: !34, size: 32, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4880, file: !4881, line: 46, baseType: !109, size: 128, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4880, file: !4881, line: 47, baseType: !71, size: 32, offset: 256)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4880, file: !4881, line: 48, baseType: !4888, size: 64, offset: 320)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !197, line: 629, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4880, file: !4881, line: 49, baseType: !2271, size: 320, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4880, file: !4881, line: 50, baseType: !51, size: 64, offset: 704)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4880, file: !4881, line: 51, baseType: !987, size: 64, offset: 768)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4880, file: !4881, line: 52, baseType: !987, size: 64, offset: 832)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4880, file: !4881, line: 53, baseType: !987, size: 64, offset: 896)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4880, file: !4881, line: 54, baseType: !987, size: 64, offset: 960)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4880, file: !4881, line: 55, baseType: !987, size: 64, offset: 1024)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4880, file: !4881, line: 56, baseType: !51, size: 64, offset: 1088)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4880, file: !4881, line: 57, baseType: !51, size: 64, offset: 1152)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4880, file: !4881, line: 58, baseType: !51, size: 64, offset: 1216)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4880, file: !4881, line: 59, baseType: !51, size: 64, offset: 1280)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4880, file: !4881, line: 60, baseType: !51, size: 64, offset: 1344)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4880, file: !4881, line: 61, baseType: !4717, size: 64, offset: 1408)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4880, file: !4881, line: 62, baseType: !1360, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4880, file: !4881, line: 63, baseType: !1360, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4861, file: !197, line: 681, baseType: !1360, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4861, file: !197, line: 682, baseType: !1360, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4861, file: !197, line: 683, baseType: !1360, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4861, file: !197, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4861, file: !197, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4861, file: !197, line: 690, baseType: !979, size: 512, offset: 640)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4861, file: !197, line: 691, baseType: !301, size: 64, offset: 1152)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4861, file: !197, line: 692, baseType: !1475, size: 256, offset: 1216)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4861, file: !197, line: 693, baseType: !66, size: 192, offset: 1472)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4861, file: !197, line: 694, baseType: !4888, size: 64, offset: 1664)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4861, file: !197, line: 695, baseType: !61, size: 32, offset: 1728)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4861, file: !197, line: 696, baseType: !61, size: 32, offset: 1760)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4861, file: !197, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4861, file: !197, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4861, file: !197, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4861, file: !197, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4861, file: !197, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4861, file: !197, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4861, file: !197, line: 703, baseType: !1360, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4861, file: !197, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4861, file: !197, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4861, file: !197, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4861, file: !197, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4861, file: !197, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4861, file: !197, line: 709, baseType: !7, size: 32, offset: 1824)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4861, file: !197, line: 710, baseType: !196, size: 32, offset: 1856)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4861, file: !197, line: 711, baseType: !204, size: 32, offset: 1888)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4861, file: !197, line: 712, baseType: !204, size: 32, offset: 1920)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4861, file: !197, line: 713, baseType: !34, size: 32, offset: 1952)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4861, file: !197, line: 714, baseType: !34, size: 32, offset: 1984)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4861, file: !197, line: 715, baseType: !301, size: 64, offset: 2048)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4861, file: !197, line: 716, baseType: !301, size: 64, offset: 2112)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4861, file: !197, line: 717, baseType: !301, size: 64, offset: 2176)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4861, file: !197, line: 718, baseType: !301, size: 64, offset: 2240)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4861, file: !197, line: 720, baseType: !4940, size: 64, offset: 2304)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !197, line: 632, size: 64, elements: !4942)
!4942 = !{!4943, !4944}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4941, file: !197, line: 633, baseType: !71, size: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4941, file: !197, line: 634, baseType: !7, size: 32, offset: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4861, file: !197, line: 721, baseType: !4946, size: 64, offset: 2368)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4717, !1256}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4861, file: !197, line: 722, baseType: !4950, size: 64, offset: 2432)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !197, line: 722, flags: DIFlagFwdDecl)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4718, file: !190, line: 727, baseType: !4953, size: 64, offset: 4224)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !197, line: 742, size: 1792, elements: !4955)
!4955 = !{!4956, !4957, !4958, !4962, !4963, !4964}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4954, file: !197, line: 743, baseType: !4751, size: 1472)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4954, file: !197, line: 744, baseType: !4754, size: 64, offset: 1472)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4954, file: !197, line: 745, baseType: !4959, size: 64, offset: 1536)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !4717, !1360}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4954, file: !197, line: 746, baseType: !4754, size: 64, offset: 1600)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4954, file: !197, line: 747, baseType: !4745, size: 64, offset: 1664)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4954, file: !197, line: 748, baseType: !4745, size: 64, offset: 1728)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4718, file: !190, line: 736, baseType: !4966, size: 128, offset: 4288)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !190, line: 529, size: 128, elements: !4967)
!4967 = !{!4968, !4972}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4966, file: !190, line: 531, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4971, line: 13, flags: DIFlagFwdDecl)
!4971 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4966, file: !190, line: 532, baseType: !4973, size: 64, offset: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !190, line: 49, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4718, file: !190, line: 738, baseType: !4976, size: 64, offset: 4416)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4978)
!4978 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !190, line: 738, flags: DIFlagFwdDecl)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4718, file: !190, line: 740, baseType: !4980, size: 64, offset: 4480)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4718, file: !190, line: 741, baseType: !301, size: 64, offset: 4544)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4718, file: !190, line: 746, baseType: !301, size: 64, offset: 4608)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4718, file: !190, line: 747, baseType: !4984, size: 64, offset: 4672)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4986)
!4986 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !190, line: 747, flags: DIFlagFwdDecl)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4718, file: !190, line: 749, baseType: !4988, size: 64, offset: 4736)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !190, line: 428, size: 128, elements: !4990)
!4990 = !{!4991, !4992, !4993}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4989, file: !190, line: 433, baseType: !7, size: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4989, file: !190, line: 434, baseType: !7, size: 32, offset: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4989, file: !190, line: 435, baseType: !51, size: 64, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4718, file: !190, line: 751, baseType: !109, size: 128, offset: 4800)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4718, file: !190, line: 762, baseType: !4996, size: 64, offset: 4928)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !190, line: 762, flags: DIFlagFwdDecl)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4718, file: !190, line: 770, baseType: !4999, offset: 4992)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5000, line: 5, elements: !643)
!5000 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4718, file: !190, line: 772, baseType: !5002, size: 64, offset: 4992)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5004, line: 18, flags: DIFlagFwdDecl)
!5004 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4718, file: !190, line: 773, baseType: !5006, size: 64, offset: 5056)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4783, line: 22, flags: DIFlagFwdDecl)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4718, file: !190, line: 776, baseType: !34, size: 32, offset: 5120)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4718, file: !190, line: 778, baseType: !605, size: 32, offset: 5152)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4718, file: !190, line: 779, baseType: !521, size: 32, offset: 5184)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4718, file: !190, line: 781, baseType: !71, size: 32, offset: 5216)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4718, file: !190, line: 782, baseType: !109, size: 128, offset: 5248)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4718, file: !190, line: 784, baseType: !5014, size: 64, offset: 5376)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5017, line: 52, size: 768, elements: !5018)
!5017 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5027, !5031, !5032, !5033, !5034, !5038, !5042}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5016, file: !5017, line: 53, baseType: !28, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5016, file: !5017, line: 55, baseType: !424, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5016, file: !5017, line: 56, baseType: !424, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5016, file: !5017, line: 58, baseType: !4734, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5016, file: !5017, line: 59, baseType: !5024, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!378, !4737, !4743}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5016, file: !5017, line: 61, baseType: !5028, size: 64, offset: 320)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !5014}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5016, file: !5017, line: 62, baseType: !4745, size: 64, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5016, file: !5017, line: 64, baseType: !4754, size: 64, offset: 448)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5016, file: !5017, line: 66, baseType: !4345, size: 64, offset: 512)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5016, file: !5017, line: 67, baseType: !5035, size: 64, offset: 576)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!1289, !4737}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5016, file: !5017, line: 69, baseType: !5039, size: 64, offset: 640)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !4737, !1539, !1540}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5016, file: !5017, line: 71, baseType: !4749, size: 64, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4718, file: !190, line: 785, baseType: !424, size: 64, offset: 5440)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4718, file: !190, line: 787, baseType: !4745, size: 64, offset: 5504)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4718, file: !190, line: 788, baseType: !5046, size: 64, offset: 5568)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !190, line: 46, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4718, file: !190, line: 789, baseType: !5049, size: 64, offset: 5632)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !190, line: 48, flags: DIFlagFwdDecl)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4718, file: !190, line: 791, baseType: !5052, size: 64, offset: 5696)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !190, line: 597, size: 128, elements: !5054)
!5054 = !{!5055, !5056, !5057, !5058, !5059}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5053, file: !190, line: 598, baseType: !211, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5053, file: !190, line: 599, baseType: !220, size: 32, offset: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5053, file: !190, line: 600, baseType: !225, size: 32, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5053, file: !190, line: 601, baseType: !1360, size: 8, offset: 96)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5053, file: !190, line: 602, baseType: !1360, size: 8, offset: 104)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4718, file: !190, line: 793, baseType: !230, size: 32, offset: 5760)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4718, file: !190, line: 795, baseType: !1360, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4718, file: !190, line: 796, baseType: !1360, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4718, file: !190, line: 797, baseType: !1360, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4718, file: !190, line: 798, baseType: !1360, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4718, file: !190, line: 799, baseType: !1360, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !320, file: !237, line: 307, baseType: !4717, size: 64, offset: 256)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !320, file: !237, line: 308, baseType: !424, size: 64, offset: 320)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !320, file: !237, line: 309, baseType: !424, size: 64, offset: 384)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !237, line: 310, baseType: !28, size: 64, offset: 448)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !237, line: 311, baseType: !34, size: 32, offset: 512)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !320, file: !237, line: 316, baseType: !34, size: 32, offset: 544)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !320, file: !237, line: 318, baseType: !706, size: 64, offset: 576)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !320, file: !237, line: 319, baseType: !5074, size: 64, offset: 640)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !237, line: 977, size: 1856, elements: !5076)
!5076 = !{!5077, !5092, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !5075, file: !237, line: 978, baseType: !5078, size: 896)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !237, line: 873, size: 896, elements: !5079)
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !5078, file: !237, line: 874, baseType: !319, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5078, file: !237, line: 875, baseType: !2918, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !5078, file: !237, line: 877, baseType: !109, size: 128, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !5078, file: !237, line: 879, baseType: !109, size: 128, offset: 256)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !5078, file: !237, line: 880, baseType: !109, size: 128, offset: 384)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !5078, file: !237, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !5078, file: !237, line: 885, baseType: !7, size: 32, offset: 544)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !5078, file: !237, line: 886, baseType: !7, size: 32, offset: 576)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5078, file: !237, line: 888, baseType: !61, size: 32, offset: 608)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5078, file: !237, line: 889, baseType: !781, size: 128, align: 64, offset: 640)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !5078, file: !237, line: 891, baseType: !32, size: 64, offset: 768)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !5078, file: !237, line: 898, baseType: !34, size: 32, offset: 832)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !5075, file: !237, line: 979, baseType: !5093, size: 64, offset: 896)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !5075, file: !237, line: 981, baseType: !109, size: 128, offset: 960)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !5075, file: !237, line: 982, baseType: !34, size: 32, offset: 1088)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !5075, file: !237, line: 984, baseType: !34, size: 32, offset: 1120)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5075, file: !237, line: 985, baseType: !34, size: 32, offset: 1152)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !5075, file: !237, line: 987, baseType: !737, size: 32, offset: 1184)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5075, file: !237, line: 988, baseType: !979, size: 512, offset: 1216)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !5075, file: !237, line: 989, baseType: !987, size: 64, offset: 1728)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !5075, file: !237, line: 990, baseType: !7, size: 32, offset: 1792)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !320, file: !237, line: 320, baseType: !61, size: 32, offset: 704)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !320, file: !237, line: 321, baseType: !34, size: 32, offset: 736)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !320, file: !237, line: 322, baseType: !34, size: 32, offset: 768)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !320, file: !237, line: 325, baseType: !7, size: 32, offset: 800)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !320, file: !237, line: 331, baseType: !5107, size: 64, offset: 832)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !319}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !320, file: !237, line: 332, baseType: !5107, size: 64, offset: 896)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !320, file: !237, line: 350, baseType: !5112, size: 64, offset: 960)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!34, !286}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !320, file: !237, line: 356, baseType: !5116, size: 64, offset: 1024)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{null, !286, !1155}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !320, file: !237, line: 357, baseType: !5116, size: 64, offset: 1088)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !320, file: !237, line: 385, baseType: !5121, size: 64, offset: 1152)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!34, !286, !34}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !320, file: !237, line: 386, baseType: !5125, size: 64, offset: 1216)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !286, !34}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !320, file: !237, line: 406, baseType: !5125, size: 64, offset: 1280)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !320, file: !237, line: 407, baseType: !5125, size: 64, offset: 1344)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !320, file: !237, line: 415, baseType: !5131, size: 64, offset: 1408)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{null, !286}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !320, file: !237, line: 427, baseType: !5135, size: 64, offset: 1472)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !319, !7}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !320, file: !237, line: 436, baseType: !5139, size: 64, offset: 1536)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!34, !319}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !320, file: !237, line: 443, baseType: !5107, size: 64, offset: 1600)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !320, file: !237, line: 450, baseType: !5112, size: 64, offset: 1664)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !320, file: !237, line: 455, baseType: !5145, size: 64, offset: 1728)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !5093, !1360}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !320, file: !237, line: 461, baseType: !3329, size: 64, offset: 1792)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !320, file: !237, line: 469, baseType: !5150, size: 64, offset: 1856)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{null, !5093, !5093}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !320, file: !237, line: 476, baseType: !5154, size: 64, offset: 1920)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!32, !286, !3490, !34, !1360}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !320, file: !237, line: 483, baseType: !3940, size: 64, offset: 1984)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !320, file: !237, line: 494, baseType: !5159, size: 64, offset: 2048)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!413, !286, !5162, !51}
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !237, line: 1014, size: 448, elements: !5164)
!5164 = !{!5165, !5166, !5169, !5170, !5171, !5172, !5177}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5163, file: !237, line: 1015, baseType: !286, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5163, file: !237, line: 1016, baseType: !5167, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !237, line: 641, flags: DIFlagFwdDecl)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5163, file: !237, line: 1017, baseType: !51, size: 64, offset: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5163, file: !237, line: 1018, baseType: !51, size: 64, offset: 192)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !5163, file: !237, line: 1019, baseType: !301, size: 64, offset: 256)
!5172 = !DIDerivedType(tag: DW_TAG_member, scope: !5163, file: !237, line: 1020, baseType: !5173, size: 64, offset: 320)
!5173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5163, file: !237, line: 1020, size: 64, elements: !5174)
!5174 = !{!5175, !5176}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5173, file: !237, line: 1021, baseType: !32, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5173, file: !237, line: 1022, baseType: !51, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5163, file: !237, line: 1024, baseType: !34, size: 32, offset: 384)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !320, file: !237, line: 506, baseType: !5179, size: 64, offset: 2112)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!34, !112}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !320, file: !237, line: 520, baseType: !5131, size: 64, offset: 2176)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !320, file: !237, line: 530, baseType: !5112, size: 64, offset: 2240)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !320, file: !237, line: 537, baseType: !5185, size: 64, offset: 2304)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!1360, !319, !34}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !320, file: !237, line: 542, baseType: !5189, size: 64, offset: 2368)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!34, !286, !301}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !287, file: !237, line: 715, baseType: !32, size: 64, offset: 1280)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !237, line: 717, baseType: !236, size: 32, offset: 1344)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !287, file: !237, line: 718, baseType: !7, size: 32, offset: 1376)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !287, file: !237, line: 719, baseType: !5196, size: 64, offset: 1408)
!5196 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !5197, line: 26, baseType: !5198)
!5197 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5197, line: 24, size: 64, elements: !5199)
!5199 = !{!5200}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !5198, file: !5197, line: 25, baseType: !2950, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !287, file: !237, line: 720, baseType: !730, size: 64, offset: 1472)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !287, file: !237, line: 728, baseType: !301, size: 64, offset: 1536)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !287, file: !237, line: 729, baseType: !301, size: 64, offset: 1600)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !287, file: !237, line: 730, baseType: !301, size: 64, offset: 1664)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !287, file: !237, line: 732, baseType: !5206, size: 1088, offset: 1728)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !5207, line: 385, size: 1088, elements: !5208)
!5207 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!5208 = !{!5209, !5210, !5211, !5212, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5262, !5263, !5270, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5206, file: !5207, line: 390, baseType: !522, size: 32)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5206, file: !5207, line: 395, baseType: !522, size: 32, offset: 32)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5206, file: !5207, line: 400, baseType: !302, size: 64, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, scope: !5206, file: !5207, line: 402, baseType: !5213, size: 64, offset: 128)
!5213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5206, file: !5207, line: 402, size: 64, elements: !5214)
!5214 = !{!5215, !5216}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5213, file: !5207, line: 403, baseType: !302, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !5213, file: !5207, line: 404, baseType: !302, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !5206, file: !5207, line: 407, baseType: !302, size: 64, offset: 192)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !5206, file: !5207, line: 408, baseType: !302, size: 64, offset: 256)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5206, file: !5207, line: 410, baseType: !302, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !5206, file: !5207, line: 411, baseType: !302, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !5206, file: !5207, line: 412, baseType: !302, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5206, file: !5207, line: 413, baseType: !302, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !5206, file: !5207, line: 414, baseType: !302, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !5206, file: !5207, line: 415, baseType: !302, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !5206, file: !5207, line: 416, baseType: !302, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !5206, file: !5207, line: 417, baseType: !302, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5206, file: !5207, line: 418, baseType: !302, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5206, file: !5207, line: 419, baseType: !302, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5206, file: !5207, line: 420, baseType: !302, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !5206, file: !5207, line: 421, baseType: !302, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !5206, file: !5207, line: 422, baseType: !302, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5206, file: !5207, line: 423, baseType: !302, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !5206, file: !5207, line: 424, baseType: !302, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !5206, file: !5207, line: 435, baseType: !302, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !5206, file: !5207, line: 436, baseType: !302, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !5206, file: !5207, line: 437, baseType: !302, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !5206, file: !5207, line: 439, baseType: !302, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !5206, file: !5207, line: 440, baseType: !302, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !5206, file: !5207, line: 442, baseType: !302, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !5206, file: !5207, line: 443, baseType: !302, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !5206, file: !5207, line: 444, baseType: !302, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !5206, file: !5207, line: 445, baseType: !302, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !5206, file: !5207, line: 446, baseType: !302, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !5206, file: !5207, line: 447, baseType: !302, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !5206, file: !5207, line: 448, baseType: !302, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !5206, file: !5207, line: 449, baseType: !302, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !5206, file: !5207, line: 450, baseType: !302, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !5206, file: !5207, line: 451, baseType: !302, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !5206, file: !5207, line: 452, baseType: !302, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5206, file: !5207, line: 453, baseType: !302, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !5206, file: !5207, line: 454, baseType: !302, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !5206, file: !5207, line: 455, baseType: !302, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !5206, file: !5207, line: 456, baseType: !302, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !5206, file: !5207, line: 457, baseType: !302, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !5206, file: !5207, line: 458, baseType: !302, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !5206, file: !5207, line: 459, baseType: !302, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!5257 = !DIDerivedType(tag: DW_TAG_member, scope: !5206, file: !5207, line: 461, baseType: !5258, size: 32, offset: 384)
!5258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5206, file: !5207, line: 461, size: 32, elements: !5259)
!5259 = !{!5260, !5261}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !5258, file: !5207, line: 462, baseType: !522, size: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !5258, file: !5207, line: 463, baseType: !522, size: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !5206, file: !5207, line: 466, baseType: !522, size: 32, offset: 416)
!5263 = !DIDerivedType(tag: DW_TAG_member, scope: !5206, file: !5207, line: 467, baseType: !5264, size: 64, offset: 448)
!5264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5206, file: !5207, line: 467, size: 64, elements: !5265)
!5265 = !{!5266, !5267, !5268, !5269}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !5264, file: !5207, line: 468, baseType: !302, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !5264, file: !5207, line: 469, baseType: !302, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !5264, file: !5207, line: 470, baseType: !302, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !5264, file: !5207, line: 471, baseType: !302, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, scope: !5206, file: !5207, line: 473, baseType: !5271, size: 64, offset: 512)
!5271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5206, file: !5207, line: 473, size: 64, elements: !5272)
!5272 = !{!5273, !5274, !5275, !5276}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !5271, file: !5207, line: 474, baseType: !302, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !5271, file: !5207, line: 475, baseType: !302, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !5271, file: !5207, line: 476, baseType: !302, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !5271, file: !5207, line: 477, baseType: !302, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !5206, file: !5207, line: 479, baseType: !302, size: 64, offset: 576)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !5206, file: !5207, line: 485, baseType: !302, size: 64, offset: 640)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !5206, file: !5207, line: 490, baseType: !522, size: 32, offset: 704)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5206, file: !5207, line: 492, baseType: !1257, size: 32, offset: 736)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !5206, file: !5207, line: 501, baseType: !302, size: 64, offset: 768)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !5206, file: !5207, line: 506, baseType: !522, size: 32, offset: 832)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !5206, file: !5207, line: 507, baseType: !106, size: 16, offset: 864)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !5206, file: !5207, line: 508, baseType: !106, size: 16, offset: 880)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !5206, file: !5207, line: 509, baseType: !522, size: 32, offset: 896)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !5206, file: !5207, line: 510, baseType: !522, size: 32, offset: 928)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !5206, file: !5207, line: 518, baseType: !302, size: 64, offset: 960)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !5206, file: !5207, line: 520, baseType: !302, size: 64, offset: 1024)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !287, file: !237, line: 733, baseType: !105, size: 16, offset: 2816)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !287, file: !237, line: 734, baseType: !105, size: 16, offset: 2832)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !287, file: !237, line: 735, baseType: !105, size: 16, offset: 2848)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !287, file: !237, line: 736, baseType: !5293, size: 1536, offset: 2880)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !237, line: 155, size: 1536, elements: !5294)
!5294 = !{!5295, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5379, !5380, !5381, !5382}
!5295 = !DIDerivedType(tag: DW_TAG_member, scope: !5293, file: !237, line: 157, baseType: !5296, size: 768)
!5296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5293, file: !237, line: 157, size: 768, elements: !5297)
!5297 = !{!5298, !5317, !5321, !5325, !5330, !5352}
!5298 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 158, baseType: !5299, size: 768)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 158, size: 768, elements: !5300)
!5300 = !{!5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5316}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5299, file: !237, line: 159, baseType: !301, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !5299, file: !237, line: 160, baseType: !301, size: 64, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !5299, file: !237, line: 161, baseType: !51, size: 64, offset: 128)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !5299, file: !237, line: 162, baseType: !51, size: 64, offset: 192)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !5299, file: !237, line: 163, baseType: !34, size: 32, offset: 256)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5299, file: !237, line: 164, baseType: !34, size: 32, offset: 288)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5299, file: !237, line: 165, baseType: !34, size: 32, offset: 320)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5299, file: !237, line: 166, baseType: !34, size: 32, offset: 352)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !5299, file: !237, line: 168, baseType: !5310, size: 192, offset: 384)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !237, line: 134, size: 192, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5310, file: !237, line: 135, baseType: !301, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5310, file: !237, line: 136, baseType: !7, size: 32, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5310, file: !237, line: 137, baseType: !34, size: 32, offset: 96)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5310, file: !237, line: 138, baseType: !34, size: 32, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !5299, file: !237, line: 169, baseType: !5310, size: 192, offset: 576)
!5317 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 171, baseType: !5318, size: 512)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 171, size: 512, elements: !5319)
!5319 = !{!5320}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5318, file: !237, line: 172, baseType: !979, size: 512)
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 174, baseType: !5322, size: 128)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 174, size: 128, elements: !5323)
!5323 = !{!5324}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !5322, file: !237, line: 176, baseType: !109, size: 128)
!5325 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 178, baseType: !5326, size: 128)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 178, size: 128, elements: !5327)
!5327 = !{!5328, !5329}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !5326, file: !237, line: 179, baseType: !301, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !5326, file: !237, line: 180, baseType: !301, size: 64, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 183, baseType: !5331, size: 320)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 183, size: 320, elements: !5332)
!5332 = !{!5333, !5341}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5331, file: !237, line: 189, baseType: !5334, size: 192)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !5335, line: 14, size: 192, elements: !5336)
!5335 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!5336 = !{!5337, !5338, !5339, !5340}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5334, file: !5335, line: 15, baseType: !51, size: 64)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5334, file: !5335, line: 16, baseType: !51, size: 64, offset: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5334, file: !5335, line: 17, baseType: !95, size: 8, offset: 128)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5334, file: !5335, line: 18, baseType: !95, size: 8, offset: 136)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !5331, file: !237, line: 190, baseType: !5342, size: 128, offset: 192)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !5343, line: 21, size: 128, elements: !5344)
!5343 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!5344 = !{!5345, !5350}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !5342, file: !5343, line: 22, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !5343, line: 17, size: 64, elements: !5347)
!5347 = !{!5348}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5346, file: !5343, line: 18, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5342, file: !5343, line: 23, baseType: !5351, size: 64, offset: 64)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, scope: !5296, file: !237, line: 193, baseType: !5353, size: 192)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5296, file: !237, line: 193, size: 192, elements: !5354)
!5354 = !{!5355, !5356, !5357, !5358, !5359}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !5353, file: !237, line: 194, baseType: !95, size: 8)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !5353, file: !237, line: 195, baseType: !95, size: 8, offset: 8)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5353, file: !237, line: 196, baseType: !105, size: 16, offset: 16)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5353, file: !237, line: 197, baseType: !301, size: 64, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !5353, file: !237, line: 198, baseType: !301, size: 64, offset: 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5293, file: !237, line: 205, baseType: !867, size: 64, offset: 768)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !5293, file: !237, line: 211, baseType: !32, size: 64, offset: 832)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !5293, file: !237, line: 214, baseType: !51, size: 64, offset: 896)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5293, file: !237, line: 223, baseType: !34, size: 32, offset: 960)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !5293, file: !237, line: 229, baseType: !5196, size: 64, offset: 1024)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5293, file: !237, line: 234, baseType: !301, size: 64, offset: 1088)
!5366 = !DIDerivedType(tag: DW_TAG_member, scope: !5293, file: !237, line: 236, baseType: !5367, size: 128, offset: 1152)
!5367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5293, file: !237, line: 236, size: 128, elements: !5368)
!5368 = !{!5369, !5374}
!5369 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !237, line: 237, baseType: !5370, size: 128)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5367, file: !237, line: 237, size: 128, elements: !5371)
!5371 = !{!5372, !5373}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !5370, file: !237, line: 241, baseType: !301, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !5370, file: !237, line: 249, baseType: !5196, size: 64, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !237, line: 251, baseType: !5375, size: 128)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5367, file: !237, line: 251, size: 128, elements: !5376)
!5376 = !{!5377, !5378}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !5375, file: !237, line: 252, baseType: !301, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !5375, file: !237, line: 253, baseType: !301, size: 64, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !5293, file: !237, line: 261, baseType: !301, size: 64, offset: 1280)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5293, file: !237, line: 262, baseType: !301, size: 64, offset: 1344)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !5293, file: !237, line: 268, baseType: !301, size: 64, offset: 1408)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !5293, file: !237, line: 269, baseType: !301, size: 64, offset: 1472)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !287, file: !237, line: 738, baseType: !2918, size: 64, offset: 4416)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !287, file: !237, line: 744, baseType: !5093, size: 64, offset: 4480)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !287, file: !237, line: 745, baseType: !728, size: 64, offset: 4544)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !287, file: !237, line: 751, baseType: !730, size: 64, offset: 4608)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !287, file: !237, line: 752, baseType: !730, size: 64, offset: 4672)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !287, file: !237, line: 757, baseType: !724, size: 256, offset: 4736)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !287, file: !237, line: 758, baseType: !109, size: 128, offset: 4992)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !287, file: !237, line: 759, baseType: !286, size: 64, offset: 5120)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !287, file: !237, line: 761, baseType: !34, size: 32, offset: 5184)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !287, file: !237, line: 762, baseType: !34, size: 32, offset: 5216)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !287, file: !237, line: 764, baseType: !109, size: 128, offset: 5248)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !287, file: !237, line: 765, baseType: !867, size: 64, offset: 5376)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !287, file: !237, line: 768, baseType: !724, size: 256, offset: 5440)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !287, file: !237, line: 769, baseType: !61, size: 32, offset: 5696)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !287, file: !237, line: 771, baseType: !5167, size: 64, offset: 5760)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !287, file: !237, line: 772, baseType: !109, size: 128, offset: 5824)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !287, file: !237, line: 773, baseType: !51, size: 64, offset: 5952)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !287, file: !237, line: 774, baseType: !34, size: 32, offset: 6016)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !287, file: !237, line: 777, baseType: !66, size: 192, offset: 6080)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !287, file: !237, line: 778, baseType: !5403, size: 64, offset: 6272)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5404, file: !14, line: 1084, baseType: !801, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5404, file: !14, line: 1085, baseType: !34, size: 32, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5404, file: !14, line: 1086, baseType: !34, size: 32, offset: 96)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5404, file: !14, line: 1087, baseType: !5403, size: 64, offset: 128)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5404, file: !14, line: 1088, baseType: !1182, size: 64, offset: 192)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5404, file: !14, line: 1089, baseType: !781, size: 128, align: 64, offset: 256)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !287, file: !237, line: 781, baseType: !7, size: 32, offset: 6336)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !287, file: !237, line: 782, baseType: !7, size: 32, offset: 6368)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !287, file: !237, line: 783, baseType: !7, size: 32, offset: 6400)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !287, file: !237, line: 784, baseType: !7, size: 32, offset: 6432)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !287, file: !237, line: 785, baseType: !51, size: 64, offset: 6464)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !287, file: !237, line: 786, baseType: !5418, size: 256, offset: 6528)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5419, line: 17, size: 256, elements: !5420)
!5419 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5420 = !{!5421, !5422, !5427}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5418, file: !5419, line: 18, baseType: !886, size: 128)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5418, file: !5419, line: 19, baseType: !5423, size: 64, offset: 128)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !5426}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5418, file: !5419, line: 20, baseType: !3827, size: 64, offset: 192)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !287, file: !237, line: 787, baseType: !781, size: 128, align: 64, offset: 6784)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !287, file: !237, line: 788, baseType: !7, size: 32, offset: 6912)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !287, file: !237, line: 789, baseType: !3827, size: 64, offset: 6976)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !287, file: !237, line: 791, baseType: !61, size: 32, offset: 7040)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !287, file: !237, line: 794, baseType: !5433, size: 192, offset: 7104)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !237, line: 579, size: 192, elements: !5434)
!5434 = !{!5435, !5436, !5437}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5433, file: !237, line: 580, baseType: !109, size: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5433, file: !237, line: 581, baseType: !737, size: 32, offset: 128)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !5433, file: !237, line: 582, baseType: !7, size: 32, offset: 160)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !287, file: !237, line: 796, baseType: !5439, size: 64, offset: 7296)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !237, line: 585, size: 128, elements: !5441)
!5441 = !{!5442, !5443}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5440, file: !237, line: 586, baseType: !51, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5440, file: !237, line: 587, baseType: !51, size: 64, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !287, file: !237, line: 797, baseType: !51, size: 64, offset: 7360)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !287, file: !237, line: 800, baseType: !286, size: 64, offset: 7424)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !287, file: !237, line: 802, baseType: !5131, size: 64, offset: 7488)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !287, file: !237, line: 803, baseType: !781, size: 128, align: 64, offset: 7552)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !287, file: !237, line: 805, baseType: !846, size: 64, offset: 7680)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !287, file: !237, line: 806, baseType: !301, size: 64, offset: 7744)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !287, file: !237, line: 808, baseType: !730, size: 64, offset: 7808)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !287, file: !237, line: 810, baseType: !5452, size: 64, offset: 7872)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!301}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !287, file: !237, line: 811, baseType: !5456, size: 64, offset: 7936)
!5456 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !237, line: 605, baseType: !5457)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !286, !5460, !3251}
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !237, line: 1148, size: 2048, align: 512, elements: !5462)
!5462 = !{!5463, !5464, !5465, !5466, !5467, !5472, !5473, !5474, !5479, !5480, !5487, !5508, !5530, !5540, !5558, !5559, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !5461, file: !237, line: 1153, baseType: !301, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5461, file: !237, line: 1154, baseType: !301, size: 64, offset: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !5461, file: !237, line: 1155, baseType: !301, size: 64, offset: 128)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5461, file: !237, line: 1161, baseType: !301, size: 64, offset: 192)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !5461, file: !237, line: 1165, baseType: !5468, size: 64, offset: 256)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !237, line: 1162, size: 64, elements: !5469)
!5469 = !{!5470, !5471}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5468, file: !237, line: 1163, baseType: !521, size: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !5468, file: !237, line: 1164, baseType: !521, size: 32, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5461, file: !237, line: 1166, baseType: !301, size: 64, offset: 320)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5461, file: !237, line: 1167, baseType: !301, size: 64, offset: 384)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !5461, file: !237, line: 1171, baseType: !5475, size: 64, offset: 448)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !237, line: 1168, size: 64, elements: !5476)
!5476 = !{!5477, !5478}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5475, file: !237, line: 1169, baseType: !521, size: 32)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5475, file: !237, line: 1170, baseType: !521, size: 32, offset: 32)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5461, file: !237, line: 1177, baseType: !301, size: 64, offset: 512)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !5461, file: !237, line: 1178, baseType: !5481, size: 64, offset: 576)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !237, line: 67, size: 64, elements: !5483)
!5483 = !{!5484, !5485}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5482, file: !237, line: 68, baseType: !302, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5482, file: !237, line: 69, baseType: !5486, offset: 64)
!5486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, elements: !1591)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5461, file: !237, line: 1179, baseType: !5488, size: 64, offset: 640)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !237, line: 93, size: 256, elements: !5490)
!5490 = !{!5491, !5507}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !5489, file: !237, line: 94, baseType: !5492, size: 224)
!5492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !237, line: 83, size: 224, elements: !5493)
!5493 = !{!5494, !5500, !5505, !5506}
!5494 = !DIDerivedType(tag: DW_TAG_member, scope: !5492, file: !237, line: 84, baseType: !5495, size: 64)
!5495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5492, file: !237, line: 84, size: 64, elements: !5496)
!5496 = !{!5497, !5499}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5495, file: !237, line: 85, baseType: !5498, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5495, file: !237, line: 86, baseType: !51, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5492, file: !237, line: 88, baseType: !5501, size: 64, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !237, line: 80, baseType: !5502)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!51, !32, !1289, !51, !51}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5492, file: !237, line: 89, baseType: !32, size: 64, offset: 128)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5492, file: !237, line: 90, baseType: !521, size: 32, offset: 192)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5489, file: !237, line: 95, baseType: !521, size: 32, offset: 224)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !5461, file: !237, line: 1180, baseType: !5509, size: 64, offset: 704)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !237, line: 123, size: 128, elements: !5511)
!5511 = !{!5512, !5513, !5514}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5510, file: !237, line: 124, baseType: !302, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !5510, file: !237, line: 125, baseType: !302, size: 64, offset: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5510, file: !237, line: 126, baseType: !5515, offset: 128)
!5515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5516, elements: !1591)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !5207, line: 1415, size: 192, elements: !5517)
!5517 = !{!5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5516, file: !5207, line: 1416, baseType: !302, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5516, file: !5207, line: 1417, baseType: !302, size: 64, offset: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !5516, file: !5207, line: 1418, baseType: !302, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !5516, file: !5207, line: 1419, baseType: !302, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !5516, file: !5207, line: 1420, baseType: !302, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !5516, file: !5207, line: 1421, baseType: !302, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5516, file: !5207, line: 1422, baseType: !302, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5516, file: !5207, line: 1423, baseType: !302, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5516, file: !5207, line: 1424, baseType: !302, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !5516, file: !5207, line: 1425, baseType: !302, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5516, file: !5207, line: 1426, baseType: !302, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5516, file: !5207, line: 1427, baseType: !302, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5461, file: !237, line: 1181, baseType: !5531, size: 64, offset: 768)
!5531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !5207, line: 1430, size: 64, elements: !5532)
!5532 = !{!5533, !5534}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5531, file: !5207, line: 1431, baseType: !302, size: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, scope: !5531, file: !5207, line: 1433, baseType: !5535, size: 64)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5531, file: !5207, line: 1433, size: 64, elements: !5536)
!5536 = !{!5537, !5538, !5539}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !5535, file: !5207, line: 1434, baseType: !522, size: 32)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !5535, file: !5207, line: 1435, baseType: !106, size: 16, offset: 32)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !5535, file: !5207, line: 1436, baseType: !106, size: 16, offset: 48)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !5461, file: !237, line: 1182, baseType: !5541, size: 64, offset: 832)
!5541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !5207, line: 1267, size: 64, elements: !5542)
!5542 = !{!5543, !5544}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5541, file: !5207, line: 1268, baseType: !302, size: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, scope: !5541, file: !5207, line: 1269, baseType: !5545, size: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5541, file: !5207, line: 1269, size: 64, elements: !5546)
!5546 = !{!5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !5545, file: !5207, line: 1270, baseType: !302, size: 5, flags: DIFlagBitField, extraData: i64 0)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !5545, file: !5207, line: 1271, baseType: !302, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !5545, file: !5207, line: 1272, baseType: !302, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !5545, file: !5207, line: 1273, baseType: !302, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !5545, file: !5207, line: 1274, baseType: !302, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !5545, file: !5207, line: 1275, baseType: !302, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !5545, file: !5207, line: 1276, baseType: !302, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !5545, file: !5207, line: 1277, baseType: !302, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !5545, file: !5207, line: 1278, baseType: !302, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !5545, file: !5207, line: 1279, baseType: !302, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !5545, file: !5207, line: 1280, baseType: !302, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !5461, file: !237, line: 1183, baseType: !301, size: 64, offset: 896)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !5461, file: !237, line: 1185, baseType: !5560, size: 128, offset: 960)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !5561, line: 7, size: 128, elements: !5562)
!5561 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!5562 = !{!5563, !5564}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !5560, file: !5561, line: 8, baseType: !302, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5560, file: !5561, line: 9, baseType: !3251, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !5461, file: !237, line: 1186, baseType: !5560, size: 128, offset: 1088)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !5461, file: !237, line: 1187, baseType: !301, size: 64, offset: 1216)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5461, file: !237, line: 1189, baseType: !301, size: 64, offset: 1280)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5461, file: !237, line: 1190, baseType: !301, size: 64, offset: 1344)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5461, file: !237, line: 1191, baseType: !301, size: 64, offset: 1408)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5461, file: !237, line: 1192, baseType: !301, size: 64, offset: 1472)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !5461, file: !237, line: 1193, baseType: !301, size: 64, offset: 1536)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !5461, file: !237, line: 1194, baseType: !301, size: 64, offset: 1600)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5461, file: !237, line: 1195, baseType: !301, size: 64, offset: 1664)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !287, file: !237, line: 812, baseType: !32, size: 64, offset: 8000)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !287, file: !237, line: 820, baseType: !4691, size: 64, offset: 8064)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !287, file: !237, line: 821, baseType: !5577, size: 64, offset: 8128)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !237, line: 821, flags: DIFlagFwdDecl)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !287, file: !237, line: 828, baseType: !5580, size: 64, offset: 8192)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !237, line: 1046, size: 1664, elements: !5582)
!5582 = !{!5583, !5584}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !5581, file: !237, line: 1047, baseType: !1866, size: 1600)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5581, file: !237, line: 1048, baseType: !5585, size: 64, offset: 1600)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !237, line: 1039, size: 256, elements: !5587)
!5587 = !{!5588, !5589, !5590, !5591}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5586, file: !237, line: 1040, baseType: !301, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5586, file: !237, line: 1041, baseType: !301, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !5586, file: !237, line: 1042, baseType: !301, size: 64, offset: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5586, file: !237, line: 1043, baseType: !34, size: 32, offset: 192)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !287, file: !237, line: 832, baseType: !32, size: 64, offset: 8256)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !287, file: !237, line: 834, baseType: !109, size: 128, offset: 8320)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !287, file: !237, line: 842, baseType: !522, size: 32, offset: 8448)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tss_struct", file: !3113, line: 378, size: 163840, align: 32768, elements: !5599)
!5599 = !{!5600, !5614}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tss", scope: !5598, file: !3113, line: 384, baseType: !5601, size: 832)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hw_tss", file: !3113, line: 286, size: 832, elements: !5602)
!5602 = !{!5603, !5604, !5605, !5606, !5607, !5608, !5610, !5611, !5612, !5613}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5601, file: !3113, line: 287, baseType: !521, size: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "sp0", scope: !5601, file: !3113, line: 288, baseType: !301, size: 64, offset: 32)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "sp1", scope: !5601, file: !3113, line: 289, baseType: !301, size: 64, offset: 96)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "sp2", scope: !5601, file: !3113, line: 296, baseType: !301, size: 64, offset: 160)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5601, file: !3113, line: 298, baseType: !301, size: 64, offset: 224)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !5601, file: !3113, line: 299, baseType: !5609, size: 448, offset: 288)
!5609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 448, elements: !4519)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5601, file: !3113, line: 300, baseType: !521, size: 32, offset: 736)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5601, file: !3113, line: 301, baseType: !521, size: 32, offset: 768)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !5601, file: !3113, line: 302, baseType: !105, size: 16, offset: 800)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap_base", scope: !5601, file: !3113, line: 303, baseType: !105, size: 16, offset: 816)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5598, file: !3113, line: 386, baseType: !5615, size: 131328, offset: 832)
!5615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_io_bitmap", file: !3113, line: 350, size: 131328, elements: !5616)
!5616 = !{!5617, !5618, !5619, !5623}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sequence", scope: !5615, file: !3113, line: 352, baseType: !301, size: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "prev_max", scope: !5615, file: !3113, line: 361, baseType: !7, size: 32, offset: 64)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !5615, file: !3113, line: 369, baseType: !5620, size: 65600, offset: 128)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 65600, elements: !5621)
!5621 = !{!5622}
!5622 = !DISubrange(count: 1025)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "mapall", scope: !5615, file: !3113, line: 375, baseType: !5620, size: 65600, offset: 65728)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlb_state", file: !5626, line: 72, size: 1024, elements: !5627)
!5626 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!5627 = !{!5628, !5629, !5634, !5635, !5636, !5637, !5638, !5639}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "loaded_mm", scope: !5625, file: !5626, line: 84, baseType: !1155, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, scope: !5625, file: !5626, line: 89, baseType: !5630, size: 64, offset: 64)
!5630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5625, file: !5626, line: 89, size: 64, elements: !5631)
!5631 = !{!5632, !5633}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "last_user_mm", scope: !5630, file: !5626, line: 90, baseType: !1155, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "last_user_mm_spec", scope: !5630, file: !5626, line: 91, baseType: !51, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "loaded_mm_asid", scope: !5625, file: !5626, line: 94, baseType: !105, size: 16, offset: 128)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "next_asid", scope: !5625, file: !5626, line: 95, baseType: !105, size: 16, offset: 144)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_other", scope: !5625, file: !5626, line: 106, baseType: !1360, size: 8, offset: 160)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "user_pcid_flush_mask", scope: !5625, file: !5626, line: 123, baseType: !38, size: 16, offset: 176)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "cr4", scope: !5625, file: !5626, line: 129, baseType: !51, size: 64, offset: 192)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !5625, file: !5626, line: 150, baseType: !5640, size: 768, offset: 256)
!5640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5641, size: 768, elements: !1415)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlb_context", file: !5626, line: 67, size: 128, elements: !5642)
!5642 = !{!5643, !5644}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5641, file: !5626, line: 68, baseType: !301, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5641, file: !5626, line: 69, baseType: !301, size: 64, offset: 64)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gdt_page", file: !5647, line: 44, size: 32768, align: 32768, elements: !5648)
!5647 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!5648 = !{!5649}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "gdt", scope: !5646, file: !5647, line: 45, baseType: !5650, size: 1024)
!5650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3117, size: 1024, elements: !1801)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!5652 = !{!5653, !5655, !5697, !5702, !5704, !5706, !5747, !5750, !0, !5752, !5754, !5756}
!5653 = !DIGlobalVariableExpression(var: !5654, expr: !DIExpression())
!5654 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_dr7318", scope: !2, file: !3, line: 40, type: !32, isLocal: true, isDefinition: true)
!5655 = !DIGlobalVariableExpression(var: !5656, expr: !DIExpression())
!5656 = distinct !DIGlobalVariable(name: "__already_done", scope: !5657, file: !3, line: 113, type: !1360, isLocal: true, isDefinition: true)
!5657 = distinct !DISubprogram(name: "arch_install_hw_breakpoint", scope: !3, file: !3, line: 96, type: !5113, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5658 = !{!5659, !5660, !5662, !5663, !5664, !5668, !5671, !5673, !5676, !5679, !5680, !5682, !5686, !5690, !5692, !5695}
!5659 = !DILocalVariable(name: "bp", arg: 1, scope: !5657, file: !3, line: 96, type: !286)
!5660 = !DILocalVariable(name: "info", scope: !5657, file: !3, line: 98, type: !5661)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5662 = !DILocalVariable(name: "dr7", scope: !5657, file: !3, line: 99, type: !4702)
!5663 = !DILocalVariable(name: "i", scope: !5657, file: !3, line: 100, type: !34)
!5664 = !DILocalVariable(name: "slot", scope: !5665, file: !3, line: 105, type: !285)
!5665 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 104, column: 32)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 104, column: 2)
!5667 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 104, column: 2)
!5668 = !DILocalVariable(name: "__vpp_verify", scope: !5669, file: !3, line: 105, type: !1289)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 105, column: 30)
!5670 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 105, column: 30)
!5671 = !DILocalVariable(name: "tcp_ptr__", scope: !5672, file: !3, line: 105, type: !51)
!5672 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 105, column: 30)
!5673 = !DILocalVariable(name: "__ret_do_once", scope: !5674, file: !3, line: 113, type: !1360)
!5674 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 113, column: 6)
!5675 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 113, column: 6)
!5676 = !DILocalVariable(name: "__ret_cond", scope: !5677, file: !3, line: 113, type: !1360)
!5677 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 113, column: 6)
!5678 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 113, column: 6)
!5679 = !DILocalVariable(name: "__ret_once", scope: !5677, file: !3, line: 113, type: !1360)
!5680 = !DILocalVariable(name: "__ret_warn_on", scope: !5681, file: !3, line: 113, type: !34)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 113, column: 6)
!5682 = !DILocalVariable(name: "__flags", scope: !5683, file: !3, line: 113, type: !34)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 113, column: 6)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 113, column: 6)
!5685 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 113, column: 6)
!5686 = !DILocalVariable(name: "__vpp_verify", scope: !5687, file: !3, line: 117, type: !1289)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 117, column: 2)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 117, column: 2)
!5689 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 117, column: 2)
!5690 = !DILocalVariable(name: "pto_val__", scope: !5691, file: !3, line: 117, type: !301)
!5691 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 117, column: 2)
!5692 = !DILocalVariable(name: "__vpp_verify", scope: !5693, file: !3, line: 119, type: !1289)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 119, column: 8)
!5694 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 119, column: 8)
!5695 = !DILocalVariable(name: "tcp_ptr__", scope: !5696, file: !3, line: 119, type: !51)
!5696 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 119, column: 8)
!5697 = !DIGlobalVariableExpression(var: !5698, expr: !DIExpression())
!5698 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !5699, isLocal: true, isDefinition: true)
!5699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 248, elements: !5700)
!5700 = !{!5701}
!5701 = !DISubrange(count: 31)
!5702 = !DIGlobalVariableExpression(var: !5703, expr: !DIExpression())
!5703 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !2656, isLocal: true, isDefinition: true)
!5704 = !DIGlobalVariableExpression(var: !5705, expr: !DIExpression())
!5705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !1414, isLocal: true, isDefinition: true)
!5706 = !DIGlobalVariableExpression(var: !5707, expr: !DIExpression())
!5707 = distinct !DIGlobalVariable(name: "__already_done", scope: !5708, file: !3, line: 161, type: !1360, isLocal: true, isDefinition: true)
!5708 = distinct !DISubprogram(name: "arch_uninstall_hw_breakpoint", scope: !3, file: !3, line: 144, type: !5132, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5709 = !{!5710, !5711, !5712, !5713, !5714, !5718, !5721, !5723, !5726, !5729, !5730, !5732, !5736, !5738, !5740, !5742, !5745}
!5710 = !DILocalVariable(name: "bp", arg: 1, scope: !5708, file: !3, line: 144, type: !286)
!5711 = !DILocalVariable(name: "info", scope: !5708, file: !3, line: 146, type: !5661)
!5712 = !DILocalVariable(name: "dr7", scope: !5708, file: !3, line: 147, type: !51)
!5713 = !DILocalVariable(name: "i", scope: !5708, file: !3, line: 148, type: !34)
!5714 = !DILocalVariable(name: "slot", scope: !5715, file: !3, line: 153, type: !285)
!5715 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 152, column: 32)
!5716 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 152, column: 2)
!5717 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 152, column: 2)
!5718 = !DILocalVariable(name: "__vpp_verify", scope: !5719, file: !3, line: 153, type: !1289)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 153, column: 30)
!5720 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 153, column: 30)
!5721 = !DILocalVariable(name: "tcp_ptr__", scope: !5722, file: !3, line: 153, type: !51)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 153, column: 30)
!5723 = !DILocalVariable(name: "__ret_do_once", scope: !5724, file: !3, line: 161, type: !1360)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 161, column: 6)
!5725 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 161, column: 6)
!5726 = !DILocalVariable(name: "__ret_cond", scope: !5727, file: !3, line: 161, type: !1360)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 161, column: 6)
!5728 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 161, column: 6)
!5729 = !DILocalVariable(name: "__ret_once", scope: !5727, file: !3, line: 161, type: !1360)
!5730 = !DILocalVariable(name: "__ret_warn_on", scope: !5731, file: !3, line: 161, type: !34)
!5731 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 161, column: 6)
!5732 = !DILocalVariable(name: "__flags", scope: !5733, file: !3, line: 161, type: !34)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 161, column: 6)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 161, column: 6)
!5735 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 161, column: 6)
!5736 = !DILocalVariable(name: "pscr_ret__", scope: !5737, file: !3, line: 164, type: !51)
!5737 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 164, column: 8)
!5738 = !DILocalVariable(name: "__vpp_verify", scope: !5739, file: !3, line: 164, type: !1289)
!5739 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 164, column: 8)
!5740 = !DILocalVariable(name: "pfo_val__", scope: !5741, file: !3, line: 164, type: !301)
!5741 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 164, column: 8)
!5742 = !DILocalVariable(name: "__vpp_verify", scope: !5743, file: !3, line: 177, type: !1289)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 177, column: 2)
!5744 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 177, column: 2)
!5745 = !DILocalVariable(name: "pto_val__", scope: !5746, file: !3, line: 177, type: !301)
!5746 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 177, column: 2)
!5747 = !DIGlobalVariableExpression(var: !5748, expr: !DIExpression())
!5748 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !5749, isLocal: true, isDefinition: true)
!5749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !1333)
!5750 = !DIGlobalVariableExpression(var: !5751, expr: !DIExpression())
!5751 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hw_breakpoint_restore319", scope: !2, file: !3, line: 492, type: !32, isLocal: true, isDefinition: true)
!5752 = !DIGlobalVariableExpression(var: !5753, expr: !DIExpression())
!5753 = distinct !DIGlobalVariable(name: "cpu_debugreg", scope: !2, file: !3, line: 43, type: !4617, isLocal: true, isDefinition: true)
!5754 = !DIGlobalVariableExpression(var: !5755, expr: !DIExpression())
!5755 = distinct !DIGlobalVariable(name: "bp_per_reg", scope: !2, file: !3, line: 49, type: !3141, isLocal: true, isDefinition: true)
!5756 = !DIGlobalVariableExpression(var: !5757, expr: !DIExpression())
!5757 = distinct !DIGlobalVariable(scope: null, file: !5758, line: 94, type: !2656, isLocal: true, isDefinition: true)
!5758 = !DIFile(filename: "./arch/x86/include/asm/debugreg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddda32c6e179418a7aa4e5f76d410b15")
!5759 = !{i32 7, !"Dwarf Version", i32 5}
!5760 = !{i32 2, !"Debug Info Version", i32 3}
!5761 = !{i32 1, !"wchar_size", i32 2}
!5762 = !{i32 8, !"cf-protection-branch", i32 1}
!5763 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5764 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5765 = !{i32 1, !"Code Model", i32 2}
!5766 = !{i32 1, !"override-stack-alignment", i32 8}
!5767 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5768 = distinct !DISubprogram(name: "encode_dr7", scope: !3, file: !3, line: 68, type: !5769, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5771)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!51, !34, !7, !7}
!5771 = !{!5772, !5773, !5774}
!5772 = !DILocalVariable(name: "drnum", arg: 1, scope: !5768, file: !3, line: 68, type: !34)
!5773 = !DILocalVariable(name: "len", arg: 2, scope: !5768, file: !3, line: 68, type: !7)
!5774 = !DILocalVariable(name: "type", arg: 3, scope: !5768, file: !3, line: 68, type: !7)
!5775 = !DILocation(line: 68, column: 30, scope: !5768)
!5776 = !DILocation(line: 68, column: 50, scope: !5768)
!5777 = !DILocation(line: 68, column: 68, scope: !5768)
!5778 = !DILocation(line: 70, column: 22, scope: !5768)
!5779 = !DILocation(line: 70, column: 29, scope: !5768)
!5780 = !DILocation(line: 70, column: 34, scope: !5768)
!5781 = !DILocation(line: 70, column: 9, scope: !5768)
!5782 = !DILocation(line: 70, column: 40, scope: !5768)
!5783 = !DILocation(line: 70, column: 2, scope: !5768)
!5784 = distinct !DISubprogram(name: "__encode_dr7", scope: !3, file: !3, line: 53, type: !5769, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5785 = !{!5786, !5787, !5788, !5789}
!5786 = !DILocalVariable(name: "drnum", arg: 1, scope: !5784, file: !3, line: 53, type: !34)
!5787 = !DILocalVariable(name: "len", arg: 2, scope: !5784, file: !3, line: 53, type: !7)
!5788 = !DILocalVariable(name: "type", arg: 3, scope: !5784, file: !3, line: 53, type: !7)
!5789 = !DILocalVariable(name: "bp_info", scope: !5784, file: !3, line: 55, type: !51)
!5790 = !DILocation(line: 53, column: 18, scope: !5784)
!5791 = !DILocation(line: 53, column: 38, scope: !5784)
!5792 = !DILocation(line: 53, column: 56, scope: !5784)
!5793 = !DILocation(line: 55, column: 2, scope: !5784)
!5794 = !DILocation(line: 55, column: 16, scope: !5784)
!5795 = !DILocation(line: 57, column: 13, scope: !5784)
!5796 = !DILocation(line: 57, column: 19, scope: !5784)
!5797 = !DILocation(line: 57, column: 17, scope: !5784)
!5798 = !DILocation(line: 57, column: 25, scope: !5784)
!5799 = !DILocation(line: 57, column: 12, scope: !5784)
!5800 = !DILocation(line: 57, column: 10, scope: !5784)
!5801 = !DILocation(line: 58, column: 34, scope: !5784)
!5802 = !DILocation(line: 58, column: 40, scope: !5784)
!5803 = !DILocation(line: 58, column: 32, scope: !5784)
!5804 = !DILocation(line: 58, column: 10, scope: !5784)
!5805 = !DILocation(line: 59, column: 35, scope: !5784)
!5806 = !DILocation(line: 59, column: 41, scope: !5784)
!5807 = !DILocation(line: 59, column: 31, scope: !5784)
!5808 = !DILocation(line: 59, column: 13, scope: !5784)
!5809 = !DILocation(line: 59, column: 10, scope: !5784)
!5810 = !DILocation(line: 61, column: 9, scope: !5784)
!5811 = !DILocation(line: 62, column: 1, scope: !5784)
!5812 = !DILocation(line: 61, column: 2, scope: !5784)
!5813 = distinct !DISubprogram(name: "decode_dr7", scope: !3, file: !3, line: 77, type: !5814, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!34, !51, !34, !3825, !3825}
!5816 = !{!5817, !5818, !5819, !5820, !5821}
!5817 = !DILocalVariable(name: "dr7", arg: 1, scope: !5813, file: !3, line: 77, type: !51)
!5818 = !DILocalVariable(name: "bpnum", arg: 2, scope: !5813, file: !3, line: 77, type: !34)
!5819 = !DILocalVariable(name: "len", arg: 3, scope: !5813, file: !3, line: 77, type: !3825)
!5820 = !DILocalVariable(name: "type", arg: 4, scope: !5813, file: !3, line: 77, type: !3825)
!5821 = !DILocalVariable(name: "bp_info", scope: !5813, file: !3, line: 79, type: !34)
!5822 = !DILocation(line: 77, column: 30, scope: !5813)
!5823 = !DILocation(line: 77, column: 39, scope: !5813)
!5824 = !DILocation(line: 77, column: 56, scope: !5813)
!5825 = !DILocation(line: 77, column: 71, scope: !5813)
!5826 = !DILocation(line: 79, column: 2, scope: !5813)
!5827 = !DILocation(line: 79, column: 6, scope: !5813)
!5828 = !DILocation(line: 79, column: 16, scope: !5813)
!5829 = !DILocation(line: 79, column: 43, scope: !5813)
!5830 = !DILocation(line: 79, column: 49, scope: !5813)
!5831 = !DILocation(line: 79, column: 41, scope: !5813)
!5832 = !DILocation(line: 79, column: 20, scope: !5813)
!5833 = !DILocation(line: 81, column: 10, scope: !5813)
!5834 = !DILocation(line: 81, column: 18, scope: !5813)
!5835 = !DILocation(line: 81, column: 25, scope: !5813)
!5836 = !DILocation(line: 81, column: 3, scope: !5813)
!5837 = !DILocation(line: 81, column: 7, scope: !5813)
!5838 = !DILocation(line: 82, column: 11, scope: !5813)
!5839 = !DILocation(line: 82, column: 19, scope: !5813)
!5840 = !DILocation(line: 82, column: 26, scope: !5813)
!5841 = !DILocation(line: 82, column: 3, scope: !5813)
!5842 = !DILocation(line: 82, column: 8, scope: !5813)
!5843 = !DILocation(line: 84, column: 10, scope: !5813)
!5844 = !DILocation(line: 84, column: 18, scope: !5813)
!5845 = !DILocation(line: 84, column: 24, scope: !5813)
!5846 = !DILocation(line: 84, column: 14, scope: !5813)
!5847 = !DILocation(line: 84, column: 43, scope: !5813)
!5848 = !DILocation(line: 84, column: 9, scope: !5813)
!5849 = !DILocation(line: 85, column: 1, scope: !5813)
!5850 = !DILocation(line: 84, column: 2, scope: !5813)
!5851 = !DILocation(line: 96, column: 51, scope: !5657)
!5852 = !DILocation(line: 98, column: 2, scope: !5657)
!5853 = !DILocation(line: 98, column: 29, scope: !5657)
!5854 = !DILocation(line: 98, column: 52, scope: !5657)
!5855 = !DILocation(line: 98, column: 36, scope: !5657)
!5856 = !DILocation(line: 99, column: 2, scope: !5657)
!5857 = !DILocation(line: 99, column: 17, scope: !5657)
!5858 = !DILocation(line: 100, column: 2, scope: !5657)
!5859 = !DILocation(line: 100, column: 6, scope: !5657)
!5860 = !DILocation(line: 102, column: 2, scope: !5657)
!5861 = !DILocation(line: 102, column: 2, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 102, column: 2)
!5863 = !DILocation(line: 104, column: 9, scope: !5667)
!5864 = !DILocation(line: 104, column: 7, scope: !5667)
!5865 = !DILocation(line: 104, column: 14, scope: !5666)
!5866 = !DILocation(line: 104, column: 16, scope: !5666)
!5867 = !DILocation(line: 104, column: 2, scope: !5667)
!5868 = !DILocation(line: 105, column: 3, scope: !5665)
!5869 = !DILocation(line: 105, column: 23, scope: !5665)
!5870 = !DILocation(line: 105, column: 30, scope: !5670)
!5871 = !DILocation(line: 105, column: 30, scope: !5669)
!5872 = !DILocation(line: 105, column: 30, scope: !5672)
!5873 = !{i64 2155446403}
!5874 = !DILocation(line: 107, column: 9, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 107, column: 7)
!5876 = !DILocation(line: 107, column: 8, scope: !5875)
!5877 = !DILocation(line: 107, column: 7, scope: !5665)
!5878 = !DILocation(line: 108, column: 12, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 107, column: 15)
!5880 = !DILocation(line: 108, column: 5, scope: !5879)
!5881 = !DILocation(line: 108, column: 10, scope: !5879)
!5882 = !DILocation(line: 109, column: 4, scope: !5879)
!5883 = !DILocation(line: 111, column: 2, scope: !5666)
!5884 = !DILocation(line: 111, column: 2, scope: !5665)
!5885 = !DILocation(line: 104, column: 28, scope: !5666)
!5886 = !DILocation(line: 104, column: 2, scope: !5666)
!5887 = distinct !{!5887, !5867, !5888, !5889, !5890}
!5888 = !DILocation(line: 111, column: 2, scope: !5667)
!5889 = !{!"llvm.loop.mustprogress"}
!5890 = !{!"llvm.loop.unroll.disable"}
!5891 = !DILocation(line: 113, column: 6, scope: !5674)
!5892 = !DILocation(line: 113, column: 6, scope: !5677)
!5893 = !{i8 0, i8 2}
!5894 = !DILocation(line: 113, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 113, column: 6)
!5896 = !DILocation(line: 0, scope: !5895)
!5897 = !DILocation(line: 113, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 113, column: 6)
!5899 = !DILocation(line: 113, column: 6, scope: !5678)
!5900 = !DILocation(line: 113, column: 6, scope: !5681)
!5901 = !DILocation(line: 113, column: 6, scope: !5685)
!5902 = !DILocation(line: 113, column: 6, scope: !5684)
!5903 = !DILocation(line: 113, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 113, column: 6)
!5905 = !DILocation(line: 113, column: 6, scope: !5683)
!5906 = !DILocation(line: 113, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 113, column: 6)
!5908 = !DILocation(line: 113, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 113, column: 6)
!5910 = !{i64 2155448232, i64 2155448261, i64 2155448307, i64 2155448365, i64 2155448419, i64 2155448473, i64 2155448528, i64 2155448559, i64 2155448867, i64 2155448873, i64 2155448920, i64 2155448943, i64 2155448969}
!5911 = !DILocation(line: 113, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 113, column: 6)
!5913 = !DILocation(line: 113, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 113, column: 6)
!5915 = !DILocation(line: 113, column: 6, scope: !5675)
!5916 = !DILocation(line: 113, column: 6, scope: !5657)
!5917 = !DILocation(line: 114, column: 3, scope: !5675)
!5918 = !DILocation(line: 116, column: 2, scope: !5657)
!5919 = !DILocation(line: 117, column: 2, scope: !5689)
!5920 = !DILocation(line: 117, column: 2, scope: !5688)
!5921 = !DILocation(line: 117, column: 2, scope: !5687)
!5922 = !DILocation(line: 117, column: 2, scope: !5691)
!5923 = !{i64 2155457534}
!5924 = !DILocation(line: 119, column: 8, scope: !5694)
!5925 = !DILocation(line: 119, column: 8, scope: !5693)
!5926 = !DILocation(line: 119, column: 8, scope: !5696)
!5927 = !{i64 2155458043}
!5928 = !DILocation(line: 119, column: 6, scope: !5657)
!5929 = !DILocation(line: 120, column: 21, scope: !5657)
!5930 = !DILocation(line: 120, column: 24, scope: !5657)
!5931 = !DILocation(line: 120, column: 30, scope: !5657)
!5932 = !DILocation(line: 120, column: 35, scope: !5657)
!5933 = !DILocation(line: 120, column: 41, scope: !5657)
!5934 = !DILocation(line: 120, column: 10, scope: !5657)
!5935 = !DILocation(line: 120, column: 3, scope: !5657)
!5936 = !DILocation(line: 120, column: 7, scope: !5657)
!5937 = !DILocation(line: 126, column: 2, scope: !5657)
!5938 = !{i64 2155458331}
!5939 = !DILocation(line: 128, column: 2, scope: !5657)
!5940 = !DILocation(line: 129, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 129, column: 6)
!5942 = !DILocation(line: 129, column: 12, scope: !5941)
!5943 = !DILocation(line: 129, column: 6, scope: !5657)
!5944 = !DILocation(line: 130, column: 24, scope: !5941)
!5945 = !DILocation(line: 130, column: 30, scope: !5941)
!5946 = !DILocation(line: 130, column: 36, scope: !5941)
!5947 = !DILocation(line: 130, column: 3, scope: !5941)
!5948 = !DILocation(line: 132, column: 2, scope: !5657)
!5949 = !DILocation(line: 133, column: 1, scope: !5657)
!5950 = distinct !DISubprogram(name: "counter_arch_bp", scope: !5951, file: !5951, line: 96, type: !5952, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5954)
!5951 = !DIFile(filename: "./include/linux/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "652a6cac5abcdc3c34d4b79aebab9380")
!5952 = !DISubroutineType(types: !5953)
!5953 = !{!5661, !286}
!5954 = !{!5955}
!5955 = !DILocalVariable(name: "bp", arg: 1, scope: !5950, file: !5951, line: 96, type: !286)
!5956 = !DILocation(line: 96, column: 77, scope: !5950)
!5957 = !DILocation(line: 98, column: 10, scope: !5950)
!5958 = !DILocation(line: 98, column: 14, scope: !5950)
!5959 = !DILocation(line: 98, column: 17, scope: !5950)
!5960 = !DILocation(line: 98, column: 2, scope: !5950)
!5961 = !DISubprogram(name: "__warn_printk", scope: !4544, file: !4544, line: 93, type: !5962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{null, !28, null}
!5964 = distinct !DISubprogram(name: "native_set_debugreg", scope: !5758, file: !5758, line: 63, type: !5965, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{null, !34, !51}
!5967 = !{!5968, !5969}
!5968 = !DILocalVariable(name: "regno", arg: 1, scope: !5964, file: !5758, line: 63, type: !34)
!5969 = !DILocalVariable(name: "value", arg: 2, scope: !5964, file: !5758, line: 63, type: !51)
!5970 = !DILocation(line: 63, column: 53, scope: !5964)
!5971 = !DILocation(line: 63, column: 74, scope: !5964)
!5972 = !DILocation(line: 65, column: 10, scope: !5964)
!5973 = !DILocation(line: 65, column: 2, scope: !5964)
!5974 = !DILocation(line: 67, column: 30, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5964, file: !5758, line: 65, column: 17)
!5976 = !DILocation(line: 67, column: 3, scope: !5975)
!5977 = !{i64 7884693}
!5978 = !DILocation(line: 68, column: 3, scope: !5975)
!5979 = !DILocation(line: 70, column: 30, scope: !5975)
!5980 = !DILocation(line: 70, column: 3, scope: !5975)
!5981 = !{i64 7884749}
!5982 = !DILocation(line: 71, column: 3, scope: !5975)
!5983 = !DILocation(line: 73, column: 30, scope: !5975)
!5984 = !DILocation(line: 73, column: 3, scope: !5975)
!5985 = !{i64 7884805}
!5986 = !DILocation(line: 74, column: 3, scope: !5975)
!5987 = !DILocation(line: 76, column: 30, scope: !5975)
!5988 = !DILocation(line: 76, column: 3, scope: !5975)
!5989 = !{i64 7884861}
!5990 = !DILocation(line: 77, column: 3, scope: !5975)
!5991 = !DILocation(line: 79, column: 30, scope: !5975)
!5992 = !DILocation(line: 79, column: 3, scope: !5975)
!5993 = !{i64 7884917}
!5994 = !DILocation(line: 80, column: 3, scope: !5975)
!5995 = !DILocation(line: 91, column: 39, scope: !5975)
!5996 = !DILocation(line: 91, column: 3, scope: !5975)
!5997 = !{i64 7885285}
!5998 = !DILocation(line: 92, column: 3, scope: !5975)
!5999 = !DILocation(line: 94, column: 3, scope: !5975)
!6000 = !DILocation(line: 94, column: 3, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5975, file: !5758, line: 94, column: 3)
!6002 = !DILocation(line: 94, column: 3, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6001, file: !5758, line: 94, column: 3)
!6004 = !DILocation(line: 94, column: 3, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6001, file: !5758, line: 94, column: 3)
!6006 = !{i64 2155375671, i64 2155375700, i64 2155375746, i64 2155375804, i64 2155375858, i64 2155375912, i64 2155375967, i64 2155375998}
!6007 = !DILocation(line: 95, column: 2, scope: !5975)
!6008 = !DILocation(line: 96, column: 1, scope: !5964)
!6009 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6010, file: !6010, line: 313, type: !6011, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6010 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6011 = !DISubroutineType(types: !6012)
!6012 = !{null, !28}
!6013 = !{!6014}
!6014 = !DILocalVariable(name: "op", arg: 1, scope: !6009, file: !6010, line: 313, type: !28)
!6015 = !DILocation(line: 313, column: 66, scope: !6009)
!6016 = !DILocation(line: 313, column: 72, scope: !6009)
!6017 = !DISubprogram(name: "amd_set_dr_addr_mask", scope: !5758, file: !5758, line: 151, type: !6018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{null, !51, !7}
!6020 = !DILocation(line: 144, column: 54, scope: !5708)
!6021 = !DILocation(line: 146, column: 2, scope: !5708)
!6022 = !DILocation(line: 146, column: 29, scope: !5708)
!6023 = !DILocation(line: 146, column: 52, scope: !5708)
!6024 = !DILocation(line: 146, column: 36, scope: !5708)
!6025 = !DILocation(line: 147, column: 2, scope: !5708)
!6026 = !DILocation(line: 147, column: 16, scope: !5708)
!6027 = !DILocation(line: 148, column: 2, scope: !5708)
!6028 = !DILocation(line: 148, column: 6, scope: !5708)
!6029 = !DILocation(line: 150, column: 2, scope: !5708)
!6030 = !DILocation(line: 150, column: 2, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 150, column: 2)
!6032 = !DILocation(line: 152, column: 9, scope: !5717)
!6033 = !DILocation(line: 152, column: 7, scope: !5717)
!6034 = !DILocation(line: 152, column: 14, scope: !5716)
!6035 = !DILocation(line: 152, column: 16, scope: !5716)
!6036 = !DILocation(line: 152, column: 2, scope: !5717)
!6037 = !DILocation(line: 153, column: 3, scope: !5715)
!6038 = !DILocation(line: 153, column: 23, scope: !5715)
!6039 = !DILocation(line: 153, column: 30, scope: !5720)
!6040 = !DILocation(line: 153, column: 30, scope: !5719)
!6041 = !DILocation(line: 153, column: 30, scope: !5722)
!6042 = !{i64 2155458772}
!6043 = !DILocation(line: 155, column: 8, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 155, column: 7)
!6045 = !DILocation(line: 155, column: 7, scope: !6044)
!6046 = !DILocation(line: 155, column: 16, scope: !6044)
!6047 = !DILocation(line: 155, column: 13, scope: !6044)
!6048 = !DILocation(line: 155, column: 7, scope: !5715)
!6049 = !DILocation(line: 156, column: 5, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 155, column: 20)
!6051 = !DILocation(line: 156, column: 10, scope: !6050)
!6052 = !DILocation(line: 157, column: 4, scope: !6050)
!6053 = !DILocation(line: 159, column: 2, scope: !5716)
!6054 = !DILocation(line: 159, column: 2, scope: !5715)
!6055 = !DILocation(line: 152, column: 28, scope: !5716)
!6056 = !DILocation(line: 152, column: 2, scope: !5716)
!6057 = distinct !{!6057, !6036, !6058, !5889, !5890}
!6058 = !DILocation(line: 159, column: 2, scope: !5717)
!6059 = !DILocation(line: 161, column: 6, scope: !5724)
!6060 = !DILocation(line: 161, column: 6, scope: !5727)
!6061 = !DILocation(line: 161, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 161, column: 6)
!6063 = !DILocation(line: 0, scope: !6062)
!6064 = !DILocation(line: 161, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 161, column: 6)
!6066 = !DILocation(line: 161, column: 6, scope: !5728)
!6067 = !DILocation(line: 161, column: 6, scope: !5731)
!6068 = !DILocation(line: 161, column: 6, scope: !5735)
!6069 = !DILocation(line: 161, column: 6, scope: !5734)
!6070 = !DILocation(line: 161, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 161, column: 6)
!6072 = !DILocation(line: 161, column: 6, scope: !5733)
!6073 = !DILocation(line: 161, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 161, column: 6)
!6075 = !DILocation(line: 161, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 161, column: 6)
!6077 = !{i64 2155460613, i64 2155460642, i64 2155460688, i64 2155460746, i64 2155460800, i64 2155460854, i64 2155460909, i64 2155460940, i64 2155461248, i64 2155461254, i64 2155461301, i64 2155461324, i64 2155461350}
!6078 = !DILocation(line: 161, column: 6, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 161, column: 6)
!6080 = !DILocation(line: 161, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 161, column: 6)
!6082 = !DILocation(line: 161, column: 6, scope: !5725)
!6083 = !DILocation(line: 161, column: 6, scope: !5708)
!6084 = !DILocation(line: 162, column: 3, scope: !5725)
!6085 = !DILocation(line: 164, column: 8, scope: !5737)
!6086 = !DILocation(line: 164, column: 8, scope: !5739)
!6087 = !DILocation(line: 164, column: 8, scope: !5741)
!6088 = !{i64 2155464558}
!6089 = !DILocation(line: 164, column: 8, scope: !5708)
!6090 = !DILocation(line: 164, column: 6, scope: !5708)
!6091 = !DILocation(line: 165, column: 23, scope: !5708)
!6092 = !DILocation(line: 165, column: 26, scope: !5708)
!6093 = !DILocation(line: 165, column: 32, scope: !5708)
!6094 = !DILocation(line: 165, column: 37, scope: !5708)
!6095 = !DILocation(line: 165, column: 43, scope: !5708)
!6096 = !DILocation(line: 165, column: 10, scope: !5708)
!6097 = !DILocation(line: 165, column: 9, scope: !5708)
!6098 = !DILocation(line: 165, column: 6, scope: !5708)
!6099 = !DILocation(line: 167, column: 2, scope: !5708)
!6100 = !DILocation(line: 168, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 168, column: 6)
!6102 = !DILocation(line: 168, column: 12, scope: !6101)
!6103 = !DILocation(line: 168, column: 6, scope: !5708)
!6104 = !DILocation(line: 169, column: 27, scope: !6101)
!6105 = !DILocation(line: 169, column: 3, scope: !6101)
!6106 = !DILocation(line: 175, column: 2, scope: !5708)
!6107 = !{i64 2155464797}
!6108 = !DILocation(line: 177, column: 2, scope: !5708)
!6109 = !DILocation(line: 177, column: 2, scope: !5744)
!6110 = !DILocation(line: 177, column: 2, scope: !5743)
!6111 = !DILocation(line: 177, column: 2, scope: !5746)
!6112 = !{i64 2155468540}
!6113 = !DILocation(line: 178, column: 1, scope: !5708)
!6114 = distinct !DISubprogram(name: "arch_bp_generic_fields", scope: !3, file: !3, line: 198, type: !6115, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!34, !34, !34, !706, !706}
!6117 = !{!6118, !6119, !6120, !6121, !6122}
!6118 = !DILocalVariable(name: "x86_len", arg: 1, scope: !6114, file: !3, line: 198, type: !34)
!6119 = !DILocalVariable(name: "x86_type", arg: 2, scope: !6114, file: !3, line: 198, type: !34)
!6120 = !DILocalVariable(name: "gen_len", arg: 3, scope: !6114, file: !3, line: 199, type: !706)
!6121 = !DILocalVariable(name: "gen_type", arg: 4, scope: !6114, file: !3, line: 199, type: !706)
!6122 = !DILocalVariable(name: "len", scope: !6114, file: !3, line: 201, type: !34)
!6123 = !DILocation(line: 198, column: 32, scope: !6114)
!6124 = !DILocation(line: 198, column: 45, scope: !6114)
!6125 = !DILocation(line: 199, column: 12, scope: !6114)
!6126 = !DILocation(line: 199, column: 26, scope: !6114)
!6127 = !DILocation(line: 201, column: 2, scope: !6114)
!6128 = !DILocation(line: 201, column: 6, scope: !6114)
!6129 = !DILocation(line: 204, column: 10, scope: !6114)
!6130 = !DILocation(line: 204, column: 2, scope: !6114)
!6131 = !DILocation(line: 206, column: 7, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 206, column: 7)
!6133 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 204, column: 20)
!6134 = !DILocation(line: 206, column: 15, scope: !6132)
!6135 = !DILocation(line: 206, column: 7, scope: !6133)
!6136 = !DILocation(line: 207, column: 4, scope: !6132)
!6137 = !DILocation(line: 209, column: 4, scope: !6133)
!6138 = !DILocation(line: 209, column: 13, scope: !6133)
!6139 = !DILocation(line: 210, column: 4, scope: !6133)
!6140 = !DILocation(line: 210, column: 12, scope: !6133)
!6141 = !DILocation(line: 211, column: 3, scope: !6133)
!6142 = !DILocation(line: 213, column: 4, scope: !6133)
!6143 = !DILocation(line: 213, column: 13, scope: !6133)
!6144 = !DILocation(line: 214, column: 3, scope: !6133)
!6145 = !DILocation(line: 216, column: 4, scope: !6133)
!6146 = !DILocation(line: 216, column: 13, scope: !6133)
!6147 = !DILocation(line: 217, column: 3, scope: !6133)
!6148 = !DILocation(line: 219, column: 3, scope: !6133)
!6149 = !DILocation(line: 223, column: 28, scope: !6114)
!6150 = !DILocation(line: 223, column: 8, scope: !6114)
!6151 = !DILocation(line: 223, column: 6, scope: !6114)
!6152 = !DILocation(line: 224, column: 6, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 224, column: 6)
!6154 = !DILocation(line: 224, column: 10, scope: !6153)
!6155 = !DILocation(line: 224, column: 6, scope: !6114)
!6156 = !DILocation(line: 225, column: 3, scope: !6153)
!6157 = !DILocation(line: 226, column: 13, scope: !6114)
!6158 = !DILocation(line: 226, column: 3, scope: !6114)
!6159 = !DILocation(line: 226, column: 11, scope: !6114)
!6160 = !DILocation(line: 228, column: 2, scope: !6114)
!6161 = !DILocation(line: 229, column: 1, scope: !6114)
!6162 = distinct !DISubprogram(name: "arch_bp_generic_len", scope: !3, file: !3, line: 180, type: !3470, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6163 = !{!6164}
!6164 = !DILocalVariable(name: "x86_len", arg: 1, scope: !6162, file: !3, line: 180, type: !34)
!6165 = !DILocation(line: 180, column: 36, scope: !6162)
!6166 = !DILocation(line: 182, column: 10, scope: !6162)
!6167 = !DILocation(line: 182, column: 2, scope: !6162)
!6168 = !DILocation(line: 184, column: 3, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 182, column: 19)
!6170 = !DILocation(line: 186, column: 3, scope: !6169)
!6171 = !DILocation(line: 188, column: 3, scope: !6169)
!6172 = !DILocation(line: 191, column: 3, scope: !6169)
!6173 = !DILocation(line: 194, column: 3, scope: !6169)
!6174 = !DILocation(line: 196, column: 1, scope: !6162)
!6175 = distinct !DISubprogram(name: "arch_check_bp_in_kernelspace", scope: !3, file: !3, line: 234, type: !6176, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6178)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!34, !5661}
!6178 = !{!6179, !6180, !6181, !6182, !6184}
!6179 = !DILocalVariable(name: "hw", arg: 1, scope: !6175, file: !3, line: 234, type: !5661)
!6180 = !DILocalVariable(name: "va", scope: !6175, file: !3, line: 236, type: !51)
!6181 = !DILocalVariable(name: "len", scope: !6175, file: !3, line: 237, type: !34)
!6182 = !DILocalVariable(name: "__ret_warn_on", scope: !6183, file: !3, line: 241, type: !34)
!6183 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 241, column: 2)
!6184 = !DILocalVariable(name: "__flags", scope: !6185, file: !3, line: 241, type: !34)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 241, column: 2)
!6186 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 241, column: 2)
!6187 = !DILocation(line: 234, column: 61, scope: !6175)
!6188 = !DILocation(line: 236, column: 2, scope: !6175)
!6189 = !DILocation(line: 236, column: 16, scope: !6175)
!6190 = !DILocation(line: 237, column: 2, scope: !6175)
!6191 = !DILocation(line: 237, column: 6, scope: !6175)
!6192 = !DILocation(line: 239, column: 7, scope: !6175)
!6193 = !DILocation(line: 239, column: 11, scope: !6175)
!6194 = !DILocation(line: 239, column: 5, scope: !6175)
!6195 = !DILocation(line: 240, column: 28, scope: !6175)
!6196 = !DILocation(line: 240, column: 32, scope: !6175)
!6197 = !DILocation(line: 240, column: 8, scope: !6175)
!6198 = !DILocation(line: 240, column: 6, scope: !6175)
!6199 = !DILocation(line: 241, column: 2, scope: !6183)
!6200 = !DILocation(line: 241, column: 2, scope: !6186)
!6201 = !DILocation(line: 241, column: 2, scope: !6185)
!6202 = !DILocation(line: 241, column: 2, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 241, column: 2)
!6204 = !DILocation(line: 241, column: 2, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 241, column: 2)
!6206 = !{i64 2155469306, i64 2155469335, i64 2155469381, i64 2155469439, i64 2155469493, i64 2155469547, i64 2155469602, i64 2155469633, i64 2155469941, i64 2155469947, i64 2155469994, i64 2155470017, i64 2155470043}
!6207 = !DILocation(line: 241, column: 2, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 241, column: 2)
!6209 = !DILocation(line: 241, column: 2, scope: !6175)
!6210 = !DILocation(line: 247, column: 10, scope: !6175)
!6211 = !DILocation(line: 247, column: 16, scope: !6175)
!6212 = !DILocation(line: 247, column: 13, scope: !6175)
!6213 = !DILocation(line: 247, column: 31, scope: !6175)
!6214 = !DILocation(line: 247, column: 36, scope: !6175)
!6215 = !DILocation(line: 247, column: 41, scope: !6175)
!6216 = !DILocation(line: 247, column: 39, scope: !6175)
!6217 = !DILocation(line: 247, column: 45, scope: !6175)
!6218 = !DILocation(line: 247, column: 53, scope: !6175)
!6219 = !DILocation(line: 247, column: 50, scope: !6175)
!6220 = !DILocation(line: 248, column: 1, scope: !6175)
!6221 = !DILocation(line: 247, column: 2, scope: !6175)
!6222 = distinct !DISubprogram(name: "task_size_max", scope: !6223, file: !6223, line: 83, type: !6224, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6226)
!6223 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!51}
!6226 = !{!6227}
!6227 = !DILocalVariable(name: "ret", scope: !6222, file: !6223, line: 85, type: !51)
!6228 = !DILocation(line: 85, column: 2, scope: !6222)
!6229 = !DILocation(line: 85, column: 16, scope: !6222)
!6230 = !DILocation(line: 87, column: 2, scope: !6222)
!6231 = !{i64 2149296419, i64 2149296447, i64 2149296453, i64 2149296469, i64 2149296485, i64 2149296512, i64 2149296842, i64 2149296157, i64 2149296848, i64 2149296896, i64 2149296960, i64 2149297024, i64 2149297081, i64 2149296238, i64 2149296263, i64 2149297288, i64 2149297420, i64 2149297349, i64 2149297434, i64 2149296355}
!6232 = !DILocation(line: 93, column: 9, scope: !6222)
!6233 = !DILocation(line: 94, column: 1, scope: !6222)
!6234 = !DILocation(line: 93, column: 2, scope: !6222)
!6235 = distinct !DISubprogram(name: "hw_breakpoint_arch_parse", scope: !3, file: !3, line: 422, type: !6236, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!34, !286, !6238, !5661}
!6238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6239, size: 64)
!6239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5206)
!6240 = !{!6241, !6242, !6243, !6244, !6245, !6246, !6249}
!6241 = !DILocalVariable(name: "bp", arg: 1, scope: !6235, file: !3, line: 422, type: !286)
!6242 = !DILocalVariable(name: "attr", arg: 2, scope: !6235, file: !3, line: 423, type: !6238)
!6243 = !DILocalVariable(name: "hw", arg: 3, scope: !6235, file: !3, line: 424, type: !5661)
!6244 = !DILocalVariable(name: "align", scope: !6235, file: !3, line: 426, type: !7)
!6245 = !DILocalVariable(name: "ret", scope: !6235, file: !3, line: 427, type: !34)
!6246 = !DILocalVariable(name: "__ret_warn_on", scope: !6247, file: !3, line: 452, type: !34)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 452, column: 3)
!6248 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 434, column: 19)
!6249 = !DILocalVariable(name: "__flags", scope: !6250, file: !3, line: 452, type: !34)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 452, column: 3)
!6251 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 452, column: 3)
!6252 = !DILocation(line: 422, column: 49, scope: !6235)
!6253 = !DILocation(line: 423, column: 39, scope: !6235)
!6254 = !DILocation(line: 424, column: 36, scope: !6235)
!6255 = !DILocation(line: 426, column: 2, scope: !6235)
!6256 = !DILocation(line: 426, column: 15, scope: !6235)
!6257 = !DILocation(line: 427, column: 2, scope: !6235)
!6258 = !DILocation(line: 427, column: 6, scope: !6235)
!6259 = !DILocation(line: 430, column: 27, scope: !6235)
!6260 = !DILocation(line: 430, column: 31, scope: !6235)
!6261 = !DILocation(line: 430, column: 37, scope: !6235)
!6262 = !DILocation(line: 430, column: 8, scope: !6235)
!6263 = !DILocation(line: 430, column: 6, scope: !6235)
!6264 = !DILocation(line: 431, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 431, column: 6)
!6266 = !DILocation(line: 431, column: 6, scope: !6235)
!6267 = !DILocation(line: 432, column: 10, scope: !6265)
!6268 = !DILocation(line: 432, column: 3, scope: !6265)
!6269 = !DILocation(line: 434, column: 10, scope: !6235)
!6270 = !DILocation(line: 434, column: 14, scope: !6235)
!6271 = !DILocation(line: 434, column: 2, scope: !6235)
!6272 = !DILocation(line: 436, column: 9, scope: !6248)
!6273 = !DILocation(line: 437, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 437, column: 7)
!6275 = !DILocation(line: 437, column: 11, scope: !6274)
!6276 = !DILocation(line: 437, column: 7, scope: !6248)
!6277 = !DILocation(line: 438, column: 12, scope: !6274)
!6278 = !DILocation(line: 438, column: 16, scope: !6274)
!6279 = !DILocation(line: 438, column: 10, scope: !6274)
!6280 = !DILocation(line: 438, column: 4, scope: !6274)
!6281 = !DILocation(line: 439, column: 3, scope: !6248)
!6282 = !DILocation(line: 441, column: 9, scope: !6248)
!6283 = !DILocation(line: 442, column: 3, scope: !6248)
!6284 = !DILocation(line: 444, column: 9, scope: !6248)
!6285 = !DILocation(line: 445, column: 3, scope: !6248)
!6286 = !DILocation(line: 448, column: 9, scope: !6248)
!6287 = !DILocation(line: 449, column: 3, scope: !6248)
!6288 = !DILocation(line: 452, column: 3, scope: !6247)
!6289 = !DILocation(line: 452, column: 3, scope: !6251)
!6290 = !DILocation(line: 452, column: 3, scope: !6250)
!6291 = !DILocation(line: 452, column: 3, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 452, column: 3)
!6293 = !DILocation(line: 452, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 452, column: 3)
!6295 = !{i64 2155479836, i64 2155479865, i64 2155479911, i64 2155479969, i64 2155480023, i64 2155480077, i64 2155480132, i64 2155480163, i64 2155480471, i64 2155480477, i64 2155480524, i64 2155480547, i64 2155480573}
!6296 = !DILocation(line: 452, column: 3, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 452, column: 3)
!6298 = !DILocation(line: 452, column: 3, scope: !6248)
!6299 = !DILocation(line: 453, column: 3, scope: !6248)
!6300 = !DILocation(line: 460, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 460, column: 6)
!6302 = !DILocation(line: 460, column: 10, scope: !6301)
!6303 = !DILocation(line: 460, column: 20, scope: !6301)
!6304 = !DILocation(line: 460, column: 18, scope: !6301)
!6305 = !DILocation(line: 460, column: 6, scope: !6235)
!6306 = !DILocation(line: 461, column: 3, scope: !6301)
!6307 = !DILocation(line: 463, column: 2, scope: !6235)
!6308 = !DILocation(line: 464, column: 1, scope: !6235)
!6309 = distinct !DISubprogram(name: "arch_build_bp_info", scope: !3, file: !3, line: 323, type: !6236, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6310 = !{!6311, !6312, !6313, !6314}
!6311 = !DILocalVariable(name: "bp", arg: 1, scope: !6309, file: !3, line: 323, type: !286)
!6312 = !DILocalVariable(name: "attr", arg: 2, scope: !6309, file: !3, line: 324, type: !6238)
!6313 = !DILocalVariable(name: "hw", arg: 3, scope: !6309, file: !3, line: 325, type: !5661)
!6314 = !DILocalVariable(name: "bp_end", scope: !6309, file: !3, line: 327, type: !51)
!6315 = !DILocation(line: 323, column: 50, scope: !6309)
!6316 = !DILocation(line: 324, column: 40, scope: !6309)
!6317 = !DILocation(line: 325, column: 37, scope: !6309)
!6318 = !DILocation(line: 327, column: 2, scope: !6309)
!6319 = !DILocation(line: 327, column: 16, scope: !6309)
!6320 = !DILocation(line: 329, column: 11, scope: !6309)
!6321 = !DILocation(line: 329, column: 17, scope: !6309)
!6322 = !DILocation(line: 329, column: 27, scope: !6309)
!6323 = !DILocation(line: 329, column: 33, scope: !6309)
!6324 = !DILocation(line: 329, column: 25, scope: !6309)
!6325 = !DILocation(line: 329, column: 40, scope: !6309)
!6326 = !DILocation(line: 329, column: 9, scope: !6309)
!6327 = !DILocation(line: 330, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 330, column: 6)
!6329 = !DILocation(line: 330, column: 15, scope: !6328)
!6330 = !DILocation(line: 330, column: 21, scope: !6328)
!6331 = !DILocation(line: 330, column: 13, scope: !6328)
!6332 = !DILocation(line: 330, column: 6, scope: !6309)
!6333 = !DILocation(line: 331, column: 3, scope: !6328)
!6334 = !DILocation(line: 339, column: 23, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 339, column: 6)
!6336 = !DILocation(line: 339, column: 29, scope: !6335)
!6337 = !DILocation(line: 339, column: 38, scope: !6335)
!6338 = !DILocation(line: 339, column: 6, scope: !6335)
!6339 = !DILocation(line: 339, column: 6, scope: !6309)
!6340 = !DILocation(line: 340, column: 3, scope: !6335)
!6341 = !DILocation(line: 342, column: 16, scope: !6309)
!6342 = !DILocation(line: 342, column: 22, scope: !6309)
!6343 = !DILocation(line: 342, column: 2, scope: !6309)
!6344 = !DILocation(line: 342, column: 6, scope: !6309)
!6345 = !DILocation(line: 342, column: 14, scope: !6309)
!6346 = !DILocation(line: 343, column: 2, scope: !6309)
!6347 = !DILocation(line: 343, column: 6, scope: !6309)
!6348 = !DILocation(line: 343, column: 11, scope: !6309)
!6349 = !DILocation(line: 346, column: 10, scope: !6309)
!6350 = !DILocation(line: 346, column: 16, scope: !6309)
!6351 = !DILocation(line: 346, column: 2, scope: !6309)
!6352 = !DILocation(line: 348, column: 3, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 346, column: 25)
!6354 = !DILocation(line: 348, column: 7, scope: !6353)
!6355 = !DILocation(line: 348, column: 12, scope: !6353)
!6356 = !DILocation(line: 349, column: 3, scope: !6353)
!6357 = !DILocation(line: 351, column: 3, scope: !6353)
!6358 = !DILocation(line: 351, column: 7, scope: !6353)
!6359 = !DILocation(line: 351, column: 12, scope: !6353)
!6360 = !DILocation(line: 352, column: 3, scope: !6353)
!6361 = !DILocation(line: 359, column: 7, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 359, column: 7)
!6363 = !DILocation(line: 359, column: 13, scope: !6362)
!6364 = !DILocation(line: 359, column: 24, scope: !6362)
!6365 = !DILocation(line: 359, column: 21, scope: !6362)
!6366 = !DILocation(line: 359, column: 7, scope: !6353)
!6367 = !DILocation(line: 360, column: 32, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 360, column: 8)
!6369 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 359, column: 39)
!6370 = !DILocation(line: 360, column: 38, scope: !6368)
!6371 = !DILocation(line: 360, column: 8, scope: !6368)
!6372 = !DILocation(line: 360, column: 8, scope: !6369)
!6373 = !DILocation(line: 361, column: 5, scope: !6368)
!6374 = !DILocation(line: 362, column: 3, scope: !6369)
!6375 = !DILocation(line: 364, column: 3, scope: !6353)
!6376 = !DILocation(line: 364, column: 7, scope: !6353)
!6377 = !DILocation(line: 364, column: 12, scope: !6353)
!6378 = !DILocation(line: 370, column: 7, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 370, column: 7)
!6380 = !DILocation(line: 370, column: 13, scope: !6379)
!6381 = !DILocation(line: 370, column: 20, scope: !6379)
!6382 = !DILocation(line: 370, column: 7, scope: !6353)
!6383 = !DILocation(line: 371, column: 4, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 370, column: 37)
!6385 = !DILocation(line: 371, column: 8, scope: !6384)
!6386 = !DILocation(line: 371, column: 12, scope: !6384)
!6387 = !DILocation(line: 372, column: 4, scope: !6384)
!6388 = !DILocation(line: 370, column: 34, scope: !6379)
!6389 = !DILocation(line: 376, column: 3, scope: !6353)
!6390 = !DILocation(line: 380, column: 10, scope: !6309)
!6391 = !DILocation(line: 380, column: 16, scope: !6309)
!6392 = !DILocation(line: 380, column: 2, scope: !6309)
!6393 = !DILocation(line: 382, column: 3, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 380, column: 24)
!6395 = !DILocation(line: 382, column: 7, scope: !6394)
!6396 = !DILocation(line: 382, column: 11, scope: !6394)
!6397 = !DILocation(line: 383, column: 3, scope: !6394)
!6398 = !DILocation(line: 385, column: 3, scope: !6394)
!6399 = !DILocation(line: 385, column: 7, scope: !6394)
!6400 = !DILocation(line: 385, column: 11, scope: !6394)
!6401 = !DILocation(line: 386, column: 3, scope: !6394)
!6402 = !DILocation(line: 388, column: 3, scope: !6394)
!6403 = !DILocation(line: 388, column: 7, scope: !6394)
!6404 = !DILocation(line: 388, column: 11, scope: !6394)
!6405 = !DILocation(line: 389, column: 3, scope: !6394)
!6406 = !DILocation(line: 392, column: 3, scope: !6394)
!6407 = !DILocation(line: 392, column: 7, scope: !6394)
!6408 = !DILocation(line: 392, column: 11, scope: !6394)
!6409 = !DILocation(line: 393, column: 3, scope: !6394)
!6410 = !DILocation(line: 397, column: 22, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 397, column: 7)
!6412 = !DILocation(line: 397, column: 28, scope: !6411)
!6413 = !DILocation(line: 397, column: 8, scope: !6411)
!6414 = !DILocation(line: 397, column: 7, scope: !6394)
!6415 = !DILocation(line: 398, column: 4, scope: !6411)
!6416 = !DILocation(line: 399, column: 7, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 399, column: 7)
!6418 = !DILocation(line: 399, column: 13, scope: !6417)
!6419 = !DILocation(line: 399, column: 24, scope: !6417)
!6420 = !DILocation(line: 399, column: 30, scope: !6417)
!6421 = !DILocation(line: 399, column: 37, scope: !6417)
!6422 = !DILocation(line: 399, column: 21, scope: !6417)
!6423 = !DILocation(line: 399, column: 7, scope: !6394)
!6424 = !DILocation(line: 400, column: 4, scope: !6417)
!6425 = !DILocation(line: 402, column: 7, scope: !6394)
!6426 = !DILocation(line: 402, column: 8, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 402, column: 7)
!6428 = !DILocation(line: 403, column: 4, scope: !6427)
!6429 = !DILocation(line: 412, column: 14, scope: !6394)
!6430 = !DILocation(line: 412, column: 20, scope: !6394)
!6431 = !DILocation(line: 412, column: 27, scope: !6394)
!6432 = !DILocation(line: 412, column: 3, scope: !6394)
!6433 = !DILocation(line: 412, column: 7, scope: !6394)
!6434 = !DILocation(line: 412, column: 12, scope: !6394)
!6435 = !DILocation(line: 413, column: 3, scope: !6394)
!6436 = !DILocation(line: 413, column: 7, scope: !6394)
!6437 = !DILocation(line: 413, column: 11, scope: !6394)
!6438 = !DILocation(line: 414, column: 2, scope: !6394)
!6439 = !DILocation(line: 416, column: 2, scope: !6309)
!6440 = !DILocation(line: 417, column: 1, scope: !6309)
!6441 = distinct !DISubprogram(name: "flush_ptrace_hw_breakpoint", scope: !3, file: !3, line: 469, type: !2418, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6442)
!6442 = !{!6443, !6444, !6445}
!6443 = !DILocalVariable(name: "tsk", arg: 1, scope: !6441, file: !3, line: 469, type: !867)
!6444 = !DILocalVariable(name: "i", scope: !6441, file: !3, line: 471, type: !34)
!6445 = !DILocalVariable(name: "t", scope: !6441, file: !3, line: 472, type: !6446)
!6446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!6447 = !DILocation(line: 469, column: 53, scope: !6441)
!6448 = !DILocation(line: 471, column: 2, scope: !6441)
!6449 = !DILocation(line: 471, column: 6, scope: !6441)
!6450 = !DILocation(line: 472, column: 2, scope: !6441)
!6451 = !DILocation(line: 472, column: 24, scope: !6441)
!6452 = !DILocation(line: 472, column: 29, scope: !6441)
!6453 = !DILocation(line: 472, column: 34, scope: !6441)
!6454 = !DILocation(line: 474, column: 9, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 474, column: 2)
!6456 = !DILocation(line: 474, column: 7, scope: !6455)
!6457 = !DILocation(line: 474, column: 14, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 474, column: 2)
!6459 = !DILocation(line: 474, column: 16, scope: !6458)
!6460 = !DILocation(line: 474, column: 2, scope: !6455)
!6461 = !DILocation(line: 475, column: 28, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 474, column: 32)
!6463 = !DILocation(line: 475, column: 31, scope: !6462)
!6464 = !DILocation(line: 475, column: 42, scope: !6462)
!6465 = !DILocation(line: 475, column: 3, scope: !6462)
!6466 = !DILocation(line: 476, column: 3, scope: !6462)
!6467 = !DILocation(line: 476, column: 6, scope: !6462)
!6468 = !DILocation(line: 476, column: 17, scope: !6462)
!6469 = !DILocation(line: 476, column: 20, scope: !6462)
!6470 = !DILocation(line: 477, column: 2, scope: !6462)
!6471 = !DILocation(line: 474, column: 28, scope: !6458)
!6472 = !DILocation(line: 474, column: 2, scope: !6458)
!6473 = distinct !{!6473, !6460, !6474, !5889, !5890}
!6474 = !DILocation(line: 477, column: 2, scope: !6455)
!6475 = !DILocation(line: 479, column: 2, scope: !6441)
!6476 = !DILocation(line: 479, column: 5, scope: !6441)
!6477 = !DILocation(line: 479, column: 17, scope: !6441)
!6478 = !DILocation(line: 480, column: 2, scope: !6441)
!6479 = !DILocation(line: 480, column: 5, scope: !6441)
!6480 = !DILocation(line: 480, column: 16, scope: !6441)
!6481 = !DILocation(line: 481, column: 1, scope: !6441)
!6482 = !DISubprogram(name: "unregister_hw_breakpoint", scope: !5951, file: !5951, line: 85, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6483 = distinct !DISubprogram(name: "hw_breakpoint_restore", scope: !3, file: !3, line: 483, type: !2406, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6484)
!6484 = !{!6485, !6488, !6490, !6492, !6495, !6497, !6499, !6502, !6504, !6506, !6509, !6511, !6513, !6516, !6518}
!6485 = !DILocalVariable(name: "pscr_ret__", scope: !6486, file: !3, line: 485, type: !51)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 485, column: 2)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 485, column: 2)
!6488 = !DILocalVariable(name: "__vpp_verify", scope: !6489, file: !3, line: 485, type: !1289)
!6489 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 485, column: 2)
!6490 = !DILocalVariable(name: "pfo_val__", scope: !6491, file: !3, line: 485, type: !301)
!6491 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 485, column: 2)
!6492 = !DILocalVariable(name: "pscr_ret__", scope: !6493, file: !3, line: 486, type: !51)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 486, column: 2)
!6494 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 486, column: 2)
!6495 = !DILocalVariable(name: "__vpp_verify", scope: !6496, file: !3, line: 486, type: !1289)
!6496 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 486, column: 2)
!6497 = !DILocalVariable(name: "pfo_val__", scope: !6498, file: !3, line: 486, type: !301)
!6498 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 486, column: 2)
!6499 = !DILocalVariable(name: "pscr_ret__", scope: !6500, file: !3, line: 487, type: !51)
!6500 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 487, column: 2)
!6501 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 487, column: 2)
!6502 = !DILocalVariable(name: "__vpp_verify", scope: !6503, file: !3, line: 487, type: !1289)
!6503 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 487, column: 2)
!6504 = !DILocalVariable(name: "pfo_val__", scope: !6505, file: !3, line: 487, type: !301)
!6505 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 487, column: 2)
!6506 = !DILocalVariable(name: "pscr_ret__", scope: !6507, file: !3, line: 488, type: !51)
!6507 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 488, column: 2)
!6508 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 488, column: 2)
!6509 = !DILocalVariable(name: "__vpp_verify", scope: !6510, file: !3, line: 488, type: !1289)
!6510 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 488, column: 2)
!6511 = !DILocalVariable(name: "pfo_val__", scope: !6512, file: !3, line: 488, type: !301)
!6512 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 488, column: 2)
!6513 = !DILocalVariable(name: "pscr_ret__", scope: !6514, file: !3, line: 490, type: !51)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 490, column: 2)
!6515 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 490, column: 2)
!6516 = !DILocalVariable(name: "__vpp_verify", scope: !6517, file: !3, line: 490, type: !1289)
!6517 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 490, column: 2)
!6518 = !DILocalVariable(name: "pfo_val__", scope: !6519, file: !3, line: 490, type: !301)
!6519 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 490, column: 2)
!6520 = !DILocation(line: 485, column: 2, scope: !6487)
!6521 = !DILocation(line: 485, column: 2, scope: !6486)
!6522 = !DILocation(line: 485, column: 2, scope: !6489)
!6523 = !DILocation(line: 485, column: 2, scope: !6491)
!6524 = !{i64 2155485281}
!6525 = !DILocation(line: 485, column: 2, scope: !6483)
!6526 = !DILocation(line: 486, column: 2, scope: !6494)
!6527 = !DILocation(line: 486, column: 2, scope: !6493)
!6528 = !DILocation(line: 486, column: 2, scope: !6496)
!6529 = !DILocation(line: 486, column: 2, scope: !6498)
!6530 = !{i64 2155490022}
!6531 = !DILocation(line: 486, column: 2, scope: !6483)
!6532 = !DILocation(line: 487, column: 2, scope: !6501)
!6533 = !DILocation(line: 487, column: 2, scope: !6500)
!6534 = !DILocation(line: 487, column: 2, scope: !6503)
!6535 = !DILocation(line: 487, column: 2, scope: !6505)
!6536 = !{i64 2155494763}
!6537 = !DILocation(line: 487, column: 2, scope: !6483)
!6538 = !DILocation(line: 488, column: 2, scope: !6508)
!6539 = !DILocation(line: 488, column: 2, scope: !6507)
!6540 = !DILocation(line: 488, column: 2, scope: !6510)
!6541 = !DILocation(line: 488, column: 2, scope: !6512)
!6542 = !{i64 2155499504}
!6543 = !DILocation(line: 488, column: 2, scope: !6483)
!6544 = !DILocation(line: 489, column: 2, scope: !6483)
!6545 = !DILocation(line: 490, column: 2, scope: !6515)
!6546 = !DILocation(line: 490, column: 2, scope: !6514)
!6547 = !DILocation(line: 490, column: 2, scope: !6517)
!6548 = !DILocation(line: 490, column: 2, scope: !6519)
!6549 = !{i64 2155504062}
!6550 = !DILocation(line: 490, column: 2, scope: !6483)
!6551 = !DILocation(line: 491, column: 1, scope: !6483)
!6552 = distinct !DISubprogram(name: "hw_breakpoint_exceptions_notify", scope: !3, file: !3, line: 580, type: !6553, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6564)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!34, !6555, !51, !32}
!6555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6556, size: 64)
!6556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !6557, line: 54, size: 192, elements: !6558)
!6557 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!6558 = !{!6559, !6562, !6563}
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !6556, file: !6557, line: 55, baseType: !6560, size: 64)
!6560 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !6557, line: 51, baseType: !6561)
!6561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6553, size: 64)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6556, file: !6557, line: 56, baseType: !6555, size: 64, offset: 64)
!6563 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !6556, file: !6557, line: 57, baseType: !34, size: 32, offset: 128)
!6564 = !{!6565, !6566, !6567}
!6565 = !DILocalVariable(name: "unused", arg: 1, scope: !6552, file: !3, line: 581, type: !6555)
!6566 = !DILocalVariable(name: "val", arg: 2, scope: !6552, file: !3, line: 581, type: !51)
!6567 = !DILocalVariable(name: "data", arg: 3, scope: !6552, file: !3, line: 581, type: !32)
!6568 = !DILocation(line: 581, column: 26, scope: !6552)
!6569 = !DILocation(line: 581, column: 48, scope: !6552)
!6570 = !DILocation(line: 581, column: 59, scope: !6552)
!6571 = !DILocation(line: 583, column: 6, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 583, column: 6)
!6573 = !DILocation(line: 583, column: 10, scope: !6572)
!6574 = !DILocation(line: 583, column: 6, scope: !6552)
!6575 = !DILocation(line: 584, column: 3, scope: !6572)
!6576 = !DILocation(line: 586, column: 31, scope: !6552)
!6577 = !DILocation(line: 586, column: 9, scope: !6552)
!6578 = !DILocation(line: 586, column: 2, scope: !6552)
!6579 = !DILocation(line: 587, column: 1, scope: !6552)
!6580 = distinct !DISubprogram(name: "hw_breakpoint_handler", scope: !3, file: !3, line: 510, type: !6581, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6592)
!6581 = !DISubroutineType(types: !6582)
!6582 = !{!34, !6583}
!6583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6584, size: 64)
!6584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "die_args", file: !6585, line: 9, size: 256, elements: !6586)
!6585 = !DIFile(filename: "./include/linux/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "540f38f52f30c3c7c1cb3ec423fc360f")
!6586 = !{!6587, !6588, !6589, !6590, !6591}
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6584, file: !6585, line: 10, baseType: !3251, size: 64)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !6584, file: !6585, line: 11, baseType: !28, size: 64, offset: 64)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !6584, file: !6585, line: 12, baseType: !413, size: 64, offset: 128)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "trapnr", scope: !6584, file: !6585, line: 13, baseType: !34, size: 32, offset: 192)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "signr", scope: !6584, file: !6585, line: 14, baseType: !34, size: 32, offset: 224)
!6592 = !{!6593, !6594, !6595, !6596, !6597, !6598, !6599, !6600, !6605, !6607}
!6593 = !DILocalVariable(name: "args", arg: 1, scope: !6580, file: !3, line: 510, type: !6583)
!6594 = !DILocalVariable(name: "i", scope: !6580, file: !3, line: 512, type: !34)
!6595 = !DILocalVariable(name: "rc", scope: !6580, file: !3, line: 512, type: !34)
!6596 = !DILocalVariable(name: "bp", scope: !6580, file: !3, line: 513, type: !286)
!6597 = !DILocalVariable(name: "dr6_p", scope: !6580, file: !3, line: 514, type: !4702)
!6598 = !DILocalVariable(name: "dr6", scope: !6580, file: !3, line: 515, type: !51)
!6599 = !DILocalVariable(name: "bpx", scope: !6580, file: !3, line: 516, type: !1360)
!6600 = !DILocalVariable(name: "pscr_ret__", scope: !6601, file: !3, line: 531, type: !286)
!6601 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 531, column: 8)
!6602 = distinct !DILexicalBlock(scope: !6603, file: !3, line: 527, column: 32)
!6603 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 527, column: 2)
!6604 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 527, column: 2)
!6605 = !DILocalVariable(name: "__vpp_verify", scope: !6606, file: !3, line: 531, type: !1289)
!6606 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 531, column: 8)
!6607 = !DILocalVariable(name: "pfo_val__", scope: !6608, file: !3, line: 531, type: !301)
!6608 = distinct !DILexicalBlock(scope: !6601, file: !3, line: 531, column: 8)
!6609 = !DILocation(line: 510, column: 51, scope: !6580)
!6610 = !DILocation(line: 512, column: 2, scope: !6580)
!6611 = !DILocation(line: 512, column: 6, scope: !6580)
!6612 = !DILocation(line: 512, column: 9, scope: !6580)
!6613 = !DILocation(line: 513, column: 2, scope: !6580)
!6614 = !DILocation(line: 513, column: 21, scope: !6580)
!6615 = !DILocation(line: 514, column: 2, scope: !6580)
!6616 = !DILocation(line: 514, column: 17, scope: !6580)
!6617 = !DILocation(line: 515, column: 2, scope: !6580)
!6618 = !DILocation(line: 515, column: 16, scope: !6580)
!6619 = !DILocation(line: 516, column: 2, scope: !6580)
!6620 = !DILocation(line: 516, column: 7, scope: !6580)
!6621 = !DILocation(line: 519, column: 35, scope: !6580)
!6622 = !DILocation(line: 519, column: 41, scope: !6580)
!6623 = !DILocation(line: 519, column: 27, scope: !6580)
!6624 = !DILocation(line: 519, column: 8, scope: !6580)
!6625 = !DILocation(line: 520, column: 9, scope: !6580)
!6626 = !DILocation(line: 520, column: 8, scope: !6580)
!6627 = !DILocation(line: 520, column: 6, scope: !6580)
!6628 = !DILocation(line: 523, column: 7, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 523, column: 6)
!6630 = !DILocation(line: 523, column: 11, scope: !6629)
!6631 = !DILocation(line: 523, column: 27, scope: !6629)
!6632 = !DILocation(line: 523, column: 6, scope: !6580)
!6633 = !DILocation(line: 524, column: 3, scope: !6629)
!6634 = !DILocation(line: 527, column: 9, scope: !6604)
!6635 = !DILocation(line: 527, column: 7, scope: !6604)
!6636 = !DILocation(line: 527, column: 14, scope: !6603)
!6637 = !DILocation(line: 527, column: 16, scope: !6603)
!6638 = !DILocation(line: 527, column: 2, scope: !6604)
!6639 = !DILocation(line: 528, column: 7, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 528, column: 7)
!6641 = !DILocation(line: 528, column: 7, scope: !6602)
!6642 = !DILocation(line: 529, column: 4, scope: !6640)
!6643 = !DILocation(line: 531, column: 8, scope: !6601)
!6644 = !DILocation(line: 531, column: 8, scope: !6606)
!6645 = !DILocation(line: 531, column: 8, scope: !6608)
!6646 = !{i64 2155509448}
!6647 = !DILocation(line: 531, column: 8, scope: !6602)
!6648 = !DILocation(line: 531, column: 6, scope: !6602)
!6649 = !DILocation(line: 532, column: 8, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 532, column: 7)
!6651 = !DILocation(line: 532, column: 7, scope: !6602)
!6652 = !DILocation(line: 533, column: 4, scope: !6650)
!6653 = !DILocation(line: 535, column: 9, scope: !6602)
!6654 = !DILocation(line: 535, column: 13, scope: !6602)
!6655 = !DILocation(line: 535, column: 16, scope: !6602)
!6656 = !DILocation(line: 535, column: 21, scope: !6602)
!6657 = !DILocation(line: 535, column: 26, scope: !6602)
!6658 = !DILocation(line: 535, column: 7, scope: !6602)
!6659 = !DILocation(line: 546, column: 7, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 546, column: 7)
!6661 = !DILocation(line: 546, column: 11, scope: !6660)
!6662 = !DILocation(line: 546, column: 15, scope: !6660)
!6663 = !DILocation(line: 546, column: 19, scope: !6660)
!6664 = !DILocation(line: 546, column: 7, scope: !6602)
!6665 = !DILocation(line: 547, column: 4, scope: !6660)
!6666 = !DILocation(line: 553, column: 29, scope: !6602)
!6667 = !DILocation(line: 553, column: 26, scope: !6602)
!6668 = !DILocation(line: 553, column: 15, scope: !6602)
!6669 = !DILocation(line: 553, column: 5, scope: !6602)
!6670 = !DILocation(line: 553, column: 12, scope: !6602)
!6671 = !DILocation(line: 555, column: 17, scope: !6602)
!6672 = !DILocation(line: 555, column: 21, scope: !6602)
!6673 = !DILocation(line: 555, column: 27, scope: !6602)
!6674 = !DILocation(line: 555, column: 3, scope: !6602)
!6675 = !DILocation(line: 561, column: 7, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 561, column: 7)
!6677 = !DILocation(line: 561, column: 7, scope: !6602)
!6678 = !DILocation(line: 562, column: 4, scope: !6676)
!6679 = !DILocation(line: 562, column: 10, scope: !6676)
!6680 = !DILocation(line: 562, column: 16, scope: !6676)
!6681 = !DILocation(line: 562, column: 22, scope: !6676)
!6682 = !DILocation(line: 563, column: 2, scope: !6602)
!6683 = !DILocation(line: 527, column: 27, scope: !6603)
!6684 = !DILocation(line: 527, column: 2, scope: !6603)
!6685 = distinct !{!6685, !6638, !6686, !5889, !5890}
!6686 = !DILocation(line: 563, column: 2, scope: !6604)
!6687 = !DILocation(line: 570, column: 7, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 570, column: 6)
!6689 = !DILocation(line: 570, column: 16, scope: !6688)
!6690 = !DILocation(line: 570, column: 23, scope: !6688)
!6691 = !DILocation(line: 570, column: 35, scope: !6688)
!6692 = !DILocation(line: 570, column: 51, scope: !6688)
!6693 = !DILocation(line: 571, column: 7, scope: !6688)
!6694 = !DILocation(line: 571, column: 11, scope: !6688)
!6695 = !DILocation(line: 570, column: 6, scope: !6580)
!6696 = !DILocation(line: 572, column: 6, scope: !6688)
!6697 = !DILocation(line: 572, column: 3, scope: !6688)
!6698 = !DILocation(line: 574, column: 9, scope: !6580)
!6699 = !DILocation(line: 574, column: 2, scope: !6580)
!6700 = !DILocation(line: 575, column: 1, scope: !6580)
!6701 = distinct !DISubprogram(name: "hw_breakpoint_pmu_read", scope: !3, file: !3, line: 589, type: !5132, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6702)
!6702 = !{!6703}
!6703 = !DILocalVariable(name: "bp", arg: 1, scope: !6701, file: !3, line: 589, type: !286)
!6704 = !DILocation(line: 589, column: 48, scope: !6701)
!6705 = !DILocation(line: 592, column: 1, scope: !6701)
!6706 = distinct !DISubprogram(name: "within_cpu_entry", scope: !3, file: !3, line: 263, type: !6707, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6709)
!6707 = !DISubroutineType(types: !6708)
!6708 = !{!1360, !51, !51}
!6709 = !{!6710, !6711, !6712, !6713, !6720, !6722, !6726, !6728, !6732}
!6710 = !DILocalVariable(name: "addr", arg: 1, scope: !6706, file: !3, line: 263, type: !51)
!6711 = !DILocalVariable(name: "end", arg: 2, scope: !6706, file: !3, line: 263, type: !51)
!6712 = !DILocalVariable(name: "cpu", scope: !6706, file: !3, line: 265, type: !34)
!6713 = !DILocalVariable(name: "__vpp_verify", scope: !6714, file: !3, line: 297, type: !1289)
!6714 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 297, column: 21)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !3, line: 297, column: 21)
!6716 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 296, column: 7)
!6717 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 286, column: 29)
!6718 = distinct !DILexicalBlock(scope: !6719, file: !3, line: 286, column: 2)
!6719 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 286, column: 2)
!6720 = !DILocalVariable(name: "__ptr", scope: !6721, file: !3, line: 297, type: !51)
!6721 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 297, column: 21)
!6722 = !DILocalVariable(name: "__vpp_verify", scope: !6723, file: !3, line: 307, type: !1289)
!6723 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 307, column: 21)
!6724 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 307, column: 21)
!6725 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 306, column: 7)
!6726 = !DILocalVariable(name: "__ptr", scope: !6727, file: !3, line: 307, type: !51)
!6727 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 307, column: 21)
!6728 = !DILocalVariable(name: "__vpp_verify", scope: !6729, file: !3, line: 315, type: !1289)
!6729 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 315, column: 46)
!6730 = distinct !DILexicalBlock(scope: !6731, file: !3, line: 315, column: 46)
!6731 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 315, column: 7)
!6732 = !DILocalVariable(name: "__ptr", scope: !6733, file: !3, line: 315, type: !51)
!6733 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 315, column: 46)
!6734 = !DILocation(line: 263, column: 51, scope: !6706)
!6735 = !DILocation(line: 263, column: 71, scope: !6706)
!6736 = !DILocation(line: 265, column: 2, scope: !6706)
!6737 = !DILocation(line: 265, column: 6, scope: !6706)
!6738 = !DILocation(line: 268, column: 18, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 268, column: 6)
!6740 = !DILocation(line: 268, column: 24, scope: !6739)
!6741 = !DILocation(line: 268, column: 6, scope: !6739)
!6742 = !DILocation(line: 268, column: 6, scope: !6706)
!6743 = !DILocation(line: 270, column: 3, scope: !6739)
!6744 = !DILocation(line: 277, column: 18, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 277, column: 6)
!6746 = !DILocation(line: 277, column: 24, scope: !6745)
!6747 = !DILocation(line: 278, column: 28, scope: !6745)
!6748 = !DILocation(line: 278, column: 26, scope: !6745)
!6749 = !DILocation(line: 277, column: 6, scope: !6745)
!6750 = !DILocation(line: 277, column: 6, scope: !6706)
!6751 = !DILocation(line: 279, column: 3, scope: !6745)
!6752 = !DILocation(line: 286, column: 2, scope: !6719)
!6753 = !DILocation(line: 286, column: 2, scope: !6718)
!6754 = !DILocation(line: 288, column: 19, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 288, column: 7)
!6756 = !DILocation(line: 288, column: 25, scope: !6755)
!6757 = !DILocation(line: 288, column: 60, scope: !6755)
!6758 = !DILocation(line: 288, column: 45, scope: !6755)
!6759 = !DILocation(line: 288, column: 30, scope: !6755)
!6760 = !DILocation(line: 288, column: 7, scope: !6755)
!6761 = !DILocation(line: 288, column: 7, scope: !6717)
!6762 = !DILocation(line: 290, column: 4, scope: !6755)
!6763 = !DILocation(line: 296, column: 19, scope: !6716)
!6764 = !DILocation(line: 296, column: 25, scope: !6716)
!6765 = !DILocation(line: 297, column: 21, scope: !6715)
!6766 = !DILocation(line: 297, column: 21, scope: !6714)
!6767 = !DILocation(line: 297, column: 21, scope: !6721)
!6768 = !DILocation(line: 297, column: 5, scope: !6716)
!6769 = !DILocation(line: 296, column: 7, scope: !6716)
!6770 = !DILocation(line: 296, column: 7, scope: !6717)
!6771 = !DILocation(line: 299, column: 4, scope: !6716)
!6772 = !DILocation(line: 306, column: 19, scope: !6725)
!6773 = !DILocation(line: 306, column: 25, scope: !6725)
!6774 = !DILocation(line: 307, column: 21, scope: !6724)
!6775 = !DILocation(line: 307, column: 21, scope: !6723)
!6776 = !DILocation(line: 307, column: 21, scope: !6727)
!6777 = !DILocation(line: 307, column: 5, scope: !6725)
!6778 = !DILocation(line: 306, column: 7, scope: !6725)
!6779 = !DILocation(line: 306, column: 7, scope: !6717)
!6780 = !DILocation(line: 309, column: 4, scope: !6725)
!6781 = !DILocation(line: 315, column: 19, scope: !6731)
!6782 = !DILocation(line: 315, column: 25, scope: !6731)
!6783 = !DILocation(line: 315, column: 46, scope: !6730)
!6784 = !DILocation(line: 315, column: 46, scope: !6729)
!6785 = !DILocation(line: 315, column: 46, scope: !6733)
!6786 = !DILocation(line: 315, column: 30, scope: !6731)
!6787 = !DILocation(line: 315, column: 7, scope: !6731)
!6788 = !DILocation(line: 315, column: 7, scope: !6717)
!6789 = !DILocation(line: 317, column: 4, scope: !6731)
!6790 = !DILocation(line: 318, column: 2, scope: !6717)
!6791 = distinct !{!6791, !6752, !6792, !5889, !5890}
!6792 = !DILocation(line: 318, column: 2, scope: !6719)
!6793 = !DILocation(line: 320, column: 2, scope: !6706)
!6794 = !DILocation(line: 321, column: 1, scope: !6706)
!6795 = !DISubprogram(name: "within_kprobe_blacklist", scope: !6796, file: !6796, line: 295, type: !6797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6796 = !DIFile(filename: "./include/linux/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "110870054f860a0910edee7c61ce83a6")
!6797 = !DISubroutineType(types: !6798)
!6798 = !{!1360, !51}
!6799 = distinct !DISubprogram(name: "is_power_of_2", scope: !6800, file: !6800, line: 45, type: !6797, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6800 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6801 = !{!6802}
!6802 = !DILocalVariable(name: "n", arg: 1, scope: !6799, file: !6800, line: 45, type: !51)
!6803 = !DILocation(line: 45, column: 34, scope: !6799)
!6804 = !DILocation(line: 47, column: 10, scope: !6799)
!6805 = !DILocation(line: 47, column: 12, scope: !6799)
!6806 = !DILocation(line: 47, column: 17, scope: !6799)
!6807 = !DILocation(line: 47, column: 22, scope: !6799)
!6808 = !DILocation(line: 47, column: 27, scope: !6799)
!6809 = !DILocation(line: 47, column: 29, scope: !6799)
!6810 = !DILocation(line: 47, column: 24, scope: !6799)
!6811 = !DILocation(line: 47, column: 35, scope: !6799)
!6812 = !DILocation(line: 0, scope: !6799)
!6813 = !DILocation(line: 47, column: 2, scope: !6799)
!6814 = distinct !DISubprogram(name: "arch_test_bit", scope: !6815, file: !6815, line: 237, type: !6816, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6821)
!6815 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!1360, !51, !6818}
!6818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6819, size: 64)
!6819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6820)
!6820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!6821 = !{!6822, !6823}
!6822 = !DILocalVariable(name: "nr", arg: 1, scope: !6814, file: !6815, line: 237, type: !51)
!6823 = !DILocalVariable(name: "addr", arg: 2, scope: !6814, file: !6815, line: 237, type: !6818)
!6824 = !DILocation(line: 237, column: 29, scope: !6814)
!6825 = !DILocation(line: 237, column: 63, scope: !6814)
!6826 = !DILocation(line: 239, column: 30, scope: !6814)
!6827 = !DILocation(line: 239, column: 9, scope: !6814)
!6828 = !DILocation(line: 239, column: 54, scope: !6814)
!6829 = !DILocation(line: 239, column: 58, scope: !6814)
!6830 = !DILocation(line: 239, column: 36, scope: !6814)
!6831 = !DILocation(line: 240, column: 26, scope: !6814)
!6832 = !DILocation(line: 240, column: 30, scope: !6814)
!6833 = !DILocation(line: 240, column: 8, scope: !6814)
!6834 = !DILocation(line: 239, column: 2, scope: !6814)
!6835 = distinct !DISubprogram(name: "within_area", scope: !3, file: !3, line: 253, type: !6836, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6838)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{!1360, !51, !51, !51, !51}
!6838 = !{!6839, !6840, !6841, !6842}
!6839 = !DILocalVariable(name: "addr", arg: 1, scope: !6835, file: !3, line: 253, type: !51)
!6840 = !DILocalVariable(name: "end", arg: 2, scope: !6835, file: !3, line: 253, type: !51)
!6841 = !DILocalVariable(name: "base", arg: 3, scope: !6835, file: !3, line: 254, type: !51)
!6842 = !DILocalVariable(name: "size", arg: 4, scope: !6835, file: !3, line: 254, type: !51)
!6843 = !DILocation(line: 253, column: 46, scope: !6835)
!6844 = !DILocation(line: 253, column: 66, scope: !6835)
!6845 = !DILocation(line: 254, column: 25, scope: !6835)
!6846 = !DILocation(line: 254, column: 45, scope: !6835)
!6847 = !DILocation(line: 256, column: 9, scope: !6835)
!6848 = !DILocation(line: 256, column: 16, scope: !6835)
!6849 = !DILocation(line: 256, column: 13, scope: !6835)
!6850 = !DILocation(line: 256, column: 21, scope: !6835)
!6851 = !DILocation(line: 256, column: 24, scope: !6835)
!6852 = !DILocation(line: 256, column: 32, scope: !6835)
!6853 = !DILocation(line: 256, column: 39, scope: !6835)
!6854 = !DILocation(line: 256, column: 37, scope: !6835)
!6855 = !DILocation(line: 256, column: 29, scope: !6835)
!6856 = !DILocation(line: 0, scope: !6835)
!6857 = !DILocation(line: 256, column: 2, scope: !6835)
!6858 = distinct !DISubprogram(name: "find_next_bit", scope: !6859, file: !6859, line: 54, type: !6860, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6859 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!51, !6862, !51, !51}
!6862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!6863 = !{!6864, !6865, !6866, !6867}
!6864 = !DILocalVariable(name: "addr", arg: 1, scope: !6858, file: !6859, line: 54, type: !6862)
!6865 = !DILocalVariable(name: "size", arg: 2, scope: !6858, file: !6859, line: 54, type: !51)
!6866 = !DILocalVariable(name: "offset", arg: 3, scope: !6858, file: !6859, line: 55, type: !51)
!6867 = !DILocalVariable(name: "val", scope: !6868, file: !6859, line: 58, type: !51)
!6868 = distinct !DILexicalBlock(scope: !6869, file: !6859, line: 57, column: 31)
!6869 = distinct !DILexicalBlock(scope: !6858, file: !6859, line: 57, column: 6)
!6870 = !DILocation(line: 54, column: 50, scope: !6858)
!6871 = !DILocation(line: 54, column: 70, scope: !6858)
!6872 = !DILocation(line: 55, column: 22, scope: !6858)
!6873 = !DILocation(line: 57, column: 6, scope: !6869)
!6874 = !DILocation(line: 57, column: 6, scope: !6858)
!6875 = !DILocation(line: 58, column: 3, scope: !6868)
!6876 = !DILocation(line: 58, column: 17, scope: !6868)
!6877 = !DILocation(line: 60, column: 7, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6868, file: !6859, line: 60, column: 7)
!6879 = !DILocation(line: 60, column: 7, scope: !6868)
!6880 = !DILocation(line: 61, column: 11, scope: !6878)
!6881 = !DILocation(line: 61, column: 4, scope: !6878)
!6882 = !DILocation(line: 63, column: 10, scope: !6868)
!6883 = !DILocation(line: 63, column: 9, scope: !6868)
!6884 = !DILocation(line: 63, column: 17, scope: !6868)
!6885 = !DILocation(line: 63, column: 15, scope: !6868)
!6886 = !DILocation(line: 63, column: 7, scope: !6868)
!6887 = !DILocation(line: 64, column: 10, scope: !6868)
!6888 = !DILocation(line: 64, column: 16, scope: !6868)
!6889 = !DILocation(line: 64, column: 29, scope: !6868)
!6890 = !DILocation(line: 64, column: 3, scope: !6868)
!6891 = !DILocation(line: 65, column: 2, scope: !6869)
!6892 = !DILocation(line: 67, column: 24, scope: !6858)
!6893 = !DILocation(line: 67, column: 30, scope: !6858)
!6894 = !DILocation(line: 67, column: 36, scope: !6858)
!6895 = !DILocation(line: 67, column: 9, scope: !6858)
!6896 = !DILocation(line: 67, column: 2, scope: !6858)
!6897 = !DILocation(line: 68, column: 1, scope: !6858)
!6898 = distinct !DISubprogram(name: "get_cpu_gdt_rw", scope: !5647, file: !5647, line: 51, type: !6899, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6902)
!6899 = !DISubroutineType(types: !6900)
!6900 = !{!6901, !7}
!6901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!6902 = !{!6903, !6904, !6907}
!6903 = !DILocalVariable(name: "cpu", arg: 1, scope: !6898, file: !5647, line: 51, type: !7)
!6904 = !DILocalVariable(name: "__vpp_verify", scope: !6905, file: !5647, line: 53, type: !1289)
!6905 = distinct !DILexicalBlock(scope: !6906, file: !5647, line: 53, column: 9)
!6906 = distinct !DILexicalBlock(scope: !6898, file: !5647, line: 53, column: 9)
!6907 = !DILocalVariable(name: "__ptr", scope: !6908, file: !5647, line: 53, type: !51)
!6908 = distinct !DILexicalBlock(scope: !6906, file: !5647, line: 53, column: 9)
!6909 = !DILocation(line: 51, column: 63, scope: !6898)
!6910 = !DILocation(line: 53, column: 9, scope: !6906)
!6911 = !DILocation(line: 53, column: 9, scope: !6905)
!6912 = !DILocation(line: 53, column: 9, scope: !6908)
!6913 = !DILocation(line: 53, column: 32, scope: !6898)
!6914 = !DILocation(line: 53, column: 9, scope: !6898)
!6915 = !DILocation(line: 53, column: 2, scope: !6898)
!6916 = distinct !DISubprogram(name: "variable__ffs", scope: !6815, file: !6815, line: 250, type: !6917, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6919)
!6917 = !DISubroutineType(types: !6918)
!6918 = !{!51, !51}
!6919 = !{!6920}
!6920 = !DILocalVariable(name: "word", arg: 1, scope: !6916, file: !6815, line: 250, type: !51)
!6921 = !DILocation(line: 250, column: 66, scope: !6916)
!6922 = !DILocation(line: 254, column: 11, scope: !6916)
!6923 = !DILocation(line: 252, column: 2, scope: !6916)
!6924 = !{i64 557842}
!6925 = !DILocation(line: 255, column: 9, scope: !6916)
!6926 = !DILocation(line: 255, column: 2, scope: !6916)
!6927 = !DISubprogram(name: "_find_next_bit", scope: !6859, file: !6859, line: 11, type: !6860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6928 = distinct !DISubprogram(name: "constant_test_bit", scope: !6815, file: !6815, line: 204, type: !6929, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6931)
!6929 = !DISubroutineType(types: !6930)
!6930 = !{!1360, !413, !6818}
!6931 = !{!6932, !6933}
!6932 = !DILocalVariable(name: "nr", arg: 1, scope: !6928, file: !6815, line: 204, type: !413)
!6933 = !DILocalVariable(name: "addr", arg: 2, scope: !6928, file: !6815, line: 204, type: !6818)
!6934 = !DILocation(line: 204, column: 52, scope: !6928)
!6935 = !DILocation(line: 204, column: 86, scope: !6928)
!6936 = !DILocation(line: 206, column: 19, scope: !6928)
!6937 = !DILocation(line: 206, column: 22, scope: !6928)
!6938 = !DILocation(line: 206, column: 15, scope: !6928)
!6939 = !DILocation(line: 207, column: 4, scope: !6928)
!6940 = !DILocation(line: 207, column: 9, scope: !6928)
!6941 = !DILocation(line: 207, column: 12, scope: !6928)
!6942 = !DILocation(line: 206, column: 44, scope: !6928)
!6943 = !DILocation(line: 207, column: 37, scope: !6928)
!6944 = !DILocation(line: 206, column: 2, scope: !6928)
!6945 = distinct !DISubprogram(name: "variable_test_bit", scope: !6815, file: !6815, line: 224, type: !6929, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6946)
!6946 = !{!6947, !6948, !6949}
!6947 = !DILocalVariable(name: "nr", arg: 1, scope: !6945, file: !6815, line: 224, type: !413)
!6948 = !DILocalVariable(name: "addr", arg: 2, scope: !6945, file: !6815, line: 224, type: !6818)
!6949 = !DILocalVariable(name: "oldbit", scope: !6945, file: !6815, line: 226, type: !1360)
!6950 = !DILocation(line: 224, column: 52, scope: !6945)
!6951 = !DILocation(line: 224, column: 86, scope: !6945)
!6952 = !DILocation(line: 226, column: 2, scope: !6945)
!6953 = !DILocation(line: 226, column: 7, scope: !6945)
!6954 = !DILocation(line: 231, column: 33, scope: !6945)
!6955 = !DILocation(line: 231, column: 46, scope: !6945)
!6956 = !DILocation(line: 228, column: 2, scope: !6945)
!6957 = !{i64 2148062767, i64 2148062841}
!6958 = !DILocation(line: 233, column: 9, scope: !6945)
!6959 = !DILocation(line: 234, column: 1, scope: !6945)
!6960 = !DILocation(line: 233, column: 2, scope: !6945)
!6961 = distinct !DISubprogram(name: "ERR_PTR", scope: !6962, file: !6962, line: 39, type: !6963, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6965)
!6962 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6963 = !DISubroutineType(types: !6964)
!6964 = !{!32, !413}
!6965 = !{!6966}
!6966 = !DILocalVariable(name: "error", arg: 1, scope: !6961, file: !6962, line: 39, type: !413)
!6967 = !DILocation(line: 39, column: 48, scope: !6961)
!6968 = !DILocation(line: 41, column: 18, scope: !6961)
!6969 = !DILocation(line: 41, column: 9, scope: !6961)
!6970 = !DILocation(line: 41, column: 2, scope: !6961)
!6971 = !DISubprogram(name: "perf_bp_event", scope: !237, file: !237, line: 1631, type: !6972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6972 = !DISubroutineType(types: !6973)
!6973 = !{null, !286, !32}
!6974 = distinct !DISubprogram(name: "get_current", scope: !6975, file: !6975, line: 39, type: !6976, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6978)
!6975 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!867}
!6978 = !{!6979, !6981, !6983}
!6979 = !DILocalVariable(name: "pscr_ret__", scope: !6980, file: !6975, line: 41, type: !867)
!6980 = distinct !DILexicalBlock(scope: !6974, file: !6975, line: 41, column: 9)
!6981 = !DILocalVariable(name: "__vpp_verify", scope: !6982, file: !6975, line: 41, type: !1289)
!6982 = distinct !DILexicalBlock(scope: !6980, file: !6975, line: 41, column: 9)
!6983 = !DILocalVariable(name: "pfo_val__", scope: !6984, file: !6975, line: 41, type: !301)
!6984 = distinct !DILexicalBlock(scope: !6980, file: !6975, line: 41, column: 9)
!6985 = !DILocation(line: 41, column: 9, scope: !6980)
!6986 = !DILocation(line: 41, column: 9, scope: !6982)
!6987 = !DILocation(line: 41, column: 9, scope: !6984)
!6988 = !{i64 2148324706}
!6989 = !DILocation(line: 41, column: 9, scope: !6974)
!6990 = !DILocation(line: 41, column: 2, scope: !6974)
