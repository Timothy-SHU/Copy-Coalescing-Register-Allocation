; ModuleID = 'arch/x86/entry/vdso/vma.c'
source_filename = "arch/x86/entry/vdso/vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.vdso_image = type { ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%struct.atomic_t = type { i32 }
%union.anon.19 = type { i64 }
%struct.pcpu_hot = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [16 x i8] }
%struct.anon.27 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_key_false = type { %struct.static_key }
%struct.vma_iterator = type { %struct.ma_state }
%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, i8, i8, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon.14, [0 x i64] }
%struct.anon.14 = type { %struct.anon.15, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.15 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.16, i32, ptr }
%union.anon.16 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { %union.anon.20, ptr, %struct.pgprot, %union.anon.22, i32, ptr, i8, %struct.anon.23, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.22 = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.17, i64, i64, %union.anon.18 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }
%struct.vm_fault = type { %struct.anon.24, i32, ptr, ptr, %union.anon.25, ptr, ptr, ptr, ptr, ptr }
%struct.anon.24 = type { ptr, i32, i64, i64, i64 }
%union.anon.25 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.28, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %union.anon.30, ptr, %union.anon.32, i64 }
%union.anon.30 = type { %struct.list_head }
%union.anon.32 = type { i64 }
%union.anon.37 = type { %struct.atomic_t }
%struct.anon.35 = type { i64 }
%struct.folio = type { %union.anon.38, %union.anon.43, %union.anon.45 }
%union.anon.38 = type { %struct.page }
%union.anon.43 = type { %struct.page }
%union.anon.45 = type { %struct.page }

@_vdso_data_offset = hidden constant i64 128, align 8, !dbg !0
@vdso64_enabled = hidden global i32 1, section ".data..read_mostly", align 4, !dbg !5463
@.str = private unnamed_addr constant [26 x i8] c"arch/x86/entry/vdso/vma.c\00", align 1, !dbg !5465
@vvar_mapping = internal constant %struct.vm_special_mapping { ptr @.str.1, ptr null, ptr @vvar_fault, ptr null }, align 8, !dbg !5486
@vdso_mapping = internal constant %struct.vm_special_mapping { ptr @.str.2, ptr null, ptr @vdso_fault, ptr @vdso_mremap }, align 8, !dbg !5504
@vdso_image_64 = external dso_local constant %struct.vdso_image, align 8
@vdso_image_32 = external dso_local constant %struct.vdso_image, align 8
@__setup_str_vdso_setup = internal constant [6 x i8] c"vdso=\00", section ".init.rodata", align 1, !dbg !5506
@__setup_vdso_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_vdso_setup, ptr @vdso_setup, i32 0 }, section ".init.setup", align 8, !dbg !5470
@vclocks_used = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !5481
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[vvar]\00", align 1, !dbg !5483
@__vvar_page = external dso_local global i8, align 1
@phys_base = external dso_local global i64, align 8
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1, !dbg !5502
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@vdso32_enabled = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_vdso_setup], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @arch_get_vdso_data(ptr noundef %vvar_page) #0 align 16 !dbg !5520 {
entry:
  %vvar_page.addr = alloca ptr, align 8
  store ptr %vvar_page, ptr %vvar_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vvar_page.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load ptr, ptr %vvar_page.addr, align 8, !dbg !5526
  %add.ptr = getelementptr i8, ptr %0, i64 128, !dbg !5527
  ret ptr %add.ptr, !dbg !5528
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @init_vdso_image(ptr noundef %image) #2 section ".init.text" align 16 !dbg !5529 {
entry:
  %image.addr = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  br label %do.body, !dbg !5535

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5536

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5538

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5539
  %size = getelementptr inbounds %struct.vdso_image, ptr %0, i32 0, i32 1, !dbg !5539
  %1 = load i64, ptr %size, align 8, !dbg !5539
  %rem = urem i64 %1, 4096, !dbg !5539
  %cmp = icmp ne i64 %rem, 0, !dbg !5539
  %lnot = xor i1 %cmp, true, !dbg !5539
  %lnot2 = xor i1 %lnot, true, !dbg !5539
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5539
  %conv = sext i32 %lnot.ext to i64, !dbg !5539
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5539
  %tobool = icmp ne i64 %expval, 0, !dbg !5539
  br i1 %tobool, label %if.then, label %if.end, !dbg !5542

if.then:                                          ; preds = %do.body1
  br label %do.body3, !dbg !5539

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5543

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5545

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !5543

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 50, i32 0, i64 12) #13, !dbg !5547, !srcloc !5549
  br label %do.end7, !dbg !5547

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !5543

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !5543

if.end:                                           ; preds = %do.end8, %do.body1
  br label %do.end9, !dbg !5542

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %image.addr, align 8, !dbg !5550
  %data = getelementptr inbounds %struct.vdso_image, ptr %2, i32 0, i32 0, !dbg !5551
  %3 = load ptr, ptr %data, align 8, !dbg !5551
  %4 = load ptr, ptr %image.addr, align 8, !dbg !5552
  %alt = getelementptr inbounds %struct.vdso_image, ptr %4, i32 0, i32 2, !dbg !5553
  %5 = load i64, ptr %alt, align 8, !dbg !5553
  %add.ptr = getelementptr i8, ptr %3, i64 %5, !dbg !5554
  %6 = load ptr, ptr %image.addr, align 8, !dbg !5555
  %data10 = getelementptr inbounds %struct.vdso_image, ptr %6, i32 0, i32 0, !dbg !5556
  %7 = load ptr, ptr %data10, align 8, !dbg !5556
  %8 = load ptr, ptr %image.addr, align 8, !dbg !5557
  %alt11 = getelementptr inbounds %struct.vdso_image, ptr %8, i32 0, i32 2, !dbg !5558
  %9 = load i64, ptr %alt11, align 8, !dbg !5558
  %add.ptr12 = getelementptr i8, ptr %7, i64 %9, !dbg !5559
  %10 = load ptr, ptr %image.addr, align 8, !dbg !5560
  %alt_len = getelementptr inbounds %struct.vdso_image, ptr %10, i32 0, i32 3, !dbg !5561
  %11 = load i64, ptr %alt_len, align 8, !dbg !5561
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i64 %11, !dbg !5562
  call void @apply_alternatives(ptr noundef %add.ptr, ptr noundef %add.ptr13) #14, !dbg !5563
  ret i32 0, !dbg !5564
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5565 dso_local void @apply_alternatives(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vdso_join_timens(ptr noundef %task, ptr noundef %ns) #0 align 16 !dbg !5568 {
entry:
  %task.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %vmi = alloca %struct.vma_iterator, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5572, metadata !DIExpression()), !dbg !5603
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5573, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5574, metadata !DIExpression()), !dbg !5606
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5607
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49, !dbg !5608
  %1 = load ptr, ptr %mm1, align 64, !dbg !5608
  store ptr %1, ptr %mm, align 8, !dbg !5606
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #13, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5575, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmi) #13, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %vmi, metadata !5576, metadata !DIExpression()), !dbg !5611
  call void @llvm.memset.p0.i64(ptr align 8 %vmi, i8 0, i64 64, i1 false), !dbg !5611
  %mas = getelementptr inbounds %struct.vma_iterator, ptr %vmi, i32 0, i32 0, !dbg !5611
  %tree = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 0, !dbg !5611
  %2 = load ptr, ptr %mm, align 8, !dbg !5611
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5611
  %mm_mt = getelementptr inbounds %struct.anon.14, ptr %3, i32 0, i32 1, !dbg !5611
  store ptr %mm_mt, ptr %tree, align 8, !dbg !5611
  %node = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 3, !dbg !5611
  store ptr inttoptr (i64 1 to ptr), ptr %node, align 8, !dbg !5611
  %4 = load ptr, ptr %mm, align 8, !dbg !5612
  call void @mmap_read_lock(ptr noundef %4) #14, !dbg !5613
  br label %while.cond, !dbg !5614

while.cond:                                       ; preds = %if.end, %entry
  %call = call ptr @vma_next(ptr noundef %vmi) #14, !dbg !5614
  store ptr %call, ptr %vma, align 8, !dbg !5614
  %cmp = icmp ne ptr %call, null, !dbg !5614
  br i1 %cmp, label %while.body, label %while.end, !dbg !5614

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %vma, align 8, !dbg !5615
  %call2 = call zeroext i1 @vma_is_special_mapping(ptr noundef %5, ptr noundef @vvar_mapping) #14, !dbg !5618
  br i1 %call2, label %if.then, label %if.end, !dbg !5619

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %vma, align 8, !dbg !5620
  call void @zap_vma_pages(ptr noundef %6) #14, !dbg !5621
  br label %if.end, !dbg !5621

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !5614, !llvm.loop !5622

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %mm, align 8, !dbg !5626
  call void @mmap_read_unlock(ptr noundef %7) #14, !dbg !5627
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmi) #13, !dbg !5628
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #13, !dbg !5628
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !5628
  ret i32 0, !dbg !5629
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_lock(ptr noundef %mm) #7 align 16 !dbg !5630 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5637
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !5638
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5639
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5640
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 16, !dbg !5640
  call void @down_read(ptr noundef %mmap_lock) #14, !dbg !5641
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5642
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #14, !dbg !5643
  ret void, !dbg !5644
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vma_next(ptr noundef %vmi) #7 align 16 !dbg !5645 {
entry:
  %vmi.addr = alloca ptr, align 8
  store ptr %vmi, ptr %vmi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmi.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %vmi.addr, align 8, !dbg !5652
  %mas = getelementptr inbounds %struct.vma_iterator, ptr %0, i32 0, i32 0, !dbg !5653
  %call = call ptr @mas_find(ptr noundef %mas, i64 noundef -1) #14, !dbg !5654
  ret ptr %call, !dbg !5655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5656 dso_local zeroext i1 @vma_is_special_mapping(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zap_vma_pages(ptr noundef %vma) #7 align 16 !dbg !5661 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !5665
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !5666
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 0, !dbg !5667
  %vm_start = getelementptr inbounds %struct.anon.21, ptr %2, i32 0, i32 0, !dbg !5667
  %3 = load i64, ptr %vm_start, align 8, !dbg !5667
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !5668
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 0, !dbg !5669
  %vm_end = getelementptr inbounds %struct.anon.21, ptr %5, i32 0, i32 1, !dbg !5669
  %6 = load i64, ptr %vm_end, align 8, !dbg !5669
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !5670
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 0, !dbg !5671
  %vm_start1 = getelementptr inbounds %struct.anon.21, ptr %8, i32 0, i32 0, !dbg !5671
  %9 = load i64, ptr %vm_start1, align 8, !dbg !5671
  %sub = sub i64 %6, %9, !dbg !5672
  call void @zap_page_range_single(ptr noundef %0, i64 noundef %3, i64 noundef %sub, ptr noundef null) #14, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_read_unlock(ptr noundef %mm) #7 align 16 !dbg !5675 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5679
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !5680
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5681
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5682
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 16, !dbg !5682
  call void @up_read(ptr noundef %mmap_lock) #14, !dbg !5683
  ret void, !dbg !5684
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @map_vdso_once(ptr noundef %image, i64 noundef %addr) #0 align 16 !dbg !5685 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %mm = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %vmi = alloca %struct.vma_iterator, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5689, metadata !DIExpression()), !dbg !5694
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5690, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5691, metadata !DIExpression()), !dbg !5697
  %call = call ptr @get_current() #14, !dbg !5698
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !5699
  %0 = load ptr, ptr %mm1, align 64, !dbg !5699
  store ptr %0, ptr %mm, align 8, !dbg !5697
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #13, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5692, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmi) #13, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %vmi, metadata !5693, metadata !DIExpression()), !dbg !5702
  call void @llvm.memset.p0.i64(ptr align 8 %vmi, i8 0, i64 64, i1 false), !dbg !5702
  %mas = getelementptr inbounds %struct.vma_iterator, ptr %vmi, i32 0, i32 0, !dbg !5702
  %tree = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 0, !dbg !5702
  %1 = load ptr, ptr %mm, align 8, !dbg !5702
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5702
  %mm_mt = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 1, !dbg !5702
  store ptr %mm_mt, ptr %tree, align 8, !dbg !5702
  %node = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 3, !dbg !5702
  store ptr inttoptr (i64 1 to ptr), ptr %node, align 8, !dbg !5702
  %3 = load ptr, ptr %mm, align 8, !dbg !5703
  call void @mmap_write_lock(ptr noundef %3) #14, !dbg !5704
  br label %while.cond, !dbg !5705

while.cond:                                       ; preds = %if.end, %entry
  %call2 = call ptr @vma_next(ptr noundef %vmi) #14, !dbg !5705
  store ptr %call2, ptr %vma, align 8, !dbg !5705
  %cmp = icmp ne ptr %call2, null, !dbg !5705
  br i1 %cmp, label %while.body, label %while.end, !dbg !5705

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %vma, align 8, !dbg !5706
  %call3 = call zeroext i1 @vma_is_special_mapping(ptr noundef %4, ptr noundef @vdso_mapping) #14, !dbg !5709
  br i1 %call3, label %if.then, label %lor.lhs.false, !dbg !5710

lor.lhs.false:                                    ; preds = %while.body
  %5 = load ptr, ptr %vma, align 8, !dbg !5711
  %call4 = call zeroext i1 @vma_is_special_mapping(ptr noundef %5, ptr noundef @vvar_mapping) #14, !dbg !5712
  br i1 %call4, label %if.then, label %if.end, !dbg !5713

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %6 = load ptr, ptr %mm, align 8, !dbg !5714
  call void @mmap_write_unlock(ptr noundef %6) #14, !dbg !5716
  store i32 -17, ptr %retval, align 4, !dbg !5717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5717

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !5705, !llvm.loop !5718

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %mm, align 8, !dbg !5720
  call void @mmap_write_unlock(ptr noundef %7) #14, !dbg !5721
  %8 = load ptr, ptr %image.addr, align 8, !dbg !5722
  %9 = load i64, ptr %addr.addr, align 8, !dbg !5723
  %call5 = call i32 @map_vdso(ptr noundef %8, i64 noundef %9) #14, !dbg !5724
  store i32 %call5, ptr %retval, align 4, !dbg !5725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmi) #13, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #13, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !5726
  %10 = load i32, ptr %retval, align 4, !dbg !5726
  ret i32 %10, !dbg !5726
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #8 align 16 !dbg !5727 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !5738
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5732, metadata !DIExpression()), !dbg !5738
  br label %do.body, !dbg !5738

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !5739
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5734, metadata !DIExpression()), !dbg !5739
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5739
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !5738
  br label %do.cond, !dbg !5739

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5739

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5736, metadata !DIExpression()), !dbg !5740
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !5740, !srcloc !5741
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5740
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5740
  %3 = inttoptr i64 %2 to ptr, !dbg !5740
  store ptr %3, ptr %tmp, align 8, !dbg !5740
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !5738
  %4 = load ptr, ptr %tmp, align 8, !dbg !5740
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5738
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5738
  store ptr %5, ptr %tmp1, align 8, !dbg !5738
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !5742
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5738
  ret ptr %6, !dbg !5743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_lock(ptr noundef %mm) #7 align 16 !dbg !5744 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5748
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #14, !dbg !5749
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5750
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !5751
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 16, !dbg !5751
  call void @down_write(ptr noundef %mmap_lock) #14, !dbg !5752
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !5753
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #14, !dbg !5754
  ret void, !dbg !5755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_write_unlock(ptr noundef %mm) #7 align 16 !dbg !5756 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5760
  call void @__mmap_lock_trace_released(ptr noundef %0, i1 noundef zeroext true) #14, !dbg !5761
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !5762
  call void @vma_end_write_all(ptr noundef %1) #14, !dbg !5763
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !5764
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !5765
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %3, i32 0, i32 16, !dbg !5765
  call void @up_write(ptr noundef %mmap_lock) #14, !dbg !5766
  ret void, !dbg !5767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_vdso(ptr noundef %image, i64 noundef %addr) #0 align 16 !dbg !5768 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %mm = alloca ptr, align 8
  %vma = alloca ptr, align 8
  %text_start = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5770, metadata !DIExpression()), !dbg !5777
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5771, metadata !DIExpression()), !dbg !5778
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5772, metadata !DIExpression()), !dbg !5780
  %call = call ptr @get_current() #14, !dbg !5781
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !5782
  %0 = load ptr, ptr %mm1, align 64, !dbg !5782
  store ptr %0, ptr %mm, align 8, !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #13, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !5773, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 8, ptr %text_start) #13, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %text_start, metadata !5774, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5775, metadata !DIExpression()), !dbg !5788
  store i32 0, ptr %ret, align 4, !dbg !5788
  %1 = load ptr, ptr %mm, align 8, !dbg !5789
  %call2 = call i32 @mmap_write_lock_killable(ptr noundef %1) #14, !dbg !5791
  %tobool = icmp ne i32 %call2, 0, !dbg !5791
  br i1 %tobool, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4, !dbg !5793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5793

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !5794
  %3 = load ptr, ptr %image.addr, align 8, !dbg !5795
  %size = getelementptr inbounds %struct.vdso_image, ptr %3, i32 0, i32 1, !dbg !5796
  %4 = load i64, ptr %size, align 8, !dbg !5796
  %5 = load ptr, ptr %image.addr, align 8, !dbg !5797
  %sym_vvar_start = getelementptr inbounds %struct.vdso_image, ptr %5, i32 0, i32 7, !dbg !5798
  %6 = load i64, ptr %sym_vvar_start, align 8, !dbg !5798
  %sub = sub i64 %4, %6, !dbg !5799
  %call3 = call i64 @get_unmapped_area(ptr noundef null, i64 noundef %2, i64 noundef %sub, i64 noundef 0, i64 noundef 0) #14, !dbg !5800
  store i64 %call3, ptr %addr.addr, align 8, !dbg !5801
  %7 = load i64, ptr %addr.addr, align 8, !dbg !5802
  %8 = inttoptr i64 %7 to ptr, !dbg !5802
  %9 = ptrtoint ptr %8 to i64, !dbg !5802
  %cmp = icmp uge i64 %9, -4095, !dbg !5802
  %lnot = xor i1 %cmp, true, !dbg !5802
  %lnot4 = xor i1 %lnot, true, !dbg !5802
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5802
  %conv = sext i32 %lnot.ext to i64, !dbg !5802
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5802
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5802
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5804

if.then6:                                         ; preds = %if.end
  %10 = load i64, ptr %addr.addr, align 8, !dbg !5805
  %conv7 = trunc i64 %10 to i32, !dbg !5805
  store i32 %conv7, ptr %ret, align 4, !dbg !5807
  br label %up_fail, !dbg !5808

if.end8:                                          ; preds = %if.end
  %11 = load i64, ptr %addr.addr, align 8, !dbg !5809
  %12 = load ptr, ptr %image.addr, align 8, !dbg !5810
  %sym_vvar_start9 = getelementptr inbounds %struct.vdso_image, ptr %12, i32 0, i32 7, !dbg !5811
  %13 = load i64, ptr %sym_vvar_start9, align 8, !dbg !5811
  %sub10 = sub i64 %11, %13, !dbg !5812
  store i64 %sub10, ptr %text_start, align 8, !dbg !5813
  %14 = load ptr, ptr %mm, align 8, !dbg !5814
  %15 = load i64, ptr %text_start, align 8, !dbg !5815
  %16 = load ptr, ptr %image.addr, align 8, !dbg !5816
  %size11 = getelementptr inbounds %struct.vdso_image, ptr %16, i32 0, i32 1, !dbg !5817
  %17 = load i64, ptr %size11, align 8, !dbg !5817
  %call12 = call ptr @_install_special_mapping(ptr noundef %14, i64 noundef %15, i64 noundef %17, i64 noundef 117, ptr noundef @vdso_mapping) #14, !dbg !5818
  store ptr %call12, ptr %vma, align 8, !dbg !5819
  %18 = load ptr, ptr %vma, align 8, !dbg !5820
  %call13 = call zeroext i1 @IS_ERR(ptr noundef %18) #14, !dbg !5822
  br i1 %call13, label %if.then14, label %if.end17, !dbg !5823

if.then14:                                        ; preds = %if.end8
  %19 = load ptr, ptr %vma, align 8, !dbg !5824
  %call15 = call i64 @PTR_ERR(ptr noundef %19) #14, !dbg !5826
  %conv16 = trunc i64 %call15 to i32, !dbg !5826
  store i32 %conv16, ptr %ret, align 4, !dbg !5827
  br label %up_fail, !dbg !5828

if.end17:                                         ; preds = %if.end8
  %20 = load ptr, ptr %mm, align 8, !dbg !5829
  %21 = load i64, ptr %addr.addr, align 8, !dbg !5830
  %22 = load ptr, ptr %image.addr, align 8, !dbg !5831
  %sym_vvar_start18 = getelementptr inbounds %struct.vdso_image, ptr %22, i32 0, i32 7, !dbg !5832
  %23 = load i64, ptr %sym_vvar_start18, align 8, !dbg !5832
  %sub19 = sub i64 0, %23, !dbg !5833
  %call20 = call ptr @_install_special_mapping(ptr noundef %20, i64 noundef %21, i64 noundef %sub19, i64 noundef 67126289, ptr noundef @vvar_mapping) #14, !dbg !5834
  store ptr %call20, ptr %vma, align 8, !dbg !5835
  %24 = load ptr, ptr %vma, align 8, !dbg !5836
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %24) #14, !dbg !5838
  br i1 %call21, label %if.then22, label %if.else, !dbg !5839

if.then22:                                        ; preds = %if.end17
  %25 = load ptr, ptr %vma, align 8, !dbg !5840
  %call23 = call i64 @PTR_ERR(ptr noundef %25) #14, !dbg !5842
  %conv24 = trunc i64 %call23 to i32, !dbg !5842
  store i32 %conv24, ptr %ret, align 4, !dbg !5843
  %26 = load ptr, ptr %mm, align 8, !dbg !5844
  %27 = load i64, ptr %text_start, align 8, !dbg !5845
  %28 = load ptr, ptr %image.addr, align 8, !dbg !5846
  %size25 = getelementptr inbounds %struct.vdso_image, ptr %28, i32 0, i32 1, !dbg !5847
  %29 = load i64, ptr %size25, align 8, !dbg !5847
  %call26 = call i32 @do_munmap(ptr noundef %26, i64 noundef %27, i64 noundef %29, ptr noundef null) #14, !dbg !5848
  br label %if.end32, !dbg !5849

if.else:                                          ; preds = %if.end17
  %30 = load i64, ptr %text_start, align 8, !dbg !5850
  %31 = inttoptr i64 %30 to ptr, !dbg !5852
  %call27 = call ptr @get_current() #14, !dbg !5853
  %mm28 = getelementptr inbounds %struct.task_struct, ptr %call27, i32 0, i32 49, !dbg !5854
  %32 = load ptr, ptr %mm28, align 64, !dbg !5854
  %33 = getelementptr inbounds %struct.mm_struct, ptr %32, i32 0, i32 0, !dbg !5855
  %context = getelementptr inbounds %struct.anon.14, ptr %33, i32 0, i32 44, !dbg !5855
  %vdso = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 7, !dbg !5856
  store ptr %31, ptr %vdso, align 16, !dbg !5857
  %34 = load ptr, ptr %image.addr, align 8, !dbg !5858
  %call29 = call ptr @get_current() #14, !dbg !5859
  %mm30 = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 49, !dbg !5860
  %35 = load ptr, ptr %mm30, align 64, !dbg !5860
  %36 = getelementptr inbounds %struct.mm_struct, ptr %35, i32 0, i32 0, !dbg !5861
  %context31 = getelementptr inbounds %struct.anon.14, ptr %36, i32 0, i32 44, !dbg !5861
  %vdso_image = getelementptr inbounds %struct.mm_context_t, ptr %context31, i32 0, i32 8, !dbg !5862
  store ptr %34, ptr %vdso_image, align 8, !dbg !5863
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  br label %up_fail, !dbg !5864

up_fail:                                          ; preds = %if.end32, %if.then14, %if.then6
  call void @llvm.dbg.label(metadata !5776), !dbg !5865
  %37 = load ptr, ptr %mm, align 8, !dbg !5866
  call void @mmap_write_unlock(ptr noundef %37) #14, !dbg !5867
  %38 = load i32, ptr %ret, align 4, !dbg !5868
  store i32 %38, ptr %retval, align 4, !dbg !5869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5869

cleanup:                                          ; preds = %up_fail, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5870
  call void @llvm.lifetime.end.p0(i64 8, ptr %text_start) #13, !dbg !5870
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #13, !dbg !5870
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !5870
  %39 = load i32, ptr %retval, align 4, !dbg !5870
  ret i32 %39, !dbg !5870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_setup_additional_pages(ptr noundef %bprm, i32 noundef %uses_interp) #0 align 16 !dbg !5871 {
entry:
  %retval = alloca i32, align 4
  %bprm.addr = alloca ptr, align 8
  %uses_interp.addr = alloca i32, align 4
  store ptr %bprm, ptr %bprm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bprm.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  store i32 %uses_interp, ptr %uses_interp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uses_interp.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  %0 = load i32, ptr @vdso64_enabled, align 4, !dbg !5882
  %tobool = icmp ne i32 %0, 0, !dbg !5882
  br i1 %tobool, label %if.end, label %if.then, !dbg !5884

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5885
  br label %return, !dbg !5885

if.end:                                           ; preds = %entry
  %call = call i32 @map_vdso_randomized(ptr noundef @vdso_image_64) #14, !dbg !5886
  store i32 %call, ptr %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5888
  ret i32 %1, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_vdso_randomized(ptr noundef %image) #0 align 16 !dbg !5889 {
entry:
  %image.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5892, metadata !DIExpression()), !dbg !5895
  %call = call ptr @get_current() #14, !dbg !5896
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !5897
  %0 = load ptr, ptr %mm, align 64, !dbg !5897
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5898
  %start_stack = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 36, !dbg !5898
  %2 = load i64, ptr %start_stack, align 16, !dbg !5898
  %3 = load ptr, ptr %image.addr, align 8, !dbg !5899
  %size = getelementptr inbounds %struct.vdso_image, ptr %3, i32 0, i32 1, !dbg !5900
  %4 = load i64, ptr %size, align 8, !dbg !5900
  %5 = load ptr, ptr %image.addr, align 8, !dbg !5901
  %sym_vvar_start = getelementptr inbounds %struct.vdso_image, ptr %5, i32 0, i32 7, !dbg !5902
  %6 = load i64, ptr %sym_vvar_start, align 8, !dbg !5902
  %sub = sub i64 %4, %6, !dbg !5903
  %conv = trunc i64 %sub to i32, !dbg !5899
  %call1 = call i64 @vdso_addr(i64 noundef %2, i32 noundef %conv) #14, !dbg !5904
  store i64 %call1, ptr %addr, align 8, !dbg !5895
  %7 = load ptr, ptr %image.addr, align 8, !dbg !5905
  %8 = load i64, ptr %addr, align 8, !dbg !5906
  %call2 = call i32 @map_vdso(ptr noundef %7, i64 noundef %8) #14, !dbg !5907
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !5908
  ret i32 %call2, !dbg !5909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @compat_arch_setup_additional_pages(ptr noundef %bprm, i32 noundef %uses_interp, i1 noundef zeroext %x32) #0 align 16 !dbg !5910 {
entry:
  %bprm.addr = alloca ptr, align 8
  %uses_interp.addr = alloca i32, align 4
  %x32.addr = alloca i8, align 1
  store ptr %bprm, ptr %bprm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bprm.addr, metadata !5914, metadata !DIExpression()), !dbg !5917
  store i32 %uses_interp, ptr %uses_interp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uses_interp.addr, metadata !5915, metadata !DIExpression()), !dbg !5918
  %frombool = zext i1 %x32 to i8
  store i8 %frombool, ptr %x32.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %x32.addr, metadata !5916, metadata !DIExpression()), !dbg !5919
  %call = call i32 @load_vdso32() #14, !dbg !5920
  ret i32 %call, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @load_vdso32() #0 align 16 !dbg !5922 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @vdso32_enabled, align 4, !dbg !5923
  %cmp = icmp ne i32 %0, 1, !dbg !5925
  br i1 %cmp, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5927
  br label %return, !dbg !5927

if.end:                                           ; preds = %entry
  %call = call i32 @map_vdso(ptr noundef @vdso_image_32, i64 noundef 0) #14, !dbg !5928
  store i32 %call, ptr %retval, align 4, !dbg !5929
  br label %return, !dbg !5929

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5930
  ret i32 %1, !dbg !5930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_syscall_is_vdso_sigreturn(ptr noundef %regs) #0 align 16 !dbg !5931 {
entry:
  %retval = alloca i1, align 1
  %regs.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  %vdso = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5935, metadata !DIExpression()), !dbg !5938
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #13, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %image, metadata !5936, metadata !DIExpression()), !dbg !5940
  %call = call ptr @get_current() #14, !dbg !5941
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !5942
  %0 = load ptr, ptr %mm, align 64, !dbg !5942
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !5943
  %context = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 44, !dbg !5943
  %vdso_image = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 8, !dbg !5944
  %2 = load ptr, ptr %vdso_image, align 8, !dbg !5944
  store ptr %2, ptr %image, align 8, !dbg !5940
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso) #13, !dbg !5945
  call void @llvm.dbg.declare(metadata ptr %vdso, metadata !5937, metadata !DIExpression()), !dbg !5946
  %call1 = call ptr @get_current() #14, !dbg !5947
  %mm2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 49, !dbg !5948
  %3 = load ptr, ptr %mm2, align 64, !dbg !5948
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !5949
  %context3 = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 44, !dbg !5949
  %vdso4 = getelementptr inbounds %struct.mm_context_t, ptr %context3, i32 0, i32 7, !dbg !5950
  %5 = load ptr, ptr %vdso4, align 16, !dbg !5950
  %6 = ptrtoint ptr %5 to i64, !dbg !5951
  store i64 %6, ptr %vdso, align 8, !dbg !5946
  %call5 = call ptr @get_current() #14, !dbg !5952
  %status = getelementptr inbounds %struct.thread_info, ptr %call5, i32 0, i32 2, !dbg !5952
  %7 = load i32, ptr %status, align 8, !dbg !5952
  %and = and i32 %7, 2, !dbg !5952
  %tobool = icmp ne i32 %and, 0, !dbg !5952
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !5954

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %image, align 8, !dbg !5955
  %cmp = icmp eq ptr %8, @vdso_image_32, !dbg !5956
  br i1 %cmp, label %if.then, label %if.end11, !dbg !5957

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !5958
  %ip = getelementptr inbounds %struct.pt_regs, ptr %9, i32 0, i32 16, !dbg !5961
  %10 = load i64, ptr %ip, align 8, !dbg !5961
  %11 = load i64, ptr %vdso, align 8, !dbg !5962
  %12 = load ptr, ptr %image, align 8, !dbg !5963
  %sym_vdso32_sigreturn_landing_pad = getelementptr inbounds %struct.vdso_image, ptr %12, i32 0, i32 17, !dbg !5964
  %13 = load i64, ptr %sym_vdso32_sigreturn_landing_pad, align 8, !dbg !5964
  %add = add i64 %11, %13, !dbg !5965
  %cmp6 = icmp eq i64 %10, %add, !dbg !5966
  br i1 %cmp6, label %if.then10, label %lor.lhs.false, !dbg !5967

lor.lhs.false:                                    ; preds = %if.then
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !5968
  %ip7 = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 16, !dbg !5969
  %15 = load i64, ptr %ip7, align 8, !dbg !5969
  %16 = load i64, ptr %vdso, align 8, !dbg !5970
  %17 = load ptr, ptr %image, align 8, !dbg !5971
  %sym_vdso32_rt_sigreturn_landing_pad = getelementptr inbounds %struct.vdso_image, ptr %17, i32 0, i32 18, !dbg !5972
  %18 = load i64, ptr %sym_vdso32_rt_sigreturn_landing_pad, align 8, !dbg !5972
  %add8 = add i64 %16, %18, !dbg !5973
  %cmp9 = icmp eq i64 %15, %add8, !dbg !5974
  br i1 %cmp9, label %if.then10, label %if.end, !dbg !5975

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  store i1 true, ptr %retval, align 1, !dbg !5976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5976

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end11, !dbg !5977

if.end11:                                         ; preds = %if.end, %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso) #13, !dbg !5979
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #13, !dbg !5979
  %19 = load i1, ptr %retval, align 1, !dbg !5979
  ret i1 %19, !dbg !5979
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vdso_setup(ptr noundef %s) #2 section ".init.text" align 16 !dbg !5980 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5984
  %call = call i64 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #14, !dbg !5985
  %conv = trunc i64 %call to i32, !dbg !5985
  store i32 %conv, ptr @vdso64_enabled, align 4, !dbg !5986
  ret i32 1, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #7 align 16 !dbg !5988 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !5992, metadata !DIExpression()), !dbg !5994
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5993, metadata !DIExpression()), !dbg !5995
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1)) #14, !dbg !5996
  br i1 %call, label %if.then, label %if.end, !dbg !5998

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !5999
  %1 = load i8, ptr %write.addr, align 1, !dbg !6000, !range !6001, !noundef !373
  %tobool = trunc i8 %1 to i1, !dbg !6000
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext %tobool) #14, !dbg !6002
  br label %if.end, !dbg !6002

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6004 dso_local void @down_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #7 align 16 !dbg !6008 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %success.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  %frombool1 = zext i1 %success to i8
  store i8 %frombool1, ptr %success.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %success.addr, metadata !6014, metadata !DIExpression()), !dbg !6017
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1)) #14, !dbg !6018
  br i1 %call, label %if.then, label %if.end, !dbg !6020

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6021
  %1 = load i8, ptr %write.addr, align 1, !dbg !6022, !range !6001, !noundef !373
  %tobool = trunc i8 %1 to i1, !dbg !6022
  %2 = load i8, ptr %success.addr, align 1, !dbg !6023, !range !6001, !noundef !373
  %tobool2 = trunc i8 %2 to i1, !dbg !6023
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2) #14, !dbg !6024
  br label %if.end, !dbg !6024

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #8 align 16 !dbg !6026 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6044
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !6045
  ret i1 %call, !dbg !6046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #8 align 16 !dbg !6048 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6053, metadata !DIExpression()), !dbg !6056
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6054, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6058
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6059, !range !6001, !noundef !373
  %tobool = trunc i8 %1 to i1, !dbg !6059
  %conv = zext i1 %tobool to i32, !dbg !6059
  %or = or i32 2, %conv, !dbg !6060
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !6061, !srcloc !6062

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6063
  br label %return, !dbg !6063

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6055), !dbg !6064
  store i1 true, ptr %retval, align 1, !dbg !6065
  br label %return, !dbg !6065

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6066
  ret i1 %2, !dbg !6066
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6068 dso_local ptr @mas_find(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local void @zap_page_range_single(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mmap_lock_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #7 align 16 !dbg !6082 {
entry:
  %mm.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6084, metadata !DIExpression()), !dbg !6086
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6085, metadata !DIExpression()), !dbg !6087
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1)) #14, !dbg !6088
  br i1 %call, label %if.then, label %if.end, !dbg !6090

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6091
  %1 = load i8, ptr %write.addr, align 1, !dbg !6092, !range !6001, !noundef !373
  %tobool = trunc i8 %1 to i1, !dbg !6092
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext %tobool) #14, !dbg !6093
  br label %if.end, !dbg !6093

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6094
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6095 dso_local void @up_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6096 dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vvar_fault(ptr noundef %sm, ptr noundef %vma, ptr noundef %vmf) #0 align 16 !dbg !6097 {
entry:
  %retval = alloca i32, align 4
  %sm.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %vmf.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  %pfn = alloca i64, align 8
  %sym_offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %timens_page = alloca ptr, align 8
  %addr = alloca i64, align 8
  %err = alloca i32, align 4
  %pvti = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %timens_page56 = alloca ptr, align 8
  store ptr %sm, ptr %sm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sm.addr, metadata !6099, metadata !DIExpression()), !dbg !6136
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6100, metadata !DIExpression()), !dbg !6137
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6101, metadata !DIExpression()), !dbg !6138
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #13, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6102, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6141
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6142
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6142
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6143
  %context = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 44, !dbg !6143
  %vdso_image = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 8, !dbg !6144
  %3 = load ptr, ptr %vdso_image, align 8, !dbg !6144
  store ptr %3, ptr %image, align 8, !dbg !6140
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #13, !dbg !6145
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6103, metadata !DIExpression()), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_offset) #13, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %sym_offset, metadata !6104, metadata !DIExpression()), !dbg !6148
  %4 = load ptr, ptr %image, align 8, !dbg !6149
  %tobool = icmp ne ptr %4, null, !dbg !6149
  br i1 %tobool, label %if.end, label %if.then, !dbg !6151

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !6152

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %vmf.addr, align 8, !dbg !6153
  %6 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 0, !dbg !6154
  %pgoff = getelementptr inbounds %struct.anon.24, ptr %6, i32 0, i32 2, !dbg !6154
  %7 = load i64, ptr %pgoff, align 8, !dbg !6154
  %shl = shl i64 %7, 12, !dbg !6155
  %8 = load ptr, ptr %image, align 8, !dbg !6156
  %sym_vvar_start = getelementptr inbounds %struct.vdso_image, ptr %8, i32 0, i32 7, !dbg !6157
  %9 = load i64, ptr %sym_vvar_start, align 8, !dbg !6157
  %add = add i64 %shl, %9, !dbg !6158
  store i64 %add, ptr %sym_offset, align 8, !dbg !6159
  %10 = load i64, ptr %sym_offset, align 8, !dbg !6160
  %cmp = icmp eq i64 %10, 0, !dbg !6162
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6163

if.then1:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !6164

if.end2:                                          ; preds = %if.end
  %11 = load i64, ptr %sym_offset, align 8, !dbg !6165
  %12 = load ptr, ptr %image, align 8, !dbg !6166
  %sym_vvar_page = getelementptr inbounds %struct.vdso_image, ptr %12, i32 0, i32 8, !dbg !6167
  %13 = load i64, ptr %sym_vvar_page, align 8, !dbg !6167
  %cmp3 = icmp eq i64 %11, %13, !dbg !6168
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !6169

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %timens_page) #13, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %timens_page, metadata !6105, metadata !DIExpression()), !dbg !6171
  %14 = load ptr, ptr %vma.addr, align 8, !dbg !6172
  %call = call ptr @find_timens_vvar_page(ptr noundef %14) #14, !dbg !6173
  store ptr %call, ptr %timens_page, align 8, !dbg !6171
  %15 = load i64, ptr @phys_base, align 8, !dbg !6174
  %add5 = add i64 sub (i64 ptrtoint (ptr @__vvar_page to i64), i64 -2147483648), %15, !dbg !6174
  %shr = lshr i64 %add5, 12, !dbg !6175
  store i64 %shr, ptr %pfn, align 8, !dbg !6176
  %16 = load ptr, ptr %timens_page, align 8, !dbg !6177
  %tobool6 = icmp ne ptr %16, null, !dbg !6177
  br i1 %tobool6, label %if.then7, label %if.end16, !dbg !6178

if.then7:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6108, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6111, metadata !DIExpression()), !dbg !6182
  %17 = load ptr, ptr %vmf.addr, align 8, !dbg !6183
  %18 = getelementptr inbounds %struct.vm_fault, ptr %17, i32 0, i32 0, !dbg !6184
  %address = getelementptr inbounds %struct.anon.24, ptr %18, i32 0, i32 3, !dbg !6184
  %19 = load i64, ptr %address, align 8, !dbg !6184
  %20 = load ptr, ptr %image, align 8, !dbg !6185
  %sym_timens_page = getelementptr inbounds %struct.vdso_image, ptr %20, i32 0, i32 11, !dbg !6186
  %21 = load i64, ptr %sym_timens_page, align 8, !dbg !6186
  %22 = load i64, ptr %sym_offset, align 8, !dbg !6187
  %sub = sub i64 %21, %22, !dbg !6188
  %add8 = add i64 %19, %sub, !dbg !6189
  store i64 %add8, ptr %addr, align 8, !dbg !6190
  %23 = load ptr, ptr %vma.addr, align 8, !dbg !6191
  %24 = load i64, ptr %addr, align 8, !dbg !6192
  %25 = load i64, ptr %pfn, align 8, !dbg !6193
  %call9 = call i32 @vmf_insert_pfn(ptr noundef %23, i64 noundef %24, i64 noundef %25) #14, !dbg !6194
  store i32 %call9, ptr %err, align 4, !dbg !6195
  %26 = load i32, ptr %err, align 4, !dbg !6196
  %and = and i32 %26, 2163, !dbg !6196
  %tobool10 = icmp ne i32 %and, 0, !dbg !6196
  %lnot = xor i1 %tobool10, true, !dbg !6196
  %lnot11 = xor i1 %lnot, true, !dbg !6196
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !6196
  %conv = sext i32 %lnot.ext to i64, !dbg !6196
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6196
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6196
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6198

if.then13:                                        ; preds = %if.then7
  %27 = load i32, ptr %err, align 4, !dbg !6199
  store i32 %27, ptr %retval, align 4, !dbg !6200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6200

if.end14:                                         ; preds = %if.then7
  %28 = load ptr, ptr %timens_page, align 8, !dbg !6201
  %29 = load i64, ptr @vmemmap_base, align 8, !dbg !6201
  %30 = inttoptr i64 %29 to ptr, !dbg !6201
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !6201
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64, !dbg !6201
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6201
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6201
  store i64 %sub.ptr.div, ptr %pfn, align 8, !dbg !6202
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6203
  br label %cleanup, !dbg !6203

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !6203
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !6204

if.end16:                                         ; preds = %cleanup.cont, %if.then4
  %31 = load ptr, ptr %vma.addr, align 8, !dbg !6205
  %32 = load ptr, ptr %vmf.addr, align 8, !dbg !6206
  %33 = getelementptr inbounds %struct.vm_fault, ptr %32, i32 0, i32 0, !dbg !6207
  %address17 = getelementptr inbounds %struct.anon.24, ptr %33, i32 0, i32 3, !dbg !6207
  %34 = load i64, ptr %address17, align 8, !dbg !6207
  %35 = load i64, ptr %pfn, align 8, !dbg !6208
  %call18 = call i32 @vmf_insert_pfn(ptr noundef %31, i64 noundef %34, i64 noundef %35) #14, !dbg !6209
  store i32 %call18, ptr %retval, align 4, !dbg !6210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !6210

cleanup19:                                        ; preds = %if.end16, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %timens_page) #13, !dbg !6211
  br label %cleanup70

if.else:                                          ; preds = %if.end2
  %36 = load i64, ptr %sym_offset, align 8, !dbg !6212
  %37 = load ptr, ptr %image, align 8, !dbg !6213
  %sym_pvclock_page = getelementptr inbounds %struct.vdso_image, ptr %37, i32 0, i32 9, !dbg !6214
  %38 = load i64, ptr %sym_pvclock_page, align 8, !dbg !6214
  %cmp20 = icmp eq i64 %36, %38, !dbg !6215
  br i1 %cmp20, label %if.then22, label %if.else38, !dbg !6216

if.then22:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvti) #13, !dbg !6217
  call void @llvm.dbg.declare(metadata ptr %pvti, metadata !6112, metadata !DIExpression()), !dbg !6218
  %call23 = call ptr @pvclock_get_pvti_cpu0_va() #14, !dbg !6219
  store ptr %call23, ptr %pvti, align 8, !dbg !6218
  %39 = load ptr, ptr %pvti, align 8, !dbg !6220
  %tobool24 = icmp ne ptr %39, null, !dbg !6220
  br i1 %tobool24, label %land.lhs.true, label %if.end34, !dbg !6222

land.lhs.true:                                    ; preds = %if.then22
  %call25 = call zeroext i1 @vclock_was_used(i32 noundef 2) #14, !dbg !6223
  br i1 %call25, label %if.then27, label %if.end34, !dbg !6224

if.then27:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %vma.addr, align 8, !dbg !6225
  %41 = load ptr, ptr %vmf.addr, align 8, !dbg !6227
  %42 = getelementptr inbounds %struct.vm_fault, ptr %41, i32 0, i32 0, !dbg !6228
  %address28 = getelementptr inbounds %struct.anon.24, ptr %42, i32 0, i32 3, !dbg !6228
  %43 = load i64, ptr %address28, align 8, !dbg !6228
  %44 = load ptr, ptr %pvti, align 8, !dbg !6229
  %45 = ptrtoint ptr %44 to i64, !dbg !6229
  %call29 = call i64 @__phys_addr_nodebug(i64 noundef %45) #14, !dbg !6229
  %shr30 = lshr i64 %call29, 12, !dbg !6230
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !6231
  %46 = load ptr, ptr %vma.addr, align 8, !dbg !6231
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %46, i32 0, i32 2, !dbg !6231
  %pgprot31 = getelementptr inbounds %struct.pgprot, ptr %vm_page_prot, i32 0, i32 0, !dbg !6231
  %47 = load i64, ptr %pgprot31, align 8, !dbg !6231
  %call32 = call i64 @cc_mkdec(i64 noundef %47) #14, !dbg !6231
  store i64 %call32, ptr %pgprot, align 8, !dbg !6231
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !6232
  %48 = load i64, ptr %coerce.dive, align 8, !dbg !6232
  %call33 = call i32 @vmf_insert_pfn_prot(ptr noundef %40, i64 noundef %43, i64 noundef %shr30, i64 %48) #14, !dbg !6232
  store i32 %call33, ptr %retval, align 4, !dbg !6233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !6233

if.end34:                                         ; preds = %land.lhs.true, %if.then22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6234
  br label %cleanup35, !dbg !6234

cleanup35:                                        ; preds = %if.end34, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvti) #13, !dbg !6234
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %cleanup70 [
    i32 0, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup35
  br label %if.end68, !dbg !6235

if.else38:                                        ; preds = %if.else
  %49 = load i64, ptr %sym_offset, align 8, !dbg !6236
  %50 = load ptr, ptr %image, align 8, !dbg !6237
  %sym_hvclock_page = getelementptr inbounds %struct.vdso_image, ptr %50, i32 0, i32 10, !dbg !6238
  %51 = load i64, ptr %sym_hvclock_page, align 8, !dbg !6238
  %cmp39 = icmp eq i64 %49, %51, !dbg !6239
  br i1 %cmp39, label %if.then41, label %if.else51, !dbg !6240

if.then41:                                        ; preds = %if.else38
  %call42 = call i64 @hv_get_tsc_pfn() #14, !dbg !6241
  store i64 %call42, ptr %pfn, align 8, !dbg !6243
  %52 = load i64, ptr %pfn, align 8, !dbg !6244
  %tobool43 = icmp ne i64 %52, 0, !dbg !6244
  br i1 %tobool43, label %land.lhs.true44, label %if.end50, !dbg !6246

land.lhs.true44:                                  ; preds = %if.then41
  %call45 = call zeroext i1 @vclock_was_used(i32 noundef 3) #14, !dbg !6247
  br i1 %call45, label %if.then47, label %if.end50, !dbg !6248

if.then47:                                        ; preds = %land.lhs.true44
  %53 = load ptr, ptr %vma.addr, align 8, !dbg !6249
  %54 = load ptr, ptr %vmf.addr, align 8, !dbg !6250
  %55 = getelementptr inbounds %struct.vm_fault, ptr %54, i32 0, i32 0, !dbg !6251
  %address48 = getelementptr inbounds %struct.anon.24, ptr %55, i32 0, i32 3, !dbg !6251
  %56 = load i64, ptr %address48, align 8, !dbg !6251
  %57 = load i64, ptr %pfn, align 8, !dbg !6252
  %call49 = call i32 @vmf_insert_pfn(ptr noundef %53, i64 noundef %56, i64 noundef %57) #14, !dbg !6253
  store i32 %call49, ptr %retval, align 4, !dbg !6254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !6254

if.end50:                                         ; preds = %land.lhs.true44, %if.then41
  br label %if.end67, !dbg !6255

if.else51:                                        ; preds = %if.else38
  %58 = load i64, ptr %sym_offset, align 8, !dbg !6256
  %59 = load ptr, ptr %image, align 8, !dbg !6257
  %sym_timens_page52 = getelementptr inbounds %struct.vdso_image, ptr %59, i32 0, i32 11, !dbg !6258
  %60 = load i64, ptr %sym_timens_page52, align 8, !dbg !6258
  %cmp53 = icmp eq i64 %58, %60, !dbg !6259
  br i1 %cmp53, label %if.then55, label %if.end66, !dbg !6260

if.then55:                                        ; preds = %if.else51
  call void @llvm.lifetime.start.p0(i64 8, ptr %timens_page56) #13, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %timens_page56, metadata !6132, metadata !DIExpression()), !dbg !6262
  %61 = load ptr, ptr %vma.addr, align 8, !dbg !6263
  %call57 = call ptr @find_timens_vvar_page(ptr noundef %61) #14, !dbg !6264
  store ptr %call57, ptr %timens_page56, align 8, !dbg !6262
  %62 = load ptr, ptr %timens_page56, align 8, !dbg !6265
  %tobool58 = icmp ne ptr %62, null, !dbg !6265
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !6267

if.then59:                                        ; preds = %if.then55
  store i32 2, ptr %retval, align 4, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !6268

if.end60:                                         ; preds = %if.then55
  %63 = load i64, ptr @phys_base, align 8, !dbg !6269
  %add61 = add i64 sub (i64 ptrtoint (ptr @__vvar_page to i64), i64 -2147483648), %63, !dbg !6269
  %shr62 = lshr i64 %add61, 12, !dbg !6270
  store i64 %shr62, ptr %pfn, align 8, !dbg !6271
  %64 = load ptr, ptr %vma.addr, align 8, !dbg !6272
  %65 = load ptr, ptr %vmf.addr, align 8, !dbg !6273
  %66 = getelementptr inbounds %struct.vm_fault, ptr %65, i32 0, i32 0, !dbg !6274
  %address63 = getelementptr inbounds %struct.anon.24, ptr %66, i32 0, i32 3, !dbg !6274
  %67 = load i64, ptr %address63, align 8, !dbg !6274
  %68 = load i64, ptr %pfn, align 8, !dbg !6275
  %call64 = call i32 @vmf_insert_pfn(ptr noundef %64, i64 noundef %67, i64 noundef %68) #14, !dbg !6276
  store i32 %call64, ptr %retval, align 4, !dbg !6277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !6277

cleanup65:                                        ; preds = %if.end60, %if.then59
  call void @llvm.lifetime.end.p0(i64 8, ptr %timens_page56) #13, !dbg !6278
  br label %cleanup70

if.end66:                                         ; preds = %if.else51
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end50
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %cleanup.cont37
  br label %if.end69

if.end69:                                         ; preds = %if.end68
  store i32 2, ptr %retval, align 4, !dbg !6279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !6279

cleanup70:                                        ; preds = %if.end69, %cleanup65, %if.then47, %cleanup35, %cleanup19, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_offset) #13, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #13, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #13, !dbg !6280
  %69 = load i32, ptr %retval, align 4, !dbg !6280
  ret i32 %69, !dbg !6280
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6281 dso_local ptr @find_timens_vvar_page(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local i32 @vmf_insert_pfn(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6287 dso_local ptr @pvclock_get_pvti_cpu0_va() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vclock_was_used(i32 noundef %vclock) #7 align 16 !dbg !6290 {
entry:
  %vclock.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %vclock, ptr %vclock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vclock.addr, metadata !6295, metadata !DIExpression()), !dbg !6296
  br label %do.body, !dbg !6297

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6299

do.end:                                           ; preds = %do.body
  %0 = load volatile i32, ptr @vclocks_used, align 4, !dbg !6297
  store i32 %0, ptr %tmp, align 4, !dbg !6299
  %1 = load i32, ptr %tmp, align 4, !dbg !6297
  %2 = load i32, ptr %vclock.addr, align 4, !dbg !6301
  %shl = shl i32 1, %2, !dbg !6302
  %and = and i32 %1, %shl, !dbg !6303
  %tobool = icmp ne i32 %and, 0, !dbg !6304
  ret i1 %tobool, !dbg !6305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local i32 @vmf_insert_pfn_prot(ptr noundef, i64 noundef, i64 noundef, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #8 align 16 !dbg !6309 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6314, metadata !DIExpression()), !dbg !6316
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #13, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6315, metadata !DIExpression()), !dbg !6318
  %0 = load i64, ptr %x.addr, align 8, !dbg !6319
  %sub = sub i64 %0, -2147483648, !dbg !6320
  store i64 %sub, ptr %y, align 8, !dbg !6318
  %1 = load i64, ptr %y, align 8, !dbg !6321
  %2 = load i64, ptr %x.addr, align 8, !dbg !6322
  %3 = load i64, ptr %y, align 8, !dbg !6323
  %cmp = icmp ugt i64 %2, %3, !dbg !6324
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6325

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6326
  br label %cond.end, !dbg !6325

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6327
  %sub1 = sub i64 -2147483648, %5, !dbg !6328
  br label %cond.end, !dbg !6325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6325
  %add = add i64 %1, %cond, !dbg !6329
  store i64 %add, ptr %x.addr, align 8, !dbg !6330
  %6 = load i64, ptr %x.addr, align 8, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #13, !dbg !6332
  ret i64 %6, !dbg !6333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkdec(i64 noundef %val) #7 align 16 !dbg !6334 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  %0 = load i64, ptr %val.addr, align 8, !dbg !6341
  ret i64 %0, !dbg !6342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hv_get_tsc_pfn() #7 align 16 !dbg !6343 {
entry:
  ret i64 0, !dbg !6347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6348 dso_local void @down_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vdso_fault(ptr noundef %sm, ptr noundef %vma, ptr noundef %vmf) #0 align 16 !dbg !6349 {
entry:
  %retval = alloca i32, align 4
  %sm.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %vmf.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sm, ptr %sm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sm.addr, metadata !6351, metadata !DIExpression()), !dbg !6355
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6352, metadata !DIExpression()), !dbg !6356
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6353, metadata !DIExpression()), !dbg !6357
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #13, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6354, metadata !DIExpression()), !dbg !6359
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6360
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !6361
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !6361
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6362
  %context = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 44, !dbg !6362
  %vdso_image = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 8, !dbg !6363
  %3 = load ptr, ptr %vdso_image, align 8, !dbg !6363
  store ptr %3, ptr %image, align 8, !dbg !6359
  %4 = load ptr, ptr %image, align 8, !dbg !6364
  %tobool = icmp ne ptr %4, null, !dbg !6364
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6366

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %vmf.addr, align 8, !dbg !6367
  %6 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 0, !dbg !6368
  %pgoff = getelementptr inbounds %struct.anon.24, ptr %6, i32 0, i32 2, !dbg !6368
  %7 = load i64, ptr %pgoff, align 8, !dbg !6368
  %shl = shl i64 %7, 12, !dbg !6369
  %8 = load ptr, ptr %image, align 8, !dbg !6370
  %size = getelementptr inbounds %struct.vdso_image, ptr %8, i32 0, i32 1, !dbg !6371
  %9 = load i64, ptr %size, align 8, !dbg !6371
  %cmp = icmp uge i64 %shl, %9, !dbg !6372
  br i1 %cmp, label %if.then, label %if.end, !dbg !6373

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, ptr @vmemmap_base, align 8, !dbg !6375
  %11 = inttoptr i64 %10 to ptr, !dbg !6375
  %12 = load ptr, ptr %image, align 8, !dbg !6375
  %data = getelementptr inbounds %struct.vdso_image, ptr %12, i32 0, i32 0, !dbg !6375
  %13 = load ptr, ptr %data, align 8, !dbg !6375
  %14 = load ptr, ptr %vmf.addr, align 8, !dbg !6375
  %15 = getelementptr inbounds %struct.vm_fault, ptr %14, i32 0, i32 0, !dbg !6375
  %pgoff1 = getelementptr inbounds %struct.anon.24, ptr %15, i32 0, i32 2, !dbg !6375
  %16 = load i64, ptr %pgoff1, align 8, !dbg !6375
  %shl2 = shl i64 %16, 12, !dbg !6375
  %add.ptr = getelementptr i8, ptr %13, i64 %shl2, !dbg !6375
  %17 = ptrtoint ptr %add.ptr to i64, !dbg !6375
  %call = call i64 @__phys_addr_nodebug(i64 noundef %17) #14, !dbg !6375
  %shr = lshr i64 %call, 12, !dbg !6375
  %add.ptr3 = getelementptr %struct.page, ptr %11, i64 %shr, !dbg !6375
  %18 = load ptr, ptr %vmf.addr, align 8, !dbg !6376
  %page = getelementptr inbounds %struct.vm_fault, ptr %18, i32 0, i32 6, !dbg !6377
  store ptr %add.ptr3, ptr %page, align 8, !dbg !6378
  %19 = load ptr, ptr %vmf.addr, align 8, !dbg !6379
  %page4 = getelementptr inbounds %struct.vm_fault, ptr %19, i32 0, i32 6, !dbg !6380
  %20 = load ptr, ptr %page4, align 8, !dbg !6380
  call void @get_page(ptr noundef %20) #14, !dbg !6381
  store i32 0, ptr %retval, align 4, !dbg !6382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6382

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #13, !dbg !6383
  %21 = load i32, ptr %retval, align 4, !dbg !6383
  ret i32 %21, !dbg !6383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vdso_mremap(ptr noundef %sm, ptr noundef %new_vma) #0 align 16 !dbg !6384 {
entry:
  %sm.addr = alloca ptr, align 8
  %new_vma.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  store ptr %sm, ptr %sm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sm.addr, metadata !6386, metadata !DIExpression()), !dbg !6389
  store ptr %new_vma, ptr %new_vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_vma.addr, metadata !6387, metadata !DIExpression()), !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #13, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6388, metadata !DIExpression()), !dbg !6392
  %call = call ptr @get_current() #14, !dbg !6393
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !6394
  %0 = load ptr, ptr %mm, align 64, !dbg !6394
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6395
  %context = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 44, !dbg !6395
  %vdso_image = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 8, !dbg !6396
  %2 = load ptr, ptr %vdso_image, align 8, !dbg !6396
  store ptr %2, ptr %image, align 8, !dbg !6392
  %3 = load ptr, ptr %image, align 8, !dbg !6397
  %4 = load ptr, ptr %new_vma.addr, align 8, !dbg !6398
  call void @vdso_fix_landing(ptr noundef %3, ptr noundef %4) #14, !dbg !6399
  %5 = load ptr, ptr %new_vma.addr, align 8, !dbg !6400
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 0, !dbg !6401
  %vm_start = getelementptr inbounds %struct.anon.21, ptr %6, i32 0, i32 0, !dbg !6401
  %7 = load i64, ptr %vm_start, align 8, !dbg !6401
  %8 = inttoptr i64 %7 to ptr, !dbg !6402
  %call1 = call ptr @get_current() #14, !dbg !6403
  %mm2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 49, !dbg !6404
  %9 = load ptr, ptr %mm2, align 64, !dbg !6404
  %10 = getelementptr inbounds %struct.mm_struct, ptr %9, i32 0, i32 0, !dbg !6405
  %context3 = getelementptr inbounds %struct.anon.14, ptr %10, i32 0, i32 44, !dbg !6405
  %vdso = getelementptr inbounds %struct.mm_context_t, ptr %context3, i32 0, i32 7, !dbg !6406
  store ptr %8, ptr %vdso, align 16, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #13, !dbg !6408
  ret i32 0, !dbg !6409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_page(ptr noundef %page) #7 align 16 !dbg !6410 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6412, metadata !DIExpression()), !dbg !6413
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6414
  %call = call i64 @_compound_head(ptr noundef %0) #14, !dbg !6414
  %1 = inttoptr i64 %call to ptr, !dbg !6414
  call void @folio_get(ptr noundef %1) #14, !dbg !6415
  ret void, !dbg !6416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_get(ptr noundef %folio) #7 align 16 !dbg !6417 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6421
  call void @folio_ref_inc(ptr noundef %0) #14, !dbg !6422
  ret void, !dbg !6423
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #7 align 16 !dbg !6424 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6428, metadata !DIExpression()), !dbg !6430
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #13, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6429, metadata !DIExpression()), !dbg !6432
  br label %do.body, !dbg !6433

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6435

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6435

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6433
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !6433
  %compound_head = getelementptr inbounds %struct.anon.35, ptr %1, i32 0, i32 0, !dbg !6433
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !6433
  store i64 %2, ptr %tmp, align 8, !dbg !6435
  %3 = load i64, ptr %tmp, align 8, !dbg !6433
  store i64 %3, ptr %head, align 8, !dbg !6432
  %4 = load i64, ptr %head, align 8, !dbg !6437
  %and = and i64 %4, 1, !dbg !6437
  %tobool = icmp ne i64 %and, 0, !dbg !6437
  %lnot = xor i1 %tobool, true, !dbg !6437
  %lnot1 = xor i1 %lnot, true, !dbg !6437
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6437
  %conv = sext i32 %lnot.ext to i64, !dbg !6437
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6437
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6437
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6439

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !6440
  %sub = sub i64 %5, 1, !dbg !6441
  store i64 %sub, ptr %retval, align 8, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !6443
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #14, !dbg !6444
  %7 = ptrtoint ptr %call to i64, !dbg !6445
  store i64 %7, ptr %retval, align 8, !dbg !6446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6446

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #13, !dbg !6447
  %8 = load i64, ptr %retval, align 8, !dbg !6447
  ret i64 %8, !dbg !6447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_ref_inc(ptr noundef %folio) #7 align 16 !dbg !6448 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6453
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6454
  call void @page_ref_inc(ptr noundef %1) #14, !dbg !6455
  ret void, !dbg !6456
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @page_ref_inc(ptr noundef %page) #7 align 16 !dbg !6457 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6461
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6462
  call void @atomic_inc(ptr noundef %_refcount) #14, !dbg !6463
  ret void, !dbg !6464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #8 align 16 !dbg !6465 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6471, metadata !DIExpression()), !dbg !6472
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6473
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !6474
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6475
  call void @raw_atomic_inc(ptr noundef %1) #14, !dbg !6476
  ret void, !dbg !6477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6478 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6490
  %1 = load i64, ptr %size.addr, align 8, !dbg !6491
  %conv = trunc i64 %1 to i32, !dbg !6491
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6492
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6493
  %3 = load i64, ptr %size.addr, align 8, !dbg !6493
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !6493
  ret void, !dbg !6494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #8 align 16 !dbg !6495 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6500
  call void @arch_atomic_inc(ptr noundef %0) #14, !dbg !6501
  ret void, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6503 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6509, metadata !DIExpression()), !dbg !6511
  ret i1 true, !dbg !6512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6513 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6518, metadata !DIExpression()), !dbg !6521
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6519, metadata !DIExpression()), !dbg !6522
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6520, metadata !DIExpression()), !dbg !6523
  ret void, !dbg !6524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #8 align 16 !dbg !6525 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6528, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6530
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6531
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #13, !dbg !6532, !srcloc !6533
  ret void, !dbg !6534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #8 align 16 !dbg !6535 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6539, metadata !DIExpression()), !dbg !6546
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #13, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6540, metadata !DIExpression()), !dbg !6547
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #14, !dbg !6548
  %frombool = zext i1 %call to i8, !dbg !6548
  store i8 %frombool, ptr %branch, align 1, !dbg !6548
  %0 = load i8, ptr %branch, align 1, !dbg !6547, !range !6001, !noundef !373
  %tobool = trunc i8 %0 to i1, !dbg !6547
  %lnot = xor i1 %tobool, true, !dbg !6547
  %lnot1 = xor i1 %lnot, true, !dbg !6547
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6547
  %conv = sext i32 %lnot.ext to i64, !dbg !6547
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6547
  store i64 %expval, ptr %tmp, align 8, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #13, !dbg !6552
  %1 = load i64, ptr %tmp, align 8, !dbg !6547
  %tobool2 = icmp ne i64 %1, 0, !dbg !6552
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6553

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6554
  store ptr %2, ptr %retval, align 8, !dbg !6555
  br label %return, !dbg !6555

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6556
  %4 = ptrtoint ptr %3 to i64, !dbg !6556
  %and = and i64 %4, 4095, !dbg !6556
  %cmp = icmp eq i64 %and, 0, !dbg !6556
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6557

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6558
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !6558
  %6 = ptrtoint ptr %flags to i64, !dbg !6558
  %cmp4 = icmp ne i64 %6, 0, !dbg !6558
  %conv5 = zext i1 %cmp4 to i32, !dbg !6558
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !6558
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !6558

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !6558
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !6558
  %9 = ptrtoint ptr %flags7 to i64, !dbg !6558
  %cmp8 = icmp ne i64 %9, 0, !dbg !6558
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !6558

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !6558
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !6558
  %11 = load i64, ptr %flags11, align 16, !dbg !6558
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6558
  br i1 %12, label %cond.true, label %cond.false, !dbg !6559

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !6558
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !6558
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #14, !dbg !6558
  br i1 %call13, label %if.then18, label %if.end31, !dbg !6558

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6558
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !6558
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #14, !dbg !6558
  br i1 %call16, label %if.then18, label %if.end31, !dbg !6559

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #13, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6543, metadata !DIExpression()), !dbg !6561
  br label %do.body, !dbg !6562

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6564

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6564

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !6562
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !6562
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !6562
  %compound_head = getelementptr inbounds %struct.anon.35, ptr %16, i32 0, i32 0, !dbg !6562
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !6562
  store i64 %17, ptr %tmp19, align 8, !dbg !6564
  %18 = load i64, ptr %tmp19, align 8, !dbg !6562
  store i64 %18, ptr %head, align 8, !dbg !6561
  %19 = load i64, ptr %head, align 8, !dbg !6566
  %and20 = and i64 %19, 1, !dbg !6566
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6566
  %lnot22 = xor i1 %tobool21, true, !dbg !6566
  %lnot24 = xor i1 %lnot22, true, !dbg !6566
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6566
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6566
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !6566
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !6566
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6568

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !6569
  %sub = sub i64 %20, 1, !dbg !6570
  %21 = inttoptr i64 %sub to ptr, !dbg !6571
  store ptr %21, ptr %retval, align 8, !dbg !6572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6572

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6573
  br label %cleanup, !dbg !6573

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #13, !dbg !6573
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !6574

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !6575
  store ptr %22, ptr %retval, align 8, !dbg !6576
  br label %return, !dbg !6576

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !6577
  ret ptr %23, !dbg !6577

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6578 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6583, metadata !DIExpression()), !dbg !6588
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6584, metadata !DIExpression()), !dbg !6589
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !6590
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6585, metadata !DIExpression()), !dbg !6591
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6592
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6593
  %div = udiv i64 %1, 64, !dbg !6593
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6594
  store ptr %add.ptr, ptr %p, align 8, !dbg !6591
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6586, metadata !DIExpression()), !dbg !6596
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6597
  %rem = urem i64 %2, 64, !dbg !6597
  %shl = shl i64 1, %rem, !dbg !6597
  store i64 %shl, ptr %mask, align 8, !dbg !6596
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6587, metadata !DIExpression()), !dbg !6599
  %3 = load ptr, ptr %p, align 8, !dbg !6600
  %4 = load i64, ptr %3, align 8, !dbg !6601
  store i64 %4, ptr %val, align 8, !dbg !6599
  %5 = load i64, ptr %val, align 8, !dbg !6602
  %6 = load i64, ptr %mask, align 8, !dbg !6603
  %and = and i64 %5, %6, !dbg !6604
  %tobool = icmp ne i64 %and, 0, !dbg !6605
  %lnot = xor i1 %tobool, true, !dbg !6605
  %lnot1 = xor i1 %lnot, true, !dbg !6606
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !6607
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !6607
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !6607
  ret i1 %lnot1, !dbg !6608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6609 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6612, metadata !DIExpression()), !dbg !6614
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6613, metadata !DIExpression()), !dbg !6615
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6616
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6617
  %div = udiv i64 %1, 64, !dbg !6617
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6618
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !6619
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6620
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6621
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6622
  ret i1 %call, !dbg !6623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6624 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6626, metadata !DIExpression()), !dbg !6628
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6627, metadata !DIExpression()), !dbg !6629
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6630
  %1 = load i64, ptr %size.addr, align 8, !dbg !6631
  %conv = trunc i64 %1 to i32, !dbg !6631
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !6632
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6633
  %3 = load i64, ptr %size.addr, align 8, !dbg !6633
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !6633
  ret void, !dbg !6634
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6635 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6643
  br i1 %1, label %cond.true, label %cond.false, !dbg !6643

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6644
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6645
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6646
  %conv = zext i1 %call to i32, !dbg !6646
  br label %cond.end, !dbg !6643

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6647
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6648
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !6649
  %conv2 = zext i1 %call1 to i32, !dbg !6649
  br label %cond.end, !dbg !6643

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6643
  %tobool = icmp ne i32 %cond, 0, !dbg !6643
  ret i1 %tobool, !dbg !6650
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6651 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6653, metadata !DIExpression()), !dbg !6655
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6654, metadata !DIExpression()), !dbg !6656
  ret i1 true, !dbg !6657
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6658 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6662, metadata !DIExpression()), !dbg !6664
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6663, metadata !DIExpression()), !dbg !6665
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6666
  %and = and i64 %0, 63, !dbg !6667
  %shl = shl i64 1, %and, !dbg !6668
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6669
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6670
  %shr = ashr i64 %2, 6, !dbg !6671
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6669
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6669
  %and1 = and i64 %shl, %3, !dbg !6672
  %cmp = icmp ne i64 %and1, 0, !dbg !6673
  ret i1 %cmp, !dbg !6674
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6675 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6677, metadata !DIExpression()), !dbg !6680
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6678, metadata !DIExpression()), !dbg !6681
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !6682
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6679, metadata !DIExpression()), !dbg !6683
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6684
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6685
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !6686, !srcloc !6687
  %3 = icmp ult i8 %2, 2, !dbg !6686
  call void @llvm.assume(i1 %3), !dbg !6686
  store i8 %2, ptr %oldbit, align 1, !dbg !6686
  %4 = load i8, ptr %oldbit, align 1, !dbg !6688, !range !6001, !noundef !373
  %tobool = trunc i8 %4 to i1, !dbg !6688
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !6689
  ret i1 %tobool, !dbg !6690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vdso_fix_landing(ptr noundef %image, ptr noundef %new_vma) #0 align 16 !dbg !6691 {
entry:
  %image.addr = alloca ptr, align 8
  %new_vma.addr = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %vdso_land = alloca i64, align 8
  %old_land_addr = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !6695, metadata !DIExpression()), !dbg !6704
  store ptr %new_vma, ptr %new_vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_vma.addr, metadata !6696, metadata !DIExpression()), !dbg !6705
  %call = call ptr @get_current() #14, !dbg !6706
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !6706
  %0 = load i32, ptr %status, align 8, !dbg !6706
  %and = and i32 %0, 2, !dbg !6706
  %tobool = icmp ne i32 %and, 0, !dbg !6706
  br i1 %tobool, label %land.lhs.true, label %if.end9, !dbg !6707

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %image.addr, align 8, !dbg !6708
  %cmp = icmp eq ptr %1, @vdso_image_32, !dbg !6709
  br i1 %cmp, label %if.then, label %if.end9, !dbg !6710

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #13, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !6697, metadata !DIExpression()), !dbg !6712
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6713
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6700, metadata !DIExpression()), !dbg !6713
  %call1 = call ptr @get_current() #14, !dbg !6713
  %call2 = call ptr @task_stack_page(ptr noundef %call1) #14, !dbg !6713
  %2 = ptrtoint ptr %call2 to i64, !dbg !6713
  store i64 %2, ptr %__ptr, align 8, !dbg !6713
  %3 = load i64, ptr %__ptr, align 8, !dbg !6713
  %add = add i64 %3, 16384, !dbg !6713
  store i64 %add, ptr %__ptr, align 8, !dbg !6713
  %4 = load i64, ptr %__ptr, align 8, !dbg !6713
  %5 = inttoptr i64 %4 to ptr, !dbg !6713
  %add.ptr = getelementptr %struct.pt_regs, ptr %5, i64 -1, !dbg !6713
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6714
  %6 = load ptr, ptr %tmp, align 8, !dbg !6713
  store ptr %6, ptr %regs, align 8, !dbg !6712
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_land) #13, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %vdso_land, metadata !6702, metadata !DIExpression()), !dbg !6716
  %7 = load ptr, ptr %image.addr, align 8, !dbg !6717
  %sym_int80_landing_pad = getelementptr inbounds %struct.vdso_image, ptr %7, i32 0, i32 16, !dbg !6718
  %8 = load i64, ptr %sym_int80_landing_pad, align 8, !dbg !6718
  store i64 %8, ptr %vdso_land, align 8, !dbg !6716
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_land_addr) #13, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %old_land_addr, metadata !6703, metadata !DIExpression()), !dbg !6720
  %9 = load i64, ptr %vdso_land, align 8, !dbg !6721
  %call3 = call ptr @get_current() #14, !dbg !6722
  %mm = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 49, !dbg !6723
  %10 = load ptr, ptr %mm, align 64, !dbg !6723
  %11 = getelementptr inbounds %struct.mm_struct, ptr %10, i32 0, i32 0, !dbg !6724
  %context = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 44, !dbg !6724
  %vdso = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 7, !dbg !6725
  %12 = load ptr, ptr %vdso, align 16, !dbg !6725
  %13 = ptrtoint ptr %12 to i64, !dbg !6726
  %add4 = add i64 %9, %13, !dbg !6727
  store i64 %add4, ptr %old_land_addr, align 8, !dbg !6720
  %14 = load ptr, ptr %regs, align 8, !dbg !6728
  %ip = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 16, !dbg !6730
  %15 = load i64, ptr %ip, align 8, !dbg !6730
  %16 = load i64, ptr %old_land_addr, align 8, !dbg !6731
  %cmp5 = icmp eq i64 %15, %16, !dbg !6732
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !6733

if.then6:                                         ; preds = %if.then
  %17 = load ptr, ptr %new_vma.addr, align 8, !dbg !6734
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 0, !dbg !6735
  %vm_start = getelementptr inbounds %struct.anon.21, ptr %18, i32 0, i32 0, !dbg !6735
  %19 = load i64, ptr %vm_start, align 8, !dbg !6735
  %20 = load i64, ptr %vdso_land, align 8, !dbg !6736
  %add7 = add i64 %19, %20, !dbg !6737
  %21 = load ptr, ptr %regs, align 8, !dbg !6738
  %ip8 = getelementptr inbounds %struct.pt_regs, ptr %21, i32 0, i32 16, !dbg !6739
  store i64 %add7, ptr %ip8, align 8, !dbg !6740
  br label %if.end, !dbg !6738

if.end:                                           ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_land_addr) #13, !dbg !6741
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_land) #13, !dbg !6741
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #13, !dbg !6741
  br label %if.end9, !dbg !6742

if.end9:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void, !dbg !6743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #8 align 16 !dbg !6744 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6751, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6753
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !6754
  %1 = load ptr, ptr %stack, align 32, !dbg !6754
  ret ptr %1, !dbg !6755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_end_write_all(ptr noundef %mm) #7 align 16 !dbg !6756 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6760
  call void @mmap_assert_write_locked(ptr noundef %0) #14, !dbg !6761
  br label %do.body, !dbg !6762

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6763

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6765

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6763

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6767

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6769

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6767, !srcloc !6771
  br label %do.body5, !dbg !6767

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6772

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6774

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6772

do.body8:                                         ; preds = %do.end7
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6776
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6776
  %mm_lock_seq = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 18, !dbg !6776
  %3 = load i32, ptr %mm_lock_seq, align 8, !dbg !6776
  %add = add i32 %3, 1, !dbg !6776
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !6776
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !6776
  %mm_lock_seq9 = getelementptr inbounds %struct.anon.14, ptr %5, i32 0, i32 18, !dbg !6776
  store volatile i32 %add, ptr %mm_lock_seq9, align 8, !dbg !6776
  br label %do.end10, !dbg !6776

do.end10:                                         ; preds = %do.body8
  br label %do.end11, !dbg !6772

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !6767

do.end12:                                         ; preds = %do.end11
  br label %do.end13, !dbg !6763

do.end13:                                         ; preds = %do.end12
  ret void, !dbg !6778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6779 dso_local void @up_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #7 align 16 !dbg !6780 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  br label %do.body, !dbg !6784

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6785
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !6785
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 16, !dbg !6785
  br label %do.end, !dbg !6785

do.end:                                           ; preds = %do.body
  ret void, !dbg !6787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mmap_write_lock_killable(ptr noundef %mm) #7 align 16 !dbg !6788 {
entry:
  %mm.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6792, metadata !DIExpression()), !dbg !6794
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6793, metadata !DIExpression()), !dbg !6796
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6797
  call void @__mmap_lock_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #14, !dbg !6798
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6799
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6800
  %mmap_lock = getelementptr inbounds %struct.anon.14, ptr %2, i32 0, i32 16, !dbg !6800
  %call = call i32 @down_write_killable(ptr noundef %mmap_lock) #14, !dbg !6801
  store i32 %call, ptr %ret, align 4, !dbg !6802
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !6803
  %4 = load i32, ptr %ret, align 4, !dbg !6804
  %cmp = icmp eq i32 %4, 0, !dbg !6805
  call void @__mmap_lock_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext %cmp) #14, !dbg !6806
  %5 = load i32, ptr %ret, align 4, !dbg !6807
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !6808
  ret i32 %5, !dbg !6809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6810 dso_local i64 @get_unmapped_area(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6811 dso_local ptr @_install_special_mapping(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !6814 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6819, metadata !DIExpression()), !dbg !6820
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6821
  %1 = ptrtoint ptr %0 to i64, !dbg !6821
  %2 = inttoptr i64 %1 to ptr, !dbg !6821
  %3 = ptrtoint ptr %2 to i64, !dbg !6821
  %cmp = icmp uge i64 %3, -4095, !dbg !6821
  %lnot = xor i1 %cmp, true, !dbg !6821
  %lnot1 = xor i1 %lnot, true, !dbg !6821
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6821
  %conv = sext i32 %lnot.ext to i64, !dbg !6821
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6821
  %tobool = icmp ne i64 %expval, 0, !dbg !6821
  ret i1 %tobool, !dbg !6822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !6823 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6827, metadata !DIExpression()), !dbg !6828
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6829
  %1 = ptrtoint ptr %0 to i64, !dbg !6830
  ret i64 %1, !dbg !6831
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6832 dso_local i32 @do_munmap(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6835 dso_local i32 @down_write_killable(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vdso_addr(i64 noundef %start, i32 noundef %len) #0 align 16 !dbg !6838 {
entry:
  %start.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %addr = alloca i64, align 8
  %end = alloca i64, align 8
  %offset = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6842, metadata !DIExpression()), !dbg !6847
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6843, metadata !DIExpression()), !dbg !6848
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6844, metadata !DIExpression()), !dbg !6850
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6845, metadata !DIExpression()), !dbg !6851
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !6852
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6846, metadata !DIExpression()), !dbg !6853
  %0 = load i64, ptr %start.addr, align 8, !dbg !6854
  %add = add i64 %0, 4095, !dbg !6854
  %and = and i64 %add, -4096, !dbg !6854
  store i64 %and, ptr %start.addr, align 8, !dbg !6855
  %1 = load i64, ptr %start.addr, align 8, !dbg !6856
  %2 = load i32, ptr %len.addr, align 4, !dbg !6857
  %conv = zext i32 %2 to i64, !dbg !6857
  %add1 = add i64 %1, %conv, !dbg !6858
  %add2 = add i64 %add1, 2097152, !dbg !6859
  %sub = sub i64 %add2, 1, !dbg !6860
  %and3 = and i64 %sub, -2097152, !dbg !6861
  store i64 %and3, ptr %end, align 8, !dbg !6862
  %3 = load i64, ptr %end, align 8, !dbg !6863
  %cmp = icmp uge i64 %3, 140737488351232, !dbg !6865
  br i1 %cmp, label %if.then, label %if.end, !dbg !6866

if.then:                                          ; preds = %entry
  store i64 140737488351232, ptr %end, align 8, !dbg !6867
  br label %if.end, !dbg !6868

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %len.addr, align 4, !dbg !6869
  %conv5 = zext i32 %4 to i64, !dbg !6869
  %5 = load i64, ptr %end, align 8, !dbg !6870
  %sub6 = sub i64 %5, %conv5, !dbg !6870
  store i64 %sub6, ptr %end, align 8, !dbg !6870
  %6 = load i64, ptr %end, align 8, !dbg !6871
  %7 = load i64, ptr %start.addr, align 8, !dbg !6873
  %cmp7 = icmp ugt i64 %6, %7, !dbg !6874
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !6875

if.then9:                                         ; preds = %if.end
  %8 = load i64, ptr %end, align 8, !dbg !6876
  %9 = load i64, ptr %start.addr, align 8, !dbg !6878
  %sub10 = sub i64 %8, %9, !dbg !6879
  %shr = lshr i64 %sub10, 12, !dbg !6880
  %add11 = add i64 %shr, 1, !dbg !6881
  %conv12 = trunc i64 %add11 to i32, !dbg !6882
  %call = call i32 @get_random_u32_below(i32 noundef %conv12) #14, !dbg !6883
  store i32 %call, ptr %offset, align 4, !dbg !6884
  %10 = load i64, ptr %start.addr, align 8, !dbg !6885
  %11 = load i32, ptr %offset, align 4, !dbg !6886
  %shl = shl i32 %11, 12, !dbg !6887
  %conv13 = zext i32 %shl to i64, !dbg !6888
  %add14 = add i64 %10, %conv13, !dbg !6889
  store i64 %add14, ptr %addr, align 8, !dbg !6890
  br label %if.end15, !dbg !6891

if.else:                                          ; preds = %if.end
  %12 = load i64, ptr %start.addr, align 8, !dbg !6892
  store i64 %12, ptr %addr, align 8, !dbg !6894
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then9
  %13 = load i64, ptr %addr, align 8, !dbg !6895
  %call16 = call i64 @align_vdso_addr(i64 noundef %13) #14, !dbg !6896
  store i64 %call16, ptr %addr, align 8, !dbg !6897
  %14 = load i64, ptr %addr, align 8, !dbg !6898
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !6899
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !6899
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !6899
  ret i64 %14, !dbg !6900
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_random_u32_below(i32 noundef %ceil) #7 align 16 !dbg !6901 {
entry:
  %retval = alloca i32, align 4
  %ceil.addr = alloca i32, align 4
  %mult = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mult23 = alloca i32, align 4
  %mult51 = alloca i64, align 8
  store i32 %ceil, ptr %ceil.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ceil.addr, metadata !6906, metadata !DIExpression()), !dbg !6918
  %0 = load i32, ptr %ceil.addr, align 4, !dbg !6919
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6921
  br i1 %1, label %if.end, label %if.then, !dbg !6922

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ceil.addr, align 4, !dbg !6923
  %call = call i32 @__get_random_u32_below(i32 noundef %2) #14, !dbg !6924
  store i32 %call, ptr %retval, align 4, !dbg !6925
  br label %return, !dbg !6925

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6926

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr %ceil.addr, align 4, !dbg !6927
  %tobool = icmp ne i32 %3, 0, !dbg !6927
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6930

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_80() #16, !dbg !6927, !srcloc !6931
  unreachable, !dbg !6927

if.end2:                                          ; preds = %do.body
  br label %do.end, !dbg !6930

do.end:                                           ; preds = %if.end2
  %4 = load i32, ptr %ceil.addr, align 4, !dbg !6932
  %cmp = icmp ule i32 %4, 1, !dbg !6934
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6935

if.then3:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6936
  br label %return, !dbg !6936

if.end4:                                          ; preds = %do.end
  br label %for.cond, !dbg !6937

for.cond:                                         ; preds = %if.end80, %if.end4
  %5 = load i32, ptr %ceil.addr, align 4, !dbg !6938
  %cmp5 = icmp ule i32 %5, 256, !dbg !6939
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !6940

if.then6:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult) #13, !dbg !6941
  call void @llvm.dbg.declare(metadata ptr %mult, metadata !6907, metadata !DIExpression()), !dbg !6942
  %6 = load i32, ptr %ceil.addr, align 4, !dbg !6943
  %call7 = call zeroext i8 @get_random_u8() #14, !dbg !6944
  %conv = zext i8 %call7 to i32, !dbg !6944
  %mul = mul i32 %6, %conv, !dbg !6945
  store i32 %mul, ptr %mult, align 4, !dbg !6942
  %7 = load i32, ptr %ceil.addr, align 4, !dbg !6946
  %conv8 = zext i32 %7 to i64, !dbg !6946
  %call9 = call zeroext i1 @is_power_of_2(i64 noundef %conv8) #17, !dbg !6946
  br i1 %call9, label %lor.end, label %lor.rhs, !dbg !6946

lor.rhs:                                          ; preds = %if.then6
  %8 = load i32, ptr %mult, align 4, !dbg !6946
  %conv11 = trunc i32 %8 to i8, !dbg !6946
  %conv12 = zext i8 %conv11 to i32, !dbg !6946
  %9 = load i32, ptr %ceil.addr, align 4, !dbg !6946
  %rem = urem i32 256, %9, !dbg !6946
  %cmp13 = icmp uge i32 %conv12, %rem, !dbg !6946
  br label %lor.end, !dbg !6946

lor.end:                                          ; preds = %lor.rhs, %if.then6
  %10 = phi i1 [ true, %if.then6 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6946
  %lnot15 = xor i1 %lnot, true, !dbg !6946
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6946
  %conv16 = sext i32 %lnot.ext to i64, !dbg !6946
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !6946
  %tobool17 = icmp ne i64 %expval, 0, !dbg !6946
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6948

if.then18:                                        ; preds = %lor.end
  %11 = load i32, ptr %mult, align 4, !dbg !6949
  %shr = lshr i32 %11, 8, !dbg !6950
  store i32 %shr, ptr %retval, align 4, !dbg !6951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6951

if.end19:                                         ; preds = %lor.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6952
  br label %cleanup, !dbg !6952

cleanup:                                          ; preds = %if.end19, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult) #13, !dbg !6952
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end80, !dbg !6953

if.else:                                          ; preds = %for.cond
  %12 = load i32, ptr %ceil.addr, align 4, !dbg !6954
  %cmp20 = icmp ule i32 %12, 65536, !dbg !6955
  br i1 %cmp20, label %if.then22, label %if.else50, !dbg !6956

if.then22:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult23) #13, !dbg !6957
  call void @llvm.dbg.declare(metadata ptr %mult23, metadata !6913, metadata !DIExpression()), !dbg !6958
  %13 = load i32, ptr %ceil.addr, align 4, !dbg !6959
  %call24 = call zeroext i16 @get_random_u16() #14, !dbg !6960
  %conv25 = zext i16 %call24 to i32, !dbg !6960
  %mul26 = mul i32 %13, %conv25, !dbg !6961
  store i32 %mul26, ptr %mult23, align 4, !dbg !6958
  %14 = load i32, ptr %ceil.addr, align 4, !dbg !6962
  %conv27 = zext i32 %14 to i64, !dbg !6962
  %call28 = call zeroext i1 @is_power_of_2(i64 noundef %conv27) #17, !dbg !6962
  br i1 %call28, label %lor.end36, label %lor.rhs30, !dbg !6962

lor.rhs30:                                        ; preds = %if.then22
  %15 = load i32, ptr %mult23, align 4, !dbg !6962
  %conv31 = trunc i32 %15 to i16, !dbg !6962
  %conv32 = zext i16 %conv31 to i32, !dbg !6962
  %16 = load i32, ptr %ceil.addr, align 4, !dbg !6962
  %rem33 = urem i32 65536, %16, !dbg !6962
  %cmp34 = icmp uge i32 %conv32, %rem33, !dbg !6962
  br label %lor.end36, !dbg !6962

lor.end36:                                        ; preds = %lor.rhs30, %if.then22
  %17 = phi i1 [ true, %if.then22 ], [ %cmp34, %lor.rhs30 ]
  %lnot37 = xor i1 %17, true, !dbg !6962
  %lnot39 = xor i1 %lnot37, true, !dbg !6962
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !6962
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !6962
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 1), !dbg !6962
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !6962
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !6964

if.then44:                                        ; preds = %lor.end36
  %18 = load i32, ptr %mult23, align 4, !dbg !6965
  %shr45 = lshr i32 %18, 16, !dbg !6966
  store i32 %shr45, ptr %retval, align 4, !dbg !6967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !6967

if.end46:                                         ; preds = %lor.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6968
  br label %cleanup47, !dbg !6968

cleanup47:                                        ; preds = %if.end46, %if.then44
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult23) #13, !dbg !6968
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %unreachable [
    i32 0, label %cleanup.cont49
    i32 1, label %return
  ]

cleanup.cont49:                                   ; preds = %cleanup47
  br label %if.end79, !dbg !6969

if.else50:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %mult51) #13, !dbg !6970
  call void @llvm.dbg.declare(metadata ptr %mult51, metadata !6916, metadata !DIExpression()), !dbg !6971
  %19 = load i32, ptr %ceil.addr, align 4, !dbg !6972
  %conv52 = zext i32 %19 to i64, !dbg !6973
  %call53 = call i32 @get_random_u32() #14, !dbg !6974
  %conv54 = zext i32 %call53 to i64, !dbg !6974
  %mul55 = mul i64 %conv52, %conv54, !dbg !6975
  store i64 %mul55, ptr %mult51, align 8, !dbg !6971
  %20 = load i32, ptr %ceil.addr, align 4, !dbg !6976
  %conv56 = zext i32 %20 to i64, !dbg !6976
  %call57 = call zeroext i1 @is_power_of_2(i64 noundef %conv56) #17, !dbg !6976
  br i1 %call57, label %lor.end64, label %lor.rhs59, !dbg !6976

lor.rhs59:                                        ; preds = %if.else50
  %21 = load i64, ptr %mult51, align 8, !dbg !6976
  %conv60 = trunc i64 %21 to i32, !dbg !6976
  %22 = load i32, ptr %ceil.addr, align 4, !dbg !6976
  %sub = sub i32 0, %22, !dbg !6976
  %23 = load i32, ptr %ceil.addr, align 4, !dbg !6976
  %rem61 = urem i32 %sub, %23, !dbg !6976
  %cmp62 = icmp uge i32 %conv60, %rem61, !dbg !6976
  br label %lor.end64, !dbg !6976

lor.end64:                                        ; preds = %lor.rhs59, %if.else50
  %24 = phi i1 [ true, %if.else50 ], [ %cmp62, %lor.rhs59 ]
  %lnot65 = xor i1 %24, true, !dbg !6976
  %lnot67 = xor i1 %lnot65, true, !dbg !6976
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !6976
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !6976
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 1), !dbg !6976
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !6976
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !6978

if.then72:                                        ; preds = %lor.end64
  %25 = load i64, ptr %mult51, align 8, !dbg !6979
  %shr73 = lshr i64 %25, 32, !dbg !6980
  %conv74 = trunc i64 %shr73 to i32, !dbg !6979
  store i32 %conv74, ptr %retval, align 4, !dbg !6981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !6981

if.end75:                                         ; preds = %lor.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6982
  br label %cleanup76, !dbg !6982

cleanup76:                                        ; preds = %if.end75, %if.then72
  call void @llvm.lifetime.end.p0(i64 8, ptr %mult51) #13, !dbg !6982
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %unreachable [
    i32 0, label %cleanup.cont78
    i32 1, label %return
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  br label %if.end79

if.end79:                                         ; preds = %cleanup.cont78, %cleanup.cont49
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %cleanup.cont
  br label %for.cond, !dbg !6983, !llvm.loop !6984

return:                                           ; preds = %cleanup76, %cleanup47, %cleanup, %if.then3, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6987
  ret i32 %26, !dbg !6987

unreachable:                                      ; preds = %cleanup76, %cleanup47, %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6988 dso_local i64 @align_vdso_addr(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6989 dso_local i32 @__get_random_u32_below(i32 noundef) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6990 dso_local void @__compiletime_assert_80() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6991 dso_local zeroext i8 @get_random_u8() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #12 align 16 !dbg !6994 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  %0 = load i64, ptr %n.addr, align 8, !dbg !7001
  %cmp = icmp ne i64 %0, 0, !dbg !7002
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7003

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !7004
  %2 = load i64, ptr %n.addr, align 8, !dbg !7005
  %sub = sub i64 %2, 1, !dbg !7006
  %and = and i64 %1, %sub, !dbg !7007
  %cmp1 = icmp eq i64 %and, 0, !dbg !7008
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !7009
  ret i1 %3, !dbg !7010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7011 dso_local zeroext i16 @get_random_u16() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7014 dso_local i32 @get_random_u32() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7017 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="get_random_u32_below() must take ceil > 0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }
attributes #16 = { noredzone noreturn }
attributes #17 = { noredzone nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518}
!llvm.ident = !{!5519}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_vdso_data_offset", scope: !2, file: !5509, line: 51, type: !5510, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vdso/.vma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/entry/vdso/vma\22 -D KBUILD_BASENAME=\22vma\22 -D KBUILD_MODNAME=\22vma\22 -D __KBUILD_MODNAME=kmod_vma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vdso/vma.ll arch/x86/entry/vdso/vma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !329, globals: !5462, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/entry/vdso/vma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb8e76170bfeef070290e424d8a5bdb")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !151, !158, !164, !171, !179, !186, !192, !198, !207, !212, !217, !223, !228, !234, !246, !252, !259, !264, !280, !289}
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
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !147, line: 32, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!150 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !159, line: 45, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!162 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!163 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !165, line: 487, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!168 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!169 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!170 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !172, line: 620, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!175 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!176 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!177 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!178 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !172, line: 597, baseType: !22, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!182 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!183 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!184 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!185 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !187, line: 30, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!190 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!191 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !193, line: 26, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!196 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!197 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !165, line: 547, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206}
!200 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!201 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!202 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!203 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!204 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!205 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!206 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !165, line: 564, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!210 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!211 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !165, line: 577, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!215 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!216 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !165, line: 503, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!220 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!221 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!222 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !224, line: 2052, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!225 = !{!226, !227}
!226 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!227 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !229, line: 54, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "USRQUOTA", value: 0)
!232 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!233 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !235, line: 44, baseType: !7, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245}
!237 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!238 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!239 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!240 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!241 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!242 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!243 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!244 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!245 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !247, line: 16, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "TT_NONE", value: 0)
!250 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!251 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !253, line: 51, baseType: !7, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!256 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!257 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!258 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 10, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "false", value: 0)
!263 = !DIEnumerator(name: "true", value: 1)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vm_fault_reason", file: !131, line: 1211, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!266 = !DIEnumerator(name: "VM_FAULT_OOM", value: 1)
!267 = !DIEnumerator(name: "VM_FAULT_SIGBUS", value: 2)
!268 = !DIEnumerator(name: "VM_FAULT_MAJOR", value: 4)
!269 = !DIEnumerator(name: "VM_FAULT_HWPOISON", value: 16)
!270 = !DIEnumerator(name: "VM_FAULT_HWPOISON_LARGE", value: 32)
!271 = !DIEnumerator(name: "VM_FAULT_SIGSEGV", value: 64)
!272 = !DIEnumerator(name: "VM_FAULT_NOPAGE", value: 256)
!273 = !DIEnumerator(name: "VM_FAULT_LOCKED", value: 512)
!274 = !DIEnumerator(name: "VM_FAULT_RETRY", value: 1024)
!275 = !DIEnumerator(name: "VM_FAULT_FALLBACK", value: 2048)
!276 = !DIEnumerator(name: "VM_FAULT_DONE_COW", value: 4096)
!277 = !DIEnumerator(name: "VM_FAULT_NEEDDSYNC", value: 8192)
!278 = !DIEnumerator(name: "VM_FAULT_COMPLETED", value: 16384)
!279 = !DIEnumerator(name: "VM_FAULT_HINDEX_MASK", value: 983040)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !281, line: 11, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!282 = !{!283, !284, !285, !286, !287, !288}
!283 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!284 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!285 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!286 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!287 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!288 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !290, line: 100, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!292 = !DIEnumerator(name: "PG_locked", value: 0)
!293 = !DIEnumerator(name: "PG_writeback", value: 1)
!294 = !DIEnumerator(name: "PG_referenced", value: 2)
!295 = !DIEnumerator(name: "PG_uptodate", value: 3)
!296 = !DIEnumerator(name: "PG_dirty", value: 4)
!297 = !DIEnumerator(name: "PG_lru", value: 5)
!298 = !DIEnumerator(name: "PG_head", value: 6)
!299 = !DIEnumerator(name: "PG_waiters", value: 7)
!300 = !DIEnumerator(name: "PG_active", value: 8)
!301 = !DIEnumerator(name: "PG_workingset", value: 9)
!302 = !DIEnumerator(name: "PG_error", value: 10)
!303 = !DIEnumerator(name: "PG_slab", value: 11)
!304 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!305 = !DIEnumerator(name: "PG_arch_1", value: 13)
!306 = !DIEnumerator(name: "PG_reserved", value: 14)
!307 = !DIEnumerator(name: "PG_private", value: 15)
!308 = !DIEnumerator(name: "PG_private_2", value: 16)
!309 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!310 = !DIEnumerator(name: "PG_reclaim", value: 18)
!311 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!312 = !DIEnumerator(name: "PG_unevictable", value: 20)
!313 = !DIEnumerator(name: "PG_mlocked", value: 21)
!314 = !DIEnumerator(name: "PG_uncached", value: 22)
!315 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!316 = !DIEnumerator(name: "PG_readahead", value: 18)
!317 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!318 = !DIEnumerator(name: "PG_checked", value: 12)
!319 = !DIEnumerator(name: "PG_swapcache", value: 12)
!320 = !DIEnumerator(name: "PG_fscache", value: 16)
!321 = !DIEnumerator(name: "PG_pinned", value: 12)
!322 = !DIEnumerator(name: "PG_savepinned", value: 4)
!323 = !DIEnumerator(name: "PG_foreign", value: 12)
!324 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!325 = !DIEnumerator(name: "PG_isolated", value: 18)
!326 = !DIEnumerator(name: "PG_reported", value: 3)
!327 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!328 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!329 = !{!330, !374, !391, !20, !39, !394, !402, !403, !5449, !5452, !863, !3326, !5453, !5456, !5457, !5458, !3906, !3171, !5460, !83, !93, !341, !335}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_data", file: !332, line: 90, size: 1920, elements: !333)
!332 = !DIFile(filename: "./include/vdso/datapage.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd561b8fc8d778c148cc9e4ad5fe7dc5")
!333 = !{!334, !337, !340, !344, !345, !346, !347, !367, !368, !369, !370, !371}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !331, file: !332, line: 91, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !331, file: !332, line: 93, baseType: !338, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !331, file: !332, line: 94, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !343)
!343 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !331, file: !332, line: 95, baseType: !341, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !331, file: !332, line: 96, baseType: !335, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !331, file: !332, line: 97, baseType: !335, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !332, line: 99, baseType: !348, size: 1536, offset: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !332, line: 99, size: 1536, elements: !349)
!349 = !{!350, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "basetime", scope: !348, file: !332, line: 100, baseType: !351, size: 1536)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 1536, elements: !356)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_timestamp", file: !332, line: 54, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !352, file: !332, line: 55, baseType: !341, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !352, file: !332, line: 56, baseType: !341, size: 64, offset: 64)
!356 = !{!357}
!357 = !DISubrange(count: 12)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !348, file: !332, line: 101, baseType: !359, size: 1536)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1536, elements: !356)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offset", file: !361, line: 7, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/vdso/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba8fbefc3ceb6aad90a49911c36b3121")
!362 = !{!363, !366}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !360, file: !361, line: 8, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !360, file: !361, line: 9, baseType: !341, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !331, file: !332, line: 104, baseType: !338, size: 32, offset: 1792)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !331, file: !332, line: 105, baseType: !338, size: 32, offset: 1824)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_res", scope: !331, file: !332, line: 106, baseType: !335, size: 32, offset: 1856)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !331, file: !332, line: 107, baseType: !335, size: 32, offset: 1888)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !331, file: !332, line: 109, baseType: !372, offset: 1920)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vdso_data", file: !332, line: 25, elements: !373)
!373 = !{}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alt_instr", file: !376, line: 73, size: 112, elements: !377)
!376 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!377 = !{!378, !379, !380, !389, !390}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "instr_offset", scope: !375, file: !376, line: 74, baseType: !338, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !375, file: !376, line: 75, baseType: !338, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 77, baseType: !381, size: 32, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 77, size: 32, elements: !382)
!382 = !{!383, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !376, line: 78, baseType: !384, size: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !376, line: 78, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !384, file: !376, line: 79, baseType: !335, size: 16, flags: DIFlagBitField, extraData: i64 0)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !376, line: 80, baseType: !335, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ft_flags", scope: !381, file: !376, line: 82, baseType: !335, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "instrlen", scope: !375, file: !376, line: 85, baseType: !83, size: 8, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "replacementlen", scope: !375, file: !376, line: 86, baseType: !83, size: 8, offset: 104)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "maple_enode", file: !393, line: 141, flags: DIFlagFwdDecl)
!393 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !396, line: 56, size: 192, elements: !397)
!396 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !396, line: 57, baseType: !39, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !395, file: !396, line: 58, baseType: !39, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !395, file: !396, line: 59, baseType: !335, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !395, file: !396, line: 61, baseType: !335, size: 32, offset: 160)
!402 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !405)
!405 = !{!406, !407, !5443, !5448}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !131, line: 75, baseType: !39, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !131, line: 83, baseType: !408, size: 320, offset: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !131, line: 83, size: 320, elements: !409)
!409 = !{!410, !5369, !5383, !5387, !5442}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !131, line: 84, baseType: !411, size: 320)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !131, line: 84, size: 320, elements: !412)
!412 = !{!413, !424, !5363, !5368}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !131, line: 90, baseType: !414, size: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !131, line: 90, size: 128, elements: !415)
!415 = !{!416, !417, !422, !423}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !414, file: !131, line: 91, baseType: !97, size: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !131, line: 94, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !131, line: 94, size: 128, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !418, file: !131, line: 96, baseType: !20, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !418, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !414, file: !131, line: 102, baseType: !97, size: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !414, file: !131, line: 103, baseType: !97, size: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !411, file: !131, line: 106, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !224, line: 472, size: 1536, align: 64, elements: !427)
!427 = !{!428, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5357, !5358, !5359, !5360, !5361, !5362}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !426, file: !224, line: 473, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !224, line: 641, size: 4800, elements: !431)
!431 = !{!432, !433, !434, !442, !443, !450, !451, !454, !455, !5148, !5149, !5150, !5151, !5152, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5192, !5195, !5196, !5197, !5206, !5207, !5208, !5209}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !224, line: 642, baseType: !24, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !224, line: 643, baseType: !26, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !224, line: 644, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 21, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 22, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !224, line: 645, baseType: !97, size: 128, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !224, line: 646, baseType: !444, size: 32, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !436, line: 28, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 26, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !436, line: 27, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !224, line: 647, baseType: !7, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !430, file: !224, line: 650, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !224, line: 607, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !430, file: !224, line: 651, baseType: !452, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !224, line: 654, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !224, line: 1966, size: 2048, align: 512, elements: !459)
!459 = !{!460, !4986, !4996, !5000, !5004, !5008, !5012, !5016, !5020, !5024, !5028, !5029, !5033, !5037, !5070, !5099, !5103, !5109, !5113, !5117, !5121, !5125, !5129, !5135, !5139}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !458, file: !224, line: 1967, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !429, !464, !7}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !466, line: 82, size: 1536, elements: !467)
!466 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!467 = !{!468, !469, !479, !487, !488, !503, !504, !508, !521, !4969, !4970, !4971, !4972, !4978, !4979, !4980}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !465, file: !466, line: 84, baseType: !7, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !465, file: !466, line: 85, baseType: !470, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !471, line: 275, baseType: !472)
!471 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !471, line: 275, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !472, file: !471, line: 275, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !471, line: 69, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !471, line: 64, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !476, file: !471, line: 65, baseType: !7, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !465, file: !466, line: 86, baseType: !480, size: 128, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !481, line: 38, size: 128, elements: !482)
!481 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !481, line: 39, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !480, file: !481, line: 39, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !465, file: !466, line: 87, baseType: !464, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !465, file: !466, line: 88, baseType: !489, size: 128, offset: 256)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !466, line: 49, size: 128, elements: !490)
!490 = !{!491, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !466, line: 50, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !466, line: 50, size: 64, elements: !493)
!493 = !{!494, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !466, line: 51, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !466, line: 51, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !495, file: !466, line: 52, baseType: !335, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !495, file: !466, line: 52, baseType: !335, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !492, file: !466, line: 54, baseType: !341, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !466, line: 56, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !465, file: !466, line: 89, baseType: !429, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !465, file: !466, line: 91, baseType: !505, size: 256, offset: 448)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !465, file: !466, line: 94, baseType: !509, size: 64, offset: 704)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !510, line: 25, size: 64, elements: !511)
!510 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !510, line: 26, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !510, line: 26, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !513, file: !510, line: 28, baseType: !342, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !510, line: 30, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !510, line: 30, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !510, line: 31, baseType: !59, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !510, line: 32, baseType: !22, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !465, file: !466, line: 95, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !466, line: 128, size: 1024, align: 512, elements: !525)
!525 = !{!526, !530, !531, !538, !544, !548, !552, !556, !557, !561, !566, !4959, !4963}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !524, file: !466, line: 129, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!22, !464, !7}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !524, file: !466, line: 130, baseType: !527, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !524, file: !466, line: 131, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!22, !535, !537}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !524, file: !466, line: 132, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!22, !535, !7, !16, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !524, file: !466, line: 134, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!22, !535}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !524, file: !466, line: 135, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!22, !464}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !524, file: !466, line: 136, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !464}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !524, file: !466, line: 137, baseType: !553, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !524, file: !466, line: 138, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !464, !429}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !524, file: !466, line: 139, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !464, !565, !22}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !524, file: !466, line: 140, baseType: !567, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !4958}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !572, line: 70, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!573 = !{!574, !575, !4954, !4955}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !571, file: !572, line: 71, baseType: !464, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !571, file: !572, line: 72, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !224, line: 1190, size: 10752, elements: !578)
!578 = !{!579, !580, !583, !584, !585, !586, !3932, !4084, !4124, !4209, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4226, !4230, !4231, !4757, !4760, !4817, !4820, !4821, !4822, !4863, !4889, !4890, !4891, !4892, !4893, !4894, !4897, !4898, !4904, !4905, !4906, !4907, !4908, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !577, file: !224, line: 1191, baseType: !97, size: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !577, file: !224, line: 1192, baseType: !581, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !335)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !577, file: !224, line: 1193, baseType: !87, size: 8, offset: 160)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !577, file: !224, line: 1194, baseType: !39, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !577, file: !224, line: 1195, baseType: !41, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !577, file: !224, line: 1196, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !224, line: 2366, size: 576, elements: !589)
!589 = !{!590, !591, !592, !598, !602, !606, !610, !3920, !3921, !3922, !3924, !3925, !3926, !3928, !3929, !3930, !3931}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !224, line: 2367, baseType: !16, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !588, file: !224, line: 2368, baseType: !22, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !588, file: !224, line: 2376, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!22, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !572, line: 21, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !588, file: !224, line: 2377, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !224, line: 75, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !588, file: !224, line: 2378, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!464, !587, !22, !16, !20}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !588, file: !224, line: 2380, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !576}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !588, file: !224, line: 2381, baseType: !611, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !613)
!613 = !{!614, !615, !616, !620, !3596, !3622, !3623, !3624, !3625, !3629, !3632, !3633, !3634, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3702, !3706, !3724, !3741, !3742, !3743, !3744, !3753, !3776, !3777, !3780, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3794, !3795, !3881, !3889, !3890, !3891, !3893, !3897, !3898, !3902, !3903, !3904, !3905, !3907, !3908, !3909, !3916, !3917, !3918, !3919}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !612, file: !116, line: 403, baseType: !115, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !612, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !116, line: 409, baseType: !617, size: 448, offset: 192)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 56)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !612, file: !116, line: 417, baseType: !621, size: 768, offset: 640)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !622)
!622 = !{!623, !3590, !3591, !3592, !3595}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !621, file: !116, line: 46, baseType: !624, size: 512)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !625, line: 64, size: 512, elements: !626)
!625 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!626 = !{!627, !628, !629, !631, !677, !3579, !3580, !3585, !3586, !3587, !3588, !3589}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !624, file: !625, line: 65, baseType: !16, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !624, file: !625, line: 66, baseType: !97, size: 128, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !624, file: !625, line: 67, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !624, file: !625, line: 68, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !625, line: 168, size: 768, elements: !634)
!634 = !{!635, !636, !637, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !633, file: !625, line: 169, baseType: !97, size: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !633, file: !625, line: 170, baseType: !59, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !633, file: !625, line: 171, baseType: !624, size: 512, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !633, file: !625, line: 172, baseType: !639, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !625, line: 133, size: 192, elements: !642)
!642 = !{!643, !650, !655}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !641, file: !625, line: 134, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!22, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !641, file: !625, line: 135, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!16, !648}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !641, file: !625, line: 136, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!22, !648, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !625, line: 125, size: 20736, elements: !662)
!662 = !{!663, !667, !671, !672, !676}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !661, file: !625, line: 126, baseType: !664, size: 192)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 192, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 3)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !661, file: !625, line: 127, baseType: !668, size: 4096, offset: 192)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 4096, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !661, file: !625, line: 128, baseType: !22, size: 32, offset: 4288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !661, file: !625, line: 129, baseType: !673, size: 16384, offset: 4320)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 2048)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !661, file: !625, line: 130, baseType: !22, size: 32, offset: 20704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !624, file: !625, line: 69, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !625, line: 116, size: 384, elements: !681)
!681 = !{!682, !686, !708, !3540, !3571, !3575}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !680, file: !625, line: 117, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !630}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !680, file: !625, line: 118, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !690, line: 254, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!691 = !{!692, !704}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !689, file: !690, line: 255, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!696, !630, !699, !565}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !402)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !690, line: 30, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !700, file: !690, line: 31, baseType: !16, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !700, file: !690, line: 32, baseType: !24, size: 16, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !689, file: !690, line: 256, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!696, !630, !699, !16, !35}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !680, file: !625, line: 119, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !690, line: 84, size: 320, elements: !713)
!713 = !{!714, !715, !719, !3536, !3538}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !690, line: 85, baseType: !16, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !712, file: !690, line: 86, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!24, !630, !699, !22}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !712, file: !690, line: 88, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!24, !630, !723, !22}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !690, line: 175, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !733, !3531, !3532}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !724, file: !690, line: 176, baseType: !700, size: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !690, line: 177, baseType: !35, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !724, file: !690, line: 178, baseType: !20, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !724, file: !690, line: 179, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!425}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !724, file: !690, line: 180, baseType: !734, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!696, !737, !630, !723, !565, !41, !35}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !224, line: 994, size: 1856, align: 64, elements: !739)
!739 = !{!740, !759, !760, !762, !769, !782, !783, !784, !3266, !3267, !3276, !3282, !3283, !3521, !3522, !3523, !3524, !3526, !3527, !3530}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !224, line: 995, baseType: !741, size: 128)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !224, line: 995, size: 128, elements: !742)
!742 = !{!743, !749, !758}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !741, file: !224, line: 996, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !745, line: 60, size: 64, elements: !746)
!745 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !745, line: 61, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !741, file: !224, line: 997, baseType: !750, size: 128, align: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !751)
!751 = !{!752, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !25, line: 233, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !750, file: !25, line: 234, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !753}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !741, file: !224, line: 998, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !738, file: !224, line: 1005, baseType: !59, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !738, file: !224, line: 1006, baseType: !761, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !738, file: !224, line: 1007, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !764, line: 13, baseType: !765)
!764 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !766, file: !25, line: 180, baseType: !364, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !738, file: !224, line: 1008, baseType: !770, size: 256, offset: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !771, line: 66, size: 256, elements: !772)
!771 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!772 = !{!773, !774, !776, !781}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 67, baseType: !763, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 68, baseType: !775, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !770, file: !771, line: 70, baseType: !777, size: 32, offset: 96)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !778, line: 15, size: 32, elements: !779)
!778 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !777, file: !778, line: 20, baseType: !49, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 72, baseType: !97, size: 128, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !738, file: !224, line: 1009, baseType: !41, size: 64, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !738, file: !224, line: 1010, baseType: !7, size: 32, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !738, file: !224, line: 1011, baseType: !785, size: 256, offset: 640)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !224, line: 948, size: 256, elements: !786)
!786 = !{!787, !808, !3262, !3263, !3264, !3265}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !785, file: !224, line: 949, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !789, line: 34, baseType: !790)
!789 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 25, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !790, file: !789, line: 26, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !794, line: 27, baseType: !795)
!794 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !794, line: 13, size: 64, elements: !796)
!796 = !{!797, !807}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !794, line: 14, baseType: !798, size: 32)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !794, line: 14, size: 32, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !798, file: !794, line: 15, baseType: !49, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !794, line: 16, baseType: !802, size: 32)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !794, line: 16, size: 32, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !802, file: !794, line: 18, baseType: !83, size: 8)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !802, file: !794, line: 19, baseType: !806, size: 24, offset: 8)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !665)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !795, file: !794, line: 26, baseType: !71, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !785, file: !224, line: 950, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !811)
!811 = !{!812, !818, !819, !820, !833, !834, !835, !836}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !108, line: 61, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !814, line: 113, baseType: !815)
!814 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !814, line: 111, size: 32, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !815, file: !814, line: 112, baseType: !49, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !810, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !810, file: !108, line: 65, baseType: !821, size: 256, offset: 128)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !831)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !822, file: !25, line: 195, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !25, line: 199, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !826, file: !25, line: 199, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!831 = !{!832}
!832 = !DISubrange(count: 4)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !810, file: !108, line: 66, baseType: !822, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !810, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !810, file: !108, line: 69, baseType: !750, size: 128, align: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !810, file: !108, line: 70, baseType: !837, offset: 768)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, elements: !1583)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !838, file: !108, line: 55, baseType: !22, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !838, file: !108, line: 56, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !844, line: 26, size: 1152, elements: !845)
!844 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!845 = !{!846, !860, !861, !862, !3248, !3252, !3253, !3254, !3257, !3258, !3259, !3260, !3261}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !843, file: !844, line: 27, baseType: !847, size: 192)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !848, line: 19, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!849 = !{!850, !858, !859}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !847, file: !848, line: 20, baseType: !851, size: 128)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !852, line: 296, size: 128, elements: !853)
!852 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!853 = !{!854, !855, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !851, file: !852, line: 297, baseType: !59, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !851, file: !852, line: 299, baseType: !856, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !851, file: !852, line: 300, baseType: !20, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !847, file: !848, line: 21, baseType: !7, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !847, file: !848, line: 22, baseType: !7, size: 32, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !843, file: !844, line: 28, baseType: !750, size: 128, align: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !843, file: !844, line: 29, baseType: !7, size: 32, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !843, file: !844, line: 30, baseType: !863, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !865, line: 746, size: 58368, elements: !866)
!865 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !947, !958, !1053, !1057, !1060, !1091, !1092, !1093, !1094, !1105, !1107, !1108, !1109, !1110, !1111, !1112, !1123, !1124, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1141, !1142, !1149, !1150, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1664, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1679, !1680, !1681, !1682, !1684, !1685, !1686, !1687, !1688, !1689, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1713, !1719, !1789, !1790, !1791, !1792, !1796, !1799, !1806, !1811, !1814, !1817, !1820, !2449, !2650, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2688, !2689, !2690, !2699, !2707, !2708, !2709, !2710, !2711, !2716, !2717, !2718, !2721, !2722, !2725, !2728, !2734, !2742, !2745, !2746, !2832, !2833, !2834, !2835, !2836, !2842, !2843, !2844, !2845, !2846, !2847, !2850, !2853, !2854, !2857, !2858, !2859, !2862, !2863, !2864, !2865, !2866, !2867, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2899, !2902, !2908, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2920, !2992, !2994, !2995, !2996, !2997, !2998, !2999, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3029, !3030, !3031}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !864, file: !865, line: 752, baseType: !395, size: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !864, file: !865, line: 754, baseType: !7, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !864, file: !865, line: 767, baseType: !20, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !865, line: 768, baseType: !813, size: 32, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 770, baseType: !7, size: 32, offset: 352)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !864, file: !865, line: 771, baseType: !7, size: 32, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !864, file: !865, line: 774, baseType: !22, size: 32, offset: 416)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !864, file: !865, line: 775, baseType: !875, size: 128, offset: 448)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !876, line: 58, size: 128, elements: !877)
!876 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!877 = !{!878, !879, !884, !885}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !875, file: !876, line: 59, baseType: !744, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !876, line: 60, baseType: !880, size: 32, offset: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !876, line: 60, size: 32, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !880, file: !876, line: 61, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !880, file: !876, line: 62, baseType: !49, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !875, file: !876, line: 65, baseType: !93, size: 16, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !875, file: !876, line: 65, baseType: !93, size: 16, offset: 112)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !864, file: !865, line: 776, baseType: !7, size: 32, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !864, file: !865, line: 777, baseType: !39, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !864, file: !865, line: 778, baseType: !863, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !864, file: !865, line: 787, baseType: !22, size: 32, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !864, file: !865, line: 788, baseType: !22, size: 32, offset: 800)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !864, file: !865, line: 790, baseType: !22, size: 32, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !864, file: !865, line: 792, baseType: !22, size: 32, offset: 864)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !864, file: !865, line: 793, baseType: !22, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !864, file: !865, line: 794, baseType: !22, size: 32, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !864, file: !865, line: 795, baseType: !7, size: 32, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !864, file: !865, line: 797, baseType: !897, size: 2048, offset: 1024)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !865, line: 551, size: 2048, elements: !898)
!898 = !{!899, !904, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !926, !929, !930, !931}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !897, file: !865, line: 553, baseType: !900, size: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !865, line: 411, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !900, file: !865, line: 412, baseType: !39, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !900, file: !865, line: 413, baseType: !335, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !897, file: !865, line: 554, baseType: !905, size: 192, align: 64, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !906, line: 5, size: 192, align: 64, elements: !907)
!906 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!907 = !{!908, !909, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !905, file: !906, line: 6, baseType: !39, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !905, file: !906, line: 7, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !905, file: !906, line: 8, baseType: !910, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !897, file: !865, line: 555, baseType: !341, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !897, file: !865, line: 556, baseType: !341, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !897, file: !865, line: 558, baseType: !97, size: 128, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !897, file: !865, line: 559, baseType: !7, size: 32, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !897, file: !865, line: 561, baseType: !341, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !897, file: !865, line: 562, baseType: !341, size: 64, offset: 704)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !897, file: !865, line: 563, baseType: !341, size: 64, offset: 768)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !897, file: !865, line: 564, baseType: !341, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !897, file: !865, line: 565, baseType: !364, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !897, file: !865, line: 566, baseType: !341, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !897, file: !865, line: 568, baseType: !341, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !897, file: !865, line: 571, baseType: !22, size: 32, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !897, file: !865, line: 572, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !897, file: !865, line: 574, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !865, line: 49, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !897, file: !865, line: 576, baseType: !927, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !897, file: !865, line: 578, baseType: !39, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !897, file: !865, line: 588, baseType: !932, size: 512, align: 512, offset: 1536)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !865, line: 497, size: 512, align: 512, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !932, file: !865, line: 498, baseType: !341, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !932, file: !865, line: 499, baseType: !341, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !932, file: !865, line: 500, baseType: !341, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !932, file: !865, line: 501, baseType: !335, size: 32, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !932, file: !865, line: 502, baseType: !335, size: 32, offset: 224)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !932, file: !865, line: 503, baseType: !39, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !932, file: !865, line: 504, baseType: !39, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !932, file: !865, line: 505, baseType: !39, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !932, file: !865, line: 506, baseType: !943, size: 64, align: 64, offset: 448)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !865, line: 445, size: 64, align: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !943, file: !865, line: 446, baseType: !7, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !943, file: !865, line: 447, baseType: !7, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !864, file: !865, line: 798, baseType: !948, size: 384, offset: 3072)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !865, line: 592, size: 384, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !948, file: !865, line: 593, baseType: !97, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !948, file: !865, line: 594, baseType: !39, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !948, file: !865, line: 595, baseType: !39, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !948, file: !865, line: 596, baseType: !7, size: 32, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !948, file: !865, line: 597, baseType: !26, size: 16, offset: 288)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !948, file: !865, line: 598, baseType: !26, size: 16, offset: 304)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !948, file: !865, line: 600, baseType: !957, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !864, file: !865, line: 799, baseType: !959, size: 1792, offset: 3456)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !865, line: 610, size: 1792, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !1050, !1051}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !959, file: !865, line: 611, baseType: !905, size: 192, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !959, file: !865, line: 618, baseType: !341, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !959, file: !865, line: 619, baseType: !341, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !959, file: !865, line: 620, baseType: !341, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !959, file: !865, line: 621, baseType: !341, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !959, file: !865, line: 622, baseType: !341, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !959, file: !865, line: 629, baseType: !364, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !959, file: !865, line: 630, baseType: !341, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !865, line: 631, baseType: !7, size: 32, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !959, file: !865, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !959, file: !865, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !959, file: !865, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !959, file: !865, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !959, file: !865, line: 662, baseType: !975, size: 512, offset: 704)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !976)
!976 = !{!977, !985, !986, !991, !1046, !1047, !1048, !1049}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !6, line: 119, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !979, line: 9, size: 256, elements: !980)
!979 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !978, file: !979, line: 10, baseType: !905, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !978, file: !979, line: 11, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !984, line: 29, baseType: !364)
!984 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !975, file: !6, line: 120, baseType: !983, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !975, file: !6, line: 121, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!5, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !975, file: !6, line: 122, baseType: !992, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !994)
!994 = !{!995, !1020, !1021, !1024, !1029, !1030, !1041, !1045}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !993, file: !6, line: 160, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !6, line: 216, baseType: !775, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !997, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !997, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !997, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !997, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !997, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !997, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !997, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !997, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !997, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !997, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !997, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !997, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !997, file: !6, line: 235, baseType: !983, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !997, file: !6, line: 236, baseType: !990, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !997, file: !6, line: 237, baseType: !983, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !997, file: !6, line: 238, baseType: !990, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !997, file: !6, line: 239, baseType: !1017, size: 4096, align: 512, offset: 512)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 4096, align: 512, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 8)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !993, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !993, file: !6, line: 162, baseType: !1022, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !993, file: !6, line: 163, baseType: !1025, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !471, line: 274, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !471, line: 274, size: 32, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1026, file: !471, line: 274, baseType: !475, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !993, file: !6, line: 164, baseType: !990, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !993, file: !6, line: 165, baseType: !1031, size: 128, offset: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !979, line: 14, size: 128, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1031, file: !979, line: 15, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !906, line: 26, size: 128, elements: !1035)
!1035 = !{!1036, !1040}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1034, file: !906, line: 27, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !906, line: 12, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1037, file: !906, line: 13, baseType: !910, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1034, file: !906, line: 28, baseType: !910, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !993, file: !6, line: 166, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!983}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !993, file: !6, line: 167, baseType: !983, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !975, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !975, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !975, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !975, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !959, file: !865, line: 671, baseType: !975, size: 512, offset: 1216)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !959, file: !865, line: 679, baseType: !1052, size: 64, offset: 1728)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !864, file: !865, line: 800, baseType: !1054, size: 64, offset: 5248)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !865, line: 800, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !864, file: !865, line: 809, baseType: !1058, size: 64, offset: 5312)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !865, line: 70, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !864, file: !865, line: 825, baseType: !1061, size: 2048, align: 512, offset: 5632)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !865, line: 509, size: 2048, align: 512, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1061, file: !865, line: 511, baseType: !341, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1061, file: !865, line: 512, baseType: !341, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1061, file: !865, line: 513, baseType: !341, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1061, file: !865, line: 514, baseType: !341, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1061, file: !865, line: 515, baseType: !341, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1061, file: !865, line: 516, baseType: !341, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1061, file: !865, line: 518, baseType: !341, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1061, file: !865, line: 519, baseType: !341, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1061, file: !865, line: 520, baseType: !364, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1061, file: !865, line: 522, baseType: !341, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1061, file: !865, line: 523, baseType: !341, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1061, file: !865, line: 524, baseType: !364, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1061, file: !865, line: 526, baseType: !364, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1061, file: !865, line: 527, baseType: !341, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1061, file: !865, line: 529, baseType: !341, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1061, file: !865, line: 530, baseType: !341, size: 64, offset: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1061, file: !865, line: 531, baseType: !341, size: 64, offset: 1024)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1061, file: !865, line: 532, baseType: !341, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1061, file: !865, line: 533, baseType: !341, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1061, file: !865, line: 535, baseType: !341, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1061, file: !865, line: 536, baseType: !341, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1061, file: !865, line: 537, baseType: !341, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1061, file: !865, line: 538, baseType: !341, size: 64, offset: 1408)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1061, file: !865, line: 539, baseType: !341, size: 64, offset: 1472)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1061, file: !865, line: 540, baseType: !341, size: 64, offset: 1536)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1061, file: !865, line: 541, baseType: !341, size: 64, offset: 1600)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1061, file: !865, line: 542, baseType: !341, size: 64, offset: 1664)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1061, file: !865, line: 543, baseType: !341, size: 64, offset: 1728)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !864, file: !865, line: 833, baseType: !7, size: 32, offset: 7680)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !864, file: !865, line: 836, baseType: !7, size: 32, offset: 7712)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !864, file: !865, line: 837, baseType: !22, size: 32, offset: 7744)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !864, file: !865, line: 838, baseType: !1095, size: 64, offset: 7808)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1098, line: 19, baseType: !1099)
!1098 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1098, line: 19, size: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1099, file: !1098, line: 19, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 1)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !864, file: !865, line: 839, baseType: !1106, size: 64, offset: 7872)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !864, file: !865, line: 840, baseType: !1097, size: 64, offset: 7936)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !864, file: !865, line: 841, baseType: !20, size: 64, offset: 8000)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !864, file: !865, line: 843, baseType: !26, size: 16, offset: 8064)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !864, file: !865, line: 845, baseType: !26, size: 16, offset: 8080)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !864, file: !865, line: 848, baseType: !22, size: 32, offset: 8096)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !864, file: !865, line: 849, baseType: !1113, size: 32, offset: 8128)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !865, line: 718, size: 32, elements: !1114)
!1114 = !{!1115, !1122}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1113, file: !865, line: 724, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !865, line: 719, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1116, file: !865, line: 720, baseType: !83, size: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1116, file: !865, line: 721, baseType: !83, size: 8, offset: 8)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1116, file: !865, line: 722, baseType: !83, size: 8, offset: 16)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1116, file: !865, line: 723, baseType: !83, size: 8, offset: 24)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1113, file: !865, line: 725, baseType: !335, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !864, file: !865, line: 850, baseType: !97, size: 128, offset: 8192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !864, file: !865, line: 851, baseType: !1125, size: 64, offset: 8320)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !865, line: 60, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !864, file: !865, line: 855, baseType: !39, size: 64, offset: 8384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !864, file: !865, line: 856, baseType: !83, size: 8, offset: 8448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !864, file: !865, line: 857, baseType: !83, size: 8, offset: 8456)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !864, file: !865, line: 858, baseType: !22, size: 32, offset: 8480)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !864, file: !865, line: 859, baseType: !97, size: 128, offset: 8512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !864, file: !865, line: 860, baseType: !22, size: 32, offset: 8640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !864, file: !865, line: 861, baseType: !97, size: 128, offset: 8704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !864, file: !865, line: 873, baseType: !1135, size: 256, offset: 8832)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !865, line: 376, size: 256, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1135, file: !865, line: 381, baseType: !39, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1135, file: !865, line: 384, baseType: !343, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1135, file: !865, line: 389, baseType: !343, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1135, file: !865, line: 392, baseType: !343, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !864, file: !865, line: 875, baseType: !97, size: 128, offset: 9088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !864, file: !865, line: 877, baseType: !1143, size: 320, offset: 9216)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1144, line: 86, size: 320, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1143, file: !1144, line: 87, baseType: !22, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1143, file: !1144, line: 88, baseType: !97, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1143, file: !1144, line: 89, baseType: !97, size: 128, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !864, file: !865, line: 878, baseType: !905, size: 192, align: 64, offset: 9536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !864, file: !865, line: 881, baseType: !1151, size: 64, offset: 9728)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !1153)
!1153 = !{!1154, !1581}
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !131, line: 734, baseType: !1155, size: 10240)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !131, line: 734, size: 10240, elements: !1156)
!1156 = !{!1157, !1161, !1173, !1177, !1178, !1179, !1180, !1181, !1182, !1191, !1192, !1193, !1199, !1200, !1201, !1202, !1203, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1240, !1250, !1253, !1301, !1302, !1303, !1306, !1567, !1568, !1571, !1572, !1573, !1579, !1580}
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !131, line: 739, baseType: !1158, size: 512, align: 512)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !131, line: 739, size: 512, align: 512, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1158, file: !131, line: 747, baseType: !49, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1155, file: !131, line: 750, baseType: !1162, size: 128, offset: 512)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !393, line: 218, size: 128, elements: !1163)
!1163 = !{!1164, !1171, !1172}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !393, line: 219, baseType: !1165, size: 32)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !393, line: 219, size: 32, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1165, file: !393, line: 220, baseType: !59, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1165, file: !393, line: 221, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !393, line: 197, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 197, elements: !373)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1162, file: !393, line: 223, baseType: !7, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1162, file: !393, line: 224, baseType: !20, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1155, file: !131, line: 752, baseType: !1174, size: 64, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!39, !737, !39, !39, !39, !39}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1155, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1155, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1155, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1155, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1155, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1155, file: !131, line: 764, baseType: !1183, size: 64, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1185, line: 299, baseType: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 299, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1186, file: !1185, line: 299, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1190, line: 18, baseType: !39)
!1190 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1155, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1155, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1155, file: !131, line: 795, baseType: !1194, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1195, file: !131, line: 727, baseType: !341, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1195, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1155, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1155, file: !131, line: 804, baseType: !763, size: 64, offset: 1280)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1155, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1155, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1155, file: !131, line: 823, baseType: !1204, size: 320, offset: 1408)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1205, line: 48, size: 320, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1204, file: !1205, line: 49, baseType: !763, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1204, file: !1205, line: 55, baseType: !763, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1204, file: !1205, line: 57, baseType: !777, size: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1204, file: !1205, line: 59, baseType: !775, size: 32, offset: 160)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1204, file: !1205, line: 60, baseType: !97, size: 128, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1155, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1155, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1155, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1155, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1155, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1155, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1155, file: !131, line: 854, baseType: !765, size: 64, offset: 2176)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1155, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1155, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1155, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1155, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1155, file: !131, line: 865, baseType: !475, size: 32, offset: 2496)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1155, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1155, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1155, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1155, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1155, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1155, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1155, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1155, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1155, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1155, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1155, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1155, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1155, file: !131, line: 873, baseType: !1237, size: 3328, offset: 3264)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 52)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1155, file: !131, line: 875, baseType: !1241, size: 1280, offset: 6592)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 1280, elements: !831)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1243, line: 22, size: 320, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1242, file: !1243, line: 23, baseType: !775, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1242, file: !1243, line: 24, baseType: !364, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1242, file: !1243, line: 26, baseType: !97, size: 128, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1242, file: !1243, line: 28, baseType: !1249, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1155, file: !131, line: 877, baseType: !1251, size: 64, offset: 7872)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1155, file: !131, line: 880, baseType: !1254, size: 1088, offset: 7936)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1255, line: 72, baseType: !1256)
!1255 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1255, line: 23, size: 1088, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1265, !1266, !1267, !1268, !1295, !1296, !1297}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1256, file: !1255, line: 28, baseType: !341, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1256, file: !1255, line: 38, baseType: !765, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1256, file: !1255, line: 40, baseType: !39, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1256, file: !1255, line: 43, baseType: !1204, size: 320, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1256, file: !1255, line: 44, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1255, line: 44, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !1255, line: 48, baseType: !39, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1256, file: !1255, line: 59, baseType: !770, size: 256, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1256, file: !1255, line: 60, baseType: !20, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1256, file: !1255, line: 61, baseType: !1269, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1272, line: 13, size: 1216, elements: !1273)
!1272 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1271, file: !1272, line: 14, baseType: !20, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !1272, line: 15, baseType: !39, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1271, file: !1272, line: 17, baseType: !39, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1271, file: !1272, line: 17, baseType: !39, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1271, file: !1272, line: 18, baseType: !39, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1271, file: !1272, line: 18, baseType: !39, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1271, file: !1272, line: 19, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1271, file: !1272, line: 21, baseType: !402, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1271, file: !1272, line: 23, baseType: !402, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1271, file: !1272, line: 24, baseType: !402, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1271, file: !1272, line: 25, baseType: !402, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1271, file: !1272, line: 26, baseType: !402, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1271, file: !1272, line: 27, baseType: !402, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1271, file: !1272, line: 28, baseType: !402, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1271, file: !1272, line: 29, baseType: !402, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1271, file: !1272, line: 30, baseType: !402, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1271, file: !1272, line: 31, baseType: !402, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1271, file: !1272, line: 32, baseType: !402, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1271, file: !1272, line: 33, baseType: !402, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1256, file: !1255, line: 63, baseType: !49, size: 32, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1256, file: !1255, line: 69, baseType: !93, size: 16, offset: 1056)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1256, file: !1255, line: 70, baseType: !1298, size: 16, offset: 1072)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !1300)
!1300 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1155, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1155, file: !131, line: 886, baseType: !1304, size: 64, offset: 9152)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1155, file: !131, line: 901, baseType: !1307, size: 64, offset: 9216)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1309, line: 68, size: 4800, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1310 = !{!1311, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1350, !1351, !1354, !1355, !1465, !1466, !1478, !1548, !1549, !1563, !1565}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1308, file: !1309, line: 69, baseType: !1312, size: 576)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1309, line: 23, size: 576, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1312, file: !1309, line: 24, baseType: !335, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !1309, line: 25, baseType: !1316, size: 512, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !1309, line: 25, size: 512, elements: !1317)
!1317 = !{!1318, !1327}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1316, file: !1309, line: 26, baseType: !1319, size: 480)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 480, elements: !1325)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1309, line: 17, size: 96, elements: !1321)
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1320, file: !1309, line: 18, baseType: !335, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1320, file: !1309, line: 19, baseType: !335, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1320, file: !1309, line: 20, baseType: !335, size: 32, offset: 64)
!1325 = !{!1326}
!1326 = !DISubrange(count: 5)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1309, line: 27, baseType: !1328, size: 128)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1309, line: 27, size: 128, elements: !1329)
!1329 = !{!1330, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1328, file: !1309, line: 28, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1328, file: !1309, line: 29, baseType: !1331, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1308, file: !1309, line: 70, baseType: !1312, size: 576, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1308, file: !1309, line: 71, baseType: !1312, size: 576, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1308, file: !1309, line: 72, baseType: !1307, size: 64, offset: 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1308, file: !1309, line: 73, baseType: !22, size: 32, offset: 1792)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1308, file: !1309, line: 74, baseType: !435, size: 32, offset: 1824)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1308, file: !1309, line: 75, baseType: !444, size: 32, offset: 1856)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1308, file: !1309, line: 76, baseType: !1340, size: 192, offset: 1920)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1341, line: 9, size: 192, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1342 = !{!1343, !1344, !1348, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1340, file: !1341, line: 10, baseType: !763, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1340, file: !1341, line: 11, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1341, line: 7, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1340, file: !1341, line: 12, baseType: !7, size: 32, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1340, file: !1341, line: 13, baseType: !813, size: 32, offset: 160)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1309, line: 77, baseType: !39, size: 64, offset: 2112)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1308, file: !1309, line: 80, baseType: !1352, size: 8, offset: 2176)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !1353)
!1353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1308, file: !1309, line: 88, baseType: !97, size: 128, offset: 2240)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1308, file: !1309, line: 89, baseType: !1356, size: 64, offset: 2368)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1358, line: 195, size: 1728, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1359 = !{!1360, !1361, !1364, !1369, !1370, !1373, !1374, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1390, !1391, !1429, !1450}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 196, baseType: !813, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1357, file: !1358, line: 197, baseType: !1362, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1358, line: 28, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !338)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 198, baseType: !1365, size: 192, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 198, size: 192, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1365, file: !1358, line: 199, baseType: !97, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1365, file: !1358, line: 200, baseType: !905, size: 192, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1357, file: !1358, line: 205, baseType: !1204, size: 320, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 206, baseType: !1371, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1358, line: 206, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 207, baseType: !20, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 208, baseType: !1375, size: 64, offset: 704)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 208, size: 64, elements: !1376)
!1376 = !{!1377, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1375, file: !1358, line: 209, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1379, line: 8, baseType: !365)
!1379 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1375, file: !1358, line: 210, baseType: !1378, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1357, file: !1358, line: 212, baseType: !1378, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 213, baseType: !435, size: 32, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 214, baseType: !444, size: 32, offset: 864)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1357, file: !1358, line: 215, baseType: !1385, size: 32, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1358, line: 31, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !335)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1357, file: !1358, line: 216, baseType: !26, size: 16, offset: 928)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1357, file: !1358, line: 217, baseType: !26, size: 16, offset: 944)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1357, file: !1358, line: 221, baseType: !1300, size: 16, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 228, baseType: !39, size: 64, offset: 1024)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 245, baseType: !1392, size: 320, offset: 1088)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 245, size: 320, elements: !1393)
!1393 = !{!1394, !1421}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1392, file: !1358, line: 246, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1358, line: 114, size: 320, elements: !1396)
!1396 = !{!1397, !1398, !1410, !1413, !1420}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1395, file: !1358, line: 116, baseType: !39, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !1358, line: 117, baseType: !1399, size: 64, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !1358, line: 117, size: 64, elements: !1400)
!1400 = !{!1401, !1409}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1358, line: 118, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !1358, line: 118, size: 64, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1402, file: !1358, line: 120, baseType: !93, size: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1402, file: !1358, line: 121, baseType: !1406, size: 48, offset: 16)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 6)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1399, file: !1358, line: 127, baseType: !39, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !1358, line: 129, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1358, line: 102, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1395, file: !1358, line: 130, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1358, line: 108, size: 192, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1415, file: !1358, line: 109, baseType: !750, size: 128, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1415, file: !1358, line: 110, baseType: !813, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1415, file: !1358, line: 111, baseType: !1352, size: 8, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1395, file: !1358, line: 131, baseType: !16, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1358, line: 247, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1358, line: 247, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1358, line: 248, baseType: !39, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1422, file: !1358, line: 249, baseType: !39, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !1358, line: 250, baseType: !1411, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1422, file: !1358, line: 251, baseType: !1414, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1422, file: !1358, line: 252, baseType: !565, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 260, baseType: !1430, size: 256, offset: 1408)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 260, size: 256, elements: !1431)
!1431 = !{!1432, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1430, file: !1358, line: 261, baseType: !1433, size: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1358, line: 134, size: 256, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1433, file: !1358, line: 135, baseType: !20, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1433, file: !1358, line: 136, baseType: !1437, size: 256)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !831)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1358, line: 262, baseType: !1439, size: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !1358, line: 262, size: 256, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1439, file: !1358, line: 264, baseType: !97, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1439, file: !1358, line: 265, baseType: !1443, size: 128, offset: 128)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1444, line: 22, size: 128, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1445 = !{!1446, !1449}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1443, file: !1444, line: 23, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1444, line: 23, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1443, file: !1444, line: 24, baseType: !39, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1357, file: !1358, line: 280, baseType: !1451, size: 64, offset: 1664)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1358, line: 176, size: 192, elements: !1453)
!1453 = !{!1454, !1463, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1452, file: !1358, line: 177, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1358, line: 171, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!22, !1356, !1459, !1461, !1356}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1452, file: !1358, line: 178, baseType: !1356, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1452, file: !1358, line: 179, baseType: !1411, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1308, file: !1309, line: 90, baseType: !1204, size: 320, offset: 2432)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1308, file: !1309, line: 97, baseType: !1467, size: 256, offset: 2752)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1468, line: 98, size: 256, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1467, file: !1468, line: 99, baseType: !763, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1467, file: !1468, line: 100, baseType: !97, size: 128, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1467, file: !1468, line: 101, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1468, line: 21, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1308, file: !1309, line: 99, baseType: !1479, size: 768, offset: 3008)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !1480)
!1480 = !{!1481, !1486}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1479, file: !12, line: 200, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!22, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1479, file: !12, line: 201, baseType: !1487, size: 704, offset: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !1488)
!1488 = !{!1489, !1547}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1487, file: !12, line: 195, baseType: !1490, size: 640)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !1491)
!1491 = !{!1492, !1504, !1516, !1517, !1537, !1538, !1540, !1546}
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !12, line: 174, baseType: !1493, size: 192)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !12, line: 174, size: 192, elements: !1494)
!1494 = !{!1495, !1503}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !12, line: 175, baseType: !1496, size: 192)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !12, line: 175, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1496, file: !12, line: 176, baseType: !33, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1496, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1496, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1496, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1496, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1493, file: !12, line: 182, baseType: !750, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1490, file: !12, line: 184, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1507, line: 26, size: 256, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1506, file: !1507, line: 27, baseType: !7, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1506, file: !1507, line: 28, baseType: !1511, size: 192, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1512, line: 43, size: 192, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1511, file: !1512, line: 44, baseType: !775, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1511, file: !1512, line: 45, baseType: !97, size: 128, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1490, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1490, file: !12, line: 186, baseType: !1518, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1520)
!1520 = !{!1521, !1522, !1526, !1533}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1519, file: !12, line: 205, baseType: !1479, size: 768)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1519, file: !12, line: 206, baseType: !1523, size: 64, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1485, !1518}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1519, file: !12, line: 207, baseType: !1527, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1519, file: !12, line: 209, baseType: !1534, size: 64, offset: 896)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!22, !1530, !33}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1490, file: !12, line: 187, baseType: !1485, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1490, file: !12, line: 188, baseType: !1539, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1490, file: !12, line: 189, baseType: !1541, size: 64, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1542, file: !12, line: 158, baseType: !905, size: 192, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1542, file: !12, line: 159, baseType: !1530, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1490, file: !12, line: 190, baseType: !822, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1487, file: !12, line: 196, baseType: !1037, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1308, file: !1309, line: 100, baseType: !1530, size: 64, offset: 3776)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1308, file: !1309, line: 102, baseType: !1550, size: 64, offset: 3840)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1309, line: 107, size: 1152, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1551, file: !1309, line: 108, baseType: !826, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1551, file: !1309, line: 109, baseType: !1307, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1309, line: 110, baseType: !435, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1551, file: !1309, line: 111, baseType: !49, size: 32, offset: 224)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1551, file: !1309, line: 112, baseType: !1558, size: 640, offset: 256)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 640, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 10)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1551, file: !1309, line: 113, baseType: !1562, size: 256, offset: 896)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 256, elements: !831)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1308, file: !1309, line: 103, baseType: !1564, size: 640, offset: 3904)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 640, elements: !1559)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1308, file: !1309, line: 104, baseType: !1566, size: 256, offset: 4544)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !831)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1155, file: !131, line: 904, baseType: !737, size: 64, offset: 9280)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1155, file: !131, line: 906, baseType: !1569, size: 64, offset: 9344)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1155, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1155, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1155, file: !131, line: 935, baseType: !1574, size: 64, offset: 9472)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !253, line: 103, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1574, file: !253, line: 104, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !253, line: 101, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1155, file: !131, line: 940, baseType: !763, size: 64, offset: 9536)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1155, file: !131, line: 942, baseType: !1467, size: 256, offset: 9600)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1152, file: !131, line: 986, baseType: !1582, offset: 10240)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: -1)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !864, file: !865, line: 882, baseType: !1151, size: 64, offset: 9792)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !864, file: !865, line: 884, baseType: !22, size: 32, offset: 9856)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !864, file: !865, line: 885, baseType: !22, size: 32, offset: 9888)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !864, file: !865, line: 886, baseType: !22, size: 32, offset: 9920)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !864, file: !865, line: 888, baseType: !22, size: 32, offset: 9952)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !864, file: !865, line: 890, baseType: !39, size: 64, offset: 9984)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !864, file: !865, line: 893, baseType: !7, size: 32, offset: 10048)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !864, file: !865, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !864, file: !865, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !864, file: !865, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !864, file: !865, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !864, file: !865, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !864, file: !865, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !864, file: !865, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !864, file: !865, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !864, file: !865, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !864, file: !865, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !864, file: !865, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !864, file: !865, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !864, file: !865, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !864, file: !865, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !864, file: !865, line: 969, baseType: !39, size: 64, offset: 10176)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !864, file: !865, line: 971, baseType: !1608, size: 448, offset: 10240)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !247, line: 25, size: 448, elements: !1609)
!1609 = !{!1610, !1611, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1608, file: !247, line: 26, baseType: !39, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1608, file: !247, line: 27, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!402, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !247, line: 28, baseType: !1617, size: 320, offset: 128)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !247, line: 28, size: 320, elements: !1618)
!1618 = !{!1619, !1629, !1654}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1617, file: !247, line: 37, baseType: !1620, size: 320)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !247, line: 30, size: 320, elements: !1621)
!1621 = !{!1622, !1624, !1625, !1626, !1627, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1620, file: !247, line: 31, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1620, file: !247, line: 32, baseType: !335, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !247, line: 33, baseType: !335, size: 32, offset: 96)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1620, file: !247, line: 34, baseType: !335, size: 32, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1620, file: !247, line: 35, baseType: !341, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1620, file: !247, line: 36, baseType: !1623, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1617, file: !247, line: 47, baseType: !1630, size: 192)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !247, line: 39, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1653}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1630, file: !247, line: 40, baseType: !1022, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1630, file: !247, line: 41, baseType: !246, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !247, line: 42, baseType: !1635, size: 64, offset: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !247, line: 42, size: 64, elements: !1636)
!1636 = !{!1637, !1645}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1635, file: !247, line: 43, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1640, line: 7, size: 128, elements: !1641)
!1640 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1641 = !{!1642, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1639, file: !1640, line: 8, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1639, file: !1640, line: 9, baseType: !43, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1635, file: !247, line: 44, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1648, line: 7, size: 64, elements: !1649)
!1648 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1649 = !{!1650, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1647, file: !1648, line: 8, baseType: !1651, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1648, line: 5, baseType: !338)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1647, file: !1648, line: 9, baseType: !338, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1630, file: !247, line: 46, baseType: !341, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1617, file: !247, line: 55, baseType: !1655, size: 256)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !247, line: 49, size: 256, elements: !1656)
!1656 = !{!1657, !1660, !1661, !1662, !1663}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1655, file: !247, line: 50, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !247, line: 14, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1655, file: !247, line: 51, baseType: !22, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1655, file: !247, line: 52, baseType: !22, size: 32, offset: 96)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1655, file: !247, line: 53, baseType: !39, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1655, file: !247, line: 54, baseType: !39, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !864, file: !865, line: 973, baseType: !1665, size: 32, offset: 10688)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !864, file: !865, line: 974, baseType: !1665, size: 32, offset: 10720)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !864, file: !865, line: 978, baseType: !39, size: 64, offset: 10752)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !864, file: !865, line: 987, baseType: !863, size: 64, offset: 10816)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !864, file: !865, line: 990, baseType: !863, size: 64, offset: 10880)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !864, file: !865, line: 995, baseType: !97, size: 128, offset: 10944)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !864, file: !865, line: 996, baseType: !97, size: 128, offset: 11072)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !864, file: !865, line: 997, baseType: !863, size: 64, offset: 11200)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !864, file: !865, line: 1005, baseType: !97, size: 128, offset: 11264)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !864, file: !865, line: 1006, baseType: !97, size: 128, offset: 11392)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !864, file: !865, line: 1009, baseType: !809, size: 64, offset: 11520)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !864, file: !865, line: 1010, baseType: !1678, size: 512, offset: 11584)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 512, elements: !831)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !864, file: !865, line: 1011, baseType: !97, size: 128, offset: 12096)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !864, file: !865, line: 1012, baseType: !97, size: 128, offset: 12224)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !864, file: !865, line: 1014, baseType: !1505, size: 64, offset: 12352)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !864, file: !865, line: 1017, baseType: !1683, size: 64, offset: 12416)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !864, file: !865, line: 1020, baseType: !1683, size: 64, offset: 12480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !864, file: !865, line: 1023, baseType: !20, size: 64, offset: 12544)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !864, file: !865, line: 1025, baseType: !341, size: 64, offset: 12608)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !864, file: !865, line: 1026, baseType: !341, size: 64, offset: 12672)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !864, file: !865, line: 1031, baseType: !341, size: 64, offset: 12736)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !864, file: !865, line: 1032, baseType: !1690, size: 192, offset: 12800)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !865, line: 324, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1690, file: !865, line: 326, baseType: !341, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1690, file: !865, line: 327, baseType: !341, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1690, file: !865, line: 328, baseType: !775, size: 32, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !864, file: !865, line: 1041, baseType: !39, size: 64, offset: 12992)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !864, file: !865, line: 1042, baseType: !39, size: 64, offset: 13056)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !864, file: !865, line: 1045, baseType: !341, size: 64, offset: 13120)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !864, file: !865, line: 1048, baseType: !341, size: 64, offset: 13184)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !864, file: !865, line: 1051, baseType: !39, size: 64, offset: 13248)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !864, file: !865, line: 1052, baseType: !39, size: 64, offset: 13312)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !864, file: !865, line: 1055, baseType: !1702, size: 640, offset: 13376)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1703, line: 132, size: 640, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1704 = !{!1705, !1711, !1712}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1702, file: !1703, line: 133, baseType: !1706, size: 576)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, size: 576, elements: !665)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1703, line: 117, size: 192, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1707, file: !1703, line: 118, baseType: !341, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1707, file: !1703, line: 119, baseType: !1031, size: 128, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1702, file: !1703, line: 134, baseType: !7, size: 32, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1702, file: !1703, line: 135, baseType: !7, size: 32, offset: 608)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !864, file: !865, line: 1058, baseType: !1714, size: 448, offset: 14016)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1703, line: 144, size: 448, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1714, file: !1703, line: 145, baseType: !750, size: 128, align: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1714, file: !1703, line: 146, baseType: !770, size: 256, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1714, file: !1703, line: 147, baseType: !7, size: 32, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !864, file: !865, line: 1064, baseType: !1720, size: 64, offset: 14464)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1723, line: 110, size: 1472, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1774, !1775, !1776, !1784}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1722, file: !1723, line: 111, baseType: !763, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1722, file: !1723, line: 112, baseType: !435, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1722, file: !1723, line: 113, baseType: !444, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1722, file: !1723, line: 114, baseType: !435, size: 32, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1722, file: !1723, line: 115, baseType: !444, size: 32, offset: 160)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1722, file: !1723, line: 116, baseType: !435, size: 32, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1722, file: !1723, line: 117, baseType: !444, size: 32, offset: 224)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1722, file: !1723, line: 118, baseType: !435, size: 32, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1722, file: !1723, line: 119, baseType: !444, size: 32, offset: 288)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1722, file: !1723, line: 120, baseType: !7, size: 32, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1722, file: !1723, line: 121, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1737, line: 24, baseType: !1738)
!1737 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1737, line: 24, size: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1738, file: !1737, line: 24, baseType: !341, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1722, file: !1723, line: 122, baseType: !1736, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1722, file: !1723, line: 123, baseType: !1736, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1722, file: !1723, line: 124, baseType: !1736, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1722, file: !1723, line: 125, baseType: !1736, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1722, file: !1723, line: 127, baseType: !87, size: 8, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1722, file: !1723, line: 129, baseType: !1356, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1722, file: !1723, line: 130, baseType: !1356, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1722, file: !1723, line: 131, baseType: !1356, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1722, file: !1723, line: 132, baseType: !1356, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1722, file: !1723, line: 135, baseType: !20, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1722, file: !1723, line: 137, baseType: !1752, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1754, line: 14, size: 1088, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1753, file: !1754, line: 15, baseType: !813, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1753, file: !1754, line: 17, baseType: !1242, size: 320, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1753, file: !1754, line: 19, baseType: !39, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1753, file: !1754, line: 20, baseType: !763, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1753, file: !1754, line: 23, baseType: !826, size: 128, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1753, file: !1754, line: 24, baseType: !435, size: 32, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1753, file: !1754, line: 29, baseType: !763, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1753, file: !1754, line: 36, baseType: !1764, size: 320, offset: 768)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1765, line: 15, size: 320, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1764, file: !1765, line: 16, baseType: !775, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1764, file: !1765, line: 18, baseType: !22, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1764, file: !1765, line: 19, baseType: !22, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1764, file: !1765, line: 20, baseType: !22, size: 32, offset: 96)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1764, file: !1765, line: 21, baseType: !22, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1764, file: !1765, line: 22, baseType: !39, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1764, file: !1765, line: 23, baseType: !39, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1722, file: !1723, line: 138, baseType: !1307, size: 64, offset: 1152)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1722, file: !1723, line: 139, baseType: !1550, size: 64, offset: 1216)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1722, file: !1723, line: 140, baseType: !1777, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1723, line: 25, size: 64, elements: !1779)
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1778, file: !1723, line: 26, baseType: !49, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1778, file: !1723, line: 27, baseType: !22, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1778, file: !1723, line: 28, baseType: !1783, offset: 64)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, elements: !1583)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !1723, line: 142, baseType: !1785, size: 128, offset: 1344)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !1723, line: 142, size: 128, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1785, file: !1723, line: 143, baseType: !22, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1785, file: !1723, line: 144, baseType: !750, size: 128, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !864, file: !865, line: 1067, baseType: !1720, size: 64, offset: 14528)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !864, file: !865, line: 1070, baseType: !1720, size: 64, offset: 14592)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !864, file: !865, line: 1074, baseType: !1356, size: 64, offset: 14656)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !864, file: !865, line: 1084, baseType: !1793, size: 128, offset: 14720)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 16)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !864, file: !865, line: 1086, baseType: !1797, size: 64, offset: 14848)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !865, line: 55, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !864, file: !865, line: 1089, baseType: !1800, size: 64, offset: 14912)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1801, line: 12, size: 64, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1802 = !{!1803}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1800, file: !1801, line: 13, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1801, line: 8, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !864, file: !865, line: 1090, baseType: !1807, size: 128, offset: 14976)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1808, line: 13, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1807, file: !1808, line: 14, baseType: !97, size: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !864, file: !865, line: 1097, baseType: !1812, size: 64, offset: 15104)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !865, line: 50, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !864, file: !865, line: 1100, baseType: !1815, size: 64, offset: 15168)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !865, line: 1100, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !864, file: !865, line: 1103, baseType: !1818, size: 64, offset: 15232)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !865, line: 53, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !864, file: !865, line: 1107, baseType: !1821, size: 64, offset: 15296)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1823, line: 31, size: 576, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1824 = !{!1825, !1826, !1829, !1832, !1835, !1836, !1839, !1858, !1859}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1822, file: !1823, line: 32, baseType: !813, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1822, file: !1823, line: 33, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1823, line: 9, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1822, file: !1823, line: 34, baseType: !1830, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1823, line: 10, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1822, file: !1823, line: 35, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1823, line: 8, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1822, file: !1823, line: 36, baseType: !842, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1822, file: !1823, line: 37, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1358, line: 34, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1822, file: !1823, line: 38, baseType: !1840, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1842, line: 19, size: 704, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/time_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e4f4316dfa2293dcdad2ed9ce6a78cf")
!1843 = !{!1844, !1845, !1846, !1847, !1856, !1857}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1841, file: !1842, line: 20, baseType: !1307, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1841, file: !1842, line: 21, baseType: !1550, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1841, file: !1842, line: 22, baseType: !1340, size: 192, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !1841, file: !1842, line: 23, baseType: !1848, size: 256, offset: 320)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offsets", file: !1842, line: 14, size: 256, elements: !1849)
!1849 = !{!1850, !1855}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !1848, file: !1842, line: 15, baseType: !1851, size: 128)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1379, line: 13, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1851, file: !1379, line: 14, baseType: !1378, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1851, file: !1379, line: 15, baseType: !402, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !1848, file: !1842, line: 16, baseType: !1851, size: 128, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vvar_page", scope: !1841, file: !1842, line: 24, baseType: !403, size: 64, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "frozen_offsets", scope: !1841, file: !1842, line: 26, baseType: !1352, size: 8, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1822, file: !1823, line: 39, baseType: !1840, size: 64, offset: 448)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1822, file: !1823, line: 40, baseType: !1860, size: 64, offset: 512)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1862, line: 771, size: 384, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1861, file: !1862, line: 772, baseType: !1340, size: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1861, file: !1862, line: 773, baseType: !1307, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1861, file: !1862, line: 774, baseType: !1550, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1861, file: !1862, line: 775, baseType: !1868, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1870, line: 209, size: 4736, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1871 = !{!1872, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1869, file: !1870, line: 215, baseType: !1873, size: 896)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, size: 896, elements: !2233)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1870, line: 152, size: 1600, elements: !1876)
!1876 = !{!1877, !2284, !2390, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2427}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1875, file: !1870, line: 154, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1870, line: 389, size: 7872, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !2184, !2201, !2202, !2206, !2207, !2208, !2209, !2210, !2211, !2230, !2231, !2235, !2236, !2237, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271, !2274, !2275, !2282}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1879, file: !1870, line: 391, baseType: !1875, size: 1600)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1879, file: !1870, line: 393, baseType: !39, size: 64, offset: 1600)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1879, file: !1870, line: 401, baseType: !22, size: 32, offset: 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1879, file: !1870, line: 404, baseType: !22, size: 32, offset: 1696)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1879, file: !1870, line: 417, baseType: !22, size: 32, offset: 1728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1879, file: !1870, line: 418, baseType: !22, size: 32, offset: 1760)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1879, file: !1870, line: 419, baseType: !22, size: 32, offset: 1792)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1879, file: !1870, line: 432, baseType: !22, size: 32, offset: 1824)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1879, file: !1870, line: 433, baseType: !22, size: 32, offset: 1856)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1879, file: !1870, line: 434, baseType: !22, size: 32, offset: 1888)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1879, file: !1870, line: 436, baseType: !22, size: 32, offset: 1920)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1879, file: !1870, line: 439, baseType: !7, size: 32, offset: 1952)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1879, file: !1870, line: 441, baseType: !1894, size: 64, offset: 1984)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1896, line: 190, size: 1152, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !2176, !2177, !2178, !2179, !2180, !2183}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !1896, line: 191, baseType: !49, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1895, file: !1896, line: 192, baseType: !49, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1895, file: !1896, line: 202, baseType: !1894, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 203, baseType: !16, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1895, file: !1896, line: 205, baseType: !905, size: 192, align: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1895, file: !1896, line: 207, baseType: !1281, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1895, file: !1896, line: 208, baseType: !7, size: 32, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1896, line: 209, baseType: !1906, size: 256, offset: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1896, line: 209, size: 256, elements: !1907)
!1907 = !{!1908, !1917, !1921}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1906, file: !1896, line: 210, baseType: !1909, size: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1896, line: 153, size: 256, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1916}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1909, file: !1896, line: 154, baseType: !39, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1909, file: !1896, line: 156, baseType: !1037, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1909, file: !1896, line: 162, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1896, line: 162, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1909, file: !1896, line: 167, baseType: !39, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1906, file: !1896, line: 211, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1896, line: 170, size: 64, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1918, file: !1896, line: 171, baseType: !1894, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1906, file: !1896, line: 212, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1896, line: 174, size: 256, elements: !1923)
!1923 = !{!1924, !2171, !2174, !2175}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1922, file: !1896, line: 175, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1896, line: 271, size: 768, elements: !1928)
!1928 = !{!1929, !2144, !2148, !2149, !2150, !2151, !2152, !2156, !2157, !2158, !2159, !2167}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1927, file: !1896, line: 276, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!22, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1896, line: 251, size: 1216, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1934, file: !1896, line: 253, baseType: !1894, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1934, file: !1896, line: 254, baseType: !737, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1934, file: !1896, line: 255, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1941, line: 17, size: 960, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1972, !1973, !1976}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1940, file: !1941, line: 18, baseType: !565, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1940, file: !1941, line: 19, baseType: !35, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1940, file: !1941, line: 20, baseType: !35, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1940, file: !1941, line: 21, baseType: !35, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1940, file: !1941, line: 22, baseType: !35, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1940, file: !1941, line: 23, baseType: !41, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1940, file: !1941, line: 24, baseType: !41, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1940, file: !1941, line: 25, baseType: !770, size: 256, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1940, file: !1941, line: 26, baseType: !1952, size: 64, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1941, line: 32, size: 256, elements: !1955)
!1955 = !{!1956, !1960, !1964, !1968}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1954, file: !1941, line: 33, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!20, !1939, !40}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1954, file: !1941, line: 34, baseType: !1961, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1939, !20}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1954, file: !1941, line: 35, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!20, !1939, !20, !40}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1954, file: !1941, line: 36, baseType: !1969, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!22, !1939, !20}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1940, file: !1941, line: 27, baseType: !22, size: 32, offset: 768)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1940, file: !1941, line: 28, baseType: !1974, size: 64, offset: 832)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1940, file: !1941, line: 29, baseType: !20, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1934, file: !1896, line: 256, baseType: !20, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1934, file: !1896, line: 259, baseType: !770, size: 256, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1934, file: !1896, line: 260, baseType: !770, size: 256, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1934, file: !1896, line: 261, baseType: !22, size: 32, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1934, file: !1896, line: 262, baseType: !97, size: 128, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1934, file: !1896, line: 263, baseType: !565, size: 64, offset: 960)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1934, file: !1896, line: 265, baseType: !35, size: 64, offset: 1024)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1934, file: !1896, line: 266, baseType: !1352, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1934, file: !1896, line: 267, baseType: !1352, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1934, file: !1896, line: 268, baseType: !1987, size: 64, offset: 1152)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1990, line: 563, size: 1024, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1991 = !{!1992, !2048, !2049, !2053, !2057, !2061, !2110, !2114, !2118, !2122, !2123, !2124, !2128, !2132, !2136, !2140}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1989, file: !1990, line: 564, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1998)
!1998 = !{!1999, !2008, !2009, !2015, !2022, !2023, !2028, !2029, !2034, !2035, !2038, !2039, !2040, !2041, !2042, !2043, !2046}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !131, line: 628, baseType: !2000, size: 128)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !131, line: 628, size: 128, elements: !2001)
!2001 = !{!2002, !2007}
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !131, line: 629, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !131, line: 629, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2003, file: !131, line: 631, baseType: !39, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2003, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2000, file: !131, line: 635, baseType: !750, size: 128, align: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1997, file: !131, line: 639, baseType: !1151, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1997, file: !131, line: 640, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1185, line: 297, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1185, line: 297, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2011, file: !1185, line: 297, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1190, line: 19, baseType: !39)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !131, line: 646, baseType: !2016, size: 64, offset: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !131, line: 646, size: 64, elements: !2017)
!2017 = !{!2018, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2016, file: !131, line: 647, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2016, file: !131, line: 648, baseType: !2020, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1997, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1997, file: !131, line: 667, baseType: !2024, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !131, line: 580, baseType: !1204, size: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1997, file: !131, line: 670, baseType: !1352, size: 8, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1997, file: !131, line: 681, baseType: !2030, size: 256, offset: 512)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !131, line: 678, size: 256, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2030, file: !131, line: 679, baseType: !905, size: 192, align: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2030, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1997, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1997, file: !131, line: 691, baseType: !2036, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1997, file: !131, line: 694, baseType: !1987, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1997, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1997, file: !131, line: 699, baseType: !737, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1997, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1997, file: !131, line: 711, baseType: !763, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1997, file: !131, line: 717, baseType: !2044, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !131, line: 717, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1997, file: !131, line: 722, baseType: !2047, offset: 1344)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !373)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1989, file: !1990, line: 569, baseType: !1993, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1989, file: !1990, line: 571, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!22, !1996, !39}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1989, file: !1990, line: 572, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!22, !1996}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1989, file: !1990, line: 578, baseType: !2058, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!22, !1996, !39, !39, !39}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1989, file: !1990, line: 580, baseType: !2062, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1990, line: 512, size: 896, elements: !2068)
!2068 = !{!2069, !2077, !2078, !2085, !2092, !2102, !2103, !2104, !2106, !2108}
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !1990, line: 513, baseType: !2070, size: 320)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !1990, line: 513, size: 320, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2070, file: !1990, line: 514, baseType: !1996, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2070, file: !1990, line: 515, baseType: !856, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2070, file: !1990, line: 516, baseType: !39, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2070, file: !1990, line: 517, baseType: !39, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2070, file: !1990, line: 518, baseType: !39, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !1990, line: 520, baseType: !130, size: 32, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2067, file: !1990, line: 522, baseType: !2079, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1190, line: 22, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 22, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2081, file: !1190, line: 22, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1190, line: 15, baseType: !39)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2067, file: !1990, line: 524, baseType: !2086, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1185, line: 372, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 372, size: 64, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2088, file: !1185, line: 372, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1190, line: 16, baseType: !39)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !1990, line: 527, baseType: !2093, size: 64, offset: 512)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !1990, line: 527, size: 64, elements: !2094)
!2094 = !{!2095, !2101}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2093, file: !1990, line: 528, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1190, line: 21, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 21, size: 64, elements: !2098)
!2098 = !{!2099}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2097, file: !1190, line: 21, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1190, line: 14, baseType: !39)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2093, file: !1990, line: 529, baseType: !2080, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2067, file: !1990, line: 534, baseType: !403, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2067, file: !1990, line: 535, baseType: !403, size: 64, offset: 640)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2067, file: !1990, line: 541, baseType: !2105, size: 64, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2067, file: !1990, line: 545, baseType: !2107, size: 64, offset: 768)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2067, file: !1990, line: 549, baseType: !2109, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1185, line: 520, baseType: !403)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1989, file: !1990, line: 581, baseType: !2111, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2065, !2066, !7}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1989, file: !1990, line: 582, baseType: !2115, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2065, !2066, !39, !39}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1989, file: !1990, line: 584, baseType: !2119, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!39, !1996}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1989, file: !1990, line: 588, baseType: !2062, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1989, file: !1990, line: 591, baseType: !2062, size: 64, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1989, file: !1990, line: 597, baseType: !2125, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!22, !1996, !39, !20, !22, !22}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1989, file: !1990, line: 603, baseType: !2129, size: 64, offset: 768)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!16, !1996}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1989, file: !1990, line: 613, baseType: !2133, size: 64, offset: 832)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!22, !1996, !2044}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1989, file: !1990, line: 625, baseType: !2137, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!2044, !1996, !39}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1989, file: !1990, line: 633, baseType: !2141, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!403, !1996, !39}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1927, file: !1896, line: 277, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !1933}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1927, file: !1896, line: 290, baseType: !1969, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1927, file: !1896, line: 292, baseType: !1957, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1927, file: !1896, line: 293, baseType: !1965, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1927, file: !1896, line: 294, baseType: !1961, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1927, file: !1896, line: 296, baseType: !2153, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!696, !1933, !565, !35, !41}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1927, file: !1896, line: 306, baseType: !35, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1927, file: !1896, line: 313, baseType: !1352, size: 8, offset: 512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1927, file: !1896, line: 314, baseType: !2153, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1927, file: !1896, line: 317, baseType: !2160, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2163, !1933, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2164, line: 59, baseType: !7)
!2164 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !224, line: 61, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1927, file: !1896, line: 320, baseType: !2168, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!22, !1933, !1996}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1922, file: !1896, line: 176, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1896, line: 35, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1922, file: !1896, line: 177, baseType: !41, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1922, file: !1896, line: 178, baseType: !1894, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1895, file: !1896, line: 215, baseType: !20, size: 64, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !1896, line: 221, baseType: !341, size: 64, offset: 832)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1896, line: 223, baseType: !26, size: 16, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1895, file: !1896, line: 224, baseType: !24, size: 16, offset: 912)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1895, file: !1896, line: 225, baseType: !2181, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1896, line: 36, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1895, file: !1896, line: 227, baseType: !750, size: 128, align: 64, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1879, file: !1870, line: 442, baseType: !2185, size: 448, offset: 2048)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1870, line: 138, size: 448, elements: !2186)
!2186 = !{!2187, !2188, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2185, file: !1870, line: 140, baseType: !1894, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2185, file: !1870, line: 141, baseType: !39, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2185, file: !1870, line: 142, baseType: !2190, size: 320, offset: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2191, line: 11, size: 320, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2192 = !{!2193, !2194, !2195, !2200}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2190, file: !2191, line: 16, baseType: !826, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2190, file: !2191, line: 17, baseType: !39, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2190, file: !2191, line: 18, baseType: !2196, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 19, baseType: !335, size: 32, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1879, file: !1870, line: 443, baseType: !2185, size: 448, offset: 2496)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1879, file: !1870, line: 446, baseType: !2203, offset: 2944)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2185, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 0)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1879, file: !1870, line: 455, baseType: !93, size: 16, offset: 2944)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1879, file: !1870, line: 456, baseType: !93, size: 16, offset: 2960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1879, file: !1870, line: 457, baseType: !93, size: 16, offset: 2976)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1879, file: !1870, line: 458, baseType: !93, size: 16, offset: 2992)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1879, file: !1870, line: 461, baseType: !1873, size: 896, offset: 3008)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1879, file: !1870, line: 463, baseType: !2212, size: 64, offset: 3904)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1870, line: 537, size: 41664, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2228}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2213, file: !1870, line: 538, baseType: !1914, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2213, file: !1870, line: 541, baseType: !7, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2213, file: !1870, line: 544, baseType: !22, size: 32, offset: 96)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2213, file: !1870, line: 547, baseType: !97, size: 128, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2213, file: !1870, line: 548, baseType: !750, size: 128, align: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2213, file: !1870, line: 555, baseType: !1879, size: 7872, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2213, file: !1870, line: 558, baseType: !1878, size: 64, offset: 8256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2213, file: !1870, line: 561, baseType: !49, size: 32, offset: 8320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !1870, line: 564, baseType: !7, size: 32, offset: 8352)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2213, file: !1870, line: 567, baseType: !2225, size: 32768, offset: 8384)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 4096)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2213, file: !1870, line: 570, baseType: !2229, size: 512, offset: 41152)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !669)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1879, file: !1870, line: 469, baseType: !97, size: 128, offset: 3968)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1879, file: !1870, line: 478, baseType: !2232, size: 1792, offset: 4096)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 14)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1879, file: !1870, line: 487, baseType: !1878, size: 64, offset: 5888)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1879, file: !1870, line: 488, baseType: !1878, size: 64, offset: 5952)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1879, file: !1870, line: 491, baseType: !2238, size: 64, offset: 6016)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1870, line: 327, size: 896, elements: !2240)
!2240 = !{!2241, !2244, !2254, !2255, !2256, !2257, !2258}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2239, file: !1870, line: 332, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2243, line: 64, elements: !373)
!2243 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2239, file: !1870, line: 333, baseType: !2245, size: 192)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1870, line: 299, size: 192, elements: !2246)
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2245, file: !1870, line: 300, baseType: !2248, size: 192)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2249, line: 17, size: 192, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2250 = !{!2251, !2252, !2253}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2248, file: !2249, line: 18, baseType: !341, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2248, file: !2249, line: 19, baseType: !341, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2248, file: !2249, line: 20, baseType: !343, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2239, file: !1870, line: 339, baseType: !2245, size: 192, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2239, file: !1870, line: 347, baseType: !2245, size: 192, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2239, file: !1870, line: 353, baseType: !2245, size: 192, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2239, file: !1870, line: 366, baseType: !1878, size: 64, offset: 768)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2239, file: !1870, line: 367, baseType: !1878, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1879, file: !1870, line: 492, baseType: !97, size: 128, offset: 6080)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1879, file: !1870, line: 495, baseType: !2245, size: 192, offset: 6208)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1879, file: !1870, line: 496, baseType: !2245, size: 192, offset: 6400)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1879, file: !1870, line: 497, baseType: !1690, size: 192, offset: 6592)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1879, file: !1870, line: 503, baseType: !97, size: 128, offset: 6784)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1879, file: !1870, line: 504, baseType: !770, size: 256, offset: 6912)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1879, file: !1870, line: 507, baseType: !54, size: 192, offset: 7168)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1879, file: !1870, line: 510, baseType: !1467, size: 256, offset: 7360)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1879, file: !1870, line: 513, baseType: !2268, size: 64, offset: 7616)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2270, line: 214, elements: !373)
!2270 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1879, file: !1870, line: 516, baseType: !2272, offset: 7680)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2273, line: 76, elements: !373)
!2273 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1879, file: !1870, line: 519, baseType: !49, size: 32, offset: 7680)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1879, file: !1870, line: 522, baseType: !2276, size: 128, offset: 7712)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1870, line: 370, size: 128, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2276, file: !1870, line: 372, baseType: !1352, size: 8)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2276, file: !1870, line: 375, baseType: !22, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2276, file: !1870, line: 380, baseType: !22, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2276, file: !1870, line: 386, baseType: !22, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1879, file: !1870, line: 529, baseType: !2283, offset: 7872)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1878, elements: !1583)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1875, file: !1870, line: 157, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1870, line: 669, size: 1984, elements: !2287)
!2287 = !{!2288, !2292, !2296, !2300, !2301, !2302, !2303, !2307, !2311, !2312, !2318, !2322, !2323, !2327, !2331, !2335, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2388, !2389}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2286, file: !1870, line: 670, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!1874, !1874}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2286, file: !1870, line: 671, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!22, !1874}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2286, file: !1870, line: 672, baseType: !2297, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !1874}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2286, file: !1870, line: 673, baseType: !2297, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2286, file: !1870, line: 674, baseType: !2297, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2286, file: !1870, line: 675, baseType: !2297, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2286, file: !1870, line: 676, baseType: !2304, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !1874, !22}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2286, file: !1870, line: 677, baseType: !2308, size: 64, offset: 448)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!22, !1939, !1874}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2286, file: !1870, line: 679, baseType: !2308, size: 64, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2286, file: !1870, line: 682, baseType: !2313, size: 64, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!22, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1870, line: 30, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2286, file: !1870, line: 683, baseType: !2319, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2316}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2286, file: !1870, line: 684, baseType: !2319, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2286, file: !1870, line: 685, baseType: !2324, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2286, file: !1870, line: 686, baseType: !2328, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!22, !863, !1868}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2286, file: !1870, line: 688, baseType: !2332, size: 64, offset: 896)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !863, !1868}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2286, file: !1870, line: 689, baseType: !2336, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !863}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2286, file: !1870, line: 690, baseType: !2336, size: 64, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2286, file: !1870, line: 691, baseType: !2336, size: 64, offset: 1088)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2286, file: !1870, line: 692, baseType: !2297, size: 64, offset: 1152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2286, file: !1870, line: 694, baseType: !1352, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2286, file: !1870, line: 707, baseType: !1352, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2286, file: !1870, line: 719, baseType: !1352, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2286, file: !1870, line: 722, baseType: !22, size: 32, offset: 1248)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2286, file: !1870, line: 723, baseType: !16, size: 64, offset: 1280)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2286, file: !1870, line: 726, baseType: !16, size: 64, offset: 1344)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2286, file: !1870, line: 729, baseType: !2212, size: 64, offset: 1408)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2286, file: !1870, line: 732, baseType: !847, size: 192, offset: 1472)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2286, file: !1870, line: 738, baseType: !97, size: 128, offset: 1664)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2286, file: !1870, line: 744, baseType: !2352, size: 64, offset: 1792)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1870, line: 580, size: 1728, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2366, !2370, !2374, !2375, !2376, !2377, !2378, !2382, !2386, !2387}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2353, file: !1870, line: 586, baseType: !2229, size: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2353, file: !1870, line: 587, baseType: !39, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2353, file: !1870, line: 593, baseType: !35, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2353, file: !1870, line: 596, baseType: !7, size: 32, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2353, file: !1870, line: 604, baseType: !7, size: 32, offset: 672)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2353, file: !1870, line: 610, baseType: !2285, size: 64, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2353, file: !1870, line: 611, baseType: !97, size: 128, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2353, file: !1870, line: 612, baseType: !2363, size: 64, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2353, file: !1870, line: 614, baseType: !1930, size: 64, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2353, file: !1870, line: 615, baseType: !2145, size: 64, offset: 1024)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2353, file: !1870, line: 621, baseType: !2367, size: 64, offset: 1088)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!341, !1874, !2352}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2353, file: !1870, line: 625, baseType: !2371, size: 64, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!364, !1874, !2352}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2353, file: !1870, line: 628, baseType: !1969, size: 64, offset: 1216)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2353, file: !1870, line: 631, baseType: !1957, size: 64, offset: 1280)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2353, file: !1870, line: 632, baseType: !1965, size: 64, offset: 1344)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2353, file: !1870, line: 633, baseType: !1961, size: 64, offset: 1408)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2353, file: !1870, line: 640, baseType: !2379, size: 64, offset: 1472)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!22, !1874, !2352, !341}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2353, file: !1870, line: 645, baseType: !2383, size: 64, offset: 1536)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!22, !1874, !2352, !364}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2353, file: !1870, line: 654, baseType: !2153, size: 64, offset: 1600)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2353, file: !1870, line: 657, baseType: !2160, size: 64, offset: 1664)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2286, file: !1870, line: 745, baseType: !2352, size: 64, offset: 1856)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2286, file: !1870, line: 754, baseType: !7, size: 32, offset: 1920)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1875, file: !1870, line: 160, baseType: !2391, size: 128, offset: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2392, line: 105, size: 128, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2391, file: !2392, line: 110, baseType: !39, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2391, file: !2392, line: 118, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2392, line: 95, size: 448, elements: !2398)
!2398 = !{!2399, !2400, !2406, !2407, !2408, !2409, !2410}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2397, file: !2392, line: 96, baseType: !763, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2397, file: !2392, line: 97, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2392, line: 60, baseType: !2403)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2397, file: !2392, line: 98, baseType: !2401, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2397, file: !2392, line: 99, baseType: !1352, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2397, file: !2392, line: 100, baseType: !1352, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2397, file: !2392, line: 101, baseType: !750, size: 128, align: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2397, file: !2392, line: 102, baseType: !2405, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1875, file: !1870, line: 163, baseType: !97, size: 128, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1875, file: !1870, line: 164, baseType: !97, size: 128, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1875, file: !1870, line: 167, baseType: !97, size: 128, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1875, file: !1870, line: 173, baseType: !22, size: 32, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1870, line: 175, baseType: !7, size: 32, offset: 672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1875, file: !1870, line: 183, baseType: !341, size: 64, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1875, file: !1870, line: 189, baseType: !49, size: 32, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1875, file: !1870, line: 192, baseType: !1467, size: 256, offset: 832)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1875, file: !1870, line: 193, baseType: !2420, size: 448, offset: 1088)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1468, line: 120, size: 448, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2420, file: !1468, line: 121, baseType: !1467, size: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2420, file: !1468, line: 122, baseType: !750, size: 128, align: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2420, file: !1468, line: 125, baseType: !2425, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1468, line: 18, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1875, file: !1870, line: 199, baseType: !1874, size: 64, offset: 1536)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1869, file: !1870, line: 218, baseType: !813, size: 32, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1869, file: !1870, line: 226, baseType: !1868, size: 64, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1869, file: !1870, line: 229, baseType: !1878, size: 64, offset: 1024)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1869, file: !1870, line: 232, baseType: !22, size: 32, offset: 1088)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1869, file: !1870, line: 241, baseType: !97, size: 128, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1869, file: !1870, line: 242, baseType: !97, size: 128, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1869, file: !1870, line: 243, baseType: !97, size: 128, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1869, file: !1870, line: 246, baseType: !97, size: 128, offset: 1536)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1869, file: !1870, line: 255, baseType: !2232, size: 1792, offset: 1664)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1869, file: !1870, line: 258, baseType: !97, size: 128, offset: 3456)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1869, file: !1870, line: 259, baseType: !97, size: 128, offset: 3584)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1869, file: !1870, line: 265, baseType: !826, size: 128, offset: 3712)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1869, file: !1870, line: 271, baseType: !97, size: 128, offset: 3840)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1869, file: !1870, line: 277, baseType: !97, size: 128, offset: 3968)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1869, file: !1870, line: 278, baseType: !97, size: 128, offset: 4096)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1869, file: !1870, line: 279, baseType: !97, size: 128, offset: 4224)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1869, file: !1870, line: 288, baseType: !1878, size: 64, offset: 4352)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1869, file: !1870, line: 289, baseType: !1878, size: 64, offset: 4416)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1869, file: !1870, line: 290, baseType: !1868, size: 64, offset: 4480)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1869, file: !1870, line: 293, baseType: !1352, size: 8, offset: 4544)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1869, file: !1870, line: 296, baseType: !750, size: 128, align: 64, offset: 4608)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !864, file: !865, line: 1110, baseType: !2450, size: 64, offset: 15360)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2452, line: 93, size: 8768, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2504, !2513, !2514, !2516, !2517, !2518, !2521, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2559, !2560, !2567, !2577, !2640, !2641, !2644, !2645, !2646, !2647, !2648, !2649}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2451, file: !2452, line: 94, baseType: !813, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2451, file: !2452, line: 95, baseType: !49, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2451, file: !2452, line: 96, baseType: !22, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2451, file: !2452, line: 97, baseType: !22, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2451, file: !2452, line: 98, baseType: !97, size: 128, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2451, file: !2452, line: 100, baseType: !54, size: 192, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2451, file: !2452, line: 103, baseType: !863, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2451, file: !2452, line: 106, baseType: !2462, size: 192, offset: 512)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2463, line: 32, size: 192, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2462, file: !2463, line: 33, baseType: !97, size: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2462, file: !2463, line: 34, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2468, line: 25, baseType: !2469)
!2468 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2468, line: 23, size: 64, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2469, file: !2468, line: 24, baseType: !1102, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2451, file: !2452, line: 109, baseType: !822, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2451, file: !2452, line: 112, baseType: !22, size: 32, offset: 768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2451, file: !2452, line: 114, baseType: !22, size: 32, offset: 800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2451, file: !2452, line: 115, baseType: !863, size: 64, offset: 832)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2451, file: !2452, line: 118, baseType: !22, size: 32, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2452, line: 119, baseType: !7, size: 32, offset: 928)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2451, file: !2452, line: 121, baseType: !2479, size: 64, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2452, line: 80, size: 448, elements: !2481)
!2481 = !{!2482, !2483, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2480, file: !2452, line: 81, baseType: !49, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2480, file: !2452, line: 82, baseType: !2484, size: 128, offset: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2452, line: 75, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2484, file: !2452, line: 76, baseType: !863, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2484, file: !2452, line: 77, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2480, file: !2452, line: 83, baseType: !1506, size: 256, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2451, file: !2452, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2451, file: !2452, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2451, file: !2452, line: 138, baseType: !7, size: 32, offset: 1056)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2451, file: !2452, line: 139, baseType: !97, size: 128, offset: 1088)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2451, file: !2452, line: 142, baseType: !975, size: 512, offset: 1216)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2451, file: !2452, line: 143, baseType: !983, size: 64, offset: 1728)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2451, file: !2452, line: 150, baseType: !2497, size: 256, offset: 1792)
!2497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2498, size: 256, elements: !2502)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2452, line: 38, size: 128, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2498, file: !2452, line: 39, baseType: !341, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2498, file: !2452, line: 40, baseType: !341, size: 64, offset: 64)
!2502 = !{!2503}
!2503 = !DISubrange(count: 2)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2451, file: !2452, line: 156, baseType: !2505, size: 192, offset: 2048)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2452, line: 66, size: 192, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2505, file: !2452, line: 67, baseType: !2508, size: 192)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2452, line: 47, size: 192, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2508, file: !2452, line: 48, baseType: !765, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2508, file: !2452, line: 49, baseType: !765, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2508, file: !2452, line: 50, baseType: !765, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2451, file: !2452, line: 160, baseType: !1702, size: 640, offset: 2240)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2451, file: !2452, line: 163, baseType: !2515, size: 256, offset: 2880)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 256, elements: !831)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2451, file: !2452, line: 169, baseType: !809, size: 64, offset: 3136)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2451, file: !2452, line: 172, baseType: !22, size: 32, offset: 3200)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2451, file: !2452, line: 174, baseType: !2519, size: 64, offset: 3264)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2452, line: 174, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2451, file: !2452, line: 185, baseType: !2522, size: 64, offset: 3328)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !471, line: 860, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 853, size: 64, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2523, file: !471, line: 858, baseType: !470, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2523, file: !471, line: 859, baseType: !59, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2451, file: !2452, line: 186, baseType: !341, size: 64, offset: 3392)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2451, file: !2452, line: 186, baseType: !341, size: 64, offset: 3456)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2451, file: !2452, line: 186, baseType: !341, size: 64, offset: 3520)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2451, file: !2452, line: 186, baseType: !341, size: 64, offset: 3584)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2451, file: !2452, line: 187, baseType: !341, size: 64, offset: 3648)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2451, file: !2452, line: 188, baseType: !341, size: 64, offset: 3712)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2451, file: !2452, line: 189, baseType: !1690, size: 192, offset: 3776)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2451, file: !2452, line: 190, baseType: !39, size: 64, offset: 3968)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2451, file: !2452, line: 190, baseType: !39, size: 64, offset: 4032)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2451, file: !2452, line: 190, baseType: !39, size: 64, offset: 4096)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2451, file: !2452, line: 190, baseType: !39, size: 64, offset: 4160)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2451, file: !2452, line: 191, baseType: !39, size: 64, offset: 4224)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2451, file: !2452, line: 191, baseType: !39, size: 64, offset: 4288)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2451, file: !2452, line: 191, baseType: !39, size: 64, offset: 4352)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2451, file: !2452, line: 191, baseType: !39, size: 64, offset: 4416)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2451, file: !2452, line: 192, baseType: !39, size: 64, offset: 4480)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2451, file: !2452, line: 192, baseType: !39, size: 64, offset: 4544)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2451, file: !2452, line: 192, baseType: !39, size: 64, offset: 4608)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2451, file: !2452, line: 192, baseType: !39, size: 64, offset: 4672)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2451, file: !2452, line: 193, baseType: !39, size: 64, offset: 4736)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2451, file: !2452, line: 193, baseType: !39, size: 64, offset: 4800)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2451, file: !2452, line: 194, baseType: !2549, size: 448, offset: 4864)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2550, line: 12, size: 448, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2549, file: !2550, line: 15, baseType: !341, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2549, file: !2550, line: 17, baseType: !341, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2549, file: !2550, line: 19, baseType: !341, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2549, file: !2550, line: 21, baseType: !341, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2549, file: !2550, line: 29, baseType: !341, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2549, file: !2550, line: 35, baseType: !341, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2549, file: !2550, line: 44, baseType: !341, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2451, file: !2452, line: 202, baseType: !343, size: 64, offset: 5312)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2451, file: !2452, line: 213, baseType: !2561, size: 2048, offset: 5376)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 2048, elements: !1794)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2563, line: 43, size: 128, elements: !2564)
!2563 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2562, file: !2563, line: 44, baseType: !38, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2562, file: !2563, line: 45, baseType: !38, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2451, file: !2452, line: 216, baseType: !2568, size: 448, offset: 7424)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2452, line: 30, size: 448, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2568, file: !2452, line: 31, baseType: !22, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2568, file: !2452, line: 32, baseType: !402, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2568, file: !2452, line: 33, baseType: !39, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2568, file: !2452, line: 34, baseType: !341, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2568, file: !2452, line: 34, baseType: !341, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2568, file: !2452, line: 35, baseType: !39, size: 64, offset: 320)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2568, file: !2452, line: 35, baseType: !39, size: 64, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2451, file: !2452, line: 219, baseType: !2578, size: 64, offset: 7872)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2580, line: 41, size: 3456, elements: !2581)
!2580 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2596, !2597, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2579, file: !2580, line: 47, baseType: !94, size: 16)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2579, file: !2580, line: 48, baseType: !336, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2579, file: !2580, line: 54, baseType: !85, size: 8, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2579, file: !2580, line: 55, baseType: !85, size: 8, offset: 72)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2579, file: !2580, line: 73, baseType: !342, size: 64, align: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2579, file: !2580, line: 74, baseType: !342, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2579, file: !2580, line: 81, baseType: !342, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2579, file: !2580, line: 82, baseType: !342, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2579, file: !2580, line: 85, baseType: !342, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2579, file: !2580, line: 86, baseType: !342, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2579, file: !2580, line: 94, baseType: !342, size: 64, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2579, file: !2580, line: 102, baseType: !342, size: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2579, file: !2580, line: 107, baseType: !2595, size: 256, offset: 640)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !506)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2579, file: !2580, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2579, file: !2580, line: 110, baseType: !2598, size: 24, offset: 904)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !665)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2579, file: !2580, line: 111, baseType: !336, size: 32, align: 64, offset: 960)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2579, file: !2580, line: 113, baseType: !336, size: 32, offset: 992)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2579, file: !2580, line: 114, baseType: !336, size: 32, offset: 1024)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2579, file: !2580, line: 115, baseType: !336, size: 32, offset: 1056)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2579, file: !2580, line: 117, baseType: !336, size: 32, offset: 1088)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2579, file: !2580, line: 118, baseType: !342, size: 64, align: 64, offset: 1152)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2579, file: !2580, line: 120, baseType: !342, size: 64, offset: 1216)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2579, file: !2580, line: 121, baseType: !342, size: 64, offset: 1280)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2579, file: !2580, line: 122, baseType: !342, size: 64, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2579, file: !2580, line: 123, baseType: !342, size: 64, offset: 1408)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2579, file: !2580, line: 133, baseType: !342, size: 64, offset: 1472)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2579, file: !2580, line: 137, baseType: !342, size: 64, offset: 1536)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2579, file: !2580, line: 142, baseType: !342, size: 64, offset: 1600)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2579, file: !2580, line: 143, baseType: !342, size: 64, offset: 1664)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2579, file: !2580, line: 146, baseType: !342, size: 64, offset: 1728)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2579, file: !2580, line: 147, baseType: !342, size: 64, offset: 1792)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2579, file: !2580, line: 148, baseType: !342, size: 64, offset: 1856)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2579, file: !2580, line: 149, baseType: !342, size: 64, offset: 1920)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2579, file: !2580, line: 154, baseType: !342, size: 64, offset: 1984)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2579, file: !2580, line: 155, baseType: !342, size: 64, offset: 2048)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2579, file: !2580, line: 156, baseType: !342, size: 64, offset: 2112)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2579, file: !2580, line: 158, baseType: !342, size: 64, offset: 2176)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2579, file: !2580, line: 159, baseType: !342, size: 64, offset: 2240)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2579, file: !2580, line: 162, baseType: !342, size: 64, offset: 2304)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2579, file: !2580, line: 163, baseType: !342, size: 64, offset: 2368)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2579, file: !2580, line: 164, baseType: !342, size: 64, offset: 2432)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2579, file: !2580, line: 167, baseType: !342, size: 64, offset: 2496)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2579, file: !2580, line: 168, baseType: !342, size: 64, offset: 2560)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2579, file: !2580, line: 171, baseType: !342, size: 64, offset: 2624)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2579, file: !2580, line: 172, baseType: !342, size: 64, offset: 2688)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2579, file: !2580, line: 175, baseType: !342, size: 64, offset: 2752)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2579, file: !2580, line: 178, baseType: !342, size: 64, offset: 2816)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2579, file: !2580, line: 179, baseType: !342, size: 64, offset: 2880)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2579, file: !2580, line: 182, baseType: !336, size: 32, offset: 2944)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2579, file: !2580, line: 186, baseType: !342, size: 64, align: 64, offset: 3008)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2579, file: !2580, line: 194, baseType: !342, size: 64, offset: 3072)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2579, file: !2580, line: 195, baseType: !342, size: 64, offset: 3136)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2579, file: !2580, line: 199, baseType: !342, size: 64, offset: 3200)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2579, file: !2580, line: 200, baseType: !342, size: 64, offset: 3264)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2579, file: !2580, line: 203, baseType: !342, size: 64, offset: 3328)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2579, file: !2580, line: 204, baseType: !342, size: 64, offset: 3392)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2451, file: !2452, line: 222, baseType: !7, size: 32, offset: 7936)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2451, file: !2452, line: 223, baseType: !2642, size: 64, offset: 8000)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2452, line: 223, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2451, file: !2452, line: 230, baseType: !1352, size: 8, offset: 8064)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2451, file: !2452, line: 231, baseType: !1300, size: 16, offset: 8080)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2451, file: !2452, line: 232, baseType: !1300, size: 16, offset: 8096)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2451, file: !2452, line: 234, baseType: !1151, size: 64, offset: 8128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2451, file: !2452, line: 237, baseType: !770, size: 256, offset: 8192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2451, file: !2452, line: 243, baseType: !1204, size: 320, offset: 8448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !864, file: !865, line: 1111, baseType: !2651, size: 64, offset: 15424)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2452, line: 20, size: 16640, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2652, file: !2452, line: 21, baseType: !59, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2652, file: !2452, line: 22, baseType: !813, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2652, file: !2452, line: 23, baseType: !54, size: 192, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2652, file: !2452, line: 24, baseType: !2658, size: 16384, offset: 256)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 16384, elements: !669)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2463, line: 51, size: 256, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2659, file: !2463, line: 52, baseType: !2662, size: 256)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2463, line: 37, size: 256, elements: !2663)
!2663 = !{!2664, !2671, !2672, !2676}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2662, file: !2463, line: 39, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2666, line: 83, baseType: !2667)
!2666 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2666, line: 82, baseType: !2669)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !22}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2662, file: !2463, line: 40, baseType: !39, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2662, file: !2463, line: 46, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2666, line: 86, baseType: !2674)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2666, line: 85, baseType: !2325)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2662, file: !2463, line: 48, baseType: !2467, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !864, file: !865, line: 1112, baseType: !2467, size: 64, offset: 15488)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !864, file: !865, line: 1113, baseType: !2467, size: 64, offset: 15552)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !864, file: !865, line: 1115, baseType: !2467, size: 64, offset: 15616)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !864, file: !865, line: 1116, baseType: !2462, size: 192, offset: 15680)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !864, file: !865, line: 1117, baseType: !39, size: 64, offset: 15872)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !864, file: !865, line: 1118, baseType: !35, size: 64, offset: 15936)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !864, file: !865, line: 1119, baseType: !7, size: 32, offset: 16000)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !864, file: !865, line: 1121, baseType: !753, size: 64, offset: 16064)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !864, file: !865, line: 1125, baseType: !2686, size: 64, offset: 16128)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !865, line: 43, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !864, file: !865, line: 1127, baseType: !435, size: 32, offset: 16192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !864, file: !865, line: 1128, baseType: !7, size: 32, offset: 16224)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !864, file: !865, line: 1130, baseType: !2691, size: 128, offset: 16256)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2692, line: 37, size: 128, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2691, file: !2692, line: 38, baseType: !22, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2691, file: !2692, line: 39, baseType: !49, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2691, file: !2692, line: 40, baseType: !2697, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2692, line: 24, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !864, file: !865, line: 1131, baseType: !2700, size: 256, offset: 16384)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2701, line: 12, size: 256, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2702 = !{!2703, !2704, !2705, !2706}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2700, file: !2701, line: 13, baseType: !565, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2700, file: !2701, line: 14, baseType: !39, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2700, file: !2701, line: 15, baseType: !39, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2700, file: !2701, line: 16, baseType: !1352, size: 8, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !864, file: !865, line: 1134, baseType: !341, size: 64, offset: 16640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !864, file: !865, line: 1135, baseType: !341, size: 64, offset: 16704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !864, file: !865, line: 1138, baseType: !59, size: 32, offset: 16768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !864, file: !865, line: 1141, baseType: !775, size: 32, offset: 16800)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !864, file: !865, line: 1143, baseType: !2712, size: 64, offset: 16832)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !865, line: 735, size: 64, elements: !2713)
!2713 = !{!2714}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2712, file: !865, line: 736, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !864, file: !865, line: 1147, baseType: !1034, size: 128, offset: 16896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !864, file: !865, line: 1149, baseType: !863, size: 64, offset: 17024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !864, file: !865, line: 1151, baseType: !2719, size: 64, offset: 17088)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !865, line: 1151, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !864, file: !865, line: 1188, baseType: !20, size: 64, offset: 17152)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !864, file: !865, line: 1191, baseType: !2723, size: 64, offset: 17216)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !865, line: 44, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !864, file: !865, line: 1194, baseType: !2726, size: 64, offset: 17280)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !865, line: 45, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !864, file: !865, line: 1197, baseType: !2729, size: 64, offset: 17344)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2731, line: 155, size: 64, elements: !2732)
!2731 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2730, file: !2731, line: 157, baseType: !39, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !864, file: !865, line: 1199, baseType: !2735, size: 64, offset: 17408)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2737, line: 99, size: 128, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2736, file: !2737, line: 100, baseType: !763, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2736, file: !2737, line: 101, baseType: !49, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2736, file: !2737, line: 103, baseType: !26, size: 16, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !864, file: !865, line: 1202, baseType: !2743, size: 64, offset: 17472)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !865, line: 48, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !864, file: !865, line: 1205, baseType: !39, size: 64, offset: 17536)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !864, file: !865, line: 1206, baseType: !2747, size: 64, offset: 17600)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2463, line: 14, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2463, line: 12, size: 384, elements: !2750)
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !2463, line: 13, baseType: !2752, size: 384)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !2463, line: 13, size: 384, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2752, file: !2463, line: 13, baseType: !22, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2752, file: !2463, line: 13, baseType: !22, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2752, file: !2463, line: 13, baseType: !22, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2752, file: !2463, line: 13, baseType: !2758, size: 256, offset: 128)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2759, line: 37, size: 256, elements: !2760)
!2759 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2760 = !{!2761, !2766, !2779, !2785, !2794, !2821, !2826}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2758, file: !2759, line: 42, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 39, size: 64, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2762, file: !2759, line: 40, baseType: !1666, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2762, file: !2759, line: 41, baseType: !441, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2758, file: !2759, line: 50, baseType: !2767, size: 192)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 45, size: 192, elements: !2768)
!2768 = !{!2769, !2771, !2772, !2778}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2767, file: !2759, line: 46, baseType: !2770, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2767, file: !2759, line: 47, baseType: !22, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2767, file: !2759, line: 48, baseType: !2773, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2759, line: 11, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2759, line: 8, size: 64, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2774, file: !2759, line: 9, baseType: !22, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2774, file: !2759, line: 10, baseType: !20, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2767, file: !2759, line: 49, baseType: !22, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2758, file: !2759, line: 57, baseType: !2780, size: 128)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 53, size: 128, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2780, file: !2759, line: 54, baseType: !1666, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2780, file: !2759, line: 55, baseType: !441, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2780, file: !2759, line: 56, baseType: !2773, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2758, file: !2759, line: 66, baseType: !2786, size: 256)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 60, size: 256, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2793}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2786, file: !2759, line: 61, baseType: !1666, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2786, file: !2759, line: 62, baseType: !441, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2786, file: !2759, line: 63, baseType: !22, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2786, file: !2759, line: 64, baseType: !2792, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !698)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2786, file: !2759, line: 65, baseType: !2792, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2758, file: !2759, line: 105, baseType: !2795, size: 256)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 69, size: 256, elements: !2796)
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2795, file: !2759, line: 70, baseType: !20, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !2759, line: 79, baseType: !2799, size: 192, offset: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !2759, line: 79, size: 192, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2810, !2815}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2799, file: !2759, line: 81, baseType: !22, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2799, file: !2759, line: 86, baseType: !1300, size: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2799, file: !2759, line: 92, baseType: !2804, size: 192)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 88, size: 192, elements: !2805)
!2805 = !{!2806, !2808, !2809}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2804, file: !2759, line: 89, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !1018)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2804, file: !2759, line: 90, baseType: !20, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2804, file: !2759, line: 91, baseType: !20, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2799, file: !2759, line: 97, baseType: !2811, size: 96)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 94, size: 96, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2811, file: !2759, line: 95, baseType: !2807, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2811, file: !2759, line: 96, baseType: !336, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2799, file: !2759, line: 103, baseType: !2816, size: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 99, size: 128, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2816, file: !2759, line: 100, baseType: !39, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2816, file: !2759, line: 101, baseType: !336, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2816, file: !2759, line: 102, baseType: !336, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2758, file: !2759, line: 111, baseType: !2822, size: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 108, size: 128, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2822, file: !2759, line: 109, baseType: !402, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2822, file: !2759, line: 110, baseType: !22, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2758, file: !2759, line: 118, baseType: !2827, size: 128)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 114, size: 128, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2827, file: !2759, line: 115, baseType: !20, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2827, file: !2759, line: 116, baseType: !22, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2827, file: !2759, line: 117, baseType: !7, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !864, file: !865, line: 1208, baseType: !2549, size: 448, offset: 17664)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !864, file: !865, line: 1215, baseType: !341, size: 64, offset: 18112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !864, file: !865, line: 1217, baseType: !341, size: 64, offset: 18176)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !864, file: !865, line: 1219, baseType: !341, size: 64, offset: 18240)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !864, file: !865, line: 1223, baseType: !2837, size: 64, offset: 18304)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2838, line: 99, baseType: !2839)
!2838 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2838, line: 99, size: 64, elements: !2840)
!2840 = !{!2841}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2839, file: !2838, line: 99, baseType: !1102, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !864, file: !865, line: 1225, baseType: !470, size: 32, offset: 18368)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !864, file: !865, line: 1226, baseType: !22, size: 32, offset: 18400)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !864, file: !865, line: 1227, baseType: !22, size: 32, offset: 18432)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !864, file: !865, line: 1231, baseType: !1868, size: 64, offset: 18496)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !864, file: !865, line: 1233, baseType: !97, size: 128, offset: 18560)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !864, file: !865, line: 1240, baseType: !2848, size: 64, offset: 18688)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !865, line: 62, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !864, file: !865, line: 1242, baseType: !2851, size: 64, offset: 18752)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !865, line: 1242, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !864, file: !865, line: 1244, baseType: !97, size: 128, offset: 18816)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !864, file: !865, line: 1245, baseType: !2855, size: 64, offset: 18944)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !865, line: 51, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !864, file: !865, line: 1246, baseType: !770, size: 256, offset: 19008)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !864, file: !865, line: 1247, baseType: !7, size: 32, offset: 19264)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !864, file: !865, line: 1250, baseType: !2860, size: 64, offset: 19328)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !865, line: 57, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !864, file: !865, line: 1251, baseType: !770, size: 256, offset: 19392)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !864, file: !865, line: 1252, baseType: !97, size: 128, offset: 19648)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !864, file: !865, line: 1259, baseType: !2044, size: 64, offset: 19776)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !864, file: !865, line: 1260, baseType: !1300, size: 16, offset: 19840)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !864, file: !865, line: 1261, baseType: !1300, size: 16, offset: 19856)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !864, file: !865, line: 1314, baseType: !2868, size: 64, offset: 19904)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2870, line: 62, size: 256, align: 256, elements: !2871)
!2870 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2869, file: !2870, line: 75, baseType: !336, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2869, file: !2870, line: 90, baseType: !336, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2869, file: !2870, line: 112, baseType: !342, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !2870, line: 132, baseType: !336, size: 32, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2869, file: !2870, line: 140, baseType: !336, size: 32, offset: 160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2869, file: !2870, line: 149, baseType: !336, size: 32, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2869, file: !2870, line: 154, baseType: !2879, offset: 224)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1583)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !864, file: !865, line: 1315, baseType: !335, size: 32, offset: 19968)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !864, file: !865, line: 1316, baseType: !335, size: 32, offset: 20000)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !864, file: !865, line: 1321, baseType: !39, size: 64, offset: 20032)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !864, file: !865, line: 1325, baseType: !22, size: 32, offset: 20096)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !864, file: !865, line: 1326, baseType: !22, size: 32, offset: 20128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !864, file: !865, line: 1327, baseType: !22, size: 32, offset: 20160)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !864, file: !865, line: 1328, baseType: !22, size: 32, offset: 20192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !864, file: !865, line: 1329, baseType: !750, size: 128, align: 64, offset: 20224)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !864, file: !865, line: 1332, baseType: !2889, size: 128, offset: 20352)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2890, line: 51, size: 128, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2891 = !{!2892, !2897, !2898}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2889, file: !2890, line: 60, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2894, line: 7, size: 64, elements: !2895)
!2894 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2893, file: !2894, line: 12, baseType: !1099, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2889, file: !2890, line: 63, baseType: !1352, size: 8, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2889, file: !2890, line: 70, baseType: !1352, size: 8, offset: 72)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !864, file: !865, line: 1335, baseType: !2900, size: 64, offset: 20480)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !865, line: 59, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !864, file: !865, line: 1337, baseType: !2903, size: 128, offset: 20544)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2890, line: 39, size: 128, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2903, file: !2890, line: 40, baseType: !403, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2903, file: !2890, line: 42, baseType: !336, size: 32, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2903, file: !2890, line: 43, baseType: !336, size: 32, offset: 96)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !864, file: !865, line: 1340, baseType: !2909, size: 64, offset: 20672)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !865, line: 69, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !864, file: !865, line: 1351, baseType: !22, size: 32, offset: 20736)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !864, file: !865, line: 1352, baseType: !22, size: 32, offset: 20768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !864, file: !865, line: 1354, baseType: !39, size: 64, offset: 20800)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !864, file: !865, line: 1364, baseType: !341, size: 64, offset: 20864)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !864, file: !865, line: 1365, baseType: !341, size: 64, offset: 20928)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !864, file: !865, line: 1412, baseType: !39, size: 64, offset: 20992)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !864, file: !865, line: 1453, baseType: !2918, size: 64, offset: 21056)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !865, line: 1453, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !864, file: !865, line: 1457, baseType: !2921, size: 64, offset: 21120)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !253, line: 61, size: 576, elements: !2923)
!2923 = !{!2924, !2925, !2944, !2947, !2948, !2981, !2991}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2922, file: !253, line: 62, baseType: !252, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2922, file: !253, line: 64, baseType: !2926, size: 192, offset: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2922, file: !253, line: 64, size: 192, elements: !2927)
!2927 = !{!2928, !2939}
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !253, line: 65, baseType: !2929, size: 192)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !253, line: 65, size: 192, elements: !2930)
!2930 = !{!2931, !2938}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2929, file: !253, line: 66, baseType: !2932, size: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2933, line: 50, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2934 = !{!2935, !2936, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2932, file: !2933, line: 52, baseType: !39, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2932, file: !2933, line: 54, baseType: !7, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2932, file: !2933, line: 55, baseType: !7, size: 32, offset: 96)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2929, file: !253, line: 67, baseType: !39, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !253, line: 70, baseType: !2940, size: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !253, line: 70, size: 192, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2940, file: !253, line: 71, baseType: !750, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2940, file: !253, line: 72, baseType: !39, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2922, file: !253, line: 76, baseType: !2945, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !253, line: 76, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2922, file: !253, line: 77, baseType: !39, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2922, file: !253, line: 79, baseType: !2949, size: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2933, line: 25, size: 256, elements: !2951)
!2951 = !{!2952, !2958, !2962}
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2933, line: 26, baseType: !2953, size: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2933, line: 26, size: 128, elements: !2954)
!2954 = !{!2955, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2953, file: !2933, line: 27, baseType: !2956, size: 128)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !1794)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2953, file: !2933, line: 28, baseType: !2956, size: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2950, file: !2933, line: 31, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2933, line: 23, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2950, file: !2933, line: 33, baseType: !2963, size: 64, offset: 192)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2950, file: !2933, line: 33, size: 64, elements: !2964)
!2964 = !{!2965, !2971, !2976}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2963, file: !2933, line: 38, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 34, size: 64, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2966, file: !2933, line: 35, baseType: !338, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2966, file: !2933, line: 36, baseType: !83, size: 8, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2966, file: !2933, line: 37, baseType: !83, size: 8, offset: 40)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2963, file: !2933, line: 42, baseType: !2972, size: 16)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 39, size: 16, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2972, file: !2933, line: 40, baseType: !83, size: 8)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2972, file: !2933, line: 41, baseType: !83, size: 8, offset: 8)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2963, file: !2933, line: 46, baseType: !2977, size: 16)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2933, line: 43, size: 16, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2977, file: !2933, line: 44, baseType: !83, size: 8)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2977, file: !2933, line: 45, baseType: !83, size: 8, offset: 8)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2922, file: !253, line: 81, baseType: !2982, size: 64, offset: 448)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !253, line: 85, size: 384, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2983, file: !253, line: 86, baseType: !2945, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2983, file: !253, line: 87, baseType: !39, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2983, file: !253, line: 88, baseType: !39, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2983, file: !253, line: 89, baseType: !39, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2983, file: !253, line: 90, baseType: !1352, size: 8, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2983, file: !253, line: 92, baseType: !2982, size: 64, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2922, file: !253, line: 82, baseType: !7, size: 32, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !864, file: !865, line: 1463, baseType: !2993, offset: 21184)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !865, line: 739, elements: !373)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !864, file: !865, line: 1470, baseType: !750, size: 128, align: 64, offset: 21184)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !864, file: !865, line: 1471, baseType: !813, size: 32, offset: 21312)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !864, file: !865, line: 1472, baseType: !22, size: 32, offset: 21344)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !864, file: !865, line: 1474, baseType: !863, size: 64, offset: 21376)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !864, file: !865, line: 1475, baseType: !2190, size: 320, offset: 21440)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !864, file: !865, line: 1478, baseType: !3000, size: 64, offset: 21760)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3002, line: 49, size: 512, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3010, !3011, !3012, !3014}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3001, file: !3002, line: 50, baseType: !3000, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3001, file: !3002, line: 51, baseType: !20, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3001, file: !3002, line: 52, baseType: !39, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3001, file: !3002, line: 53, baseType: !39, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3001, file: !3002, line: 54, baseType: !3009, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3001, file: !3002, line: 56, baseType: !7, size: 32, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3001, file: !3002, line: 58, baseType: !7, size: 32, offset: 352)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3001, file: !3002, line: 59, baseType: !3013, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !25, line: 159, baseType: !341)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3001, file: !3002, line: 60, baseType: !1281, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !864, file: !865, line: 1482, baseType: !813, size: 32, offset: 21824)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !864, file: !865, line: 1489, baseType: !20, size: 64, offset: 21888)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !864, file: !865, line: 1504, baseType: !20, size: 64, offset: 21952)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !864, file: !865, line: 1505, baseType: !342, size: 64, offset: 22016)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !864, file: !865, line: 1506, baseType: !341, size: 64, offset: 22080)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !864, file: !865, line: 1507, baseType: !342, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !864, file: !865, line: 1508, baseType: !342, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !864, file: !865, line: 1509, baseType: !342, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !864, file: !865, line: 1510, baseType: !750, size: 128, align: 64, offset: 22208)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !864, file: !865, line: 1511, baseType: !22, size: 32, offset: 22336)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !864, file: !865, line: 1515, baseType: !3026, size: 64, offset: 22400)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !745, line: 56, size: 64, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3026, file: !745, line: 57, baseType: !748, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !864, file: !865, line: 1518, baseType: !3026, size: 64, offset: 22464)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !864, file: !865, line: 1528, baseType: !750, size: 128, align: 64, offset: 22528)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !864, file: !865, line: 1552, baseType: !3032, size: 35328, offset: 23040)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3033, line: 430, size: 35328, elements: !3034)
!3033 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3034 = !{!3035, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3064, !3065, !3066, !3067, !3068, !3069, !3072, !3073, !3074, !3075}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3032, file: !3033, line: 432, baseType: !3036, size: 192)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3037, size: 192, elements: !665)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3038, line: 16, size: 64, elements: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3037, file: !3038, line: 17, baseType: !93, size: 16)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3037, file: !3038, line: 18, baseType: !93, size: 16, offset: 16)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3037, file: !3038, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3037, file: !3038, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3037, file: !3038, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3037, file: !3038, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3037, file: !3038, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3037, file: !3038, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3037, file: !3038, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3037, file: !3038, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3037, file: !3038, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3037, file: !3038, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3037, file: !3038, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3032, file: !3033, line: 436, baseType: !39, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3032, file: !3033, line: 440, baseType: !26, size: 16, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3032, file: !3033, line: 441, baseType: !26, size: 16, offset: 272)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3032, file: !3033, line: 442, baseType: !26, size: 16, offset: 288)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3032, file: !3033, line: 443, baseType: !26, size: 16, offset: 304)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3032, file: !3033, line: 447, baseType: !39, size: 64, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3032, file: !3033, line: 448, baseType: !39, size: 64, offset: 384)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3032, file: !3033, line: 459, baseType: !3061, size: 256, offset: 448)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 256, elements: !831)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3033, line: 428, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3032, file: !3033, line: 461, baseType: !39, size: 64, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3032, file: !3033, line: 463, baseType: !39, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3032, file: !3033, line: 465, baseType: !39, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3032, file: !3033, line: 466, baseType: !39, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3032, file: !3033, line: 467, baseType: !39, size: 64, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3032, file: !3033, line: 473, baseType: !3070, size: 64, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3033, line: 10, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3032, file: !3033, line: 480, baseType: !39, size: 64, offset: 1088)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3032, file: !3033, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3032, file: !3033, line: 491, baseType: !335, size: 32, offset: 1184)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3032, file: !3033, line: 501, baseType: !3076, size: 33792, offset: 1536)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3077, line: 448, size: 33792, elements: !3078)
!3077 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3078 = !{!3079, !3080, !3081, !3239, !3240, !3246, !3247}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3076, file: !3077, line: 461, baseType: !7, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3076, file: !3077, line: 468, baseType: !39, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3076, file: !3077, line: 476, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3077, line: 356, size: 33280, align: 512, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !3077, line: 358, baseType: !7, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3083, file: !3077, line: 361, baseType: !7, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3083, file: !3077, line: 364, baseType: !341, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3083, file: !3077, line: 367, baseType: !341, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3083, file: !3077, line: 370, baseType: !341, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3083, file: !3077, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3083, file: !3077, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3083, file: !3077, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3083, file: !3077, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3083, file: !3077, line: 397, baseType: !3095, size: 32768, offset: 512)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3077, line: 348, size: 32768, elements: !3096)
!3096 = !{!3097, !3112, !3147, !3224, !3237}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3095, file: !3077, line: 349, baseType: !3098, size: 896)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3077, line: 12, size: 896, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3111}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3098, file: !3077, line: 13, baseType: !335, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3098, file: !3077, line: 14, baseType: !335, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3098, file: !3077, line: 15, baseType: !335, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3098, file: !3077, line: 16, baseType: !335, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3098, file: !3077, line: 17, baseType: !335, size: 32, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3098, file: !3077, line: 18, baseType: !335, size: 32, offset: 160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3098, file: !3077, line: 19, baseType: !335, size: 32, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3098, file: !3077, line: 22, baseType: !3108, size: 640, offset: 224)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 640, elements: !3109)
!3109 = !{!3110}
!3110 = !DISubrange(count: 20)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3098, file: !3077, line: 25, baseType: !335, size: 32, offset: 864)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3095, file: !3077, line: 350, baseType: !3113, size: 4096, align: 128)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3077, line: 34, size: 4096, align: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3134, !3135, !3136, !3138, !3140, !3142}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3113, file: !3077, line: 35, baseType: !93, size: 16)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3113, file: !3077, line: 36, baseType: !93, size: 16, offset: 16)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3113, file: !3077, line: 37, baseType: !93, size: 16, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3113, file: !3077, line: 38, baseType: !93, size: 16, offset: 48)
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3077, line: 39, baseType: !3120, size: 128, offset: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3077, line: 39, size: 128, elements: !3121)
!3121 = !{!3122, !3127}
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3077, line: 40, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3120, file: !3077, line: 40, size: 128, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3123, file: !3077, line: 41, baseType: !341, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3123, file: !3077, line: 42, baseType: !341, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3077, line: 44, baseType: !3128, size: 128)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3120, file: !3077, line: 44, size: 128, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3128, file: !3077, line: 45, baseType: !335, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3128, file: !3077, line: 46, baseType: !335, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3128, file: !3077, line: 47, baseType: !335, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3128, file: !3077, line: 48, baseType: !335, size: 32, offset: 96)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3113, file: !3077, line: 51, baseType: !335, size: 32, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3113, file: !3077, line: 52, baseType: !335, size: 32, offset: 224)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3113, file: !3077, line: 55, baseType: !3137, size: 1024, offset: 256)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 1024, elements: !506)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3113, file: !3077, line: 58, baseType: !3139, size: 2048, offset: 1280)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 2048, elements: !669)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3113, file: !3077, line: 60, baseType: !3141, size: 384, offset: 3328)
!3141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, elements: !356)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3077, line: 62, baseType: !3143, size: 384, offset: 3712)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3077, line: 62, size: 384, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3143, file: !3077, line: 63, baseType: !3141, size: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3143, file: !3077, line: 64, baseType: !3141, size: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3095, file: !3077, line: 351, baseType: !3148, size: 1088)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3077, line: 79, size: 1088, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3223}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3148, file: !3077, line: 80, baseType: !335, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3148, file: !3077, line: 81, baseType: !335, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3148, file: !3077, line: 82, baseType: !335, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3148, file: !3077, line: 83, baseType: !335, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3148, file: !3077, line: 84, baseType: !335, size: 32, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3148, file: !3077, line: 85, baseType: !335, size: 32, offset: 160)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3148, file: !3077, line: 86, baseType: !335, size: 32, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3148, file: !3077, line: 88, baseType: !3108, size: 640, offset: 224)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3148, file: !3077, line: 89, baseType: !83, size: 8, offset: 864)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3148, file: !3077, line: 90, baseType: !83, size: 8, offset: 872)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3148, file: !3077, line: 91, baseType: !83, size: 8, offset: 880)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3148, file: !3077, line: 92, baseType: !83, size: 8, offset: 888)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3148, file: !3077, line: 93, baseType: !83, size: 8, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3148, file: !3077, line: 94, baseType: !83, size: 8, offset: 904)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3148, file: !3077, line: 95, baseType: !3165, size: 64, offset: 960)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3167, line: 11, size: 128, elements: !3168)
!3167 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3166, file: !3167, line: 12, baseType: !402, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3166, file: !3167, line: 13, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3173, line: 103, size: 1344, elements: !3174)
!3173 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3203, !3204, !3205}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3172, file: !3173, line: 109, baseType: !39, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3172, file: !3173, line: 110, baseType: !39, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3172, file: !3173, line: 111, baseType: !39, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3172, file: !3173, line: 112, baseType: !39, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3172, file: !3173, line: 113, baseType: !39, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3172, file: !3173, line: 114, baseType: !39, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3172, file: !3173, line: 117, baseType: !39, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3172, file: !3173, line: 118, baseType: !39, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3172, file: !3173, line: 119, baseType: !39, size: 64, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3172, file: !3173, line: 120, baseType: !39, size: 64, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3172, file: !3173, line: 121, baseType: !39, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3172, file: !3173, line: 122, baseType: !39, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3172, file: !3173, line: 123, baseType: !39, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3172, file: !3173, line: 124, baseType: !39, size: 64, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3172, file: !3173, line: 125, baseType: !39, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3172, file: !3173, line: 139, baseType: !39, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3172, file: !3173, line: 142, baseType: !39, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3173, line: 144, baseType: !3193, size: 64, offset: 1088)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3173, line: 144, size: 64, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3193, file: !3173, line: 146, baseType: !93, size: 16)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3193, file: !3173, line: 148, baseType: !341, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3193, file: !3173, line: 150, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3173, line: 59, size: 64, elements: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3198, file: !3173, line: 61, baseType: !341, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3198, file: !3173, line: 63, baseType: !341, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3198, file: !3173, line: 65, baseType: !341, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3172, file: !3173, line: 153, baseType: !39, size: 64, offset: 1152)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3172, file: !3173, line: 154, baseType: !39, size: 64, offset: 1216)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3173, line: 156, baseType: !3206, size: 64, offset: 1280)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3173, line: 156, size: 64, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3206, file: !3173, line: 158, baseType: !93, size: 16)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3206, file: !3173, line: 160, baseType: !341, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3206, file: !3173, line: 162, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3173, line: 69, size: 64, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3211, file: !3173, line: 71, baseType: !341, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3211, file: !3173, line: 73, baseType: !341, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3211, file: !3173, line: 75, baseType: !341, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3211, file: !3173, line: 77, baseType: !341, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3211, file: !3173, line: 80, baseType: !341, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3211, file: !3173, line: 83, baseType: !341, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3211, file: !3173, line: 86, baseType: !341, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3211, file: !3173, line: 88, baseType: !341, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3211, file: !3173, line: 93, baseType: !341, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3211, file: !3173, line: 100, baseType: !341, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3148, file: !3077, line: 96, baseType: !335, size: 32, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3095, file: !3077, line: 352, baseType: !3225, size: 4608, align: 512)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3077, line: 333, size: 4608, align: 512, elements: !3226)
!3226 = !{!3227, !3228, !3235}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3225, file: !3077, line: 334, baseType: !3113, size: 4096, align: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3225, file: !3077, line: 335, baseType: !3229, size: 512, offset: 4096)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3077, line: 312, size: 512, elements: !3230)
!3230 = !{!3231, !3232, !3233}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3229, file: !3077, line: 313, baseType: !341, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3229, file: !3077, line: 314, baseType: !341, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3229, file: !3077, line: 315, baseType: !3234, size: 384, offset: 128)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 384, elements: !1407)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3225, file: !3077, line: 336, baseType: !3236, offset: 4608)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1583)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3095, file: !3077, line: 353, baseType: !3238, size: 32768)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2226)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3076, file: !3077, line: 484, baseType: !3082, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3076, file: !3077, line: 491, baseType: !3241, size: 128, offset: 256)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3077, line: 404, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3241, file: !3077, line: 424, baseType: !341, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3241, file: !3077, line: 432, baseType: !7, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3241, file: !3077, line: 440, baseType: !7, size: 32, offset: 96)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3076, file: !3077, line: 498, baseType: !3241, size: 128, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3076, file: !3077, line: 508, baseType: !3083, size: 33280, align: 512, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !843, file: !844, line: 31, baseType: !3249, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3251, line: 11, flags: DIFlagFwdDecl)
!3251 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !843, file: !844, line: 32, baseType: !7, size: 32, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !843, file: !844, line: 33, baseType: !842, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !843, file: !844, line: 35, baseType: !3255, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !844, line: 17, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !843, file: !844, line: 37, baseType: !1307, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !843, file: !844, line: 38, baseType: !1550, size: 64, offset: 768)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !843, file: !844, line: 39, baseType: !22, size: 32, offset: 832)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !843, file: !844, line: 40, baseType: !1340, size: 192, offset: 896)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !843, file: !844, line: 42, baseType: !22, size: 32, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !785, file: !224, line: 951, baseType: !107, size: 32, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !785, file: !224, line: 952, baseType: !435, size: 32, offset: 160)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !785, file: !224, line: 952, baseType: !435, size: 32, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !785, file: !224, line: 953, baseType: !22, size: 32, offset: 224)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !738, file: !224, line: 1012, baseType: !1720, size: 64, offset: 896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !738, file: !224, line: 1013, baseType: !3268, size: 256, offset: 960)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !224, line: 970, size: 256, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3268, file: !224, line: 971, baseType: !39, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3268, file: !224, line: 972, baseType: !7, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3268, file: !224, line: 973, baseType: !7, size: 32, offset: 96)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3268, file: !224, line: 974, baseType: !7, size: 32, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3268, file: !224, line: 975, baseType: !7, size: 32, offset: 160)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3268, file: !224, line: 976, baseType: !41, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !738, file: !224, line: 1014, baseType: !3277, size: 128, offset: 1216)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3278, line: 8, size: 128, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3277, file: !3278, line: 9, baseType: !570, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3277, file: !3278, line: 10, baseType: !464, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !738, file: !224, line: 1015, baseType: !429, size: 64, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !738, file: !224, line: 1016, baseType: !3284, size: 64, offset: 1408)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !224, line: 1914, size: 2112, elements: !3287)
!3287 = !{!3288, !3289, !3293, !3297, !3301, !3412, !3413, !3419, !3432, !3436, !3440, !3441, !3445, !3446, !3450, !3455, !3456, !3460, !3464, !3470, !3471, !3475, !3476, !3480, !3484, !3488, !3494, !3498, !3502, !3506, !3510, !3511, !3517}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3286, file: !224, line: 1915, baseType: !611, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3286, file: !224, line: 1916, baseType: !3290, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!41, !737, !41, !22}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3286, file: !224, line: 1917, baseType: !3294, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!696, !737, !565, !35, !40}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3286, file: !224, line: 1918, baseType: !3298, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!696, !737, !16, !35, !40}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3286, file: !224, line: 1919, baseType: !3302, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!696, !3305, !3410}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !224, line: 373, size: 384, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3314, !3315, !3316, !3317}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3306, file: !224, line: 374, baseType: !737, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3306, file: !224, line: 375, baseType: !41, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3306, file: !224, line: 376, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !3305, !402}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3306, file: !224, line: 377, baseType: !20, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3306, file: !224, line: 378, baseType: !22, size: 32, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3306, file: !224, line: 379, baseType: !93, size: 16, offset: 288)
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !224, line: 380, baseType: !3318, size: 64, offset: 320)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3306, file: !224, line: 380, size: 64, elements: !3319)
!3319 = !{!3320, !3406}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3318, file: !224, line: 386, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3323, line: 998, size: 448, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3324 = !{!3325, !3392, !3393}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3322, file: !3323, line: 999, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !3328)
!3328 = !{!3329, !3359, !3373}
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !131, line: 295, baseType: !3330, size: 512)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !131, line: 295, size: 512, elements: !3331)
!3331 = !{!3332, !3358}
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !131, line: 296, baseType: !3333, size: 448)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3330, file: !131, line: 296, size: 448, elements: !3334)
!3334 = !{!3335, !3336, !3345, !3346, !3347, !3356, !3357}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3333, file: !131, line: 298, baseType: !39, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !131, line: 299, baseType: !3337, size: 128, offset: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !131, line: 299, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3337, file: !131, line: 300, baseType: !97, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !131, line: 302, baseType: !3341, size: 128)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !131, line: 302, size: 128, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3341, file: !131, line: 303, baseType: !20, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3341, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3333, file: !131, line: 310, baseType: !425, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3333, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !131, line: 312, baseType: !3348, size: 64, offset: 320)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !131, line: 312, size: 64, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3348, file: !131, line: 313, baseType: !20, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3348, file: !131, line: 314, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !3354)
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3353, file: !131, line: 256, baseType: !39, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3333, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3333, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3330, file: !131, line: 323, baseType: !404, size: 512, align: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !131, line: 325, baseType: !3360, size: 512, offset: 512)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !131, line: 325, size: 512, elements: !3361)
!3361 = !{!3362, !3372}
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !131, line: 326, baseType: !3363, size: 320)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3360, file: !131, line: 326, size: 320, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3363, file: !131, line: 327, baseType: !39, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3363, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3363, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3363, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3363, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3363, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3363, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3360, file: !131, line: 339, baseType: !404, size: 512, align: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !131, line: 341, baseType: !3374, size: 512, offset: 1024)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !131, line: 341, size: 512, elements: !3375)
!3375 = !{!3376, !3385, !3391}
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !131, line: 342, baseType: !3377, size: 384)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3374, file: !131, line: 342, size: 384, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3377, file: !131, line: 343, baseType: !39, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3377, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3377, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3377, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3377, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3377, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !131, line: 352, baseType: !3386, size: 256)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3374, file: !131, line: 352, size: 256, elements: !3387)
!3387 = !{!3388, !3389, !3390}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3386, file: !131, line: 353, baseType: !39, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3386, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3386, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3374, file: !131, line: 359, baseType: !404, size: 512, align: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3322, file: !3323, line: 1000, baseType: !22, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3322, file: !3323, line: 1001, baseType: !3394, size: 320, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !55, line: 14, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !55, line: 30, size: 320, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3405}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3395, file: !55, line: 31, baseType: !7, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3395, file: !55, line: 32, baseType: !20, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3395, file: !55, line: 33, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !55, line: 16, baseType: !3401)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!22, !3404, !7, !22, !20}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3395, file: !55, line: 34, baseType: !97, size: 128, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3318, file: !224, line: 395, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!696, !20}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !224, line: 69, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3286, file: !224, line: 1920, baseType: !3302, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3286, file: !224, line: 1921, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!22, !3305, !3417, !7}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !224, line: 53, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3286, file: !224, line: 1923, baseType: !3420, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!22, !737, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !224, line: 1858, size: 128, elements: !3425)
!3425 = !{!3426, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3424, file: !224, line: 1859, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !224, line: 1855, baseType: !3428)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!1352, !3423, !16, !22, !41, !341, !7}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3424, file: !224, line: 1860, baseType: !41, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3286, file: !224, line: 1924, baseType: !3433, size: 64, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!2163, !737, !2165}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3286, file: !224, line: 1925, baseType: !3437, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!402, !737, !7, !39}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3286, file: !224, line: 1926, baseType: !3437, size: 64, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3286, file: !224, line: 1927, baseType: !3442, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!22, !737, !1996}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3286, file: !224, line: 1928, baseType: !39, size: 64, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3286, file: !224, line: 1929, baseType: !3447, size: 64, offset: 832)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!22, !429, !737}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3286, file: !224, line: 1930, baseType: !3451, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!22, !737, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !224, line: 1061, baseType: !20)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3286, file: !224, line: 1931, baseType: !3447, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3286, file: !224, line: 1932, baseType: !3457, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!22, !737, !41, !41, !22}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3286, file: !224, line: 1933, baseType: !3461, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!22, !22, !737, !22}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3286, file: !224, line: 1934, baseType: !3465, size: 64, offset: 1152)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!22, !737, !22, !3468}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !224, line: 1063, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3286, file: !224, line: 1935, baseType: !1174, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3286, file: !224, line: 1936, baseType: !3472, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!22, !22}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3286, file: !224, line: 1937, baseType: !3465, size: 64, offset: 1344)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3286, file: !224, line: 1938, baseType: !3477, size: 64, offset: 1408)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!696, !2900, !737, !40, !35, !7}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3286, file: !224, line: 1939, baseType: !3481, size: 64, offset: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!696, !737, !40, !2900, !35, !7}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3286, file: !224, line: 1940, baseType: !3485, size: 64, offset: 1536)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !737}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3286, file: !224, line: 1941, baseType: !3489, size: 64, offset: 1600)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!22, !737, !22, !3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3286, file: !224, line: 1942, baseType: !3495, size: 64, offset: 1664)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!402, !737, !22, !41, !41}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3286, file: !224, line: 1944, baseType: !3499, size: 64, offset: 1728)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !1939, !737}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3286, file: !224, line: 1948, baseType: !3503, size: 64, offset: 1792)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!696, !737, !41, !737, !41, !35, !7}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3286, file: !224, line: 1950, baseType: !3507, size: 64, offset: 1856)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!41, !737, !41, !737, !41, !41, !7}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3286, file: !224, line: 1953, baseType: !3457, size: 64, offset: 1920)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3286, file: !224, line: 1954, baseType: !3512, size: 64, offset: 1984)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!22, !3515, !7}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !224, line: 1911, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3286, file: !224, line: 1955, baseType: !3518, size: 64, offset: 2048)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!22, !3515, !3417, !7}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !738, file: !224, line: 1018, baseType: !341, size: 64, offset: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !738, file: !224, line: 1020, baseType: !20, size: 64, offset: 1536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !738, file: !224, line: 1023, baseType: !20, size: 64, offset: 1600)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !738, file: !224, line: 1027, baseType: !3525, size: 64, offset: 1664)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !738, file: !224, line: 1029, baseType: !425, size: 64, offset: 1728)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !738, file: !224, line: 1030, baseType: !3528, size: 32, offset: 1792)
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3529, line: 8, baseType: !335)
!3529 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !738, file: !224, line: 1031, baseType: !3528, size: 32, offset: 1824)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !724, file: !690, line: 182, baseType: !734, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !724, file: !690, line: 184, baseType: !3533, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!22, !737, !630, !723, !1996}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !712, file: !690, line: 90, baseType: !3537, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !712, file: !690, line: 91, baseType: !3539, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !680, file: !625, line: 120, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!3544, !648}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3546)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !193, line: 39, size: 384, elements: !3547)
!3547 = !{!3548, !3549, !3553, !3557, !3563, !3567}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3546, file: !193, line: 40, baseType: !192, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3546, file: !193, line: 41, baseType: !3550, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!1352}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3546, file: !193, line: 42, baseType: !3554, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!20}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3546, file: !193, line: 43, baseType: !3558, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!1281, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !193, line: 19, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3546, file: !193, line: 44, baseType: !3564, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!1281}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3546, file: !193, line: 45, baseType: !3568, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !20}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !680, file: !625, line: 121, baseType: !3572, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!1281, !648}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !680, file: !625, line: 122, baseType: !3576, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !648, !1531, !1532}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !624, file: !625, line: 70, baseType: !1894, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !624, file: !625, line: 71, baseType: !3581, size: 32, offset: 448)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3582, line: 19, size: 32, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3581, file: !3582, line: 20, baseType: !813, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !624, file: !625, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !624, file: !625, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !624, file: !625, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !624, file: !625, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !624, file: !625, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !621, file: !116, line: 47, baseType: !611, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !621, file: !116, line: 48, baseType: !630, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !621, file: !116, line: 49, baseType: !3593, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !621, file: !116, line: 50, baseType: !1505, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !612, file: !116, line: 418, baseType: !3597, size: 64, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !3599)
!3599 = !{!3600, !3601, !3606, !3610, !3614, !3618}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3598, file: !116, line: 54, baseType: !700, size: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3598, file: !116, line: 55, baseType: !3602, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!696, !3597, !3605, !565}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3598, file: !116, line: 57, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!696, !3597, !3605, !16, !35}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3598, file: !116, line: 59, baseType: !3611, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !611, !16}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3598, file: !116, line: 60, baseType: !3615, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!22, !611}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3598, file: !116, line: 61, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !611}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !612, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !612, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !612, file: !116, line: 421, baseType: !630, size: 64, offset: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !612, file: !116, line: 424, baseType: !3626, size: 64, offset: 1664)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !612, file: !116, line: 425, baseType: !3630, size: 64, offset: 1728)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !612, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !612, file: !116, line: 435, baseType: !770, size: 256, offset: 1856)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !612, file: !116, line: 437, baseType: !3635, size: 64, offset: 2112)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3637, line: 69, size: 320, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3638 = !{!3639, !3640, !3641, !3658, !3660, !3664, !3665}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3636, file: !3637, line: 70, baseType: !16, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3636, file: !3637, line: 71, baseType: !611, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3636, file: !3637, line: 72, baseType: !3642, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3637, line: 47, size: 256, elements: !3645)
!3645 = !{!3646, !3647, !3653, !3657}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3644, file: !3637, line: 49, baseType: !7, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3644, file: !3637, line: 51, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!22, !16, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3644, file: !3637, line: 53, baseType: !3654, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!22, !565, !3651}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3644, file: !3637, line: 55, baseType: !3568, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3636, file: !3637, line: 73, baseType: !3659, size: 16, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3636, file: !3637, line: 74, baseType: !3661, size: 8, offset: 208)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !3662)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !3663)
!3663 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3636, file: !3637, line: 75, baseType: !83, size: 8, offset: 216)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !3637, line: 76, baseType: !3666, size: 64, offset: 256)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !3637, line: 76, size: 64, elements: !3667)
!3667 = !{!3668, !3669, !3676}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3666, file: !3637, line: 77, baseType: !20, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3666, file: !3637, line: 78, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3637, line: 86, size: 128, elements: !3673)
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3672, file: !3637, line: 87, baseType: !7, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3672, file: !3637, line: 88, baseType: !565, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3666, file: !3637, line: 79, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3637, line: 92, size: 256, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3685, !3686}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3679, file: !3637, line: 94, baseType: !7, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3679, file: !3637, line: 95, baseType: !7, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3679, file: !3637, line: 96, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3679, file: !3637, line: 97, baseType: !3642, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3679, file: !3637, line: 98, baseType: !20, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !612, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !612, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !612, file: !116, line: 442, baseType: !3626, size: 64, offset: 2240)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !612, file: !116, line: 443, baseType: !3630, size: 64, offset: 2304)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !612, file: !116, line: 444, baseType: !1352, size: 8, offset: 2368)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !612, file: !116, line: 451, baseType: !1352, size: 8, offset: 2376)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !612, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !612, file: !116, line: 455, baseType: !3695, size: 64, offset: 2432)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3697, line: 23, size: 96, elements: !3698)
!3697 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3696, file: !3697, line: 24, baseType: !22, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3696, file: !3697, line: 24, baseType: !22, size: 32, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3696, file: !3697, line: 24, baseType: !22, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !612, file: !116, line: 458, baseType: !3703, size: 64, offset: 2496)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!22}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !612, file: !116, line: 460, baseType: !3707, size: 4032, align: 512, offset: 2560)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, size: 4032, elements: !3722)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !3709)
!3709 = !{!3710, !3711, !3712}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3708, file: !116, line: 363, baseType: !20, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3708, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3708, file: !116, line: 367, baseType: !3713, size: 448, offset: 128)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !3714)
!3714 = !{!3715, !3716}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3713, file: !116, line: 320, baseType: !611, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3713, file: !116, line: 321, baseType: !3717, size: 384, offset: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3718, line: 40, size: 384, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3719 = !{!3720}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3717, file: !3718, line: 41, baseType: !3721, size: 384, align: 64)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 384, align: 64, elements: !2502)
!3722 = !{!3723}
!3723 = !DISubrange(count: 7)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !612, file: !116, line: 463, baseType: !3725, size: 192, offset: 6592)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3726, line: 8, size: 192, elements: !3727)
!3726 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3727 = !{!3728, !3729, !3730}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3725, file: !3726, line: 10, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3725, file: !3726, line: 11, baseType: !1683, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3725, file: !3726, line: 12, baseType: !3731, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3733, line: 59, size: 48, elements: !3734)
!3733 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3732, file: !3733, line: 60, baseType: !1298, size: 16)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3732, file: !3733, line: 61, baseType: !1298, size: 16, offset: 16)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3732, file: !3733, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3732, file: !3733, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3732, file: !3733, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3732, file: !3733, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !612, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !612, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !612, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !612, file: !116, line: 471, baseType: !3745, size: 64, offset: 7040)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3747, line: 33, size: 96, elements: !3748)
!3747 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3748 = !{!3749, !3750, !3751, !3752}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3746, file: !3747, line: 37, baseType: !22, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3746, file: !3747, line: 43, baseType: !22, size: 32, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3746, file: !3747, line: 45, baseType: !26, size: 16, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3746, file: !3747, line: 47, baseType: !26, size: 16, offset: 80)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !612, file: !116, line: 476, baseType: !3754, size: 64, offset: 7104)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !3756)
!3756 = !{!3757, !3773, !3774, !3775}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3755, file: !116, line: 379, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3760, line: 204, baseType: !3761)
!3760 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3760, line: 197, size: 192, elements: !3762)
!3762 = !{!3763, !3765, !3766, !3767, !3769, !3771}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3761, file: !3760, line: 198, baseType: !3764, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3760, line: 21, baseType: !336)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3761, file: !3760, line: 199, baseType: !87, size: 8, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3761, file: !3760, line: 200, baseType: !87, size: 8, offset: 40)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3761, file: !3760, line: 201, baseType: !3768, size: 16, offset: 48)
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3760, line: 17, baseType: !94)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3761, file: !3760, line: 202, baseType: !3770, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3760, line: 16, baseType: !342)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3761, file: !3760, line: 203, baseType: !3772, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3760, line: 22, baseType: !342)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3755, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3755, file: !116, line: 381, baseType: !565, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3755, file: !116, line: 382, baseType: !565, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !612, file: !116, line: 477, baseType: !3755, size: 256, offset: 7168)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !612, file: !116, line: 480, baseType: !3778, size: 64, offset: 7424)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !612, file: !116, line: 483, baseType: !3781, size: 64, offset: 7488)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !612, file: !116, line: 488, baseType: !565, size: 64, offset: 7552)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !612, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !612, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !612, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !612, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !612, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !612, file: !116, line: 500, baseType: !3790, size: 64, offset: 7872)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3792, line: 45, baseType: !3793)
!3792 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !612, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !612, file: !116, line: 504, baseType: !3796, size: 64, offset: 8000)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3799, line: 96, size: 192, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3800 = !{!3801, !3802, !3844, !3847}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3798, file: !3799, line: 97, baseType: !7, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3798, file: !3799, line: 98, baseType: !3803, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3799, line: 24, size: 3072, elements: !3805)
!3805 = !{!3806, !3808, !3809, !3810, !3811, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3841, !3842, !3843}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3804, file: !3799, line: 26, baseType: !3807, size: 128)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 128, elements: !2502)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3804, file: !3799, line: 27, baseType: !3807, size: 128, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3804, file: !3799, line: 28, baseType: !22, size: 32, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3804, file: !3799, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3804, file: !3799, line: 32, baseType: !3812, size: 960, offset: 576)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3813, line: 206, size: 960, elements: !3814)
!3813 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3814 = !{!3815, !3816, !3819, !3821, !3822, !3823}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3812, file: !3813, line: 207, baseType: !753, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3812, file: !3813, line: 208, baseType: !3817, size: 256, offset: 64)
!3817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3818, size: 256, elements: !831)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3812, file: !3813, line: 209, baseType: !3820, size: 256, offset: 320)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !831)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3812, file: !3813, line: 213, baseType: !402, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3812, file: !3813, line: 215, baseType: !1566, size: 256, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3812, file: !3813, line: 216, baseType: !83, size: 8, offset: 896)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3804, file: !3799, line: 33, baseType: !39, size: 64, offset: 1536)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3804, file: !3799, line: 34, baseType: !39, size: 64, offset: 1600)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3804, file: !3799, line: 35, baseType: !1352, size: 8, offset: 1664)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3804, file: !3799, line: 36, baseType: !2190, size: 320, offset: 1728)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3804, file: !3799, line: 37, baseType: !1467, size: 256, offset: 2048)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3804, file: !3799, line: 38, baseType: !750, size: 128, align: 64, offset: 2304)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3804, file: !3799, line: 39, baseType: !3831, size: 64, offset: 2432)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3799, line: 49, size: 768, elements: !3833)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839, !3840}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3832, file: !3799, line: 50, baseType: !59, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3832, file: !3799, line: 51, baseType: !3820, size: 256, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3832, file: !3799, line: 53, baseType: !3820, size: 256, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3832, file: !3799, line: 54, baseType: !39, size: 64, offset: 576)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3832, file: !3799, line: 55, baseType: !3831, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3832, file: !3799, line: 56, baseType: !22, size: 32, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3832, file: !3799, line: 57, baseType: !22, size: 32, offset: 736)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3804, file: !3799, line: 40, baseType: !39, size: 64, offset: 2496)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3804, file: !3799, line: 42, baseType: !22, size: 32, offset: 2560)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3804, file: !3799, line: 43, baseType: !3797, size: 64, offset: 2624)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3798, file: !3799, line: 99, baseType: !3845, offset: 128)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3846, line: 211, elements: !373)
!3846 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3798, file: !3799, line: 100, baseType: !3848, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3799, line: 63, size: 3008, elements: !3850)
!3850 = !{!3851, !3852, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3880}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3849, file: !3799, line: 64, baseType: !3831, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3849, file: !3799, line: 65, baseType: !3853, size: 192, offset: 64)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3831, size: 192, elements: !665)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3849, file: !3799, line: 67, baseType: !22, size: 32, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3849, file: !3799, line: 68, baseType: !770, size: 256, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3849, file: !3799, line: 69, baseType: !59, size: 32, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3849, file: !3799, line: 70, baseType: !770, size: 256, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3849, file: !3799, line: 71, baseType: !39, size: 64, offset: 896)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3849, file: !3799, line: 72, baseType: !39, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3849, file: !3799, line: 73, baseType: !39, size: 64, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3849, file: !3799, line: 74, baseType: !39, size: 64, offset: 1088)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3849, file: !3799, line: 75, baseType: !39, size: 64, offset: 1152)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3849, file: !3799, line: 76, baseType: !39, size: 64, offset: 1216)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3849, file: !3799, line: 77, baseType: !39, size: 64, offset: 1280)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3849, file: !3799, line: 78, baseType: !39, size: 64, offset: 1344)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3849, file: !3799, line: 79, baseType: !1352, size: 8, offset: 1408)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3849, file: !3799, line: 80, baseType: !39, size: 64, offset: 1472)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3849, file: !3799, line: 81, baseType: !770, size: 256, offset: 1536)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3849, file: !3799, line: 82, baseType: !1506, size: 256, offset: 1792)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3849, file: !3799, line: 84, baseType: !49, size: 32, offset: 2048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3849, file: !3799, line: 87, baseType: !39, size: 64, offset: 2112)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3849, file: !3799, line: 88, baseType: !39, size: 64, offset: 2176)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3849, file: !3799, line: 89, baseType: !3874, size: 704, offset: 2240)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1468, line: 111, size: 704, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3874, file: !1468, line: 112, baseType: !1467, size: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3874, file: !1468, line: 113, baseType: !2190, size: 320, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3874, file: !1468, line: 116, baseType: !2425, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3874, file: !1468, line: 117, baseType: !22, size: 32, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3849, file: !3799, line: 90, baseType: !3797, size: 64, offset: 2944)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !612, file: !116, line: 515, baseType: !3882, size: 64, offset: 8064)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3884, line: 117, size: 128, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3883, file: !3884, line: 118, baseType: !338, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3883, file: !3884, line: 119, baseType: !338, size: 32, offset: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3883, file: !3884, line: 120, baseType: !402, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !612, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !612, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !612, file: !116, line: 520, baseType: !3892, size: 64, offset: 8192)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !612, file: !116, line: 523, baseType: !3894, size: 64, offset: 8256)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !116, line: 523, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !612, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !612, file: !116, line: 525, baseType: !3899, size: 64, offset: 8384)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !116, line: 525, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !612, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !612, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !612, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !612, file: !116, line: 535, baseType: !3906, size: 64, offset: 8640)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !612, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !612, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !612, file: !116, line: 540, baseType: !3910, size: 64, offset: 8768)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3912, line: 32, size: 64, elements: !3913)
!3912 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3911, file: !3912, line: 33, baseType: !338, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3911, file: !3912, line: 34, baseType: !338, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !612, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !612, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !612, file: !116, line: 568, baseType: !2324, size: 64, offset: 9088)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !612, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !224, line: 2382, baseType: !587, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !588, file: !224, line: 2383, baseType: !822, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !588, file: !224, line: 2385, baseType: !3923, offset: 576)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3846, line: 206, elements: !373)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !588, file: !224, line: 2386, baseType: !3923, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !588, file: !224, line: 2387, baseType: !3923, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !588, file: !224, line: 2388, baseType: !3927, offset: 576)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3923, elements: !665)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !588, file: !224, line: 2390, baseType: !3923, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !588, file: !224, line: 2391, baseType: !3923, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !588, file: !224, line: 2392, baseType: !3923, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !588, file: !224, line: 2393, baseType: !3923, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !577, file: !224, line: 1197, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !224, line: 2057, size: 1664, elements: !3936)
!3936 = !{!3937, !3941, !3945, !3946, !3950, !3974, !3978, !3979, !3980, !3984, !3988, !3992, !3993, !3994, !4000, !4004, !4005, !4009, !4010, !4011, !4012, !4016, !4020, !4067, !4082, !4083}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3935, file: !224, line: 2058, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!429, !576}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3935, file: !224, line: 2059, baseType: !3942, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !429}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3935, file: !224, line: 2060, baseType: !3942, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3935, file: !224, line: 2062, baseType: !3947, size: 64, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !429, !22}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3935, file: !224, line: 2063, baseType: !3951, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!22, !429, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !147, line: 42, size: 384, elements: !3956)
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3955, file: !147, line: 43, baseType: !402, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3955, file: !147, line: 45, baseType: !402, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3955, file: !147, line: 52, baseType: !41, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3955, file: !147, line: 53, baseType: !41, size: 64, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3955, file: !147, line: 55, baseType: !146, size: 32, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3955, file: !147, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3955, file: !147, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3955, file: !147, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3955, file: !147, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3955, file: !147, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3955, file: !147, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3955, file: !147, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3955, file: !147, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3955, file: !147, line: 78, baseType: !3971, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !147, line: 78, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3935, file: !224, line: 2064, baseType: !3975, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!22, !429}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3935, file: !224, line: 2065, baseType: !3942, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3935, file: !224, line: 2066, baseType: !607, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3935, file: !224, line: 2067, baseType: !3981, size: 64, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!22, !576, !22}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3935, file: !224, line: 2068, baseType: !3985, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!22, !576, !223}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3935, file: !224, line: 2069, baseType: !3989, size: 64, offset: 640)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!22, !576}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3935, file: !224, line: 2070, baseType: !3985, size: 64, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3935, file: !224, line: 2071, baseType: !3989, size: 64, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3935, file: !224, line: 2072, baseType: !3995, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!22, !464, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !224, line: 62, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3935, file: !224, line: 2073, baseType: !4001, size: 64, offset: 896)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!22, !576, !1683, !565}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3935, file: !224, line: 2074, baseType: !607, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3935, file: !224, line: 2076, baseType: !4006, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!22, !1939, !464}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3935, file: !224, line: 2077, baseType: !4006, size: 64, offset: 1088)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3935, file: !224, line: 2078, baseType: !4006, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3935, file: !224, line: 2079, baseType: !4006, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3935, file: !224, line: 2081, baseType: !4013, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!696, !576, !22, !565, !35, !41}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3935, file: !224, line: 2082, baseType: !4017, size: 64, offset: 1344)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!696, !576, !22, !16, !35, !41}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3935, file: !224, line: 2083, baseType: !4021, size: 64, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!4024, !429}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !229, line: 296, size: 1664, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4052, !4053, !4054}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4026, file: !229, line: 297, baseType: !826, size: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4026, file: !229, line: 298, baseType: !97, size: 128, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4026, file: !229, line: 299, baseType: !97, size: 128, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4026, file: !229, line: 300, baseType: !97, size: 128, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4026, file: !229, line: 301, baseType: !770, size: 256, offset: 512)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4026, file: !229, line: 302, baseType: !59, size: 32, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4026, file: !229, line: 303, baseType: !49, size: 32, offset: 800)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4026, file: !229, line: 304, baseType: !576, size: 64, offset: 832)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4026, file: !229, line: 305, baseType: !4037, size: 64, offset: 896)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !229, line: 68, size: 64, elements: !4038)
!4038 = !{!4039, !4051}
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4037, file: !229, line: 69, baseType: !4040, size: 32)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4037, file: !229, line: 69, size: 32, elements: !4041)
!4041 = !{!4042, !4043, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4040, file: !229, line: 70, baseType: !435, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4040, file: !229, line: 71, baseType: !444, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4040, file: !229, line: 72, baseType: !4045, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4046, line: 24, baseType: !4047)
!4046 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4046, line: 22, size: 32, elements: !4048)
!4048 = !{!4049}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4047, file: !4046, line: 23, baseType: !4050, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4046, line: 20, baseType: !441)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4037, file: !229, line: 74, baseType: !228, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4026, file: !229, line: 306, baseType: !41, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4026, file: !229, line: 307, baseType: !39, size: 64, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4026, file: !229, line: 308, baseType: !4055, size: 576, offset: 1088)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !229, line: 205, size: 576, elements: !4056)
!4056 = !{!4057, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4055, file: !229, line: 206, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !229, line: 66, baseType: !43)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4055, file: !229, line: 207, baseType: !4058, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4055, file: !229, line: 208, baseType: !4058, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4055, file: !229, line: 209, baseType: !4058, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4055, file: !229, line: 210, baseType: !4058, size: 64, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4055, file: !229, line: 211, baseType: !4058, size: 64, offset: 320)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4055, file: !229, line: 212, baseType: !4058, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4055, file: !229, line: 213, baseType: !1378, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4055, file: !229, line: 214, baseType: !1378, size: 64, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3935, file: !224, line: 2085, baseType: !4068, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!402, !576, !4071}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4073, line: 15, size: 256, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4074 = !{!4075, !4076, !4077, !4078, !4079}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4072, file: !4073, line: 16, baseType: !856, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4072, file: !4073, line: 19, baseType: !22, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4072, file: !4073, line: 26, baseType: !39, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4072, file: !4073, line: 33, baseType: !39, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4072, file: !4073, line: 36, baseType: !4080, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !131, line: 33, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3935, file: !224, line: 2087, baseType: !4068, size: 64, offset: 1536)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3935, file: !224, line: 2089, baseType: !607, size: 64, offset: 1600)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !577, file: !224, line: 1198, baseType: !4085, size: 64, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !229, line: 324, size: 704, elements: !4088)
!4088 = !{!4089, !4093, !4097, !4101, !4102, !4103, !4104, !4105, !4110, !4115, !4119}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4087, file: !229, line: 325, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!22, !4025}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4087, file: !229, line: 326, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!4025, !576, !22}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4087, file: !229, line: 327, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4025}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4087, file: !229, line: 328, baseType: !4090, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4087, file: !229, line: 329, baseType: !4090, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4087, file: !229, line: 330, baseType: !4090, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4087, file: !229, line: 331, baseType: !3981, size: 64, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4087, file: !229, line: 334, baseType: !4106, size: 64, offset: 448)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!4109, !429}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4087, file: !229, line: 335, baseType: !4111, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!22, !429, !4114}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4087, file: !229, line: 337, baseType: !4116, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!22, !429, !4109}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4087, file: !229, line: 339, baseType: !4120, size: 64, offset: 640)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!22, !576, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !577, file: !224, line: 1199, baseType: !4125, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !229, line: 430, size: 704, elements: !4128)
!4128 = !{!4129, !4135, !4136, !4140, !4141, !4142, !4157, !4180, !4184, !4185, !4208}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4127, file: !229, line: 431, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!22, !576, !22, !22, !4133}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4127, file: !229, line: 432, baseType: !3981, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4127, file: !229, line: 433, baseType: !4137, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!22, !576, !7}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4127, file: !229, line: 434, baseType: !4137, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4127, file: !229, line: 435, baseType: !3981, size: 64, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4127, file: !229, line: 436, baseType: !4143, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!22, !576, !22, !4146}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !229, line: 417, size: 256, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4147, file: !229, line: 418, baseType: !22, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4147, file: !229, line: 419, baseType: !7, size: 32, offset: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4147, file: !229, line: 420, baseType: !7, size: 32, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4147, file: !229, line: 422, baseType: !7, size: 32, offset: 96)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4147, file: !229, line: 423, baseType: !7, size: 32, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4147, file: !229, line: 424, baseType: !7, size: 32, offset: 160)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4147, file: !229, line: 425, baseType: !7, size: 32, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4147, file: !229, line: 426, baseType: !7, size: 32, offset: 224)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4127, file: !229, line: 437, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!22, !576, !4037, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !229, line: 345, size: 960, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4162, file: !229, line: 346, baseType: !22, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4162, file: !229, line: 347, baseType: !341, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4162, file: !229, line: 348, baseType: !341, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4162, file: !229, line: 349, baseType: !341, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4162, file: !229, line: 350, baseType: !341, size: 64, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4162, file: !229, line: 351, baseType: !341, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4162, file: !229, line: 352, baseType: !341, size: 64, offset: 384)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4162, file: !229, line: 353, baseType: !364, size: 64, offset: 448)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4162, file: !229, line: 355, baseType: !364, size: 64, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4162, file: !229, line: 356, baseType: !22, size: 32, offset: 576)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4162, file: !229, line: 357, baseType: !22, size: 32, offset: 608)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4162, file: !229, line: 358, baseType: !341, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4162, file: !229, line: 359, baseType: !341, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4162, file: !229, line: 360, baseType: !341, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4162, file: !229, line: 361, baseType: !364, size: 64, offset: 832)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4162, file: !229, line: 362, baseType: !22, size: 32, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4127, file: !229, line: 438, baseType: !4181, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!22, !576, !4123, !4161}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4127, file: !229, line: 440, baseType: !4158, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4127, file: !229, line: 441, baseType: !4186, size: 64, offset: 576)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!22, !576, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !229, line: 411, size: 1408, elements: !4191)
!4191 = !{!4192, !4193}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4190, file: !229, line: 412, baseType: !7, size: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4190, file: !229, line: 413, baseType: !4194, size: 1344, offset: 64)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4195, size: 1344, elements: !665)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !229, line: 397, size: 448, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4207}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4195, file: !229, line: 398, baseType: !7, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4195, file: !229, line: 399, baseType: !7, size: 32, offset: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4195, file: !229, line: 401, baseType: !7, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4195, file: !229, line: 402, baseType: !7, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4195, file: !229, line: 403, baseType: !7, size: 32, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4195, file: !229, line: 404, baseType: !7, size: 32, offset: 160)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4195, file: !229, line: 405, baseType: !7, size: 32, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4195, file: !229, line: 406, baseType: !343, size: 64, offset: 256)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4195, file: !229, line: 407, baseType: !4206, size: 64, offset: 320)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !341)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4195, file: !229, line: 408, baseType: !4206, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4127, file: !229, line: 442, baseType: !4137, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !577, file: !224, line: 1200, baseType: !4210, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4212)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !224, line: 54, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !577, file: !224, line: 1201, baseType: !39, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !577, file: !224, line: 1202, baseType: !39, size: 64, offset: 704)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !577, file: !224, line: 1203, baseType: !39, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !577, file: !224, line: 1204, baseType: !464, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !577, file: !224, line: 1205, baseType: !1204, size: 320, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !577, file: !224, line: 1206, baseType: !22, size: 32, offset: 1216)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !577, file: !224, line: 1207, baseType: !49, size: 32, offset: 1248)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !577, file: !224, line: 1209, baseType: !20, size: 64, offset: 1280)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !577, file: !224, line: 1211, baseType: !4222, size: 64, offset: 1344)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !224, line: 1211, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !577, file: !224, line: 1223, baseType: !4227, size: 64, offset: 1408)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !481, line: 34, size: 64, elements: !4228)
!4228 = !{!4229}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4227, file: !481, line: 35, baseType: !484, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !577, file: !224, line: 1224, baseType: !97, size: 128, offset: 1472)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !577, file: !224, line: 1225, baseType: !4232, size: 64, offset: 1600)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4234, line: 40, size: 7424, elements: !4235)
!4234 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4235 = !{!4236, !4238, !4239, !4240, !4243, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4270, !4271}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4233, file: !4234, line: 41, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !341)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4233, file: !4234, line: 42, baseType: !4237, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4233, file: !4234, line: 43, baseType: !2918, size: 64, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4233, file: !4234, line: 44, baseType: !4241, size: 64, offset: 192)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2737, line: 74, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4233, file: !4234, line: 45, baseType: !4244, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4234, line: 45, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4233, file: !4234, line: 46, baseType: !39, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4233, file: !4234, line: 47, baseType: !1352, size: 8, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4233, file: !4234, line: 48, baseType: !83, size: 8, offset: 392)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4233, file: !4234, line: 49, baseType: !1352, size: 8, offset: 400)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4233, file: !4234, line: 50, baseType: !1352, size: 8, offset: 408)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4233, file: !4234, line: 51, baseType: !581, size: 32, offset: 416)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4233, file: !4234, line: 52, baseType: !49, size: 32, offset: 448)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4233, file: !4234, line: 53, baseType: !59, size: 32, offset: 480)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4233, file: !4234, line: 54, baseType: !429, size: 64, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4233, file: !4234, line: 55, baseType: !20, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4233, file: !4234, line: 56, baseType: !20, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4233, file: !4234, line: 57, baseType: !4258, size: 64, offset: 704)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4234, line: 57, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4233, file: !4234, line: 58, baseType: !770, size: 256, offset: 768)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4233, file: !4234, line: 60, baseType: !22, size: 32, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4233, file: !4234, line: 61, baseType: !22, size: 32, offset: 1056)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4233, file: !4234, line: 62, baseType: !630, size: 64, offset: 1088)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4233, file: !4234, line: 65, baseType: !770, size: 256, offset: 1152)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4233, file: !4234, line: 66, baseType: !576, size: 64, offset: 1408)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4233, file: !4234, line: 68, baseType: !4268, size: 64, offset: 1472)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4234, line: 68, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4233, file: !4234, line: 72, baseType: !1352, size: 8, offset: 1536)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4233, file: !4234, line: 77, baseType: !4272, size: 5824, offset: 1600)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !165, line: 705, size: 5824, elements: !4273)
!4273 = !{!4274, !4275, !4277, !4280, !4281, !4334, !4420, !4421, !4422, !4423, !4424, !4431, !4523, !4536, !4546, !4550, !4552, !4553, !4554, !4558, !4565, !4566, !4569, !4572, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4734, !4735, !4736, !4739, !4742, !4751, !4752, !4753, !4754, !4755, !4756}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4272, file: !165, line: 706, baseType: !624, size: 512)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4272, file: !165, line: 707, baseType: !4276, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4272, file: !165, line: 709, baseType: !4278, size: 64, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !165, line: 37, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4272, file: !165, line: 711, baseType: !16, size: 64, offset: 640)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4272, file: !165, line: 712, baseType: !4282, size: 64, offset: 704)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !165, line: 89, size: 384, elements: !4285)
!4285 = !{!4286, !4287, !4288, !4294, !4299, !4303}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4284, file: !165, line: 90, baseType: !16, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4284, file: !165, line: 91, baseType: !709, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4284, file: !165, line: 92, baseType: !4289, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!22, !4292, !660}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4272)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4284, file: !165, line: 93, baseType: !4295, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!565, !4292, !4298, !1531, !1532}
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !165, line: 95, baseType: !4300, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4276}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4284, file: !165, line: 97, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !172, line: 286, size: 1472, elements: !4307)
!4307 = !{!4308, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4306, file: !172, line: 287, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!22, !4276}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4306, file: !172, line: 288, baseType: !4300, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4306, file: !172, line: 289, baseType: !4309, size: 64, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4306, file: !172, line: 290, baseType: !4309, size: 64, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4306, file: !172, line: 291, baseType: !4309, size: 64, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4306, file: !172, line: 292, baseType: !4309, size: 64, offset: 320)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4306, file: !172, line: 293, baseType: !4309, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4306, file: !172, line: 294, baseType: !4309, size: 64, offset: 448)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4306, file: !172, line: 295, baseType: !4309, size: 64, offset: 512)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4306, file: !172, line: 296, baseType: !4309, size: 64, offset: 576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4306, file: !172, line: 297, baseType: !4309, size: 64, offset: 640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4306, file: !172, line: 298, baseType: !4309, size: 64, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4306, file: !172, line: 299, baseType: !4309, size: 64, offset: 768)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4306, file: !172, line: 300, baseType: !4309, size: 64, offset: 832)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4306, file: !172, line: 301, baseType: !4309, size: 64, offset: 896)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4306, file: !172, line: 302, baseType: !4309, size: 64, offset: 960)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4306, file: !172, line: 303, baseType: !4309, size: 64, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4306, file: !172, line: 304, baseType: !4309, size: 64, offset: 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4306, file: !172, line: 305, baseType: !4309, size: 64, offset: 1152)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4306, file: !172, line: 306, baseType: !4309, size: 64, offset: 1216)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4306, file: !172, line: 307, baseType: !4309, size: 64, offset: 1280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4306, file: !172, line: 308, baseType: !4309, size: 64, offset: 1344)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4306, file: !172, line: 309, baseType: !4309, size: 64, offset: 1408)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4272, file: !165, line: 714, baseType: !4335, size: 64, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4338, line: 80, size: 1344, elements: !4339)
!4338 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4419}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4337, file: !4338, line: 81, baseType: !16, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4337, file: !4338, line: 82, baseType: !16, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4337, file: !4338, line: 83, baseType: !709, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4337, file: !4338, line: 84, baseType: !709, size: 64, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4337, file: !4338, line: 85, baseType: !709, size: 64, offset: 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4337, file: !4338, line: 87, baseType: !4346, size: 64, offset: 320)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!22, !4276, !4349}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !159, line: 96, size: 1152, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357, !4358, !4371, !4382, !4383, !4384, !4385, !4386, !4394, !4395, !4396, !4397, !4398, !4399}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4350, file: !159, line: 97, baseType: !16, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4350, file: !159, line: 98, baseType: !4335, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4350, file: !159, line: 100, baseType: !611, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4350, file: !159, line: 101, baseType: !16, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4350, file: !159, line: 103, baseType: !1352, size: 8, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4350, file: !159, line: 104, baseType: !158, size: 32, offset: 288)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4350, file: !159, line: 106, baseType: !4359, size: 64, offset: 320)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4362, line: 282, size: 1600, elements: !4363)
!4362 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4363 = !{!4364, !4365, !4366, !4370}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4361, file: !4362, line: 283, baseType: !2595, size: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4361, file: !4362, line: 284, baseType: !2595, size: 256, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4361, file: !4362, line: 285, baseType: !4367, size: 1024, offset: 512)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !4368)
!4368 = !{!4369}
!4369 = !DISubrange(count: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4361, file: !4362, line: 286, baseType: !1281, size: 64, offset: 1536)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4350, file: !159, line: 107, baseType: !4372, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4362, line: 217, size: 256, elements: !4375)
!4375 = !{!4376, !4378, !4380, !4381}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4374, file: !4362, line: 218, baseType: !4377, size: 128)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !1794)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4374, file: !4362, line: 219, baseType: !4379, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4362, line: 15, baseType: !39)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4374, file: !4362, line: 220, baseType: !336, size: 32, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4374, file: !4362, line: 221, baseType: !336, size: 32, offset: 224)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4350, file: !159, line: 109, baseType: !4309, size: 64, offset: 448)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4350, file: !159, line: 110, baseType: !4300, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4350, file: !159, line: 111, baseType: !4309, size: 64, offset: 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4350, file: !159, line: 112, baseType: !4300, size: 64, offset: 640)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4350, file: !159, line: 113, baseType: !4387, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!22, !4276, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !172, line: 60, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !172, line: 58, size: 32, elements: !4392)
!4392 = !{!4393}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4391, file: !172, line: 59, baseType: !22, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4350, file: !159, line: 114, baseType: !4309, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4350, file: !159, line: 115, baseType: !709, size: 64, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4350, file: !159, line: 116, baseType: !709, size: 64, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4350, file: !159, line: 118, baseType: !4304, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4350, file: !159, line: 119, baseType: !4300, size: 64, offset: 1024)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4350, file: !159, line: 121, baseType: !4400, size: 64, offset: 1088)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !159, line: 121, flags: DIFlagFwdDecl)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4337, file: !4338, line: 88, baseType: !4289, size: 64, offset: 384)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4337, file: !4338, line: 89, baseType: !4309, size: 64, offset: 448)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4337, file: !4338, line: 90, baseType: !4300, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4337, file: !4338, line: 91, baseType: !4300, size: 64, offset: 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4337, file: !4338, line: 92, baseType: !4300, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4337, file: !4338, line: 94, baseType: !4309, size: 64, offset: 704)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4337, file: !4338, line: 95, baseType: !4309, size: 64, offset: 768)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4337, file: !4338, line: 97, baseType: !4387, size: 64, offset: 832)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4337, file: !4338, line: 98, baseType: !4309, size: 64, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4337, file: !4338, line: 100, baseType: !4309, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4337, file: !4338, line: 102, baseType: !4309, size: 64, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4337, file: !4338, line: 103, baseType: !4300, size: 64, offset: 1088)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4337, file: !4338, line: 105, baseType: !4304, size: 64, offset: 1152)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4337, file: !4338, line: 107, baseType: !4416, size: 64, offset: 1216)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4338, line: 107, flags: DIFlagFwdDecl)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4337, file: !4338, line: 109, baseType: !1352, size: 8, offset: 1280)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4272, file: !165, line: 715, baseType: !4349, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4272, file: !165, line: 717, baseType: !20, size: 64, offset: 896)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4272, file: !165, line: 719, baseType: !20, size: 64, offset: 960)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4272, file: !165, line: 721, baseType: !770, size: 256, offset: 1024)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4272, file: !165, line: 725, baseType: !4425, size: 448, offset: 1280)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !165, line: 517, size: 448, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4425, file: !165, line: 518, baseType: !97, size: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4425, file: !165, line: 519, baseType: !97, size: 128, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4425, file: !165, line: 520, baseType: !97, size: 128, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4425, file: !165, line: 521, baseType: !164, size: 32, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4272, file: !165, line: 726, baseType: !4432, size: 2496, offset: 1728)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !172, line: 663, size: 2496, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4516, !4520}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4432, file: !172, line: 664, baseType: !4390, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4432, file: !172, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4432, file: !172, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4432, file: !172, line: 667, baseType: !1352, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4432, file: !172, line: 668, baseType: !1352, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4432, file: !172, line: 669, baseType: !1352, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4432, file: !172, line: 670, baseType: !1352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4432, file: !172, line: 671, baseType: !1352, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4432, file: !172, line: 672, baseType: !1352, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4432, file: !172, line: 673, baseType: !1352, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4432, file: !172, line: 674, baseType: !1352, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4432, file: !172, line: 675, baseType: !335, size: 32, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4432, file: !172, line: 676, baseType: !59, size: 32, offset: 96)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4432, file: !172, line: 678, baseType: !97, size: 128, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4432, file: !172, line: 679, baseType: !1506, size: 256, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4432, file: !172, line: 680, baseType: !4450, size: 64, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4452, line: 43, size: 1536, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4451, file: !4452, line: 44, baseType: !16, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4451, file: !4452, line: 45, baseType: !22, size: 32, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4451, file: !4452, line: 46, baseType: !97, size: 128, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4451, file: !4452, line: 47, baseType: !59, size: 32, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4451, file: !4452, line: 48, baseType: !4459, size: 64, offset: 320)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !172, line: 629, flags: DIFlagFwdDecl)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4451, file: !4452, line: 49, baseType: !2190, size: 320, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4451, file: !4452, line: 50, baseType: !39, size: 64, offset: 704)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4451, file: !4452, line: 51, baseType: !983, size: 64, offset: 768)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4451, file: !4452, line: 52, baseType: !983, size: 64, offset: 832)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4451, file: !4452, line: 53, baseType: !983, size: 64, offset: 896)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4451, file: !4452, line: 54, baseType: !983, size: 64, offset: 960)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4451, file: !4452, line: 55, baseType: !983, size: 64, offset: 1024)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4451, file: !4452, line: 56, baseType: !39, size: 64, offset: 1088)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4451, file: !4452, line: 57, baseType: !39, size: 64, offset: 1152)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4451, file: !4452, line: 58, baseType: !39, size: 64, offset: 1216)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4451, file: !4452, line: 59, baseType: !39, size: 64, offset: 1280)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4451, file: !4452, line: 60, baseType: !39, size: 64, offset: 1344)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4451, file: !4452, line: 61, baseType: !4276, size: 64, offset: 1408)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4451, file: !4452, line: 62, baseType: !1352, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4451, file: !4452, line: 63, baseType: !1352, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4432, file: !172, line: 681, baseType: !1352, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4432, file: !172, line: 682, baseType: !1352, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4432, file: !172, line: 683, baseType: !1352, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4432, file: !172, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4432, file: !172, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4432, file: !172, line: 690, baseType: !975, size: 512, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4432, file: !172, line: 691, baseType: !341, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4432, file: !172, line: 692, baseType: !1467, size: 256, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4432, file: !172, line: 693, baseType: !54, size: 192, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4432, file: !172, line: 694, baseType: !4459, size: 64, offset: 1664)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4432, file: !172, line: 695, baseType: !49, size: 32, offset: 1728)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4432, file: !172, line: 696, baseType: !49, size: 32, offset: 1760)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4432, file: !172, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4432, file: !172, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4432, file: !172, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4432, file: !172, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4432, file: !172, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4432, file: !172, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4432, file: !172, line: 703, baseType: !1352, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4432, file: !172, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4432, file: !172, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4432, file: !172, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4432, file: !172, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4432, file: !172, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4432, file: !172, line: 709, baseType: !7, size: 32, offset: 1824)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4432, file: !172, line: 710, baseType: !171, size: 32, offset: 1856)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4432, file: !172, line: 711, baseType: !179, size: 32, offset: 1888)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4432, file: !172, line: 712, baseType: !179, size: 32, offset: 1920)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4432, file: !172, line: 713, baseType: !22, size: 32, offset: 1952)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4432, file: !172, line: 714, baseType: !22, size: 32, offset: 1984)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4432, file: !172, line: 715, baseType: !341, size: 64, offset: 2048)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4432, file: !172, line: 716, baseType: !341, size: 64, offset: 2112)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4432, file: !172, line: 717, baseType: !341, size: 64, offset: 2176)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4432, file: !172, line: 718, baseType: !341, size: 64, offset: 2240)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4432, file: !172, line: 720, baseType: !4511, size: 64, offset: 2304)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !172, line: 632, size: 64, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4512, file: !172, line: 633, baseType: !59, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4512, file: !172, line: 634, baseType: !7, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4432, file: !172, line: 721, baseType: !4517, size: 64, offset: 2368)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4276, !338}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4432, file: !172, line: 722, baseType: !4521, size: 64, offset: 2432)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !172, line: 722, flags: DIFlagFwdDecl)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4272, file: !165, line: 727, baseType: !4524, size: 64, offset: 4224)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !172, line: 742, size: 1792, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4533, !4534, !4535}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4525, file: !172, line: 743, baseType: !4306, size: 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4525, file: !172, line: 744, baseType: !4309, size: 64, offset: 1472)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4525, file: !172, line: 745, baseType: !4530, size: 64, offset: 1536)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !4276, !1352}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4525, file: !172, line: 746, baseType: !4309, size: 64, offset: 1600)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4525, file: !172, line: 747, baseType: !4300, size: 64, offset: 1664)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4525, file: !172, line: 748, baseType: !4300, size: 64, offset: 1728)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4272, file: !165, line: 736, baseType: !4537, size: 128, offset: 4288)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !165, line: 529, size: 128, elements: !4538)
!4538 = !{!4539, !4543}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4537, file: !165, line: 531, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4542, line: 13, flags: DIFlagFwdDecl)
!4542 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4537, file: !165, line: 532, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !165, line: 49, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4272, file: !165, line: 738, baseType: !4547, size: 64, offset: 4416)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !165, line: 738, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4272, file: !165, line: 740, baseType: !4551, size: 64, offset: 4480)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4272, file: !165, line: 741, baseType: !341, size: 64, offset: 4544)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4272, file: !165, line: 746, baseType: !341, size: 64, offset: 4608)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4272, file: !165, line: 747, baseType: !4555, size: 64, offset: 4672)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4557)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !165, line: 747, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4272, file: !165, line: 749, baseType: !4559, size: 64, offset: 4736)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !165, line: 428, size: 128, elements: !4561)
!4561 = !{!4562, !4563, !4564}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4560, file: !165, line: 433, baseType: !7, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4560, file: !165, line: 434, baseType: !7, size: 32, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4560, file: !165, line: 435, baseType: !39, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4272, file: !165, line: 751, baseType: !97, size: 128, offset: 4800)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4272, file: !165, line: 762, baseType: !4567, size: 64, offset: 4928)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !165, line: 762, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4272, file: !165, line: 770, baseType: !4570, offset: 4992)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4571, line: 5, elements: !373)
!4571 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4272, file: !165, line: 772, baseType: !4573, size: 64, offset: 4992)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4575, line: 48, size: 1152, elements: !4576)
!4575 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4576 = !{!4577, !4578, !4580, !4581, !4684, !4692, !4693, !4694, !4695, !4696, !4697}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4574, file: !4575, line: 49, baseType: !16, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4574, file: !4575, line: 50, baseType: !4579, size: 32, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4575, line: 25, baseType: !335)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4574, file: !4575, line: 51, baseType: !16, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4574, file: !4575, line: 52, baseType: !4582, size: 512, offset: 192)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4583, line: 41, size: 512, elements: !4584)
!4583 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4584 = !{!4585, !4587, !4680, !4681, !4682, !4683}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4582, file: !4583, line: 42, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4582, file: !4583, line: 43, baseType: !4588, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4583, line: 125, size: 1408, elements: !4591)
!4591 = !{!4592, !4596, !4600, !4606, !4610, !4611, !4615, !4619, !4623, !4627, !4631, !4632, !4636, !4640, !4644, !4655, !4656, !4657, !4658, !4668, !4672, !4676}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4590, file: !4583, line: 126, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!4586, !4586}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4590, file: !4583, line: 127, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4586}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4590, file: !4583, line: 128, baseType: !4601, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!1352, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4590, file: !4583, line: 129, baseType: !4607, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!1281, !4604, !4292}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4590, file: !4583, line: 131, baseType: !4601, size: 64, offset: 256)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4590, file: !4583, line: 133, baseType: !4612, size: 64, offset: 320)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!186, !4604}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4590, file: !4583, line: 134, baseType: !4616, size: 64, offset: 384)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!1352, !4604, !16}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4590, file: !4583, line: 136, baseType: !4620, size: 64, offset: 448)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!22, !4604, !16, !7, !20, !35}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4590, file: !4583, line: 141, baseType: !4624, size: 64, offset: 512)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!22, !4604, !16, !3892, !35}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4590, file: !4583, line: 144, baseType: !4628, size: 64, offset: 576)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!16, !4604}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4590, file: !4583, line: 145, baseType: !4628, size: 64, offset: 640)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4590, file: !4583, line: 146, baseType: !4633, size: 64, offset: 704)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!4586, !4604}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4590, file: !4583, line: 148, baseType: !4637, size: 64, offset: 768)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!4586, !4604, !4586}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4590, file: !4583, line: 151, baseType: !4641, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!4586, !4604, !16}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4590, file: !4583, line: 153, baseType: !4645, size: 64, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!22, !4604, !16, !16, !7, !7, !4648}
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4583, line: 94, size: 640, elements: !4650)
!4650 = !{!4651, !4652, !4653}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4649, file: !4583, line: 95, baseType: !4586, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4649, file: !4583, line: 96, baseType: !7, size: 32, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4649, file: !4583, line: 97, baseType: !4654, size: 512, offset: 128)
!4654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 512, elements: !1018)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4590, file: !4583, line: 158, baseType: !4637, size: 64, offset: 960)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4590, file: !4583, line: 161, baseType: !4633, size: 64, offset: 1024)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4590, file: !4583, line: 163, baseType: !4593, size: 64, offset: 1088)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4590, file: !4583, line: 164, baseType: !4659, size: 64, offset: 1152)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!22, !4604, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4583, line: 73, size: 128, elements: !4664)
!4664 = !{!4665, !4666, !4667}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4663, file: !4583, line: 74, baseType: !7, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4663, file: !4583, line: 75, baseType: !7, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4663, file: !4583, line: 76, baseType: !4604, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4590, file: !4583, line: 166, baseType: !4669, size: 64, offset: 1216)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!20, !4586, !22}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4590, file: !4583, line: 167, baseType: !4673, size: 64, offset: 1280)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!22, !4604, !7}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4590, file: !4583, line: 168, baseType: !4677, size: 64, offset: 1344)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!22, !4586}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4582, file: !4583, line: 44, baseType: !4276, size: 64, offset: 128)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4582, file: !4583, line: 45, baseType: !97, size: 128, offset: 192)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4582, file: !4583, line: 46, baseType: !97, size: 128, offset: 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4582, file: !4583, line: 47, baseType: !83, size: 8, offset: 448)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4574, file: !4575, line: 54, baseType: !4685, size: 64, offset: 704)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4575, line: 28, size: 256, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4686, file: !4575, line: 29, baseType: !565, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4686, file: !4575, line: 30, baseType: !22, size: 32, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4686, file: !4575, line: 31, baseType: !20, size: 64, offset: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4686, file: !4575, line: 32, baseType: !4685, size: 64, offset: 192)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4574, file: !4575, line: 55, baseType: !4685, size: 64, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4574, file: !4575, line: 56, baseType: !4573, size: 64, offset: 832)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4574, file: !4575, line: 57, baseType: !4573, size: 64, offset: 896)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4574, file: !4575, line: 58, baseType: !4573, size: 64, offset: 960)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4574, file: !4575, line: 62, baseType: !39, size: 64, offset: 1024)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4574, file: !4575, line: 63, baseType: !20, size: 64, offset: 1088)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4272, file: !165, line: 773, baseType: !4586, size: 64, offset: 5056)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4272, file: !165, line: 776, baseType: !22, size: 32, offset: 5120)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4272, file: !165, line: 778, baseType: !581, size: 32, offset: 5152)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4272, file: !165, line: 779, baseType: !335, size: 32, offset: 5184)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4272, file: !165, line: 781, baseType: !59, size: 32, offset: 5216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4272, file: !165, line: 782, baseType: !97, size: 128, offset: 5248)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4272, file: !165, line: 784, baseType: !4705, size: 64, offset: 5376)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4707)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4708, line: 52, size: 768, elements: !4709)
!4708 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4718, !4722, !4723, !4724, !4725, !4729, !4733}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4707, file: !4708, line: 53, baseType: !16, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4707, file: !4708, line: 55, baseType: !709, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4707, file: !4708, line: 56, baseType: !709, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4707, file: !4708, line: 58, baseType: !4289, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4707, file: !4708, line: 59, baseType: !4715, size: 64, offset: 256)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!565, !4292, !4298}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4707, file: !4708, line: 61, baseType: !4719, size: 64, offset: 320)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{null, !4705}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4707, file: !4708, line: 62, baseType: !4300, size: 64, offset: 384)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4707, file: !4708, line: 64, baseType: !4309, size: 64, offset: 448)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4707, file: !4708, line: 66, baseType: !3544, size: 64, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4707, file: !4708, line: 67, baseType: !4726, size: 64, offset: 576)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!1281, !4292}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4707, file: !4708, line: 69, baseType: !4730, size: 64, offset: 640)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !4292, !1531, !1532}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4707, file: !4708, line: 71, baseType: !4304, size: 64, offset: 704)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4272, file: !165, line: 785, baseType: !709, size: 64, offset: 5440)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4272, file: !165, line: 787, baseType: !4300, size: 64, offset: 5504)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4272, file: !165, line: 788, baseType: !4737, size: 64, offset: 5568)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !165, line: 46, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4272, file: !165, line: 789, baseType: !4740, size: 64, offset: 5632)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !165, line: 48, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4272, file: !165, line: 791, baseType: !4743, size: 64, offset: 5696)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !165, line: 597, size: 128, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4750}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4744, file: !165, line: 598, baseType: !198, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4744, file: !165, line: 599, baseType: !207, size: 32, offset: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4744, file: !165, line: 600, baseType: !212, size: 32, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4744, file: !165, line: 601, baseType: !1352, size: 8, offset: 96)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4744, file: !165, line: 602, baseType: !1352, size: 8, offset: 104)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4272, file: !165, line: 793, baseType: !217, size: 32, offset: 5760)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4272, file: !165, line: 795, baseType: !1352, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4272, file: !165, line: 796, baseType: !1352, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4272, file: !165, line: 797, baseType: !1352, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4272, file: !165, line: 798, baseType: !1352, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4272, file: !165, line: 799, baseType: !1352, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !577, file: !224, line: 1226, baseType: !4758, size: 64, offset: 1664)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !224, line: 1226, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !577, file: !224, line: 1227, baseType: !4761, size: 64, offset: 1728)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !235, line: 163, size: 6848, elements: !4763)
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4762, file: !235, line: 164, baseType: !341, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4762, file: !235, line: 165, baseType: !905, size: 192, align: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4762, file: !235, line: 166, baseType: !97, size: 128, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4762, file: !235, line: 167, baseType: !39, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4762, file: !235, line: 168, baseType: !39, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4762, file: !235, line: 170, baseType: !3581, size: 32, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4762, file: !235, line: 171, baseType: !7, size: 32, offset: 544)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4762, file: !235, line: 172, baseType: !7, size: 32, offset: 576)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4762, file: !235, line: 173, baseType: !7, size: 32, offset: 608)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4762, file: !235, line: 173, baseType: !7, size: 32, offset: 640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4762, file: !235, line: 179, baseType: !763, size: 64, offset: 704)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4762, file: !235, line: 184, baseType: !39, size: 64, offset: 768)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4762, file: !235, line: 186, baseType: !4777, size: 4672, offset: 832)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !235, line: 105, size: 4672, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4777, file: !235, line: 106, baseType: !4761, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4777, file: !235, line: 108, baseType: !39, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4777, file: !235, line: 109, baseType: !39, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4777, file: !235, line: 111, baseType: !97, size: 128, offset: 192)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4777, file: !235, line: 112, baseType: !97, size: 128, offset: 320)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4777, file: !235, line: 113, baseType: !97, size: 128, offset: 448)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4777, file: !235, line: 114, baseType: !97, size: 128, offset: 576)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4777, file: !235, line: 115, baseType: !59, size: 32, offset: 704)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4777, file: !235, line: 117, baseType: !49, size: 32, offset: 736)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4777, file: !235, line: 118, baseType: !1241, size: 1280, offset: 768)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4777, file: !235, line: 120, baseType: !39, size: 64, offset: 2048)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4777, file: !235, line: 121, baseType: !39, size: 64, offset: 2112)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4777, file: !235, line: 122, baseType: !39, size: 64, offset: 2176)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4777, file: !235, line: 123, baseType: !39, size: 64, offset: 2240)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4777, file: !235, line: 124, baseType: !39, size: 64, offset: 2304)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4777, file: !235, line: 132, baseType: !39, size: 64, offset: 2368)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4777, file: !235, line: 133, baseType: !39, size: 64, offset: 2432)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4777, file: !235, line: 135, baseType: !4797, size: 384, offset: 2496)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4798, line: 76, size: 384, elements: !4799)
!4798 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4799 = !{!4800, !4801, !4802}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4797, file: !4798, line: 78, baseType: !1242, size: 320)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4797, file: !4798, line: 80, baseType: !7, size: 32, offset: 320)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4797, file: !4798, line: 81, baseType: !775, size: 32, offset: 352)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4777, file: !235, line: 136, baseType: !22, size: 32, offset: 2880)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4777, file: !235, line: 137, baseType: !234, size: 32, offset: 2912)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4777, file: !235, line: 139, baseType: !59, size: 32, offset: 2944)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4777, file: !235, line: 140, baseType: !97, size: 128, offset: 3008)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4777, file: !235, line: 141, baseType: !3874, size: 704, offset: 3136)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4777, file: !235, line: 142, baseType: !3874, size: 704, offset: 3840)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4777, file: !235, line: 144, baseType: !97, size: 128, offset: 4544)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4762, file: !235, line: 187, baseType: !97, size: 128, offset: 5504)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4762, file: !235, line: 193, baseType: !54, size: 192, offset: 5632)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4762, file: !235, line: 195, baseType: !4276, size: 64, offset: 5824)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4762, file: !235, line: 196, baseType: !2229, size: 512, offset: 5888)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4762, file: !235, line: 197, baseType: !4276, size: 64, offset: 6400)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4762, file: !235, line: 199, baseType: !2190, size: 320, offset: 6464)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4762, file: !235, line: 202, baseType: !464, size: 64, offset: 6784)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !577, file: !224, line: 1228, baseType: !4818, size: 64, offset: 1792)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !224, line: 1228, flags: DIFlagFwdDecl)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !577, file: !224, line: 1229, baseType: !826, size: 128, offset: 1856)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !577, file: !224, line: 1230, baseType: !7, size: 32, offset: 1984)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !577, file: !224, line: 1231, baseType: !4823, size: 2496, offset: 2048)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !229, line: 521, size: 2496, elements: !4824)
!4824 = !{!4825, !4826, !4827, !4829, !4861}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4823, file: !229, line: 522, baseType: !7, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4823, file: !229, line: 523, baseType: !1204, size: 320, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4823, file: !229, line: 524, baseType: !4828, size: 192, offset: 384)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !665)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4823, file: !229, line: 525, baseType: !4830, size: 1728, offset: 576)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4831, size: 1728, elements: !665)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !229, line: 222, size: 576, elements: !4832)
!4832 = !{!4833, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4831, file: !229, line: 223, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !229, line: 445, size: 256, elements: !4836)
!4836 = !{!4837, !4838, !4851, !4852}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4835, file: !229, line: 446, baseType: !22, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4835, file: !229, line: 447, baseType: !4839, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4841)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !229, line: 312, size: 512, elements: !4842)
!4842 = !{!4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4841, file: !229, line: 313, baseType: !3981, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4841, file: !229, line: 314, baseType: !3981, size: 64, offset: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4841, file: !229, line: 315, baseType: !3981, size: 64, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4841, file: !229, line: 316, baseType: !3981, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4841, file: !229, line: 317, baseType: !4090, size: 64, offset: 256)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4841, file: !229, line: 318, baseType: !4090, size: 64, offset: 320)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4841, file: !229, line: 319, baseType: !4090, size: 64, offset: 384)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4841, file: !229, line: 320, baseType: !4120, size: 64, offset: 448)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4835, file: !229, line: 448, baseType: !611, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4835, file: !229, line: 449, baseType: !4834, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4831, file: !229, line: 224, baseType: !22, size: 32, offset: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4831, file: !229, line: 226, baseType: !97, size: 128, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4831, file: !229, line: 227, baseType: !39, size: 64, offset: 256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4831, file: !229, line: 228, baseType: !7, size: 32, offset: 320)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4831, file: !229, line: 229, baseType: !7, size: 32, offset: 352)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4831, file: !229, line: 230, baseType: !4058, size: 64, offset: 384)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4831, file: !229, line: 231, baseType: !4058, size: 64, offset: 448)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4831, file: !229, line: 232, baseType: !20, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4823, file: !229, line: 526, baseType: !4862, size: 192, offset: 2304)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4839, size: 192, elements: !665)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !577, file: !224, line: 1233, baseType: !4864, size: 2368, offset: 4544)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !224, line: 1184, size: 2368, elements: !4865)
!4865 = !{!4866, !4867, !4868}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4864, file: !224, line: 1185, baseType: !26, size: 16)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4864, file: !224, line: 1186, baseType: !26, size: 16, offset: 16)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4864, file: !224, line: 1187, baseType: !4869, size: 2304, offset: 64)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4870, size: 2304, elements: !665)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4871, line: 12, size: 768, elements: !4872)
!4871 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4872 = !{!4873, !4881, !4882, !4887, !4888}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4870, file: !4871, line: 13, baseType: !4874, size: 384)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4875, line: 17, size: 384, elements: !4876)
!4875 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4876 = !{!4877, !4878, !4879, !4880}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4874, file: !4875, line: 18, baseType: !22, size: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4874, file: !4875, line: 19, baseType: !22, size: 32, offset: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4874, file: !4875, line: 20, baseType: !54, size: 192, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4874, file: !4875, line: 22, baseType: !750, size: 128, align: 64, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4870, file: !4871, line: 14, baseType: !3684, size: 64, offset: 384)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4870, file: !4871, line: 15, baseType: !4883, size: 64, offset: 448)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4884, line: 16, size: 64, elements: !4885)
!4884 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4885 = !{!4886}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4883, file: !4884, line: 17, baseType: !863, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4870, file: !4871, line: 16, baseType: !54, size: 192, offset: 512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4870, file: !4871, line: 17, baseType: !49, size: 32, offset: 704)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !577, file: !224, line: 1240, baseType: !20, size: 64, offset: 6912)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !577, file: !224, line: 1243, baseType: !335, size: 32, offset: 6976)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !577, file: !224, line: 1245, baseType: !1378, size: 64, offset: 7040)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !577, file: !224, line: 1246, baseType: !1378, size: 64, offset: 7104)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !577, file: !224, line: 1248, baseType: !336, size: 32, offset: 7168)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !577, file: !224, line: 1249, baseType: !4895, size: 64, offset: 7232)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !224, line: 634, flags: DIFlagFwdDecl)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !577, file: !224, line: 1252, baseType: !2595, size: 256, offset: 7296)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !577, file: !224, line: 1253, baseType: !4899, size: 128, offset: 7552)
!4899 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4900, line: 21, baseType: !4901)
!4900 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4900, line: 19, size: 128, elements: !4902)
!4902 = !{!4903}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4901, file: !4900, line: 20, baseType: !4377, size: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !577, file: !224, line: 1255, baseType: !7, size: 32, offset: 7680)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !577, file: !224, line: 1261, baseType: !770, size: 256, offset: 7744)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !577, file: !224, line: 1267, baseType: !16, size: 64, offset: 8000)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !577, file: !224, line: 1269, baseType: !522, size: 64, offset: 8064)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !577, file: !224, line: 1271, baseType: !4909, size: 448, offset: 8128)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4073, line: 63, size: 448, elements: !4910)
!4910 = !{!4911, !4916, !4917, !4918, !4919, !4920, !4921}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4909, file: !4073, line: 64, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!39, !4915, !4071}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4909, file: !4073, line: 66, baseType: !4912, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4909, file: !4073, line: 69, baseType: !402, size: 64, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4909, file: !4073, line: 70, baseType: !22, size: 32, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4909, file: !4073, line: 71, baseType: !7, size: 32, offset: 224)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4909, file: !4073, line: 74, baseType: !97, size: 128, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4909, file: !4073, line: 85, baseType: !4922, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !577, file: !224, line: 1274, baseType: !763, size: 64, offset: 8576)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !577, file: !224, line: 1280, baseType: !763, size: 64, offset: 8640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !577, file: !224, line: 1283, baseType: !22, size: 32, offset: 8704)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !577, file: !224, line: 1286, baseType: !3528, size: 32, offset: 8736)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !577, file: !224, line: 1289, baseType: !2425, size: 64, offset: 8768)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !577, file: !224, line: 1290, baseType: !822, size: 64, offset: 8832)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !577, file: !224, line: 1297, baseType: !1307, size: 64, offset: 8896)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !577, file: !224, line: 1304, baseType: !4931, size: 64, offset: 8960)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4932, line: 49, size: 64, elements: !4933)
!4932 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4933 = !{!4934}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4931, file: !4932, line: 50, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4932, line: 41, size: 512, align: 512, elements: !4937)
!4937 = !{!4938, !4939, !4944}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4936, file: !4932, line: 43, baseType: !59, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4936, file: !4932, line: 45, baseType: !4940, size: 192, offset: 64)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4932, line: 29, size: 192, elements: !4941)
!4941 = !{!4942, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4940, file: !4932, line: 30, baseType: !97, size: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4940, file: !4932, line: 32, baseType: !402, size: 64, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4936, file: !4932, line: 46, baseType: !402, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !577, file: !224, line: 1305, baseType: !4931, size: 64, offset: 9024)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !577, file: !224, line: 1306, baseType: !750, size: 128, align: 64, offset: 9088)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !577, file: !224, line: 1307, baseType: !1467, size: 256, offset: 9216)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !577, file: !224, line: 1309, baseType: !770, size: 256, offset: 9472)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !577, file: !224, line: 1314, baseType: !22, size: 32, offset: 9728)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !577, file: !224, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !577, file: !224, line: 1318, baseType: !97, size: 128, offset: 10304)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !577, file: !224, line: 1320, baseType: !59, size: 32, offset: 10432)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !577, file: !224, line: 1321, baseType: !97, size: 128, offset: 10496)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !571, file: !572, line: 73, baseType: !22, size: 32, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !571, file: !572, line: 74, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1737, line: 42, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !524, file: !466, line: 141, baseType: !4960, size: 64, offset: 704)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!22, !4133, !1352}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !524, file: !466, line: 142, baseType: !4964, size: 64, offset: 768)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!464, !464, !4967}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !465, file: !466, line: 96, baseType: !576, size: 64, offset: 832)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !465, file: !466, line: 97, baseType: !39, size: 64, offset: 896)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !465, file: !466, line: 98, baseType: !20, size: 64, offset: 960)
!4972 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !466, line: 100, baseType: !4973, size: 128, offset: 1024)
!4973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !466, line: 100, size: 128, elements: !4974)
!4974 = !{!4975, !4976}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4973, file: !466, line: 101, baseType: !97, size: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4973, file: !466, line: 102, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !465, file: !466, line: 104, baseType: !97, size: 128, offset: 1152)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !465, file: !466, line: 105, baseType: !97, size: 128, offset: 1280)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !465, file: !466, line: 113, baseType: !4981, size: 128, offset: 1408)
!4981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !466, line: 109, size: 128, elements: !4982)
!4982 = !{!4983, !4984, !4985}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4981, file: !466, line: 110, baseType: !826, size: 128)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4981, file: !466, line: 111, baseType: !480, size: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4981, file: !466, line: 112, baseType: !750, size: 128, align: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !458, file: !224, line: 1968, baseType: !4987, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!16, !464, !429, !4990}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4992, line: 10, size: 128, elements: !4993)
!4992 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4993 = !{!4994, !4995}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4991, file: !4992, line: 11, baseType: !3568, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4991, file: !4992, line: 12, baseType: !20, size: 64, offset: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !458, file: !224, line: 1969, baseType: !4997, size: 64, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!22, !4956, !429, !22}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !458, file: !224, line: 1970, baseType: !5001, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!452, !429, !22, !1352}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !458, file: !224, line: 1972, baseType: !5005, size: 64, offset: 256)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!22, !464, !565, !22}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !458, file: !224, line: 1974, baseType: !5009, size: 64, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!22, !4956, !429, !464, !24, !1352}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !458, file: !224, line: 1976, baseType: !5013, size: 64, offset: 384)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!22, !464, !429, !464}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !458, file: !224, line: 1977, baseType: !5017, size: 64, offset: 448)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{!22, !429, !464}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !458, file: !224, line: 1978, baseType: !5021, size: 64, offset: 512)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!22, !4956, !429, !464, !16}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !458, file: !224, line: 1980, baseType: !5025, size: 64, offset: 576)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!22, !4956, !429, !464, !24}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !458, file: !224, line: 1982, baseType: !5017, size: 64, offset: 640)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !458, file: !224, line: 1983, baseType: !5030, size: 64, offset: 704)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!22, !4956, !429, !464, !24, !581}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !458, file: !224, line: 1985, baseType: !5034, size: 64, offset: 768)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!22, !4956, !429, !464, !429, !464, !7}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !458, file: !224, line: 1987, baseType: !5038, size: 64, offset: 832)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!22, !4956, !464, !5041}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !224, line: 226, size: 640, elements: !5043)
!5043 = !{!5044, !5045, !5046, !5056, !5065, !5066, !5067, !5068, !5069}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5042, file: !224, line: 227, baseType: !7, size: 32)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5042, file: !224, line: 228, baseType: !24, size: 16, offset: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, scope: !5042, file: !224, line: 241, baseType: !5047, size: 32, offset: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5042, file: !224, line: 241, size: 32, elements: !5048)
!5048 = !{!5049, !5050}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5047, file: !224, line: 242, baseType: !435, size: 32)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5047, file: !224, line: 243, baseType: !5051, size: 32)
!5051 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5052, line: 16, baseType: !5053)
!5052 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5052, line: 14, size: 32, elements: !5054)
!5054 = !{!5055}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5053, file: !5052, line: 15, baseType: !440, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, scope: !5042, file: !224, line: 245, baseType: !5057, size: 32, offset: 96)
!5057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5042, file: !224, line: 245, size: 32, elements: !5058)
!5058 = !{!5059, !5060}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5057, file: !224, line: 246, baseType: !444, size: 32)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5057, file: !224, line: 247, baseType: !5061, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5052, line: 20, baseType: !5062)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5052, line: 18, size: 32, elements: !5063)
!5063 = !{!5064}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5062, file: !5052, line: 19, baseType: !448, size: 32)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5042, file: !224, line: 249, baseType: !41, size: 64, offset: 128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5042, file: !224, line: 250, baseType: !1851, size: 128, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5042, file: !224, line: 251, baseType: !1851, size: 128, offset: 320)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5042, file: !224, line: 252, baseType: !1851, size: 128, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5042, file: !224, line: 259, baseType: !737, size: 64, offset: 576)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !458, file: !224, line: 1988, baseType: !5071, size: 64, offset: 896)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!22, !4956, !4133, !5074, !335, !7}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5076, line: 22, size: 1280, elements: !5077)
!5076 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5075, file: !5076, line: 23, baseType: !335, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5075, file: !5076, line: 24, baseType: !24, size: 16, offset: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5075, file: !5076, line: 25, baseType: !7, size: 32, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5075, file: !5076, line: 26, baseType: !1386, size: 32, offset: 96)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5075, file: !5076, line: 27, baseType: !341, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5075, file: !5076, line: 28, baseType: !341, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5075, file: !5076, line: 41, baseType: !341, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5075, file: !5076, line: 42, baseType: !581, size: 32, offset: 320)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5075, file: !5076, line: 43, baseType: !581, size: 32, offset: 352)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5075, file: !5076, line: 44, baseType: !435, size: 32, offset: 384)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5075, file: !5076, line: 45, baseType: !444, size: 32, offset: 416)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5075, file: !5076, line: 46, baseType: !41, size: 64, offset: 448)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5075, file: !5076, line: 47, baseType: !1851, size: 128, offset: 512)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5075, file: !5076, line: 48, baseType: !1851, size: 128, offset: 640)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5075, file: !5076, line: 49, baseType: !1851, size: 128, offset: 768)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5075, file: !5076, line: 50, baseType: !1851, size: 128, offset: 896)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5075, file: !5076, line: 51, baseType: !341, size: 64, offset: 1024)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5075, file: !5076, line: 52, baseType: !341, size: 64, offset: 1088)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5075, file: !5076, line: 53, baseType: !335, size: 32, offset: 1152)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5075, file: !5076, line: 54, baseType: !335, size: 32, offset: 1184)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5075, file: !5076, line: 55, baseType: !341, size: 64, offset: 1216)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !458, file: !224, line: 1990, baseType: !5100, size: 64, offset: 960)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!696, !464, !565, !35}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !458, file: !224, line: 1991, baseType: !5104, size: 64, offset: 1024)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!22, !429, !5107, !341, !341}
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !224, line: 55, flags: DIFlagFwdDecl)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !458, file: !224, line: 1993, baseType: !5110, size: 64, offset: 1088)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!22, !429, !22}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !458, file: !224, line: 1994, baseType: !5114, size: 64, offset: 1152)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!22, !429, !464, !737, !7, !24}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !458, file: !224, line: 1997, baseType: !5118, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!22, !4956, !429, !737, !24}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !458, file: !224, line: 1999, baseType: !5122, size: 64, offset: 1280)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!452, !4956, !464, !22}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !458, file: !224, line: 2001, baseType: !5126, size: 64, offset: 1344)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!22, !4956, !464, !452, !22}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !458, file: !224, line: 2003, baseType: !5130, size: 64, offset: 1408)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!22, !4956, !464, !5133}
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !224, line: 76, flags: DIFlagFwdDecl)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !458, file: !224, line: 2005, baseType: !5136, size: 64, offset: 1472)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!22, !464, !5133}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !458, file: !224, line: 2006, baseType: !5140, size: 64, offset: 1536)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!5143, !429}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !224, line: 3192, size: 192, elements: !5145)
!5145 = !{!5146, !5147}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5144, file: !224, line: 3193, baseType: !851, size: 128)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5144, file: !224, line: 3194, baseType: !335, size: 32, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !224, line: 655, baseType: !576, size: 64, offset: 448)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !224, line: 656, baseType: !425, size: 64, offset: 512)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !430, file: !224, line: 659, baseType: !20, size: 64, offset: 576)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !224, line: 663, baseType: !39, size: 64, offset: 640)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !224, line: 671, baseType: !5153, size: 32, offset: 704)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !224, line: 671, size: 32, elements: !5154)
!5154 = !{!5155, !5157}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5153, file: !224, line: 672, baseType: !5156, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5153, file: !224, line: 673, baseType: !7, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !224, line: 675, baseType: !581, size: 32, offset: 736)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !224, line: 676, baseType: !41, size: 64, offset: 768)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !224, line: 677, baseType: !1851, size: 128, offset: 832)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !224, line: 678, baseType: !1851, size: 128, offset: 960)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !430, file: !224, line: 679, baseType: !1851, size: 128, offset: 1088)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !224, line: 680, baseType: !59, size: 32, offset: 1216)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !224, line: 681, baseType: !26, size: 16, offset: 1248)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !224, line: 682, baseType: !83, size: 8, offset: 1264)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !224, line: 683, baseType: !83, size: 8, offset: 1272)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !224, line: 684, baseType: !4206, size: 64, offset: 1280)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !224, line: 691, baseType: !39, size: 64, offset: 1344)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !224, line: 692, baseType: !1204, size: 320, offset: 1408)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !224, line: 694, baseType: !39, size: 64, offset: 1728)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !224, line: 695, baseType: !39, size: 64, offset: 1792)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !224, line: 697, baseType: !826, size: 128, offset: 1856)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !224, line: 698, baseType: !97, size: 128, offset: 1984)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !224, line: 707, baseType: !97, size: 128, offset: 2112)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !224, line: 708, baseType: !97, size: 128, offset: 2240)
!5176 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !224, line: 709, baseType: !5177, size: 128, offset: 2368)
!5177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !224, line: 709, size: 128, elements: !5178)
!5178 = !{!5179, !5180}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5177, file: !224, line: 710, baseType: !822, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5177, file: !224, line: 711, baseType: !750, size: 128, align: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !224, line: 713, baseType: !765, size: 64, offset: 2496)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !224, line: 714, baseType: !765, size: 64, offset: 2560)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !224, line: 715, baseType: !49, size: 32, offset: 2624)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !224, line: 716, baseType: !49, size: 32, offset: 2656)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !224, line: 717, baseType: !49, size: 32, offset: 2688)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !224, line: 719, baseType: !49, size: 32, offset: 2720)
!5187 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !224, line: 721, baseType: !5188, size: 64, offset: 2752)
!5188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !224, line: 721, size: 64, elements: !5189)
!5189 = !{!5190, !5191}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5188, file: !224, line: 722, baseType: !3284, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5188, file: !224, line: 723, baseType: !3942, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !224, line: 725, baseType: !5193, size: 64, offset: 2816)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !224, line: 725, flags: DIFlagFwdDecl)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !224, line: 726, baseType: !426, size: 1536, align: 64, offset: 2880)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !224, line: 727, baseType: !97, size: 128, offset: 4416)
!5197 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !224, line: 728, baseType: !5198, size: 64, offset: 4544)
!5198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !224, line: 728, size: 64, elements: !5199)
!5199 = !{!5200, !5201, !5204, !5205}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5198, file: !224, line: 729, baseType: !2900, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5198, file: !224, line: 730, baseType: !5202, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !224, line: 730, flags: DIFlagFwdDecl)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5198, file: !224, line: 731, baseType: !565, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5198, file: !224, line: 732, baseType: !7, size: 32)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !224, line: 735, baseType: !336, size: 32, offset: 4608)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !224, line: 738, baseType: !336, size: 32, offset: 4640)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !224, line: 739, baseType: !4895, size: 64, offset: 4672)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !224, line: 750, baseType: !20, size: 64, offset: 4736)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !426, file: !224, line: 474, baseType: !851, size: 128, offset: 64)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !426, file: !224, line: 475, baseType: !1204, size: 320, offset: 192)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !426, file: !224, line: 476, baseType: !856, size: 32, offset: 512)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !426, file: !224, line: 477, baseType: !49, size: 32, offset: 544)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !426, file: !224, line: 482, baseType: !1034, size: 128, offset: 576)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !426, file: !224, line: 483, baseType: !39, size: 64, offset: 704)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !426, file: !224, line: 484, baseType: !39, size: 64, offset: 768)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !426, file: !224, line: 485, baseType: !5218, size: 64, offset: 832)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5220)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !224, line: 404, size: 1280, elements: !5221)
!5221 = !{!5222, !5226, !5230, !5234, !5238, !5254, !5258, !5262, !5266, !5270, !5274, !5278, !5279, !5283, !5287, !5291, !5296, !5300, !5352, !5353}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5220, file: !224, line: 405, baseType: !5223, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!22, !403, !3954}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5220, file: !224, line: 406, baseType: !5227, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!22, !737, !3326}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5220, file: !224, line: 409, baseType: !5231, size: 64, offset: 128)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!22, !425, !3954}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5220, file: !224, line: 412, baseType: !5235, size: 64, offset: 192)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!1352, !425, !3326}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5220, file: !224, line: 414, baseType: !5239, size: 64, offset: 256)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !5242}
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3323, line: 1276, size: 448, elements: !5244)
!5244 = !{!5245, !5246, !5247, !5249, !5250, !5251, !5252, !5253}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5243, file: !3323, line: 1277, baseType: !737, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5243, file: !3323, line: 1278, baseType: !425, size: 64, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5243, file: !3323, line: 1279, baseType: !5248, size: 64, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5243, file: !3323, line: 1281, baseType: !39, size: 64, offset: 192)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5243, file: !3323, line: 1282, baseType: !7, size: 32, offset: 256)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5243, file: !3323, line: 1283, baseType: !7, size: 32, offset: 288)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5243, file: !3323, line: 1284, baseType: !1352, size: 8, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5243, file: !3323, line: 1285, baseType: !39, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5220, file: !224, line: 416, baseType: !5255, size: 64, offset: 320)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!22, !737, !425, !41, !7, !3009, !3493}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5220, file: !224, line: 419, baseType: !5259, size: 64, offset: 384)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!22, !737, !425, !41, !7, !7, !403, !20}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5220, file: !224, line: 424, baseType: !5263, size: 64, offset: 448)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!4237, !425, !4237}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5220, file: !224, line: 425, baseType: !5267, size: 64, offset: 512)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !3326, !35, !35}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5220, file: !224, line: 426, baseType: !5271, size: 64, offset: 576)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!1352, !3326, !856}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5220, file: !224, line: 427, baseType: !5275, size: 64, offset: 640)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{null, !3326}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5220, file: !224, line: 428, baseType: !3302, size: 64, offset: 704)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5220, file: !224, line: 433, baseType: !5280, size: 64, offset: 768)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!22, !425, !3326, !3326, !151}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5220, file: !224, line: 435, baseType: !5284, size: 64, offset: 832)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!22, !3326}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5220, file: !224, line: 436, baseType: !5288, size: 64, offset: 896)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!1352, !3326, !35, !35}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5220, file: !224, line: 438, baseType: !5292, size: 64, offset: 960)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !3326, !5295, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5220, file: !224, line: 439, baseType: !5297, size: 64, offset: 1024)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!22, !425, !403}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5220, file: !224, line: 442, baseType: !5301, size: 64, offset: 1088)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!22, !5304, !737, !5351}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2731, line: 282, size: 2176, elements: !5306)
!5306 = !{!5307, !5308, !5309, !5310, !5311, !5312, !5313, !5315, !5322, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5305, file: !2731, line: 283, baseType: !2391, size: 128)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5305, file: !2731, line: 284, baseType: !39, size: 64, offset: 128)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5305, file: !2731, line: 285, baseType: !1300, size: 16, offset: 192)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5305, file: !2731, line: 286, baseType: !1143, size: 320, offset: 256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5305, file: !2731, line: 287, baseType: !3663, size: 8, offset: 576)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5305, file: !2731, line: 288, baseType: !7, size: 32, offset: 608)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5305, file: !2731, line: 289, baseType: !5314, size: 64, offset: 640)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5305, file: !2731, line: 290, baseType: !5316, size: 64, offset: 704)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2731, line: 250, size: 64, elements: !5318)
!5318 = !{!5319, !5320, !5321}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5317, file: !2731, line: 251, baseType: !59, size: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5317, file: !2731, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5317, file: !2731, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5305, file: !2731, line: 291, baseType: !5323, size: 128, offset: 768)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2731, line: 274, size: 128, elements: !5324)
!5324 = !{!5325, !5326}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5323, file: !2731, line: 275, baseType: !5317, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5323, file: !2731, line: 276, baseType: !5317, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5305, file: !2731, line: 292, baseType: !7, size: 32, offset: 896)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5305, file: !2731, line: 293, baseType: !7, size: 32, offset: 928)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5305, file: !2731, line: 294, baseType: !7, size: 32, offset: 960)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5305, file: !2731, line: 295, baseType: !7, size: 32, offset: 992)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5305, file: !2731, line: 296, baseType: !7, size: 32, offset: 1024)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5305, file: !2731, line: 297, baseType: !7, size: 32, offset: 1056)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5305, file: !2731, line: 298, baseType: !3684, size: 64, offset: 1088)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5305, file: !2731, line: 299, baseType: !5335, size: 64, offset: 1152)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2731, line: 269, size: 96, elements: !5337)
!5337 = !{!5338, !5339}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5336, file: !2731, line: 270, baseType: !5317, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5336, file: !2731, line: 271, baseType: !7, size: 32, offset: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5305, file: !2731, line: 300, baseType: !1037, size: 64, offset: 1216)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5305, file: !2731, line: 301, baseType: !4232, size: 64, offset: 1280)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5305, file: !2731, line: 302, baseType: !737, size: 64, offset: 1344)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5305, file: !2731, line: 303, baseType: !7, size: 32, offset: 1408)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5305, file: !2731, line: 304, baseType: !1506, size: 256, offset: 1472)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5305, file: !2731, line: 305, baseType: !59, size: 32, offset: 1728)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5305, file: !2731, line: 318, baseType: !59, size: 32, offset: 1760)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5305, file: !2731, line: 322, baseType: !1467, size: 256, offset: 1792)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5305, file: !2731, line: 323, baseType: !5323, size: 128, offset: 2048)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5305, file: !2731, line: 324, baseType: !5350, offset: 2176)
!5350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, elements: !1583)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5220, file: !224, line: 444, baseType: !3485, size: 64, offset: 1152)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5220, file: !224, line: 445, baseType: !5354, size: 64, offset: 1216)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!22, !3305, !3410}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !224, line: 486, baseType: !39, size: 64, offset: 896)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !426, file: !224, line: 487, baseType: !1204, size: 320, offset: 960)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !426, file: !224, line: 488, baseType: !3528, size: 32, offset: 1280)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !426, file: !224, line: 489, baseType: !59, size: 32, offset: 1312)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !426, file: !224, line: 490, baseType: !97, size: 128, offset: 1344)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !426, file: !224, line: 491, baseType: !20, size: 64, offset: 1472)
!5363 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !131, line: 107, baseType: !5364, size: 64, offset: 192)
!5364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !131, line: 107, size: 64, elements: !5365)
!5365 = !{!5366, !5367}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5364, file: !131, line: 108, baseType: !39, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5364, file: !131, line: 109, baseType: !39, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !411, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!5369 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !131, line: 119, baseType: !5370, size: 320)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !131, line: 119, size: 320, elements: !5371)
!5371 = !{!5372, !5373, !5376, !5377, !5378}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5370, file: !131, line: 124, baseType: !39, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5370, file: !131, line: 125, baseType: !5374, size: 64, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5370, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5370, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_member, scope: !5370, file: !131, line: 128, baseType: !5379, size: 64, offset: 256)
!5379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5370, file: !131, line: 128, size: 64, elements: !5380)
!5380 = !{!5381, !5382}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5379, file: !131, line: 133, baseType: !39, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5379, file: !131, line: 138, baseType: !763, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !131, line: 141, baseType: !5384, size: 64)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !131, line: 141, size: 64, elements: !5385)
!5385 = !{!5386}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5384, file: !131, line: 142, baseType: !39, size: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !131, line: 144, baseType: !5388, size: 128)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !131, line: 144, size: 128, elements: !5389)
!5389 = !{!5390, !5441}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5388, file: !131, line: 146, baseType: !5391, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !5393)
!5393 = !{!5394, !5404, !5405, !5406, !5407, !5408, !5409, !5423, !5424, !5425}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5392, file: !123, line: 127, baseType: !5395, size: 384)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !5396)
!5396 = !{!5397, !5398, !5400, !5401, !5402, !5403}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5395, file: !123, line: 22, baseType: !39, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5395, file: !123, line: 23, baseType: !5399, size: 64, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5395, file: !123, line: 24, baseType: !5399, size: 64, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5395, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5395, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5395, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5392, file: !123, line: 128, baseType: !2391, size: 128, offset: 384)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5392, file: !123, line: 129, baseType: !1506, size: 256, offset: 512)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5392, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5392, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5392, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5392, file: !123, line: 133, baseType: !5410, size: 64, offset: 896)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5412)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !5413)
!5413 = !{!5414, !5418, !5419}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5412, file: !123, line: 83, baseType: !5415, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !403}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5412, file: !123, line: 89, baseType: !2062, size: 64, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5412, file: !123, line: 100, baseType: !5420, size: 64, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!22, !5391, !39, !39, !22}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5392, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5392, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!5425 = !DIDerivedType(tag: DW_TAG_member, scope: !5392, file: !123, line: 136, baseType: !5426, size: 128, offset: 1088)
!5426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5392, file: !123, line: 136, size: 128, elements: !5427)
!5427 = !{!5428, !5434}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5426, file: !123, line: 137, baseType: !5429, size: 128)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5430, line: 6, size: 128, elements: !5431)
!5430 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5431 = !{!5432, !5433}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5429, file: !5430, line: 7, baseType: !341, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5429, file: !5430, line: 8, baseType: !341, size: 64, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, scope: !5426, file: !123, line: 138, baseType: !5435)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5426, file: !123, line: 138, elements: !5436)
!5436 = !{!5437, !5439}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5435, file: !123, line: 138, baseType: !5438)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5435, file: !123, line: 138, elements: !373)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5435, file: !123, line: 138, baseType: !5440)
!5440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5429, elements: !1583)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5388, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !408, file: !131, line: 161, baseType: !750, size: 128, align: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !131, line: 164, baseType: !5444, size: 32, offset: 384)
!5444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !131, line: 164, size: 32, elements: !5445)
!5445 = !{!5446, !5447}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5444, file: !131, line: 169, baseType: !49, size: 32)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5444, file: !131, line: 177, baseType: !7, size: 32)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !404, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5451)
!5451 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5455)
!5455 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!5456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !39)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!5462 = !{!0, !5463, !5465, !5470, !5481, !5483, !5486, !5502, !5504, !5506}
!5463 = !DIGlobalVariableExpression(var: !5464, expr: !DIExpression())
!5464 = distinct !DIGlobalVariable(name: "vdso64_enabled", scope: !2, file: !3, line: 44, type: !7, isLocal: false, isDefinition: true)
!5465 = !DIGlobalVariableExpression(var: !5466, expr: !DIExpression())
!5466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !5467, isLocal: true, isDefinition: true)
!5467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 208, elements: !5468)
!5468 = !{!5469}
!5469 = !DISubrange(count: 26)
!5470 = !DIGlobalVariableExpression(var: !5471, expr: !DIExpression())
!5471 = distinct !DIGlobalVariable(name: "__setup_vdso_setup", scope: !2, file: !3, line: 421, type: !5472, isLocal: true, isDefinition: true, align: 64)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5473, line: 324, size: 192, elements: !5474)
!5473 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5474 = !{!5475, !5476, !5480}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5472, file: !5473, line: 325, baseType: !16, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5472, file: !5473, line: 326, baseType: !5477, size: 64, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!22, !565}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5472, file: !5473, line: 327, baseType: !22, size: 32, offset: 128)
!5481 = !DIGlobalVariableExpression(var: !5482, expr: !DIExpression())
!5482 = distinct !DIGlobalVariable(name: "vclocks_used", scope: !2, file: !3, line: 41, type: !7, isLocal: false, isDefinition: true)
!5483 = !DIGlobalVariableExpression(var: !5484, expr: !DIExpression())
!5484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !5485, isLocal: true, isDefinition: true)
!5485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !3722)
!5486 = !DIGlobalVariableExpression(var: !5487, expr: !DIExpression())
!5487 = distinct !DIGlobalVariable(name: "vvar_mapping", scope: !2, file: !3, line: 213, type: !5488, isLocal: true, isDefinition: true)
!5488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5489)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_special_mapping", file: !131, line: 1251, size: 256, elements: !5490)
!5490 = !{!5491, !5492, !5493, !5498}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5489, file: !131, line: 1252, baseType: !16, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5489, file: !131, line: 1260, baseType: !3009, size: 64, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !5489, file: !131, line: 1266, baseType: !5494, size: 64, offset: 128)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!2065, !5497, !1996, !2066}
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !5489, file: !131, line: 1270, baseType: !5499, size: 64, offset: 192)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!22, !5497, !1996}
!5502 = !DIGlobalVariableExpression(var: !5503, expr: !DIExpression())
!5503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !5485, isLocal: true, isDefinition: true)
!5504 = !DIGlobalVariableExpression(var: !5505, expr: !DIExpression())
!5505 = distinct !DIGlobalVariable(name: "vdso_mapping", scope: !2, file: !3, line: 208, type: !5488, isLocal: true, isDefinition: true)
!5506 = !DIGlobalVariableExpression(var: !5507, expr: !DIExpression())
!5507 = distinct !DIGlobalVariable(name: "__setup_str_vdso_setup", scope: !2, file: !3, line: 421, type: !5508, isLocal: true, isDefinition: true, align: 8)
!5508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, elements: !1407)
!5509 = !DIFile(filename: "./arch/x86/include/asm/vvar.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6d7acac91f6ae56394588ef2da3261ad")
!5510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!5511 = !{i32 7, !"Dwarf Version", i32 5}
!5512 = !{i32 2, !"Debug Info Version", i32 3}
!5513 = !{i32 1, !"wchar_size", i32 2}
!5514 = !{i32 8, !"cf-protection-branch", i32 1}
!5515 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5516 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5517 = !{i32 1, !"Code Model", i32 2}
!5518 = !{i32 1, !"override-stack-alignment", i32 8}
!5519 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5520 = distinct !DISubprogram(name: "arch_get_vdso_data", scope: !3, file: !3, line: 35, type: !5521, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5523)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!330, !20}
!5523 = !{!5524}
!5524 = !DILocalVariable(name: "vvar_page", arg: 1, scope: !5520, file: !3, line: 35, type: !20)
!5525 = !DILocation(line: 35, column: 44, scope: !5520)
!5526 = !DILocation(line: 37, column: 30, scope: !5520)
!5527 = !DILocation(line: 37, column: 40, scope: !5520)
!5528 = !DILocation(line: 37, column: 2, scope: !5520)
!5529 = distinct !DISubprogram(name: "init_vdso_image", scope: !3, file: !3, line: 47, type: !5530, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!22, !1269}
!5532 = !{!5533}
!5533 = !DILocalVariable(name: "image", arg: 1, scope: !5529, file: !3, line: 47, type: !1269)
!5534 = !DILocation(line: 47, column: 53, scope: !5529)
!5535 = !DILocation(line: 49, column: 2, scope: !5529)
!5536 = !DILocation(line: 49, column: 2, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 49, column: 2)
!5538 = !DILocation(line: 50, column: 2, scope: !5529)
!5539 = !DILocation(line: 50, column: 2, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 50, column: 2)
!5541 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 50, column: 2)
!5542 = !DILocation(line: 50, column: 2, scope: !5541)
!5543 = !DILocation(line: 50, column: 2, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 50, column: 2)
!5545 = !DILocation(line: 50, column: 2, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 50, column: 2)
!5547 = !DILocation(line: 50, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 50, column: 2)
!5549 = !{i64 2155725821, i64 2155725850, i64 2155725896, i64 2155725954, i64 2155726008, i64 2155726062, i64 2155726117, i64 2155726148}
!5550 = !DILocation(line: 52, column: 42, scope: !5529)
!5551 = !DILocation(line: 52, column: 49, scope: !5529)
!5552 = !DILocation(line: 52, column: 56, scope: !5529)
!5553 = !DILocation(line: 52, column: 63, scope: !5529)
!5554 = !DILocation(line: 52, column: 54, scope: !5529)
!5555 = !DILocation(line: 53, column: 28, scope: !5529)
!5556 = !DILocation(line: 53, column: 35, scope: !5529)
!5557 = !DILocation(line: 53, column: 42, scope: !5529)
!5558 = !DILocation(line: 53, column: 49, scope: !5529)
!5559 = !DILocation(line: 53, column: 40, scope: !5529)
!5560 = !DILocation(line: 54, column: 7, scope: !5529)
!5561 = !DILocation(line: 54, column: 14, scope: !5529)
!5562 = !DILocation(line: 53, column: 53, scope: !5529)
!5563 = !DILocation(line: 52, column: 2, scope: !5529)
!5564 = !DILocation(line: 56, column: 2, scope: !5529)
!5565 = !DISubprogram(name: "apply_alternatives", scope: !376, file: !376, line: 96, type: !5566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{null, !374, !374}
!5568 = distinct !DISubprogram(name: "vdso_join_timens", scope: !3, file: !3, line: 111, type: !5569, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!22, !863, !1840}
!5571 = !{!5572, !5573, !5574, !5575, !5576}
!5572 = !DILocalVariable(name: "task", arg: 1, scope: !5568, file: !3, line: 111, type: !863)
!5573 = !DILocalVariable(name: "ns", arg: 2, scope: !5568, file: !3, line: 111, type: !1840)
!5574 = !DILocalVariable(name: "mm", scope: !5568, file: !3, line: 113, type: !1151)
!5575 = !DILocalVariable(name: "vma", scope: !5568, file: !3, line: 114, type: !1996)
!5576 = !DILocalVariable(name: "vmi", scope: !5568, file: !3, line: 115, type: !5577)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_iterator", file: !131, line: 1068, size: 512, elements: !5578)
!5578 = !{!5579}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "mas", scope: !5577, file: !131, line: 1069, baseType: !5580, size: 512)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ma_state", file: !393, line: 380, size: 512, elements: !5581)
!5581 = !{!5582, !5584, !5585, !5586, !5587, !5588, !5589, !5600, !5601, !5602}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !5580, file: !393, line: 381, baseType: !5583, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5580, file: !393, line: 382, baseType: !39, size: 64, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5580, file: !393, line: 383, baseType: !39, size: 64, offset: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5580, file: !393, line: 384, baseType: !391, size: 64, offset: 192)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5580, file: !393, line: 385, baseType: !39, size: 64, offset: 256)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5580, file: !393, line: 386, baseType: !39, size: 64, offset: 320)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5580, file: !393, line: 387, baseType: !5590, size: 64, offset: 384)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_alloc", file: !393, line: 132, size: 2048, elements: !5592)
!5592 = !{!5593, !5594, !5595, !5596}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !5591, file: !393, line: 133, baseType: !39, size: 64)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "node_count", scope: !5591, file: !393, line: 134, baseType: !87, size: 8, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "request_count", scope: !5591, file: !393, line: 135, baseType: !7, size: 32, offset: 96)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5591, file: !393, line: 136, baseType: !5597, size: 1920, offset: 128)
!5597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5590, size: 1920, elements: !5598)
!5598 = !{!5599}
!5599 = !DISubrange(count: 30)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5580, file: !393, line: 388, baseType: !87, size: 8, offset: 448)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5580, file: !393, line: 389, baseType: !87, size: 8, offset: 456)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "mas_flags", scope: !5580, file: !393, line: 390, baseType: !87, size: 8, offset: 464)
!5603 = !DILocation(line: 111, column: 42, scope: !5568)
!5604 = !DILocation(line: 111, column: 71, scope: !5568)
!5605 = !DILocation(line: 113, column: 2, scope: !5568)
!5606 = !DILocation(line: 113, column: 20, scope: !5568)
!5607 = !DILocation(line: 113, column: 25, scope: !5568)
!5608 = !DILocation(line: 113, column: 31, scope: !5568)
!5609 = !DILocation(line: 114, column: 2, scope: !5568)
!5610 = !DILocation(line: 114, column: 25, scope: !5568)
!5611 = !DILocation(line: 115, column: 2, scope: !5568)
!5612 = !DILocation(line: 117, column: 17, scope: !5568)
!5613 = !DILocation(line: 117, column: 2, scope: !5568)
!5614 = !DILocation(line: 118, column: 2, scope: !5568)
!5615 = !DILocation(line: 119, column: 30, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 119, column: 7)
!5617 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 118, column: 25)
!5618 = !DILocation(line: 119, column: 7, scope: !5616)
!5619 = !DILocation(line: 119, column: 7, scope: !5617)
!5620 = !DILocation(line: 120, column: 18, scope: !5616)
!5621 = !DILocation(line: 120, column: 4, scope: !5616)
!5622 = distinct !{!5622, !5614, !5623, !5624, !5625}
!5623 = !DILocation(line: 121, column: 2, scope: !5568)
!5624 = !{!"llvm.loop.mustprogress"}
!5625 = !{!"llvm.loop.unroll.disable"}
!5626 = !DILocation(line: 122, column: 19, scope: !5568)
!5627 = !DILocation(line: 122, column: 2, scope: !5568)
!5628 = !DILocation(line: 125, column: 1, scope: !5568)
!5629 = !DILocation(line: 124, column: 2, scope: !5568)
!5630 = distinct !DISubprogram(name: "mmap_read_lock", scope: !5631, file: !5631, line: 143, type: !5632, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5631 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!5632 = !DISubroutineType(types: !5633)
!5633 = !{null, !1151}
!5634 = !{!5635}
!5635 = !DILocalVariable(name: "mm", arg: 1, scope: !5630, file: !5631, line: 143, type: !1151)
!5636 = !DILocation(line: 143, column: 53, scope: !5630)
!5637 = !DILocation(line: 145, column: 34, scope: !5630)
!5638 = !DILocation(line: 145, column: 2, scope: !5630)
!5639 = !DILocation(line: 146, column: 13, scope: !5630)
!5640 = !DILocation(line: 146, column: 17, scope: !5630)
!5641 = !DILocation(line: 146, column: 2, scope: !5630)
!5642 = !DILocation(line: 147, column: 37, scope: !5630)
!5643 = !DILocation(line: 147, column: 2, scope: !5630)
!5644 = !DILocation(line: 148, column: 1, scope: !5630)
!5645 = distinct !DISubprogram(name: "vma_next", scope: !1990, file: !1990, line: 950, type: !5646, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!1996, !5648}
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5649 = !{!5650}
!5650 = !DILocalVariable(name: "vmi", arg: 1, scope: !5645, file: !1990, line: 950, type: !5648)
!5651 = !DILocation(line: 950, column: 68, scope: !5645)
!5652 = !DILocation(line: 956, column: 19, scope: !5645)
!5653 = !DILocation(line: 956, column: 24, scope: !5645)
!5654 = !DILocation(line: 956, column: 9, scope: !5645)
!5655 = !DILocation(line: 956, column: 2, scope: !5645)
!5656 = !DISubprogram(name: "vma_is_special_mapping", scope: !1990, file: !1990, line: 3273, type: !5657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!1352, !5659, !5497}
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!5661 = distinct !DISubprogram(name: "zap_vma_pages", scope: !1990, file: !1990, line: 2343, type: !1994, scopeLine: 2344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5662 = !{!5663}
!5663 = !DILocalVariable(name: "vma", arg: 1, scope: !5661, file: !1990, line: 2343, type: !1996)
!5664 = !DILocation(line: 2343, column: 57, scope: !5661)
!5665 = !DILocation(line: 2345, column: 24, scope: !5661)
!5666 = !DILocation(line: 2345, column: 29, scope: !5661)
!5667 = !DILocation(line: 2345, column: 34, scope: !5661)
!5668 = !DILocation(line: 2346, column: 10, scope: !5661)
!5669 = !DILocation(line: 2346, column: 15, scope: !5661)
!5670 = !DILocation(line: 2346, column: 24, scope: !5661)
!5671 = !DILocation(line: 2346, column: 29, scope: !5661)
!5672 = !DILocation(line: 2346, column: 22, scope: !5661)
!5673 = !DILocation(line: 2345, column: 2, scope: !5661)
!5674 = !DILocation(line: 2347, column: 1, scope: !5661)
!5675 = distinct !DISubprogram(name: "mmap_read_unlock", scope: !5631, file: !5631, line: 170, type: !5632, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5676)
!5676 = !{!5677}
!5677 = !DILocalVariable(name: "mm", arg: 1, scope: !5675, file: !5631, line: 170, type: !1151)
!5678 = !DILocation(line: 170, column: 55, scope: !5675)
!5679 = !DILocation(line: 172, column: 29, scope: !5675)
!5680 = !DILocation(line: 172, column: 2, scope: !5675)
!5681 = !DILocation(line: 173, column: 11, scope: !5675)
!5682 = !DILocation(line: 173, column: 15, scope: !5675)
!5683 = !DILocation(line: 173, column: 2, scope: !5675)
!5684 = !DILocation(line: 174, column: 1, scope: !5675)
!5685 = distinct !DISubprogram(name: "map_vdso_once", scope: !3, file: !3, line: 330, type: !5686, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!22, !1269, !39}
!5688 = !{!5689, !5690, !5691, !5692, !5693}
!5689 = !DILocalVariable(name: "image", arg: 1, scope: !5685, file: !3, line: 330, type: !1269)
!5690 = !DILocalVariable(name: "addr", arg: 2, scope: !5685, file: !3, line: 330, type: !39)
!5691 = !DILocalVariable(name: "mm", scope: !5685, file: !3, line: 332, type: !1151)
!5692 = !DILocalVariable(name: "vma", scope: !5685, file: !3, line: 333, type: !1996)
!5693 = !DILocalVariable(name: "vmi", scope: !5685, file: !3, line: 334, type: !5577)
!5694 = !DILocation(line: 330, column: 44, scope: !5685)
!5695 = !DILocation(line: 330, column: 65, scope: !5685)
!5696 = !DILocation(line: 332, column: 2, scope: !5685)
!5697 = !DILocation(line: 332, column: 20, scope: !5685)
!5698 = !DILocation(line: 332, column: 25, scope: !5685)
!5699 = !DILocation(line: 332, column: 34, scope: !5685)
!5700 = !DILocation(line: 333, column: 2, scope: !5685)
!5701 = !DILocation(line: 333, column: 25, scope: !5685)
!5702 = !DILocation(line: 334, column: 2, scope: !5685)
!5703 = !DILocation(line: 336, column: 18, scope: !5685)
!5704 = !DILocation(line: 336, column: 2, scope: !5685)
!5705 = !DILocation(line: 344, column: 2, scope: !5685)
!5706 = !DILocation(line: 345, column: 30, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 345, column: 7)
!5708 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 344, column: 25)
!5709 = !DILocation(line: 345, column: 7, scope: !5707)
!5710 = !DILocation(line: 345, column: 50, scope: !5707)
!5711 = !DILocation(line: 346, column: 28, scope: !5707)
!5712 = !DILocation(line: 346, column: 5, scope: !5707)
!5713 = !DILocation(line: 345, column: 7, scope: !5708)
!5714 = !DILocation(line: 347, column: 22, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 346, column: 49)
!5716 = !DILocation(line: 347, column: 4, scope: !5715)
!5717 = !DILocation(line: 348, column: 4, scope: !5715)
!5718 = distinct !{!5718, !5705, !5719, !5624, !5625}
!5719 = !DILocation(line: 350, column: 2, scope: !5685)
!5720 = !DILocation(line: 351, column: 20, scope: !5685)
!5721 = !DILocation(line: 351, column: 2, scope: !5685)
!5722 = !DILocation(line: 353, column: 18, scope: !5685)
!5723 = !DILocation(line: 353, column: 25, scope: !5685)
!5724 = !DILocation(line: 353, column: 9, scope: !5685)
!5725 = !DILocation(line: 353, column: 2, scope: !5685)
!5726 = !DILocation(line: 354, column: 1, scope: !5685)
!5727 = distinct !DISubprogram(name: "get_current", scope: !5728, file: !5728, line: 39, type: !5729, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5731)
!5728 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!863}
!5731 = !{!5732, !5734, !5736}
!5732 = !DILocalVariable(name: "pscr_ret__", scope: !5733, file: !5728, line: 41, type: !863)
!5733 = distinct !DILexicalBlock(scope: !5727, file: !5728, line: 41, column: 9)
!5734 = !DILocalVariable(name: "__vpp_verify", scope: !5735, file: !5728, line: 41, type: !1281)
!5735 = distinct !DILexicalBlock(scope: !5733, file: !5728, line: 41, column: 9)
!5736 = !DILocalVariable(name: "pfo_val__", scope: !5737, file: !5728, line: 41, type: !341)
!5737 = distinct !DILexicalBlock(scope: !5733, file: !5728, line: 41, column: 9)
!5738 = !DILocation(line: 41, column: 9, scope: !5733)
!5739 = !DILocation(line: 41, column: 9, scope: !5735)
!5740 = !DILocation(line: 41, column: 9, scope: !5737)
!5741 = !{i64 2148523087}
!5742 = !DILocation(line: 41, column: 9, scope: !5727)
!5743 = !DILocation(line: 41, column: 2, scope: !5727)
!5744 = distinct !DISubprogram(name: "mmap_write_lock", scope: !5631, file: !5631, line: 105, type: !5632, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5745 = !{!5746}
!5746 = !DILocalVariable(name: "mm", arg: 1, scope: !5744, file: !5631, line: 105, type: !1151)
!5747 = !DILocation(line: 105, column: 54, scope: !5744)
!5748 = !DILocation(line: 107, column: 34, scope: !5744)
!5749 = !DILocation(line: 107, column: 2, scope: !5744)
!5750 = !DILocation(line: 108, column: 14, scope: !5744)
!5751 = !DILocation(line: 108, column: 18, scope: !5744)
!5752 = !DILocation(line: 108, column: 2, scope: !5744)
!5753 = !DILocation(line: 109, column: 37, scope: !5744)
!5754 = !DILocation(line: 109, column: 2, scope: !5744)
!5755 = !DILocation(line: 110, column: 1, scope: !5744)
!5756 = distinct !DISubprogram(name: "mmap_write_unlock", scope: !5631, file: !5631, line: 129, type: !5632, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5757)
!5757 = !{!5758}
!5758 = !DILocalVariable(name: "mm", arg: 1, scope: !5756, file: !5631, line: 129, type: !1151)
!5759 = !DILocation(line: 129, column: 56, scope: !5756)
!5760 = !DILocation(line: 131, column: 29, scope: !5756)
!5761 = !DILocation(line: 131, column: 2, scope: !5756)
!5762 = !DILocation(line: 132, column: 20, scope: !5756)
!5763 = !DILocation(line: 132, column: 2, scope: !5756)
!5764 = !DILocation(line: 133, column: 12, scope: !5756)
!5765 = !DILocation(line: 133, column: 16, scope: !5756)
!5766 = !DILocation(line: 133, column: 2, scope: !5756)
!5767 = !DILocation(line: 134, column: 1, scope: !5756)
!5768 = distinct !DISubprogram(name: "map_vdso", scope: !3, file: !3, line: 223, type: !5686, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5769)
!5769 = !{!5770, !5771, !5772, !5773, !5774, !5775, !5776}
!5770 = !DILocalVariable(name: "image", arg: 1, scope: !5768, file: !3, line: 223, type: !1269)
!5771 = !DILocalVariable(name: "addr", arg: 2, scope: !5768, file: !3, line: 223, type: !39)
!5772 = !DILocalVariable(name: "mm", scope: !5768, file: !3, line: 225, type: !1151)
!5773 = !DILocalVariable(name: "vma", scope: !5768, file: !3, line: 226, type: !1996)
!5774 = !DILocalVariable(name: "text_start", scope: !5768, file: !3, line: 227, type: !39)
!5775 = !DILocalVariable(name: "ret", scope: !5768, file: !3, line: 228, type: !22)
!5776 = !DILabel(scope: !5768, name: "up_fail", file: !3, line: 272)
!5777 = !DILocation(line: 223, column: 46, scope: !5768)
!5778 = !DILocation(line: 223, column: 67, scope: !5768)
!5779 = !DILocation(line: 225, column: 2, scope: !5768)
!5780 = !DILocation(line: 225, column: 20, scope: !5768)
!5781 = !DILocation(line: 225, column: 25, scope: !5768)
!5782 = !DILocation(line: 225, column: 34, scope: !5768)
!5783 = !DILocation(line: 226, column: 2, scope: !5768)
!5784 = !DILocation(line: 226, column: 25, scope: !5768)
!5785 = !DILocation(line: 227, column: 2, scope: !5768)
!5786 = !DILocation(line: 227, column: 16, scope: !5768)
!5787 = !DILocation(line: 228, column: 2, scope: !5768)
!5788 = !DILocation(line: 228, column: 6, scope: !5768)
!5789 = !DILocation(line: 230, column: 31, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 230, column: 6)
!5791 = !DILocation(line: 230, column: 6, scope: !5790)
!5792 = !DILocation(line: 230, column: 6, scope: !5768)
!5793 = !DILocation(line: 231, column: 3, scope: !5790)
!5794 = !DILocation(line: 233, column: 33, scope: !5768)
!5795 = !DILocation(line: 234, column: 6, scope: !5768)
!5796 = !DILocation(line: 234, column: 13, scope: !5768)
!5797 = !DILocation(line: 234, column: 20, scope: !5768)
!5798 = !DILocation(line: 234, column: 27, scope: !5768)
!5799 = !DILocation(line: 234, column: 18, scope: !5768)
!5800 = !DILocation(line: 233, column: 9, scope: !5768)
!5801 = !DILocation(line: 233, column: 7, scope: !5768)
!5802 = !DILocation(line: 235, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 235, column: 6)
!5804 = !DILocation(line: 235, column: 6, scope: !5768)
!5805 = !DILocation(line: 236, column: 9, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 235, column: 26)
!5807 = !DILocation(line: 236, column: 7, scope: !5806)
!5808 = !DILocation(line: 237, column: 3, scope: !5806)
!5809 = !DILocation(line: 240, column: 15, scope: !5768)
!5810 = !DILocation(line: 240, column: 22, scope: !5768)
!5811 = !DILocation(line: 240, column: 29, scope: !5768)
!5812 = !DILocation(line: 240, column: 20, scope: !5768)
!5813 = !DILocation(line: 240, column: 13, scope: !5768)
!5814 = !DILocation(line: 245, column: 33, scope: !5768)
!5815 = !DILocation(line: 246, column: 12, scope: !5768)
!5816 = !DILocation(line: 247, column: 12, scope: !5768)
!5817 = !DILocation(line: 247, column: 19, scope: !5768)
!5818 = !DILocation(line: 245, column: 8, scope: !5768)
!5819 = !DILocation(line: 245, column: 6, scope: !5768)
!5820 = !DILocation(line: 252, column: 13, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 252, column: 6)
!5822 = !DILocation(line: 252, column: 6, scope: !5821)
!5823 = !DILocation(line: 252, column: 6, scope: !5768)
!5824 = !DILocation(line: 253, column: 17, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 252, column: 19)
!5826 = !DILocation(line: 253, column: 9, scope: !5825)
!5827 = !DILocation(line: 253, column: 7, scope: !5825)
!5828 = !DILocation(line: 254, column: 3, scope: !5825)
!5829 = !DILocation(line: 257, column: 33, scope: !5768)
!5830 = !DILocation(line: 258, column: 12, scope: !5768)
!5831 = !DILocation(line: 259, column: 13, scope: !5768)
!5832 = !DILocation(line: 259, column: 20, scope: !5768)
!5833 = !DILocation(line: 259, column: 12, scope: !5768)
!5834 = !DILocation(line: 257, column: 8, scope: !5768)
!5835 = !DILocation(line: 257, column: 6, scope: !5768)
!5836 = !DILocation(line: 264, column: 13, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 264, column: 6)
!5838 = !DILocation(line: 264, column: 6, scope: !5837)
!5839 = !DILocation(line: 264, column: 6, scope: !5768)
!5840 = !DILocation(line: 265, column: 17, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 264, column: 19)
!5842 = !DILocation(line: 265, column: 9, scope: !5841)
!5843 = !DILocation(line: 265, column: 7, scope: !5841)
!5844 = !DILocation(line: 266, column: 13, scope: !5841)
!5845 = !DILocation(line: 266, column: 17, scope: !5841)
!5846 = !DILocation(line: 266, column: 29, scope: !5841)
!5847 = !DILocation(line: 266, column: 36, scope: !5841)
!5848 = !DILocation(line: 266, column: 3, scope: !5841)
!5849 = !DILocation(line: 267, column: 2, scope: !5841)
!5850 = !DILocation(line: 268, column: 46, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 267, column: 9)
!5852 = !DILocation(line: 268, column: 31, scope: !5851)
!5853 = !DILocation(line: 268, column: 3, scope: !5851)
!5854 = !DILocation(line: 268, column: 12, scope: !5851)
!5855 = !DILocation(line: 268, column: 16, scope: !5851)
!5856 = !DILocation(line: 268, column: 24, scope: !5851)
!5857 = !DILocation(line: 268, column: 29, scope: !5851)
!5858 = !DILocation(line: 269, column: 37, scope: !5851)
!5859 = !DILocation(line: 269, column: 3, scope: !5851)
!5860 = !DILocation(line: 269, column: 12, scope: !5851)
!5861 = !DILocation(line: 269, column: 16, scope: !5851)
!5862 = !DILocation(line: 269, column: 24, scope: !5851)
!5863 = !DILocation(line: 269, column: 35, scope: !5851)
!5864 = !DILocation(line: 264, column: 16, scope: !5837)
!5865 = !DILocation(line: 272, column: 1, scope: !5768)
!5866 = !DILocation(line: 273, column: 20, scope: !5768)
!5867 = !DILocation(line: 273, column: 2, scope: !5768)
!5868 = !DILocation(line: 274, column: 9, scope: !5768)
!5869 = !DILocation(line: 274, column: 2, scope: !5768)
!5870 = !DILocation(line: 275, column: 1, scope: !5768)
!5871 = distinct !DISubprogram(name: "arch_setup_additional_pages", scope: !3, file: !3, line: 367, type: !5872, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!22, !5874, !22}
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !5876, line: 368, flags: DIFlagFwdDecl)
!5876 = !DIFile(filename: "./arch/x86/include/asm/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32e72248bc6ddafa8bbab996ffdd88dd")
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "bprm", arg: 1, scope: !5871, file: !3, line: 367, type: !5874)
!5879 = !DILocalVariable(name: "uses_interp", arg: 2, scope: !5871, file: !3, line: 367, type: !22)
!5880 = !DILocation(line: 367, column: 54, scope: !5871)
!5881 = !DILocation(line: 367, column: 64, scope: !5871)
!5882 = !DILocation(line: 369, column: 7, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 369, column: 6)
!5884 = !DILocation(line: 369, column: 6, scope: !5871)
!5885 = !DILocation(line: 370, column: 3, scope: !5883)
!5886 = !DILocation(line: 372, column: 9, scope: !5871)
!5887 = !DILocation(line: 372, column: 2, scope: !5871)
!5888 = !DILocation(line: 373, column: 1, scope: !5871)
!5889 = distinct !DISubprogram(name: "map_vdso_randomized", scope: !3, file: !3, line: 322, type: !5530, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5890 = !{!5891, !5892}
!5891 = !DILocalVariable(name: "image", arg: 1, scope: !5889, file: !3, line: 322, type: !1269)
!5892 = !DILocalVariable(name: "addr", scope: !5889, file: !3, line: 324, type: !39)
!5893 = !DILocation(line: 322, column: 57, scope: !5889)
!5894 = !DILocation(line: 324, column: 2, scope: !5889)
!5895 = !DILocation(line: 324, column: 16, scope: !5889)
!5896 = !DILocation(line: 324, column: 33, scope: !5889)
!5897 = !DILocation(line: 324, column: 42, scope: !5889)
!5898 = !DILocation(line: 324, column: 46, scope: !5889)
!5899 = !DILocation(line: 324, column: 59, scope: !5889)
!5900 = !DILocation(line: 324, column: 66, scope: !5889)
!5901 = !DILocation(line: 324, column: 71, scope: !5889)
!5902 = !DILocation(line: 324, column: 78, scope: !5889)
!5903 = !DILocation(line: 324, column: 70, scope: !5889)
!5904 = !DILocation(line: 324, column: 23, scope: !5889)
!5905 = !DILocation(line: 326, column: 18, scope: !5889)
!5906 = !DILocation(line: 326, column: 25, scope: !5889)
!5907 = !DILocation(line: 326, column: 9, scope: !5889)
!5908 = !DILocation(line: 327, column: 1, scope: !5889)
!5909 = !DILocation(line: 326, column: 2, scope: !5889)
!5910 = distinct !DISubprogram(name: "compat_arch_setup_additional_pages", scope: !3, file: !3, line: 376, type: !5911, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5913)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!22, !5874, !22, !1352}
!5913 = !{!5914, !5915, !5916}
!5914 = !DILocalVariable(name: "bprm", arg: 1, scope: !5910, file: !3, line: 376, type: !5874)
!5915 = !DILocalVariable(name: "uses_interp", arg: 2, scope: !5910, file: !3, line: 377, type: !22)
!5916 = !DILocalVariable(name: "x32", arg: 3, scope: !5910, file: !3, line: 377, type: !1352)
!5917 = !DILocation(line: 376, column: 61, scope: !5910)
!5918 = !DILocation(line: 377, column: 16, scope: !5910)
!5919 = !DILocation(line: 377, column: 34, scope: !5910)
!5920 = !DILocation(line: 387, column: 9, scope: !5910)
!5921 = !DILocation(line: 387, column: 2, scope: !5910)
!5922 = distinct !DISubprogram(name: "load_vdso32", scope: !3, file: !3, line: 357, type: !3704, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5923 = !DILocation(line: 359, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 359, column: 6)
!5925 = !DILocation(line: 359, column: 21, scope: !5924)
!5926 = !DILocation(line: 359, column: 6, scope: !5922)
!5927 = !DILocation(line: 360, column: 3, scope: !5924)
!5928 = !DILocation(line: 362, column: 9, scope: !5922)
!5929 = !DILocation(line: 362, column: 2, scope: !5922)
!5930 = !DILocation(line: 363, column: 1, scope: !5922)
!5931 = distinct !DISubprogram(name: "arch_syscall_is_vdso_sigreturn", scope: !3, file: !3, line: 400, type: !5932, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5934)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!1352, !3171}
!5934 = !{!5935, !5936, !5937}
!5935 = !DILocalVariable(name: "regs", arg: 1, scope: !5931, file: !3, line: 400, type: !3171)
!5936 = !DILocalVariable(name: "image", scope: !5931, file: !3, line: 403, type: !1269)
!5937 = !DILocalVariable(name: "vdso", scope: !5931, file: !3, line: 404, type: !39)
!5938 = !DILocation(line: 400, column: 53, scope: !5931)
!5939 = !DILocation(line: 403, column: 2, scope: !5931)
!5940 = !DILocation(line: 403, column: 27, scope: !5931)
!5941 = !DILocation(line: 403, column: 35, scope: !5931)
!5942 = !DILocation(line: 403, column: 44, scope: !5931)
!5943 = !DILocation(line: 403, column: 48, scope: !5931)
!5944 = !DILocation(line: 403, column: 56, scope: !5931)
!5945 = !DILocation(line: 404, column: 2, scope: !5931)
!5946 = !DILocation(line: 404, column: 16, scope: !5931)
!5947 = !DILocation(line: 404, column: 39, scope: !5931)
!5948 = !DILocation(line: 404, column: 48, scope: !5931)
!5949 = !DILocation(line: 404, column: 52, scope: !5931)
!5950 = !DILocation(line: 404, column: 60, scope: !5931)
!5951 = !DILocation(line: 404, column: 23, scope: !5931)
!5952 = !DILocation(line: 406, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 406, column: 6)
!5954 = !DILocation(line: 406, column: 24, scope: !5953)
!5955 = !DILocation(line: 406, column: 27, scope: !5953)
!5956 = !DILocation(line: 406, column: 33, scope: !5953)
!5957 = !DILocation(line: 406, column: 6, scope: !5931)
!5958 = !DILocation(line: 407, column: 7, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 407, column: 7)
!5960 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 406, column: 52)
!5961 = !DILocation(line: 407, column: 13, scope: !5959)
!5962 = !DILocation(line: 407, column: 19, scope: !5959)
!5963 = !DILocation(line: 407, column: 26, scope: !5959)
!5964 = !DILocation(line: 407, column: 33, scope: !5959)
!5965 = !DILocation(line: 407, column: 24, scope: !5959)
!5966 = !DILocation(line: 407, column: 16, scope: !5959)
!5967 = !DILocation(line: 407, column: 66, scope: !5959)
!5968 = !DILocation(line: 408, column: 7, scope: !5959)
!5969 = !DILocation(line: 408, column: 13, scope: !5959)
!5970 = !DILocation(line: 408, column: 19, scope: !5959)
!5971 = !DILocation(line: 408, column: 26, scope: !5959)
!5972 = !DILocation(line: 408, column: 33, scope: !5959)
!5973 = !DILocation(line: 408, column: 24, scope: !5959)
!5974 = !DILocation(line: 408, column: 16, scope: !5959)
!5975 = !DILocation(line: 407, column: 7, scope: !5960)
!5976 = !DILocation(line: 409, column: 4, scope: !5959)
!5977 = !DILocation(line: 410, column: 2, scope: !5960)
!5978 = !DILocation(line: 412, column: 2, scope: !5931)
!5979 = !DILocation(line: 413, column: 1, scope: !5931)
!5980 = distinct !DISubprogram(name: "vdso_setup", scope: !3, file: !3, line: 416, type: !5478, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5981)
!5981 = !{!5982}
!5982 = !DILocalVariable(name: "s", arg: 1, scope: !5980, file: !3, line: 416, type: !565)
!5983 = !DILocation(line: 416, column: 36, scope: !5980)
!5984 = !DILocation(line: 418, column: 34, scope: !5980)
!5985 = !DILocation(line: 418, column: 19, scope: !5980)
!5986 = !DILocation(line: 418, column: 17, scope: !5980)
!5987 = !DILocation(line: 419, column: 2, scope: !5980)
!5988 = distinct !DISubprogram(name: "__mmap_lock_trace_start_locking", scope: !5631, file: !5631, line: 25, type: !5989, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{null, !1151, !1352}
!5991 = !{!5992, !5993}
!5992 = !DILocalVariable(name: "mm", arg: 1, scope: !5988, file: !5631, line: 25, type: !1151)
!5993 = !DILocalVariable(name: "write", arg: 2, scope: !5988, file: !5631, line: 26, type: !1352)
!5994 = !DILocation(line: 25, column: 70, scope: !5988)
!5995 = !DILocation(line: 26, column: 15, scope: !5988)
!5996 = !DILocation(line: 28, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5988, file: !5631, line: 28, column: 6)
!5998 = !DILocation(line: 28, column: 6, scope: !5988)
!5999 = !DILocation(line: 29, column: 38, scope: !5997)
!6000 = !DILocation(line: 29, column: 42, scope: !5997)
!6001 = !{i8 0, i8 2}
!6002 = !DILocation(line: 29, column: 3, scope: !5997)
!6003 = !DILocation(line: 30, column: 1, scope: !5988)
!6004 = !DISubprogram(name: "down_read", scope: !1205, file: !1205, line: 175, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !6007}
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!6008 = distinct !DISubprogram(name: "__mmap_lock_trace_acquire_returned", scope: !5631, file: !5631, line: 32, type: !6009, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6011)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !1151, !1352, !1352}
!6011 = !{!6012, !6013, !6014}
!6012 = !DILocalVariable(name: "mm", arg: 1, scope: !6008, file: !5631, line: 32, type: !1151)
!6013 = !DILocalVariable(name: "write", arg: 2, scope: !6008, file: !5631, line: 33, type: !1352)
!6014 = !DILocalVariable(name: "success", arg: 3, scope: !6008, file: !5631, line: 33, type: !1352)
!6015 = !DILocation(line: 32, column: 73, scope: !6008)
!6016 = !DILocation(line: 33, column: 18, scope: !6008)
!6017 = !DILocation(line: 33, column: 30, scope: !6008)
!6018 = !DILocation(line: 35, column: 6, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6008, file: !5631, line: 35, column: 6)
!6020 = !DILocation(line: 35, column: 6, scope: !6008)
!6021 = !DILocation(line: 36, column: 41, scope: !6019)
!6022 = !DILocation(line: 36, column: 45, scope: !6019)
!6023 = !DILocation(line: 36, column: 52, scope: !6019)
!6024 = !DILocation(line: 36, column: 3, scope: !6019)
!6025 = !DILocation(line: 37, column: 1, scope: !6008)
!6026 = distinct !DISubprogram(name: "static_key_false", scope: !3884, file: !3884, line: 205, type: !6027, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6041)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!1352, !6029}
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3884, line: 85, size: 128, elements: !6031)
!6031 = !{!6032, !6033}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6030, file: !3884, line: 86, baseType: !49, size: 32)
!6033 = !DIDerivedType(tag: DW_TAG_member, scope: !6030, file: !3884, line: 101, baseType: !6034, size: 64, offset: 64)
!6034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6030, file: !3884, line: 101, size: 64, elements: !6035)
!6035 = !{!6036, !6037, !6038}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6034, file: !3884, line: 102, baseType: !39, size: 64)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6034, file: !3884, line: 103, baseType: !3882, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6034, file: !3884, line: 104, baseType: !6039, size: 64)
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6040, size: 64)
!6040 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3884, line: 104, flags: DIFlagFwdDecl)
!6041 = !{!6042}
!6042 = !DILocalVariable(name: "key", arg: 1, scope: !6026, file: !3884, line: 205, type: !6029)
!6043 = !DILocation(line: 205, column: 65, scope: !6026)
!6044 = !DILocation(line: 207, column: 28, scope: !6026)
!6045 = !DILocation(line: 207, column: 9, scope: !6026)
!6046 = !DILocation(line: 207, column: 2, scope: !6026)
!6047 = !DISubprogram(name: "__mmap_lock_do_trace_start_locking", scope: !5631, file: !5631, line: 20, type: !5989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = distinct !DISubprogram(name: "arch_static_branch", scope: !6049, file: !6049, line: 25, type: !6050, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6052)
!6049 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6050 = !DISubroutineType(types: !6051)
!6051 = !{!1352, !6029, !1352}
!6052 = !{!6053, !6054, !6055}
!6053 = !DILocalVariable(name: "key", arg: 1, scope: !6048, file: !6049, line: 25, type: !6029)
!6054 = !DILocalVariable(name: "branch", arg: 2, scope: !6048, file: !6049, line: 25, type: !1352)
!6055 = !DILabel(scope: !6048, name: "l_yes", file: !6049, line: 33)
!6056 = !DILocation(line: 25, column: 67, scope: !6048)
!6057 = !DILocation(line: 25, column: 77, scope: !6048)
!6058 = !DILocation(line: 30, column: 13, scope: !6048)
!6059 = !DILocation(line: 30, column: 28, scope: !6048)
!6060 = !DILocation(line: 30, column: 26, scope: !6048)
!6061 = !DILocation(line: 27, column: 2, scope: !6048)
!6062 = !{i64 1273259, i64 1273303, i64 2148757986, i64 2148758007, i64 2148758033, i64 2148758066, i64 2148758100, i64 2148758124}
!6063 = !DILocation(line: 32, column: 2, scope: !6048)
!6064 = !DILocation(line: 33, column: 1, scope: !6048)
!6065 = !DILocation(line: 34, column: 2, scope: !6048)
!6066 = !DILocation(line: 35, column: 1, scope: !6048)
!6067 = !DISubprogram(name: "__mmap_lock_do_trace_acquire_returned", scope: !5631, file: !5631, line: 21, type: !6009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = !DISubprogram(name: "mas_find", scope: !393, file: !393, line: 467, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!20, !6071, !39}
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!6072 = !DISubprogram(name: "zap_page_range_single", scope: !1990, file: !1990, line: 2341, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !1996, !39, !39, !6075}
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6076, size: 64)
!6076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zap_details", file: !1990, line: 2283, size: 128, elements: !6077)
!6077 = !{!6078, !6079, !6080}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "single_folio", scope: !6076, file: !1990, line: 2284, baseType: !3326, size: 64)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "even_cows", scope: !6076, file: !1990, line: 2285, baseType: !1352, size: 8, offset: 64)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "zap_flags", scope: !6076, file: !1990, line: 2286, baseType: !6081, size: 32, offset: 96)
!6081 = !DIDerivedType(tag: DW_TAG_typedef, name: "zap_flags_t", file: !131, line: 1341, baseType: !7)
!6082 = distinct !DISubprogram(name: "__mmap_lock_trace_released", scope: !5631, file: !5631, line: 39, type: !5989, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6083)
!6083 = !{!6084, !6085}
!6084 = !DILocalVariable(name: "mm", arg: 1, scope: !6082, file: !5631, line: 39, type: !1151)
!6085 = !DILocalVariable(name: "write", arg: 2, scope: !6082, file: !5631, line: 39, type: !1352)
!6086 = !DILocation(line: 39, column: 65, scope: !6082)
!6087 = !DILocation(line: 39, column: 74, scope: !6082)
!6088 = !DILocation(line: 41, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6082, file: !5631, line: 41, column: 6)
!6090 = !DILocation(line: 41, column: 6, scope: !6082)
!6091 = !DILocation(line: 42, column: 33, scope: !6089)
!6092 = !DILocation(line: 42, column: 37, scope: !6089)
!6093 = !DILocation(line: 42, column: 3, scope: !6089)
!6094 = !DILocation(line: 43, column: 1, scope: !6082)
!6095 = !DISubprogram(name: "up_read", scope: !1205, file: !1205, line: 198, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6096 = !DISubprogram(name: "__mmap_lock_do_trace_released", scope: !5631, file: !5631, line: 23, type: !5989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6097 = distinct !DISubprogram(name: "vvar_fault", scope: !3, file: !3, line: 128, type: !5495, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6098)
!6098 = !{!6099, !6100, !6101, !6102, !6103, !6104, !6105, !6108, !6111, !6112, !6132}
!6099 = !DILocalVariable(name: "sm", arg: 1, scope: !6097, file: !3, line: 128, type: !5497)
!6100 = !DILocalVariable(name: "vma", arg: 2, scope: !6097, file: !3, line: 129, type: !1996)
!6101 = !DILocalVariable(name: "vmf", arg: 3, scope: !6097, file: !3, line: 129, type: !2066)
!6102 = !DILocalVariable(name: "image", scope: !6097, file: !3, line: 131, type: !1269)
!6103 = !DILocalVariable(name: "pfn", scope: !6097, file: !3, line: 132, type: !39)
!6104 = !DILocalVariable(name: "sym_offset", scope: !6097, file: !3, line: 133, type: !402)
!6105 = !DILocalVariable(name: "timens_page", scope: !6106, file: !3, line: 152, type: !403)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 151, column: 42)
!6107 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 151, column: 6)
!6108 = !DILocalVariable(name: "addr", scope: !6109, file: !3, line: 164, type: !39)
!6109 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 163, column: 20)
!6110 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 163, column: 7)
!6111 = !DILocalVariable(name: "err", scope: !6109, file: !3, line: 165, type: !2065)
!6112 = !DILocalVariable(name: "pvti", scope: !6113, file: !3, line: 183, type: !6115)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 182, column: 52)
!6114 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 182, column: 13)
!6115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6116, size: 64)
!6116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vsyscall_time_info", file: !6117, line: 91, size: 512, align: 512, elements: !6118)
!6117 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0842e5b6b68f91de74c4dd8305b2bfa6")
!6118 = !{!6119}
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "pvti", scope: !6116, file: !6117, line: 92, baseType: !6120, size: 256)
!6120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !6121, line: 26, size: 256, elements: !6122)
!6121 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63a96b2b2f7b6470cea45a7a079d9d9a")
!6122 = !{!6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6120, file: !6121, line: 27, baseType: !335, size: 32)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !6120, file: !6121, line: 28, baseType: !335, size: 32, offset: 32)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !6120, file: !6121, line: 29, baseType: !341, size: 64, offset: 64)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !6120, file: !6121, line: 30, baseType: !341, size: 64, offset: 128)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !6120, file: !6121, line: 31, baseType: !335, size: 32, offset: 192)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !6120, file: !6121, line: 32, baseType: !3661, size: 8, offset: 224)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6120, file: !6121, line: 33, baseType: !83, size: 8, offset: 232)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6120, file: !6121, line: 34, baseType: !6131, size: 16, offset: 240)
!6131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 16, elements: !2502)
!6132 = !DILocalVariable(name: "timens_page", scope: !6133, file: !3, line: 196, type: !403)
!6133 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 195, column: 51)
!6134 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 195, column: 13)
!6135 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 190, column: 13)
!6136 = !DILocation(line: 128, column: 63, scope: !6097)
!6137 = !DILocation(line: 129, column: 32, scope: !6097)
!6138 = !DILocation(line: 129, column: 54, scope: !6097)
!6139 = !DILocation(line: 131, column: 2, scope: !6097)
!6140 = !DILocation(line: 131, column: 27, scope: !6097)
!6141 = !DILocation(line: 131, column: 35, scope: !6097)
!6142 = !DILocation(line: 131, column: 40, scope: !6097)
!6143 = !DILocation(line: 131, column: 47, scope: !6097)
!6144 = !DILocation(line: 131, column: 55, scope: !6097)
!6145 = !DILocation(line: 132, column: 2, scope: !6097)
!6146 = !DILocation(line: 132, column: 16, scope: !6097)
!6147 = !DILocation(line: 133, column: 2, scope: !6097)
!6148 = !DILocation(line: 133, column: 7, scope: !6097)
!6149 = !DILocation(line: 135, column: 7, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 135, column: 6)
!6151 = !DILocation(line: 135, column: 6, scope: !6097)
!6152 = !DILocation(line: 136, column: 3, scope: !6150)
!6153 = !DILocation(line: 138, column: 22, scope: !6097)
!6154 = !DILocation(line: 138, column: 27, scope: !6097)
!6155 = !DILocation(line: 138, column: 33, scope: !6097)
!6156 = !DILocation(line: 139, column: 3, scope: !6097)
!6157 = !DILocation(line: 139, column: 10, scope: !6097)
!6158 = !DILocation(line: 138, column: 48, scope: !6097)
!6159 = !DILocation(line: 138, column: 13, scope: !6097)
!6160 = !DILocation(line: 148, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 148, column: 6)
!6162 = !DILocation(line: 148, column: 17, scope: !6161)
!6163 = !DILocation(line: 148, column: 6, scope: !6097)
!6164 = !DILocation(line: 149, column: 3, scope: !6161)
!6165 = !DILocation(line: 151, column: 6, scope: !6107)
!6166 = !DILocation(line: 151, column: 20, scope: !6107)
!6167 = !DILocation(line: 151, column: 27, scope: !6107)
!6168 = !DILocation(line: 151, column: 17, scope: !6107)
!6169 = !DILocation(line: 151, column: 6, scope: !6097)
!6170 = !DILocation(line: 152, column: 3, scope: !6106)
!6171 = !DILocation(line: 152, column: 16, scope: !6106)
!6172 = !DILocation(line: 152, column: 52, scope: !6106)
!6173 = !DILocation(line: 152, column: 30, scope: !6106)
!6174 = !DILocation(line: 154, column: 9, scope: !6106)
!6175 = !DILocation(line: 154, column: 35, scope: !6106)
!6176 = !DILocation(line: 154, column: 7, scope: !6106)
!6177 = !DILocation(line: 163, column: 7, scope: !6110)
!6178 = !DILocation(line: 163, column: 7, scope: !6106)
!6179 = !DILocation(line: 164, column: 4, scope: !6109)
!6180 = !DILocation(line: 164, column: 18, scope: !6109)
!6181 = !DILocation(line: 165, column: 4, scope: !6109)
!6182 = !DILocation(line: 165, column: 15, scope: !6109)
!6183 = !DILocation(line: 173, column: 11, scope: !6109)
!6184 = !DILocation(line: 173, column: 16, scope: !6109)
!6185 = !DILocation(line: 173, column: 27, scope: !6109)
!6186 = !DILocation(line: 173, column: 34, scope: !6109)
!6187 = !DILocation(line: 173, column: 52, scope: !6109)
!6188 = !DILocation(line: 173, column: 50, scope: !6109)
!6189 = !DILocation(line: 173, column: 24, scope: !6109)
!6190 = !DILocation(line: 173, column: 9, scope: !6109)
!6191 = !DILocation(line: 174, column: 25, scope: !6109)
!6192 = !DILocation(line: 174, column: 30, scope: !6109)
!6193 = !DILocation(line: 174, column: 36, scope: !6109)
!6194 = !DILocation(line: 174, column: 10, scope: !6109)
!6195 = !DILocation(line: 174, column: 8, scope: !6109)
!6196 = !DILocation(line: 175, column: 8, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 175, column: 8)
!6198 = !DILocation(line: 175, column: 8, scope: !6109)
!6199 = !DILocation(line: 176, column: 12, scope: !6197)
!6200 = !DILocation(line: 176, column: 5, scope: !6197)
!6201 = !DILocation(line: 178, column: 10, scope: !6109)
!6202 = !DILocation(line: 178, column: 8, scope: !6109)
!6203 = !DILocation(line: 179, column: 3, scope: !6110)
!6204 = !DILocation(line: 179, column: 3, scope: !6109)
!6205 = !DILocation(line: 181, column: 25, scope: !6106)
!6206 = !DILocation(line: 181, column: 30, scope: !6106)
!6207 = !DILocation(line: 181, column: 35, scope: !6106)
!6208 = !DILocation(line: 181, column: 44, scope: !6106)
!6209 = !DILocation(line: 181, column: 10, scope: !6106)
!6210 = !DILocation(line: 181, column: 3, scope: !6106)
!6211 = !DILocation(line: 182, column: 2, scope: !6107)
!6212 = !DILocation(line: 182, column: 13, scope: !6114)
!6213 = !DILocation(line: 182, column: 27, scope: !6114)
!6214 = !DILocation(line: 182, column: 34, scope: !6114)
!6215 = !DILocation(line: 182, column: 24, scope: !6114)
!6216 = !DILocation(line: 182, column: 13, scope: !6107)
!6217 = !DILocation(line: 183, column: 3, scope: !6113)
!6218 = !DILocation(line: 183, column: 38, scope: !6113)
!6219 = !DILocation(line: 184, column: 4, scope: !6113)
!6220 = !DILocation(line: 185, column: 7, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 185, column: 7)
!6222 = !DILocation(line: 185, column: 12, scope: !6221)
!6223 = !DILocation(line: 185, column: 15, scope: !6221)
!6224 = !DILocation(line: 185, column: 7, scope: !6113)
!6225 = !DILocation(line: 186, column: 31, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 185, column: 56)
!6227 = !DILocation(line: 186, column: 36, scope: !6226)
!6228 = !DILocation(line: 186, column: 41, scope: !6226)
!6229 = !DILocation(line: 187, column: 6, scope: !6226)
!6230 = !DILocation(line: 187, column: 17, scope: !6226)
!6231 = !DILocation(line: 188, column: 6, scope: !6226)
!6232 = !DILocation(line: 186, column: 11, scope: !6226)
!6233 = !DILocation(line: 186, column: 4, scope: !6226)
!6234 = !DILocation(line: 190, column: 2, scope: !6114)
!6235 = !DILocation(line: 190, column: 2, scope: !6113)
!6236 = !DILocation(line: 190, column: 13, scope: !6135)
!6237 = !DILocation(line: 190, column: 27, scope: !6135)
!6238 = !DILocation(line: 190, column: 34, scope: !6135)
!6239 = !DILocation(line: 190, column: 24, scope: !6135)
!6240 = !DILocation(line: 190, column: 13, scope: !6114)
!6241 = !DILocation(line: 191, column: 9, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 190, column: 52)
!6243 = !DILocation(line: 191, column: 7, scope: !6242)
!6244 = !DILocation(line: 193, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 193, column: 7)
!6246 = !DILocation(line: 193, column: 11, scope: !6245)
!6247 = !DILocation(line: 193, column: 14, scope: !6245)
!6248 = !DILocation(line: 193, column: 7, scope: !6242)
!6249 = !DILocation(line: 194, column: 26, scope: !6245)
!6250 = !DILocation(line: 194, column: 31, scope: !6245)
!6251 = !DILocation(line: 194, column: 36, scope: !6245)
!6252 = !DILocation(line: 194, column: 45, scope: !6245)
!6253 = !DILocation(line: 194, column: 11, scope: !6245)
!6254 = !DILocation(line: 194, column: 4, scope: !6245)
!6255 = !DILocation(line: 195, column: 2, scope: !6242)
!6256 = !DILocation(line: 195, column: 13, scope: !6134)
!6257 = !DILocation(line: 195, column: 27, scope: !6134)
!6258 = !DILocation(line: 195, column: 34, scope: !6134)
!6259 = !DILocation(line: 195, column: 24, scope: !6134)
!6260 = !DILocation(line: 195, column: 13, scope: !6135)
!6261 = !DILocation(line: 196, column: 3, scope: !6133)
!6262 = !DILocation(line: 196, column: 16, scope: !6133)
!6263 = !DILocation(line: 196, column: 52, scope: !6133)
!6264 = !DILocation(line: 196, column: 30, scope: !6133)
!6265 = !DILocation(line: 198, column: 8, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 198, column: 7)
!6267 = !DILocation(line: 198, column: 7, scope: !6133)
!6268 = !DILocation(line: 199, column: 4, scope: !6266)
!6269 = !DILocation(line: 201, column: 9, scope: !6133)
!6270 = !DILocation(line: 201, column: 35, scope: !6133)
!6271 = !DILocation(line: 201, column: 7, scope: !6133)
!6272 = !DILocation(line: 202, column: 25, scope: !6133)
!6273 = !DILocation(line: 202, column: 30, scope: !6133)
!6274 = !DILocation(line: 202, column: 35, scope: !6133)
!6275 = !DILocation(line: 202, column: 44, scope: !6133)
!6276 = !DILocation(line: 202, column: 10, scope: !6133)
!6277 = !DILocation(line: 202, column: 3, scope: !6133)
!6278 = !DILocation(line: 203, column: 2, scope: !6134)
!6279 = !DILocation(line: 205, column: 2, scope: !6097)
!6280 = !DILocation(line: 206, column: 1, scope: !6097)
!6281 = !DISubprogram(name: "find_timens_vvar_page", scope: !1842, file: !1842, line: 47, type: !6282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6282 = !DISubroutineType(types: !6283)
!6283 = !{!403, !1996}
!6284 = !DISubprogram(name: "vmf_insert_pfn", scope: !1990, file: !1990, line: 3475, type: !6285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = !DISubroutineType(types: !6286)
!6286 = !{!2065, !1996, !39, !39}
!6287 = !DISubprogram(name: "pvclock_get_pvti_cpu0_va", scope: !6117, file: !6117, line: 99, type: !6288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!6115}
!6290 = distinct !DISubprogram(name: "vclock_was_used", scope: !6291, file: !6291, line: 11, type: !6292, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6291 = !DIFile(filename: "./arch/x86/include/asm/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6361f957ffa0e49ae33c4db6e2a6729d")
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!1352, !22}
!6294 = !{!6295}
!6295 = !DILocalVariable(name: "vclock", arg: 1, scope: !6290, file: !6291, line: 11, type: !22)
!6296 = !DILocation(line: 11, column: 40, scope: !6290)
!6297 = !DILocation(line: 13, column: 9, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6290, file: !6291, line: 13, column: 9)
!6299 = !DILocation(line: 13, column: 9, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6298, file: !6291, line: 13, column: 9)
!6301 = !DILocation(line: 13, column: 42, scope: !6290)
!6302 = !DILocation(line: 13, column: 39, scope: !6290)
!6303 = !DILocation(line: 13, column: 33, scope: !6290)
!6304 = !DILocation(line: 13, column: 9, scope: !6290)
!6305 = !DILocation(line: 13, column: 2, scope: !6290)
!6306 = !DISubprogram(name: "vmf_insert_pfn_prot", scope: !1990, file: !1990, line: 3477, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!2065, !1996, !39, !39, !2010}
!6309 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6310, file: !6310, line: 22, type: !6311, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6313)
!6310 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6311 = !DISubroutineType(types: !6312)
!6312 = !{!39, !39}
!6313 = !{!6314, !6315}
!6314 = !DILocalVariable(name: "x", arg: 1, scope: !6309, file: !6310, line: 22, type: !39)
!6315 = !DILocalVariable(name: "y", scope: !6309, file: !6310, line: 24, type: !39)
!6316 = !DILocation(line: 22, column: 72, scope: !6309)
!6317 = !DILocation(line: 24, column: 2, scope: !6309)
!6318 = !DILocation(line: 24, column: 16, scope: !6309)
!6319 = !DILocation(line: 24, column: 20, scope: !6309)
!6320 = !DILocation(line: 24, column: 22, scope: !6309)
!6321 = !DILocation(line: 27, column: 6, scope: !6309)
!6322 = !DILocation(line: 27, column: 12, scope: !6309)
!6323 = !DILocation(line: 27, column: 16, scope: !6309)
!6324 = !DILocation(line: 27, column: 14, scope: !6309)
!6325 = !DILocation(line: 27, column: 11, scope: !6309)
!6326 = !DILocation(line: 27, column: 21, scope: !6309)
!6327 = !DILocation(line: 27, column: 55, scope: !6309)
!6328 = !DILocation(line: 27, column: 53, scope: !6309)
!6329 = !DILocation(line: 27, column: 8, scope: !6309)
!6330 = !DILocation(line: 27, column: 4, scope: !6309)
!6331 = !DILocation(line: 29, column: 9, scope: !6309)
!6332 = !DILocation(line: 30, column: 1, scope: !6309)
!6333 = !DILocation(line: 29, column: 2, scope: !6309)
!6334 = distinct !DISubprogram(name: "cc_mkdec", scope: !6335, file: !6335, line: 35, type: !6336, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6335 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!341, !341}
!6338 = !{!6339}
!6339 = !DILocalVariable(name: "val", arg: 1, scope: !6334, file: !6335, line: 35, type: !341)
!6340 = !DILocation(line: 35, column: 32, scope: !6334)
!6341 = !DILocation(line: 37, column: 9, scope: !6334)
!6342 = !DILocation(line: 37, column: 2, scope: !6334)
!6343 = distinct !DISubprogram(name: "hv_get_tsc_pfn", scope: !6344, file: !6344, line: 93, type: !6345, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6344 = !DIFile(filename: "./include/clocksource/hyperv_timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a936ca95ad8b7ee8734e6f6819d147c5")
!6345 = !DISubroutineType(types: !6346)
!6346 = !{!39}
!6347 = !DILocation(line: 95, column: 2, scope: !6343)
!6348 = !DISubprogram(name: "down_write", scope: !1205, file: !1205, line: 187, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6349 = distinct !DISubprogram(name: "vdso_fault", scope: !3, file: !3, line: 62, type: !5495, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6350)
!6350 = !{!6351, !6352, !6353, !6354}
!6351 = !DILocalVariable(name: "sm", arg: 1, scope: !6349, file: !3, line: 62, type: !5497)
!6352 = !DILocalVariable(name: "vma", arg: 2, scope: !6349, file: !3, line: 63, type: !1996)
!6353 = !DILocalVariable(name: "vmf", arg: 3, scope: !6349, file: !3, line: 63, type: !2066)
!6354 = !DILocalVariable(name: "image", scope: !6349, file: !3, line: 65, type: !1269)
!6355 = !DILocation(line: 62, column: 63, scope: !6349)
!6356 = !DILocation(line: 63, column: 32, scope: !6349)
!6357 = !DILocation(line: 63, column: 54, scope: !6349)
!6358 = !DILocation(line: 65, column: 2, scope: !6349)
!6359 = !DILocation(line: 65, column: 27, scope: !6349)
!6360 = !DILocation(line: 65, column: 35, scope: !6349)
!6361 = !DILocation(line: 65, column: 40, scope: !6349)
!6362 = !DILocation(line: 65, column: 47, scope: !6349)
!6363 = !DILocation(line: 65, column: 55, scope: !6349)
!6364 = !DILocation(line: 67, column: 7, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6349, file: !3, line: 67, column: 6)
!6366 = !DILocation(line: 67, column: 13, scope: !6365)
!6367 = !DILocation(line: 67, column: 17, scope: !6365)
!6368 = !DILocation(line: 67, column: 22, scope: !6365)
!6369 = !DILocation(line: 67, column: 28, scope: !6365)
!6370 = !DILocation(line: 67, column: 46, scope: !6365)
!6371 = !DILocation(line: 67, column: 53, scope: !6365)
!6372 = !DILocation(line: 67, column: 43, scope: !6365)
!6373 = !DILocation(line: 67, column: 6, scope: !6349)
!6374 = !DILocation(line: 68, column: 3, scope: !6365)
!6375 = !DILocation(line: 70, column: 14, scope: !6349)
!6376 = !DILocation(line: 70, column: 2, scope: !6349)
!6377 = !DILocation(line: 70, column: 7, scope: !6349)
!6378 = !DILocation(line: 70, column: 12, scope: !6349)
!6379 = !DILocation(line: 71, column: 11, scope: !6349)
!6380 = !DILocation(line: 71, column: 16, scope: !6349)
!6381 = !DILocation(line: 71, column: 2, scope: !6349)
!6382 = !DILocation(line: 72, column: 2, scope: !6349)
!6383 = !DILocation(line: 73, column: 1, scope: !6349)
!6384 = distinct !DISubprogram(name: "vdso_mremap", scope: !3, file: !3, line: 92, type: !5500, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6385)
!6385 = !{!6386, !6387, !6388}
!6386 = !DILocalVariable(name: "sm", arg: 1, scope: !6384, file: !3, line: 92, type: !5497)
!6387 = !DILocalVariable(name: "new_vma", arg: 2, scope: !6384, file: !3, line: 93, type: !1996)
!6388 = !DILocalVariable(name: "image", scope: !6384, file: !3, line: 95, type: !1269)
!6389 = !DILocation(line: 92, column: 57, scope: !6384)
!6390 = !DILocation(line: 93, column: 26, scope: !6384)
!6391 = !DILocation(line: 95, column: 2, scope: !6384)
!6392 = !DILocation(line: 95, column: 27, scope: !6384)
!6393 = !DILocation(line: 95, column: 35, scope: !6384)
!6394 = !DILocation(line: 95, column: 44, scope: !6384)
!6395 = !DILocation(line: 95, column: 48, scope: !6384)
!6396 = !DILocation(line: 95, column: 56, scope: !6384)
!6397 = !DILocation(line: 97, column: 19, scope: !6384)
!6398 = !DILocation(line: 97, column: 26, scope: !6384)
!6399 = !DILocation(line: 97, column: 2, scope: !6384)
!6400 = !DILocation(line: 98, column: 45, scope: !6384)
!6401 = !DILocation(line: 98, column: 54, scope: !6384)
!6402 = !DILocation(line: 98, column: 30, scope: !6384)
!6403 = !DILocation(line: 98, column: 2, scope: !6384)
!6404 = !DILocation(line: 98, column: 11, scope: !6384)
!6405 = !DILocation(line: 98, column: 15, scope: !6384)
!6406 = !DILocation(line: 98, column: 23, scope: !6384)
!6407 = !DILocation(line: 98, column: 28, scope: !6384)
!6408 = !DILocation(line: 101, column: 1, scope: !6384)
!6409 = !DILocation(line: 100, column: 2, scope: !6384)
!6410 = distinct !DISubprogram(name: "get_page", scope: !1990, file: !1990, line: 1451, type: !5416, scopeLine: 1452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6411 = !{!6412}
!6412 = !DILocalVariable(name: "page", arg: 1, scope: !6410, file: !1990, line: 1451, type: !403)
!6413 = !DILocation(line: 1451, column: 42, scope: !6410)
!6414 = !DILocation(line: 1453, column: 12, scope: !6410)
!6415 = !DILocation(line: 1453, column: 2, scope: !6410)
!6416 = !DILocation(line: 1454, column: 1, scope: !6410)
!6417 = distinct !DISubprogram(name: "folio_get", scope: !1990, file: !1990, line: 1445, type: !5276, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6418 = !{!6419}
!6419 = !DILocalVariable(name: "folio", arg: 1, scope: !6417, file: !1990, line: 1445, type: !3326)
!6420 = !DILocation(line: 1445, column: 44, scope: !6417)
!6421 = !DILocation(line: 1448, column: 16, scope: !6417)
!6422 = !DILocation(line: 1448, column: 2, scope: !6417)
!6423 = !DILocation(line: 1449, column: 1, scope: !6417)
!6424 = distinct !DISubprogram(name: "_compound_head", scope: !290, file: !290, line: 244, type: !6425, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!39, !5458}
!6427 = !{!6428, !6429}
!6428 = !DILocalVariable(name: "page", arg: 1, scope: !6424, file: !290, line: 244, type: !5458)
!6429 = !DILocalVariable(name: "head", scope: !6424, file: !290, line: 246, type: !39)
!6430 = !DILocation(line: 244, column: 63, scope: !6424)
!6431 = !DILocation(line: 246, column: 2, scope: !6424)
!6432 = !DILocation(line: 246, column: 16, scope: !6424)
!6433 = !DILocation(line: 246, column: 23, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6424, file: !290, line: 246, column: 23)
!6435 = !DILocation(line: 246, column: 23, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6434, file: !290, line: 246, column: 23)
!6437 = !DILocation(line: 248, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6424, file: !290, line: 248, column: 6)
!6439 = !DILocation(line: 248, column: 6, scope: !6424)
!6440 = !DILocation(line: 249, column: 10, scope: !6438)
!6441 = !DILocation(line: 249, column: 15, scope: !6438)
!6442 = !DILocation(line: 249, column: 3, scope: !6438)
!6443 = !DILocation(line: 250, column: 45, scope: !6424)
!6444 = !DILocation(line: 250, column: 24, scope: !6424)
!6445 = !DILocation(line: 250, column: 9, scope: !6424)
!6446 = !DILocation(line: 250, column: 2, scope: !6424)
!6447 = !DILocation(line: 251, column: 1, scope: !6424)
!6448 = distinct !DISubprogram(name: "folio_ref_inc", scope: !6449, file: !6449, line: 163, type: !5276, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6450)
!6449 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6450 = !{!6451}
!6451 = !DILocalVariable(name: "folio", arg: 1, scope: !6448, file: !6449, line: 163, type: !3326)
!6452 = !DILocation(line: 163, column: 48, scope: !6448)
!6453 = !DILocation(line: 165, column: 16, scope: !6448)
!6454 = !DILocation(line: 165, column: 23, scope: !6448)
!6455 = !DILocation(line: 165, column: 2, scope: !6448)
!6456 = !DILocation(line: 166, column: 1, scope: !6448)
!6457 = distinct !DISubprogram(name: "page_ref_inc", scope: !6449, file: !6449, line: 156, type: !5416, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6458)
!6458 = !{!6459}
!6459 = !DILocalVariable(name: "page", arg: 1, scope: !6457, file: !6449, line: 156, type: !403)
!6460 = !DILocation(line: 156, column: 46, scope: !6457)
!6461 = !DILocation(line: 158, column: 14, scope: !6457)
!6462 = !DILocation(line: 158, column: 20, scope: !6457)
!6463 = !DILocation(line: 158, column: 2, scope: !6457)
!6464 = !DILocation(line: 161, column: 1, scope: !6457)
!6465 = distinct !DISubprogram(name: "atomic_inc", scope: !6466, file: !6466, line: 433, type: !6467, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6470)
!6466 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6467 = !DISubroutineType(types: !6468)
!6468 = !{null, !6469}
!6469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!6470 = !{!6471}
!6471 = !DILocalVariable(name: "v", arg: 1, scope: !6465, file: !6466, line: 433, type: !6469)
!6472 = !DILocation(line: 433, column: 22, scope: !6465)
!6473 = !DILocation(line: 435, column: 31, scope: !6465)
!6474 = !DILocation(line: 435, column: 2, scope: !6465)
!6475 = !DILocation(line: 436, column: 17, scope: !6465)
!6476 = !DILocation(line: 436, column: 2, scope: !6465)
!6477 = !DILocation(line: 437, column: 1, scope: !6465)
!6478 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6479, file: !6479, line: 94, type: !6480, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6479 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6480 = !DISubroutineType(types: !6481)
!6481 = !{null, !6482, !35}
!6482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6483, size: 64)
!6483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6484)
!6484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6485 = !{!6486, !6487}
!6486 = !DILocalVariable(name: "v", arg: 1, scope: !6478, file: !6479, line: 94, type: !6482)
!6487 = !DILocalVariable(name: "size", arg: 2, scope: !6478, file: !6479, line: 94, type: !35)
!6488 = !DILocation(line: 94, column: 79, scope: !6478)
!6489 = !DILocation(line: 94, column: 89, scope: !6478)
!6490 = !DILocation(line: 96, column: 20, scope: !6478)
!6491 = !DILocation(line: 96, column: 23, scope: !6478)
!6492 = !DILocation(line: 96, column: 2, scope: !6478)
!6493 = !DILocation(line: 97, column: 2, scope: !6478)
!6494 = !DILocation(line: 98, column: 1, scope: !6478)
!6495 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6496, file: !6496, line: 976, type: !6467, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6496 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6497 = !{!6498}
!6498 = !DILocalVariable(name: "v", arg: 1, scope: !6495, file: !6496, line: 976, type: !6469)
!6499 = !DILocation(line: 976, column: 26, scope: !6495)
!6500 = !DILocation(line: 979, column: 18, scope: !6495)
!6501 = !DILocation(line: 979, column: 2, scope: !6495)
!6502 = !DILocation(line: 983, column: 1, scope: !6495)
!6503 = distinct !DISubprogram(name: "kasan_check_write", scope: !6504, file: !6504, line: 44, type: !6505, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6507)
!6504 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!1352, !6482, !7}
!6507 = !{!6508, !6509}
!6508 = !DILocalVariable(name: "p", arg: 1, scope: !6503, file: !6504, line: 44, type: !6482)
!6509 = !DILocalVariable(name: "size", arg: 2, scope: !6503, file: !6504, line: 44, type: !7)
!6510 = !DILocation(line: 44, column: 59, scope: !6503)
!6511 = !DILocation(line: 44, column: 75, scope: !6503)
!6512 = !DILocation(line: 46, column: 2, scope: !6503)
!6513 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6514, file: !6514, line: 229, type: !6515, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6514 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6515 = !DISubroutineType(types: !6516)
!6516 = !{null, !6482, !35, !22}
!6517 = !{!6518, !6519, !6520}
!6518 = !DILocalVariable(name: "ptr", arg: 1, scope: !6513, file: !6514, line: 229, type: !6482)
!6519 = !DILocalVariable(name: "size", arg: 2, scope: !6513, file: !6514, line: 229, type: !35)
!6520 = !DILocalVariable(name: "type", arg: 3, scope: !6513, file: !6514, line: 230, type: !22)
!6521 = !DILocation(line: 229, column: 60, scope: !6513)
!6522 = !DILocation(line: 229, column: 72, scope: !6513)
!6523 = !DILocation(line: 230, column: 15, scope: !6513)
!6524 = !DILocation(line: 230, column: 23, scope: !6513)
!6525 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6526, file: !6526, line: 51, type: !6467, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6527)
!6526 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6527 = !{!6528}
!6528 = !DILocalVariable(name: "v", arg: 1, scope: !6525, file: !6526, line: 51, type: !6469)
!6529 = !DILocation(line: 51, column: 55, scope: !6525)
!6530 = !DILocation(line: 54, column: 16, scope: !6525)
!6531 = !DILocation(line: 54, column: 19, scope: !6525)
!6532 = !DILocation(line: 53, column: 2, scope: !6525)
!6533 = !{i64 2149032135, i64 2149032174, i64 2149032195, i64 2149032232, i64 2149032255, i64 2149032125}
!6534 = !DILocation(line: 55, column: 1, scope: !6525)
!6535 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !290, file: !290, line: 207, type: !6536, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{!5458, !5458}
!6538 = !{!6539, !6540, !6543}
!6539 = !DILocalVariable(name: "page", arg: 1, scope: !6535, file: !290, line: 207, type: !5458)
!6540 = !DILocalVariable(name: "branch", scope: !6541, file: !290, line: 209, type: !1352)
!6541 = distinct !DILexicalBlock(scope: !6542, file: !290, line: 209, column: 7)
!6542 = distinct !DILexicalBlock(scope: !6535, file: !290, line: 209, column: 6)
!6543 = !DILocalVariable(name: "head", scope: !6544, file: !290, line: 225, type: !39)
!6544 = distinct !DILexicalBlock(scope: !6545, file: !290, line: 219, column: 39)
!6545 = distinct !DILexicalBlock(scope: !6535, file: !290, line: 218, column: 6)
!6546 = !DILocation(line: 207, column: 83, scope: !6535)
!6547 = !DILocation(line: 209, column: 7, scope: !6541)
!6548 = !DILocation(line: 209, column: 7, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6550, file: !290, line: 209, column: 7)
!6550 = distinct !DILexicalBlock(scope: !6541, file: !290, line: 209, column: 7)
!6551 = !DILocation(line: 209, column: 7, scope: !6550)
!6552 = !DILocation(line: 209, column: 7, scope: !6542)
!6553 = !DILocation(line: 209, column: 6, scope: !6535)
!6554 = !DILocation(line: 210, column: 10, scope: !6542)
!6555 = !DILocation(line: 210, column: 3, scope: !6542)
!6556 = !DILocation(line: 218, column: 6, scope: !6545)
!6557 = !DILocation(line: 218, column: 49, scope: !6545)
!6558 = !DILocation(line: 219, column: 6, scope: !6545)
!6559 = !DILocation(line: 218, column: 6, scope: !6535)
!6560 = !DILocation(line: 225, column: 3, scope: !6544)
!6561 = !DILocation(line: 225, column: 17, scope: !6544)
!6562 = !DILocation(line: 225, column: 24, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6544, file: !290, line: 225, column: 24)
!6564 = !DILocation(line: 225, column: 24, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6563, file: !290, line: 225, column: 24)
!6566 = !DILocation(line: 227, column: 7, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6544, file: !290, line: 227, column: 7)
!6568 = !DILocation(line: 227, column: 7, scope: !6544)
!6569 = !DILocation(line: 228, column: 33, scope: !6567)
!6570 = !DILocation(line: 228, column: 38, scope: !6567)
!6571 = !DILocation(line: 228, column: 11, scope: !6567)
!6572 = !DILocation(line: 228, column: 4, scope: !6567)
!6573 = !DILocation(line: 229, column: 2, scope: !6545)
!6574 = !DILocation(line: 229, column: 2, scope: !6544)
!6575 = !DILocation(line: 230, column: 9, scope: !6535)
!6576 = !DILocation(line: 230, column: 2, scope: !6535)
!6577 = !DILocation(line: 231, column: 1, scope: !6535)
!6578 = distinct !DISubprogram(name: "const_test_bit", scope: !6579, file: !6579, line: 166, type: !6580, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6582)
!6579 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!1352, !39, !5453}
!6582 = !{!6583, !6584, !6585, !6586, !6587}
!6583 = !DILocalVariable(name: "nr", arg: 1, scope: !6578, file: !6579, line: 166, type: !39)
!6584 = !DILocalVariable(name: "addr", arg: 2, scope: !6578, file: !6579, line: 166, type: !5453)
!6585 = !DILocalVariable(name: "p", scope: !6578, file: !6579, line: 168, type: !5457)
!6586 = !DILocalVariable(name: "mask", scope: !6578, file: !6579, line: 169, type: !39)
!6587 = !DILocalVariable(name: "val", scope: !6578, file: !6579, line: 170, type: !39)
!6588 = !DILocation(line: 166, column: 30, scope: !6578)
!6589 = !DILocation(line: 166, column: 64, scope: !6578)
!6590 = !DILocation(line: 168, column: 2, scope: !6578)
!6591 = !DILocation(line: 168, column: 23, scope: !6578)
!6592 = !DILocation(line: 168, column: 50, scope: !6578)
!6593 = !DILocation(line: 168, column: 57, scope: !6578)
!6594 = !DILocation(line: 168, column: 55, scope: !6578)
!6595 = !DILocation(line: 169, column: 2, scope: !6578)
!6596 = !DILocation(line: 169, column: 16, scope: !6578)
!6597 = !DILocation(line: 169, column: 23, scope: !6578)
!6598 = !DILocation(line: 170, column: 2, scope: !6578)
!6599 = !DILocation(line: 170, column: 16, scope: !6578)
!6600 = !DILocation(line: 170, column: 23, scope: !6578)
!6601 = !DILocation(line: 170, column: 22, scope: !6578)
!6602 = !DILocation(line: 172, column: 12, scope: !6578)
!6603 = !DILocation(line: 172, column: 18, scope: !6578)
!6604 = !DILocation(line: 172, column: 16, scope: !6578)
!6605 = !DILocation(line: 172, column: 10, scope: !6578)
!6606 = !DILocation(line: 172, column: 9, scope: !6578)
!6607 = !DILocation(line: 173, column: 1, scope: !6578)
!6608 = !DILocation(line: 172, column: 2, scope: !6578)
!6609 = distinct !DISubprogram(name: "_test_bit", scope: !6610, file: !6610, line: 139, type: !6580, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6611)
!6610 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6611 = !{!6612, !6613}
!6612 = !DILocalVariable(name: "nr", arg: 1, scope: !6609, file: !6610, line: 139, type: !39)
!6613 = !DILocalVariable(name: "addr", arg: 2, scope: !6609, file: !6610, line: 139, type: !5453)
!6614 = !DILocation(line: 139, column: 25, scope: !6609)
!6615 = !DILocation(line: 139, column: 59, scope: !6609)
!6616 = !DILocation(line: 141, column: 25, scope: !6609)
!6617 = !DILocation(line: 141, column: 32, scope: !6609)
!6618 = !DILocation(line: 141, column: 30, scope: !6609)
!6619 = !DILocation(line: 141, column: 2, scope: !6609)
!6620 = !DILocation(line: 142, column: 23, scope: !6609)
!6621 = !DILocation(line: 142, column: 27, scope: !6609)
!6622 = !DILocation(line: 142, column: 9, scope: !6609)
!6623 = !DILocation(line: 142, column: 2, scope: !6609)
!6624 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6479, file: !6479, line: 66, type: !6480, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6625)
!6625 = !{!6626, !6627}
!6626 = !DILocalVariable(name: "v", arg: 1, scope: !6624, file: !6479, line: 66, type: !6482)
!6627 = !DILocalVariable(name: "size", arg: 2, scope: !6624, file: !6479, line: 66, type: !35)
!6628 = !DILocation(line: 66, column: 73, scope: !6624)
!6629 = !DILocation(line: 66, column: 83, scope: !6624)
!6630 = !DILocation(line: 68, column: 19, scope: !6624)
!6631 = !DILocation(line: 68, column: 22, scope: !6624)
!6632 = !DILocation(line: 68, column: 2, scope: !6624)
!6633 = !DILocation(line: 69, column: 2, scope: !6624)
!6634 = !DILocation(line: 70, column: 1, scope: !6624)
!6635 = distinct !DISubprogram(name: "arch_test_bit", scope: !6636, file: !6636, line: 237, type: !6580, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6636 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "nr", arg: 1, scope: !6635, file: !6636, line: 237, type: !39)
!6639 = !DILocalVariable(name: "addr", arg: 2, scope: !6635, file: !6636, line: 237, type: !5453)
!6640 = !DILocation(line: 237, column: 29, scope: !6635)
!6641 = !DILocation(line: 237, column: 63, scope: !6635)
!6642 = !DILocation(line: 239, column: 30, scope: !6635)
!6643 = !DILocation(line: 239, column: 9, scope: !6635)
!6644 = !DILocation(line: 239, column: 54, scope: !6635)
!6645 = !DILocation(line: 239, column: 58, scope: !6635)
!6646 = !DILocation(line: 239, column: 36, scope: !6635)
!6647 = !DILocation(line: 240, column: 26, scope: !6635)
!6648 = !DILocation(line: 240, column: 30, scope: !6635)
!6649 = !DILocation(line: 240, column: 8, scope: !6635)
!6650 = !DILocation(line: 239, column: 2, scope: !6635)
!6651 = distinct !DISubprogram(name: "kasan_check_read", scope: !6504, file: !6504, line: 40, type: !6505, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6652)
!6652 = !{!6653, !6654}
!6653 = !DILocalVariable(name: "p", arg: 1, scope: !6651, file: !6504, line: 40, type: !6482)
!6654 = !DILocalVariable(name: "size", arg: 2, scope: !6651, file: !6504, line: 40, type: !7)
!6655 = !DILocation(line: 40, column: 58, scope: !6651)
!6656 = !DILocation(line: 40, column: 74, scope: !6651)
!6657 = !DILocation(line: 42, column: 2, scope: !6651)
!6658 = distinct !DISubprogram(name: "constant_test_bit", scope: !6636, file: !6636, line: 204, type: !6659, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6661)
!6659 = !DISubroutineType(types: !6660)
!6660 = !{!1352, !402, !5453}
!6661 = !{!6662, !6663}
!6662 = !DILocalVariable(name: "nr", arg: 1, scope: !6658, file: !6636, line: 204, type: !402)
!6663 = !DILocalVariable(name: "addr", arg: 2, scope: !6658, file: !6636, line: 204, type: !5453)
!6664 = !DILocation(line: 204, column: 52, scope: !6658)
!6665 = !DILocation(line: 204, column: 86, scope: !6658)
!6666 = !DILocation(line: 206, column: 19, scope: !6658)
!6667 = !DILocation(line: 206, column: 22, scope: !6658)
!6668 = !DILocation(line: 206, column: 15, scope: !6658)
!6669 = !DILocation(line: 207, column: 4, scope: !6658)
!6670 = !DILocation(line: 207, column: 9, scope: !6658)
!6671 = !DILocation(line: 207, column: 12, scope: !6658)
!6672 = !DILocation(line: 206, column: 44, scope: !6658)
!6673 = !DILocation(line: 207, column: 37, scope: !6658)
!6674 = !DILocation(line: 206, column: 2, scope: !6658)
!6675 = distinct !DISubprogram(name: "variable_test_bit", scope: !6636, file: !6636, line: 224, type: !6659, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6676)
!6676 = !{!6677, !6678, !6679}
!6677 = !DILocalVariable(name: "nr", arg: 1, scope: !6675, file: !6636, line: 224, type: !402)
!6678 = !DILocalVariable(name: "addr", arg: 2, scope: !6675, file: !6636, line: 224, type: !5453)
!6679 = !DILocalVariable(name: "oldbit", scope: !6675, file: !6636, line: 226, type: !1352)
!6680 = !DILocation(line: 224, column: 52, scope: !6675)
!6681 = !DILocation(line: 224, column: 86, scope: !6675)
!6682 = !DILocation(line: 226, column: 2, scope: !6675)
!6683 = !DILocation(line: 226, column: 7, scope: !6675)
!6684 = !DILocation(line: 231, column: 33, scope: !6675)
!6685 = !DILocation(line: 231, column: 46, scope: !6675)
!6686 = !DILocation(line: 228, column: 2, scope: !6675)
!6687 = !{i64 2148312547, i64 2148312621}
!6688 = !DILocation(line: 233, column: 9, scope: !6675)
!6689 = !DILocation(line: 234, column: 1, scope: !6675)
!6690 = !DILocation(line: 233, column: 2, scope: !6675)
!6691 = distinct !DISubprogram(name: "vdso_fix_landing", scope: !3, file: !3, line: 75, type: !6692, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{null, !1269, !1996}
!6694 = !{!6695, !6696, !6697, !6700, !6702, !6703}
!6695 = !DILocalVariable(name: "image", arg: 1, scope: !6691, file: !3, line: 75, type: !1269)
!6696 = !DILocalVariable(name: "new_vma", arg: 2, scope: !6691, file: !3, line: 76, type: !1996)
!6697 = !DILocalVariable(name: "regs", scope: !6698, file: !3, line: 80, type: !3171)
!6698 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 79, column: 52)
!6699 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 79, column: 6)
!6700 = !DILocalVariable(name: "__ptr", scope: !6701, file: !3, line: 80, type: !39)
!6701 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 80, column: 26)
!6702 = !DILocalVariable(name: "vdso_land", scope: !6698, file: !3, line: 81, type: !39)
!6703 = !DILocalVariable(name: "old_land_addr", scope: !6698, file: !3, line: 82, type: !39)
!6704 = !DILocation(line: 75, column: 55, scope: !6691)
!6705 = !DILocation(line: 76, column: 26, scope: !6691)
!6706 = !DILocation(line: 79, column: 6, scope: !6699)
!6707 = !DILocation(line: 79, column: 24, scope: !6699)
!6708 = !DILocation(line: 79, column: 27, scope: !6699)
!6709 = !DILocation(line: 79, column: 33, scope: !6699)
!6710 = !DILocation(line: 79, column: 6, scope: !6691)
!6711 = !DILocation(line: 80, column: 3, scope: !6698)
!6712 = !DILocation(line: 80, column: 19, scope: !6698)
!6713 = !DILocation(line: 80, column: 26, scope: !6701)
!6714 = !DILocation(line: 80, column: 26, scope: !6698)
!6715 = !DILocation(line: 81, column: 3, scope: !6698)
!6716 = !DILocation(line: 81, column: 17, scope: !6698)
!6717 = !DILocation(line: 81, column: 29, scope: !6698)
!6718 = !DILocation(line: 81, column: 36, scope: !6698)
!6719 = !DILocation(line: 82, column: 3, scope: !6698)
!6720 = !DILocation(line: 82, column: 17, scope: !6698)
!6721 = !DILocation(line: 82, column: 33, scope: !6698)
!6722 = !DILocation(line: 83, column: 19, scope: !6698)
!6723 = !DILocation(line: 83, column: 28, scope: !6698)
!6724 = !DILocation(line: 83, column: 32, scope: !6698)
!6725 = !DILocation(line: 83, column: 40, scope: !6698)
!6726 = !DILocation(line: 83, column: 4, scope: !6698)
!6727 = !DILocation(line: 82, column: 43, scope: !6698)
!6728 = !DILocation(line: 86, column: 7, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 86, column: 7)
!6730 = !DILocation(line: 86, column: 13, scope: !6729)
!6731 = !DILocation(line: 86, column: 19, scope: !6729)
!6732 = !DILocation(line: 86, column: 16, scope: !6729)
!6733 = !DILocation(line: 86, column: 7, scope: !6698)
!6734 = !DILocation(line: 87, column: 15, scope: !6729)
!6735 = !DILocation(line: 87, column: 24, scope: !6729)
!6736 = !DILocation(line: 87, column: 35, scope: !6729)
!6737 = !DILocation(line: 87, column: 33, scope: !6729)
!6738 = !DILocation(line: 87, column: 4, scope: !6729)
!6739 = !DILocation(line: 87, column: 10, scope: !6729)
!6740 = !DILocation(line: 87, column: 13, scope: !6729)
!6741 = !DILocation(line: 88, column: 2, scope: !6699)
!6742 = !DILocation(line: 88, column: 2, scope: !6698)
!6743 = !DILocation(line: 90, column: 1, scope: !6691)
!6744 = distinct !DISubprogram(name: "task_stack_page", scope: !6745, file: !6745, line: 20, type: !6746, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6750)
!6745 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!6746 = !DISubroutineType(types: !6747)
!6747 = !{!20, !6748}
!6748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6749, size: 64)
!6749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!6750 = !{!6751}
!6751 = !DILocalVariable(name: "task", arg: 1, scope: !6744, file: !6745, line: 20, type: !6748)
!6752 = !DILocation(line: 20, column: 72, scope: !6744)
!6753 = !DILocation(line: 22, column: 9, scope: !6744)
!6754 = !DILocation(line: 22, column: 15, scope: !6744)
!6755 = !DILocation(line: 22, column: 2, scope: !6744)
!6756 = distinct !DISubprogram(name: "vma_end_write_all", scope: !5631, file: !5631, line: 84, type: !5632, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6757 = !{!6758}
!6758 = !DILocalVariable(name: "mm", arg: 1, scope: !6756, file: !5631, line: 84, type: !1151)
!6759 = !DILocation(line: 84, column: 56, scope: !6756)
!6760 = !DILocation(line: 86, column: 27, scope: !6756)
!6761 = !DILocation(line: 86, column: 2, scope: !6756)
!6762 = !DILocation(line: 94, column: 2, scope: !6756)
!6763 = !DILocation(line: 94, column: 2, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6756, file: !5631, line: 94, column: 2)
!6765 = !DILocation(line: 94, column: 2, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6764, file: !5631, line: 94, column: 2)
!6767 = !DILocation(line: 94, column: 2, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6764, file: !5631, line: 94, column: 2)
!6769 = !DILocation(line: 94, column: 2, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6768, file: !5631, line: 94, column: 2)
!6771 = !{i64 2151432484}
!6772 = !DILocation(line: 94, column: 2, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6768, file: !5631, line: 94, column: 2)
!6774 = !DILocation(line: 94, column: 2, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6773, file: !5631, line: 94, column: 2)
!6776 = !DILocation(line: 94, column: 2, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6773, file: !5631, line: 94, column: 2)
!6778 = !DILocation(line: 95, column: 1, scope: !6756)
!6779 = !DISubprogram(name: "up_write", scope: !1205, file: !1205, line: 203, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6780 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !5631, file: !5631, line: 69, type: !5632, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6781 = !{!6782}
!6782 = !DILocalVariable(name: "mm", arg: 1, scope: !6780, file: !5631, line: 69, type: !1151)
!6783 = !DILocation(line: 69, column: 63, scope: !6780)
!6784 = !DILocation(line: 71, column: 2, scope: !6780)
!6785 = !DILocation(line: 71, column: 2, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6780, file: !5631, line: 71, column: 2)
!6787 = !DILocation(line: 73, column: 1, scope: !6780)
!6788 = distinct !DISubprogram(name: "mmap_write_lock_killable", scope: !5631, file: !5631, line: 119, type: !6789, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6791)
!6789 = !DISubroutineType(types: !6790)
!6790 = !{!22, !1151}
!6791 = !{!6792, !6793}
!6792 = !DILocalVariable(name: "mm", arg: 1, scope: !6788, file: !5631, line: 119, type: !1151)
!6793 = !DILocalVariable(name: "ret", scope: !6788, file: !5631, line: 121, type: !22)
!6794 = !DILocation(line: 119, column: 62, scope: !6788)
!6795 = !DILocation(line: 121, column: 2, scope: !6788)
!6796 = !DILocation(line: 121, column: 6, scope: !6788)
!6797 = !DILocation(line: 123, column: 34, scope: !6788)
!6798 = !DILocation(line: 123, column: 2, scope: !6788)
!6799 = !DILocation(line: 124, column: 29, scope: !6788)
!6800 = !DILocation(line: 124, column: 33, scope: !6788)
!6801 = !DILocation(line: 124, column: 8, scope: !6788)
!6802 = !DILocation(line: 124, column: 6, scope: !6788)
!6803 = !DILocation(line: 125, column: 37, scope: !6788)
!6804 = !DILocation(line: 125, column: 47, scope: !6788)
!6805 = !DILocation(line: 125, column: 51, scope: !6788)
!6806 = !DILocation(line: 125, column: 2, scope: !6788)
!6807 = !DILocation(line: 126, column: 9, scope: !6788)
!6808 = !DILocation(line: 127, column: 1, scope: !6788)
!6809 = !DILocation(line: 126, column: 2, scope: !6788)
!6810 = !DISubprogram(name: "get_unmapped_area", scope: !1990, file: !1990, line: 3287, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6811 = !DISubprogram(name: "_install_special_mapping", scope: !1990, file: !1990, line: 3275, type: !6812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!1996, !1151, !39, !39, !39, !5497}
!6814 = distinct !DISubprogram(name: "IS_ERR", scope: !6815, file: !6815, line: 59, type: !6816, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6818)
!6815 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!1352, !1281}
!6818 = !{!6819}
!6819 = !DILocalVariable(name: "ptr", arg: 1, scope: !6814, file: !6815, line: 59, type: !1281)
!6820 = !DILocation(line: 59, column: 60, scope: !6814)
!6821 = !DILocation(line: 61, column: 9, scope: !6814)
!6822 = !DILocation(line: 61, column: 2, scope: !6814)
!6823 = distinct !DISubprogram(name: "PTR_ERR", scope: !6815, file: !6815, line: 49, type: !6824, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6826)
!6824 = !DISubroutineType(types: !6825)
!6825 = !{!402, !1281}
!6826 = !{!6827}
!6827 = !DILocalVariable(name: "ptr", arg: 1, scope: !6823, file: !6815, line: 49, type: !1281)
!6828 = !DILocation(line: 49, column: 61, scope: !6823)
!6829 = !DILocation(line: 51, column: 16, scope: !6823)
!6830 = !DILocation(line: 51, column: 9, scope: !6823)
!6831 = !DILocation(line: 51, column: 2, scope: !6823)
!6832 = !DISubprogram(name: "do_munmap", scope: !1990, file: !1990, line: 3299, type: !6833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6833 = !DISubroutineType(types: !6834)
!6834 = !{!22, !1151, !39, !35, !100}
!6835 = !DISubprogram(name: "down_write_killable", scope: !1205, file: !1205, line: 188, type: !6836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{!22, !6007}
!6838 = distinct !DISubprogram(name: "vdso_addr", scope: !3, file: !3, line: 289, type: !6839, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6841)
!6839 = !DISubroutineType(types: !6840)
!6840 = !{!39, !39, !7}
!6841 = !{!6842, !6843, !6844, !6845, !6846}
!6842 = !DILocalVariable(name: "start", arg: 1, scope: !6838, file: !3, line: 289, type: !39)
!6843 = !DILocalVariable(name: "len", arg: 2, scope: !6838, file: !3, line: 289, type: !7)
!6844 = !DILocalVariable(name: "addr", scope: !6838, file: !3, line: 291, type: !39)
!6845 = !DILocalVariable(name: "end", scope: !6838, file: !3, line: 291, type: !39)
!6846 = !DILocalVariable(name: "offset", scope: !6838, file: !3, line: 292, type: !7)
!6847 = !DILocation(line: 289, column: 46, scope: !6838)
!6848 = !DILocation(line: 289, column: 62, scope: !6838)
!6849 = !DILocation(line: 291, column: 2, scope: !6838)
!6850 = !DILocation(line: 291, column: 16, scope: !6838)
!6851 = !DILocation(line: 291, column: 22, scope: !6838)
!6852 = !DILocation(line: 292, column: 2, scope: !6838)
!6853 = !DILocation(line: 292, column: 11, scope: !6838)
!6854 = !DILocation(line: 298, column: 10, scope: !6838)
!6855 = !DILocation(line: 298, column: 8, scope: !6838)
!6856 = !DILocation(line: 301, column: 9, scope: !6838)
!6857 = !DILocation(line: 301, column: 17, scope: !6838)
!6858 = !DILocation(line: 301, column: 15, scope: !6838)
!6859 = !DILocation(line: 301, column: 21, scope: !6838)
!6860 = !DILocation(line: 301, column: 32, scope: !6838)
!6861 = !DILocation(line: 301, column: 37, scope: !6838)
!6862 = !DILocation(line: 301, column: 6, scope: !6838)
!6863 = !DILocation(line: 302, column: 6, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6838, file: !3, line: 302, column: 6)
!6865 = !DILocation(line: 302, column: 10, scope: !6864)
!6866 = !DILocation(line: 302, column: 6, scope: !6838)
!6867 = !DILocation(line: 303, column: 7, scope: !6864)
!6868 = !DILocation(line: 303, column: 3, scope: !6864)
!6869 = !DILocation(line: 304, column: 9, scope: !6838)
!6870 = !DILocation(line: 304, column: 6, scope: !6838)
!6871 = !DILocation(line: 306, column: 6, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6838, file: !3, line: 306, column: 6)
!6873 = !DILocation(line: 306, column: 12, scope: !6872)
!6874 = !DILocation(line: 306, column: 10, scope: !6872)
!6875 = !DILocation(line: 306, column: 6, scope: !6838)
!6876 = !DILocation(line: 307, column: 35, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6872, file: !3, line: 306, column: 19)
!6878 = !DILocation(line: 307, column: 41, scope: !6877)
!6879 = !DILocation(line: 307, column: 39, scope: !6877)
!6880 = !DILocation(line: 307, column: 48, scope: !6877)
!6881 = !DILocation(line: 307, column: 63, scope: !6877)
!6882 = !DILocation(line: 307, column: 33, scope: !6877)
!6883 = !DILocation(line: 307, column: 12, scope: !6877)
!6884 = !DILocation(line: 307, column: 10, scope: !6877)
!6885 = !DILocation(line: 308, column: 10, scope: !6877)
!6886 = !DILocation(line: 308, column: 19, scope: !6877)
!6887 = !DILocation(line: 308, column: 26, scope: !6877)
!6888 = !DILocation(line: 308, column: 18, scope: !6877)
!6889 = !DILocation(line: 308, column: 16, scope: !6877)
!6890 = !DILocation(line: 308, column: 8, scope: !6877)
!6891 = !DILocation(line: 309, column: 2, scope: !6877)
!6892 = !DILocation(line: 310, column: 10, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6872, file: !3, line: 309, column: 9)
!6894 = !DILocation(line: 310, column: 8, scope: !6893)
!6895 = !DILocation(line: 317, column: 25, scope: !6838)
!6896 = !DILocation(line: 317, column: 9, scope: !6838)
!6897 = !DILocation(line: 317, column: 7, scope: !6838)
!6898 = !DILocation(line: 319, column: 9, scope: !6838)
!6899 = !DILocation(line: 320, column: 1, scope: !6838)
!6900 = !DILocation(line: 319, column: 2, scope: !6838)
!6901 = distinct !DISubprogram(name: "get_random_u32_below", scope: !6902, file: !6902, line: 60, type: !6903, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6902 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!6903 = !DISubroutineType(types: !6904)
!6904 = !{!335, !335}
!6905 = !{!6906, !6907, !6913, !6916}
!6906 = !DILocalVariable(name: "ceil", arg: 1, scope: !6901, file: !6902, line: 60, type: !335)
!6907 = !DILocalVariable(name: "mult", scope: !6908, file: !6902, line: 78, type: !335)
!6908 = distinct !DILexicalBlock(scope: !6909, file: !6902, line: 77, column: 24)
!6909 = distinct !DILexicalBlock(scope: !6910, file: !6902, line: 77, column: 7)
!6910 = distinct !DILexicalBlock(scope: !6911, file: !6902, line: 76, column: 11)
!6911 = distinct !DILexicalBlock(scope: !6912, file: !6902, line: 76, column: 2)
!6912 = distinct !DILexicalBlock(scope: !6901, file: !6902, line: 76, column: 2)
!6913 = !DILocalVariable(name: "mult", scope: !6914, file: !6902, line: 82, type: !335)
!6914 = distinct !DILexicalBlock(scope: !6915, file: !6902, line: 81, column: 32)
!6915 = distinct !DILexicalBlock(scope: !6909, file: !6902, line: 81, column: 14)
!6916 = !DILocalVariable(name: "mult", scope: !6917, file: !6902, line: 86, type: !341)
!6917 = distinct !DILexicalBlock(scope: !6915, file: !6902, line: 85, column: 10)
!6918 = !DILocation(line: 60, column: 44, scope: !6901)
!6919 = !DILocation(line: 62, column: 28, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6901, file: !6902, line: 62, column: 6)
!6921 = !DILocation(line: 62, column: 7, scope: !6920)
!6922 = !DILocation(line: 62, column: 6, scope: !6901)
!6923 = !DILocation(line: 63, column: 33, scope: !6920)
!6924 = !DILocation(line: 63, column: 10, scope: !6920)
!6925 = !DILocation(line: 63, column: 3, scope: !6920)
!6926 = !DILocation(line: 73, column: 2, scope: !6901)
!6927 = !DILocation(line: 73, column: 2, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6929, file: !6902, line: 73, column: 2)
!6929 = distinct !DILexicalBlock(scope: !6901, file: !6902, line: 73, column: 2)
!6930 = !DILocation(line: 73, column: 2, scope: !6929)
!6931 = !{i32 -2144781595}
!6932 = !DILocation(line: 74, column: 6, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6901, file: !6902, line: 74, column: 6)
!6934 = !DILocation(line: 74, column: 11, scope: !6933)
!6935 = !DILocation(line: 74, column: 6, scope: !6901)
!6936 = !DILocation(line: 75, column: 3, scope: !6933)
!6937 = !DILocation(line: 76, column: 2, scope: !6901)
!6938 = !DILocation(line: 77, column: 7, scope: !6909)
!6939 = !DILocation(line: 77, column: 12, scope: !6909)
!6940 = !DILocation(line: 77, column: 7, scope: !6910)
!6941 = !DILocation(line: 78, column: 4, scope: !6908)
!6942 = !DILocation(line: 78, column: 8, scope: !6908)
!6943 = !DILocation(line: 78, column: 15, scope: !6908)
!6944 = !DILocation(line: 78, column: 22, scope: !6908)
!6945 = !DILocation(line: 78, column: 20, scope: !6908)
!6946 = !DILocation(line: 79, column: 8, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6908, file: !6902, line: 79, column: 8)
!6948 = !DILocation(line: 79, column: 8, scope: !6908)
!6949 = !DILocation(line: 80, column: 12, scope: !6947)
!6950 = !DILocation(line: 80, column: 17, scope: !6947)
!6951 = !DILocation(line: 80, column: 5, scope: !6947)
!6952 = !DILocation(line: 81, column: 3, scope: !6909)
!6953 = !DILocation(line: 81, column: 3, scope: !6908)
!6954 = !DILocation(line: 81, column: 14, scope: !6915)
!6955 = !DILocation(line: 81, column: 19, scope: !6915)
!6956 = !DILocation(line: 81, column: 14, scope: !6909)
!6957 = !DILocation(line: 82, column: 4, scope: !6914)
!6958 = !DILocation(line: 82, column: 8, scope: !6914)
!6959 = !DILocation(line: 82, column: 15, scope: !6914)
!6960 = !DILocation(line: 82, column: 22, scope: !6914)
!6961 = !DILocation(line: 82, column: 20, scope: !6914)
!6962 = !DILocation(line: 83, column: 8, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6914, file: !6902, line: 83, column: 8)
!6964 = !DILocation(line: 83, column: 8, scope: !6914)
!6965 = !DILocation(line: 84, column: 12, scope: !6963)
!6966 = !DILocation(line: 84, column: 17, scope: !6963)
!6967 = !DILocation(line: 84, column: 5, scope: !6963)
!6968 = !DILocation(line: 85, column: 3, scope: !6915)
!6969 = !DILocation(line: 85, column: 3, scope: !6914)
!6970 = !DILocation(line: 86, column: 4, scope: !6917)
!6971 = !DILocation(line: 86, column: 8, scope: !6917)
!6972 = !DILocation(line: 86, column: 20, scope: !6917)
!6973 = !DILocation(line: 86, column: 15, scope: !6917)
!6974 = !DILocation(line: 86, column: 27, scope: !6917)
!6975 = !DILocation(line: 86, column: 25, scope: !6917)
!6976 = !DILocation(line: 87, column: 8, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6917, file: !6902, line: 87, column: 8)
!6978 = !DILocation(line: 87, column: 8, scope: !6917)
!6979 = !DILocation(line: 88, column: 12, scope: !6977)
!6980 = !DILocation(line: 88, column: 17, scope: !6977)
!6981 = !DILocation(line: 88, column: 5, scope: !6977)
!6982 = !DILocation(line: 89, column: 3, scope: !6915)
!6983 = !DILocation(line: 76, column: 2, scope: !6911)
!6984 = distinct !{!6984, !6985, !6986, !5625}
!6985 = !DILocation(line: 76, column: 2, scope: !6912)
!6986 = !DILocation(line: 90, column: 2, scope: !6912)
!6987 = !DILocation(line: 91, column: 1, scope: !6901)
!6988 = !DISubprogram(name: "align_vdso_addr", scope: !5876, file: !5876, line: 394, type: !6311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6989 = !DISubprogram(name: "__get_random_u32_below", scope: !6902, file: !6902, line: 53, type: !6903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6990 = !DISubprogram(name: "__compiletime_assert_80", scope: !6902, file: !6902, line: 73, type: !2325, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6991 = !DISubprogram(name: "get_random_u8", scope: !6902, file: !6902, line: 40, type: !6992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6992 = !DISubroutineType(types: !6993)
!6993 = !{!83}
!6994 = distinct !DISubprogram(name: "is_power_of_2", scope: !6995, file: !6995, line: 45, type: !6996, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6998)
!6995 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6996 = !DISubroutineType(types: !6997)
!6997 = !{!1352, !39}
!6998 = !{!6999}
!6999 = !DILocalVariable(name: "n", arg: 1, scope: !6994, file: !6995, line: 45, type: !39)
!7000 = !DILocation(line: 45, column: 34, scope: !6994)
!7001 = !DILocation(line: 47, column: 10, scope: !6994)
!7002 = !DILocation(line: 47, column: 12, scope: !6994)
!7003 = !DILocation(line: 47, column: 17, scope: !6994)
!7004 = !DILocation(line: 47, column: 22, scope: !6994)
!7005 = !DILocation(line: 47, column: 27, scope: !6994)
!7006 = !DILocation(line: 47, column: 29, scope: !6994)
!7007 = !DILocation(line: 47, column: 24, scope: !6994)
!7008 = !DILocation(line: 47, column: 35, scope: !6994)
!7009 = !DILocation(line: 0, scope: !6994)
!7010 = !DILocation(line: 47, column: 2, scope: !6994)
!7011 = !DISubprogram(name: "get_random_u16", scope: !6902, file: !6902, line: 41, type: !7012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7012 = !DISubroutineType(types: !7013)
!7013 = !{!93}
!7014 = !DISubprogram(name: "get_random_u32", scope: !6902, file: !6902, line: 42, type: !7015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7015 = !DISubroutineType(types: !7016)
!7016 = !{!335}
!7017 = !DISubprogram(name: "simple_strtoul", scope: !7018, file: !7018, line: 145, type: !7019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7018 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!39, !16, !7021, !7}
!7021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
