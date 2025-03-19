; ModuleID = 'lib/buildid.c'
source_filename = "lib/buildid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.40 }
%struct.atomic_t = type { i32 }
%union.anon.40 = type { i64 }
%struct.pcpu_hot = type { %union.anon.41 }
%union.anon.41 = type { %struct.anon.42, [16 x i8] }
%struct.anon.42 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.43 }
%union.anon.43 = type { i64 }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.folio = type { %union.anon.20, %union.anon.35, %union.anon.37 }
%union.anon.20 = type { %struct.page }
%struct.page = type { i64, %union.anon.25, %union.anon.34, %struct.atomic_t, [8 x i8] }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %union.anon.27, ptr, %union.anon.29, i64 }
%union.anon.27 = type { %struct.list_head }
%union.anon.29 = type { i64 }
%union.anon.34 = type { %struct.atomic_t }
%union.anon.35 = type { %struct.page }
%union.anon.37 = type { %struct.page }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf32_note = type { i32, i32, i32 }
%struct.anon.32 = type { i64 }
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

@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1, !dbg !0
@__stop_notes = extern_weak dso_local constant i8, align 1
@__start_notes = extern_weak dso_local constant i8, align 1
@vmlinux_build_id = hidden global [20 x i8] zeroinitializer, section ".data..ro_after_init", align 16, !dbg !7
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@__kunmap_atomic.__UNIQUE_ID___addressable___SCK__preempt_schedule277 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !3578
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__const.parse_build_id_buf.note_name = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__kunmap_atomic.__UNIQUE_ID___addressable___SCK__preempt_schedule277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @build_id_parse(ptr noundef %vma, ptr noundef %build_id, ptr noundef %size) #0 align 16 !dbg !3597 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %build_id.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %ehdr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %page_addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !3603, metadata !DIExpression()), !dbg !3611
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !3604, metadata !DIExpression()), !dbg !3612
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3605, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehdr) #14, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !3606, metadata !DIExpression()), !dbg !3615
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !3616
  call void @llvm.dbg.declare(metadata ptr %page, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_addr) #14, !dbg !3618
  call void @llvm.dbg.declare(metadata ptr %page_addr, metadata !3608, metadata !DIExpression()), !dbg !3619
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3620
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3609, metadata !DIExpression()), !dbg !3621
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !3622
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !3624
  %1 = load ptr, ptr %vm_file, align 8, !dbg !3624
  %tobool = icmp ne ptr %1, null, !dbg !3622
  br i1 %tobool, label %if.end, label %if.then, !dbg !3625

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3626

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !3627
  %vm_file1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12, !dbg !3628
  %3 = load ptr, ptr %vm_file1, align 8, !dbg !3628
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17, !dbg !3629
  %4 = load ptr, ptr %f_mapping, align 8, !dbg !3629
  %call = call ptr @find_get_page(ptr noundef %4, i64 noundef 0) #15, !dbg !3630
  store ptr %call, ptr %page, align 8, !dbg !3631
  %5 = load ptr, ptr %page, align 8, !dbg !3632
  %tobool2 = icmp ne ptr %5, null, !dbg !3632
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3634

if.then3:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !3635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3635

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %page, align 8, !dbg !3636
  %call5 = call i32 @PageUptodate(ptr noundef %6) #15, !dbg !3638
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3638
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3639

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %page, align 8, !dbg !3640
  call void @put_page(ptr noundef %7) #15, !dbg !3642
  store i32 -14, ptr %retval, align 4, !dbg !3643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3643

if.end8:                                          ; preds = %if.end4
  store i32 -22, ptr %ret, align 4, !dbg !3644
  %8 = load ptr, ptr %page, align 8, !dbg !3645
  %call9 = call ptr @kmap_atomic(ptr noundef %8) #15, !dbg !3646
  store ptr %call9, ptr %page_addr, align 8, !dbg !3647
  %9 = load ptr, ptr %page_addr, align 8, !dbg !3648
  store ptr %9, ptr %ehdr, align 8, !dbg !3649
  %10 = load ptr, ptr %ehdr, align 8, !dbg !3650
  %e_ident = getelementptr inbounds %struct.elf32_hdr, ptr %10, i32 0, i32 0, !dbg !3652
  %arraydecay = getelementptr inbounds [16 x i8], ptr %e_ident, i64 0, i64 0, !dbg !3650
  %call10 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 4) #15, !dbg !3653
  %cmp = icmp ne i32 %call10, 0, !dbg !3654
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !3655

if.then11:                                        ; preds = %if.end8
  br label %out, !dbg !3656

if.end12:                                         ; preds = %if.end8
  %11 = load ptr, ptr %ehdr, align 8, !dbg !3657
  %e_type = getelementptr inbounds %struct.elf32_hdr, ptr %11, i32 0, i32 1, !dbg !3659
  %12 = load i16, ptr %e_type, align 4, !dbg !3659
  %conv = zext i16 %12 to i32, !dbg !3657
  %cmp13 = icmp ne i32 %conv, 2, !dbg !3660
  br i1 %cmp13, label %land.lhs.true, label %if.end20, !dbg !3661

land.lhs.true:                                    ; preds = %if.end12
  %13 = load ptr, ptr %ehdr, align 8, !dbg !3662
  %e_type15 = getelementptr inbounds %struct.elf32_hdr, ptr %13, i32 0, i32 1, !dbg !3663
  %14 = load i16, ptr %e_type15, align 4, !dbg !3663
  %conv16 = zext i16 %14 to i32, !dbg !3662
  %cmp17 = icmp ne i32 %conv16, 3, !dbg !3664
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !3665

if.then19:                                        ; preds = %land.lhs.true
  br label %out, !dbg !3666

if.end20:                                         ; preds = %land.lhs.true, %if.end12
  %15 = load ptr, ptr %ehdr, align 8, !dbg !3667
  %e_ident21 = getelementptr inbounds %struct.elf32_hdr, ptr %15, i32 0, i32 0, !dbg !3669
  %arrayidx = getelementptr [16 x i8], ptr %e_ident21, i64 0, i64 4, !dbg !3667
  %16 = load i8, ptr %arrayidx, align 4, !dbg !3667
  %conv22 = zext i8 %16 to i32, !dbg !3667
  %cmp23 = icmp eq i32 %conv22, 1, !dbg !3670
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !3671

if.then25:                                        ; preds = %if.end20
  %17 = load ptr, ptr %page_addr, align 8, !dbg !3672
  %18 = load ptr, ptr %build_id.addr, align 8, !dbg !3673
  %19 = load ptr, ptr %size.addr, align 8, !dbg !3674
  %call26 = call i32 @get_build_id_32(ptr noundef %17, ptr noundef %18, ptr noundef %19) #15, !dbg !3675
  store i32 %call26, ptr %ret, align 4, !dbg !3676
  br label %if.end35, !dbg !3677

if.else:                                          ; preds = %if.end20
  %20 = load ptr, ptr %ehdr, align 8, !dbg !3678
  %e_ident27 = getelementptr inbounds %struct.elf32_hdr, ptr %20, i32 0, i32 0, !dbg !3680
  %arrayidx28 = getelementptr [16 x i8], ptr %e_ident27, i64 0, i64 4, !dbg !3678
  %21 = load i8, ptr %arrayidx28, align 4, !dbg !3678
  %conv29 = zext i8 %21 to i32, !dbg !3678
  %cmp30 = icmp eq i32 %conv29, 2, !dbg !3681
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !3682

if.then32:                                        ; preds = %if.else
  %22 = load ptr, ptr %page_addr, align 8, !dbg !3683
  %23 = load ptr, ptr %build_id.addr, align 8, !dbg !3684
  %24 = load ptr, ptr %size.addr, align 8, !dbg !3685
  %call33 = call i32 @get_build_id_64(ptr noundef %22, ptr noundef %23, ptr noundef %24) #15, !dbg !3686
  store i32 %call33, ptr %ret, align 4, !dbg !3687
  br label %if.end34, !dbg !3688

if.end34:                                         ; preds = %if.then32, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %out, !dbg !3689

out:                                              ; preds = %if.end35, %if.then19, %if.then11
  call void @llvm.dbg.label(metadata !3610), !dbg !3690
  br label %do.body, !dbg !3691

do.body:                                          ; preds = %out
  br label %do.body36, !dbg !3692

do.body36:                                        ; preds = %do.body
  br label %do.cond, !dbg !3694

do.cond:                                          ; preds = %do.body36
  br label %do.end, !dbg !3694

do.end:                                           ; preds = %do.cond
  %25 = load ptr, ptr %page_addr, align 8, !dbg !3692
  call void @__kunmap_atomic(ptr noundef %25) #15, !dbg !3692
  br label %do.cond37, !dbg !3692

do.cond37:                                        ; preds = %do.end
  br label %do.end38, !dbg !3692

do.end38:                                         ; preds = %do.cond37
  %26 = load ptr, ptr %page, align 8, !dbg !3696
  call void @put_page(ptr noundef %26) #15, !dbg !3697
  %27 = load i32, ptr %ret, align 4, !dbg !3698
  store i32 %27, ptr %retval, align 4, !dbg !3699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3699

cleanup:                                          ; preds = %do.end38, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_addr) #14, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehdr) #14, !dbg !3700
  %28 = load i32, ptr %retval, align 4, !dbg !3700
  ret i32 %28, !dbg !3700
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_get_page(ptr noundef %mapping, i64 noundef %offset) #3 align 16 !dbg !3701 {
entry:
  %mapping.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !3705, metadata !DIExpression()), !dbg !3707
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3706, metadata !DIExpression()), !dbg !3708
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !3709
  %1 = load i64, ptr %offset.addr, align 8, !dbg !3710
  %call = call ptr @pagecache_get_page(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0) #15, !dbg !3711
  ret ptr %call, !dbg !3712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageUptodate(ptr noundef %page) #3 align 16 !dbg !3713 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3717, metadata !DIExpression()), !dbg !3718
  %0 = load ptr, ptr %page.addr, align 8, !dbg !3719
  %call = call i64 @_compound_head(ptr noundef %0) #15, !dbg !3719
  %1 = inttoptr i64 %call to ptr, !dbg !3719
  %call1 = call zeroext i1 @folio_test_uptodate(ptr noundef %1) #15, !dbg !3720
  %conv = zext i1 %call1 to i32, !dbg !3720
  ret i32 %conv, !dbg !3721
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_page(ptr noundef %page) #3 align 16 !dbg !3722 {
entry:
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #14, !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !3725, metadata !DIExpression()), !dbg !3728
  %0 = load ptr, ptr %page.addr, align 8, !dbg !3729
  %call = call i64 @_compound_head(ptr noundef %0) #15, !dbg !3729
  %1 = inttoptr i64 %call to ptr, !dbg !3729
  store ptr %1, ptr %folio, align 8, !dbg !3728
  %2 = load ptr, ptr %folio, align 8, !dbg !3730
  %3 = getelementptr inbounds %struct.folio, ptr %2, i32 0, i32 0, !dbg !3732
  %call1 = call zeroext i1 @put_devmap_managed_page(ptr noundef %3) #15, !dbg !3733
  br i1 %call1, label %if.then, label %if.end, !dbg !3734

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3735

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %folio, align 8, !dbg !3736
  call void @folio_put(ptr noundef %4) #15, !dbg !3737
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3738
  br label %cleanup, !dbg !3738

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #14, !dbg !3738
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3738

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_atomic(ptr noundef %page) #3 align 16 !dbg !3739 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  br label %do.body, !dbg !3745

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !3747
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3747, !srcloc !3749
  br label %do.end, !dbg !3747

do.end:                                           ; preds = %do.body
  call void @pagefault_disable() #15, !dbg !3750
  %0 = load ptr, ptr %page.addr, align 8, !dbg !3751
  %call = call ptr @lowmem_page_address(ptr noundef %0) #15, !dbg !3751
  ret ptr %call, !dbg !3752
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3753 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_build_id_32(ptr noundef %page_addr, ptr noundef %build_id, ptr noundef %size) #0 align 16 !dbg !3757 {
entry:
  %retval = alloca i32, align 4
  %page_addr.addr = alloca ptr, align 8
  %build_id.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %ehdr = alloca ptr, align 8
  %phdr = alloca ptr, align 8
  %i = alloca i32, align 4
  %phnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i16, align 2
  %tmp15 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store ptr %page_addr, ptr %page_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_addr.addr, metadata !3761, metadata !DIExpression()), !dbg !3768
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !3762, metadata !DIExpression()), !dbg !3769
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3763, metadata !DIExpression()), !dbg !3770
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehdr) #14, !dbg !3771
  call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !3764, metadata !DIExpression()), !dbg !3772
  %0 = load ptr, ptr %page_addr.addr, align 8, !dbg !3773
  store ptr %0, ptr %ehdr, align 8, !dbg !3772
  call void @llvm.lifetime.start.p0(i64 8, ptr %phdr) #14, !dbg !3774
  call void @llvm.dbg.declare(metadata ptr %phdr, metadata !3765, metadata !DIExpression()), !dbg !3775
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3766, metadata !DIExpression()), !dbg !3777
  call void @llvm.lifetime.start.p0(i64 4, ptr %phnum) #14, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %phnum, metadata !3767, metadata !DIExpression()), !dbg !3778
  %1 = load ptr, ptr %ehdr, align 8, !dbg !3779
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5, !dbg !3781
  %2 = load i32, ptr %e_phoff, align 4, !dbg !3781
  %conv = zext i32 %2 to i64, !dbg !3779
  %cmp = icmp ne i64 %conv, 52, !dbg !3782
  br i1 %cmp, label %if.then, label %if.end, !dbg !3783

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3784

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3785

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3787

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3787

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %ehdr, align 8, !dbg !3785
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %3, i32 0, i32 10, !dbg !3785
  %4 = load volatile i16, ptr %e_phnum, align 4, !dbg !3785
  store i16 %4, ptr %tmp, align 2, !dbg !3787
  %5 = load i16, ptr %tmp, align 2, !dbg !3785
  %conv2 = zext i16 %5 to i32, !dbg !3789
  store i32 %conv2, ptr %phnum, align 4, !dbg !3790
  %6 = load i32, ptr %phnum, align 4, !dbg !3791
  %conv3 = zext i32 %6 to i64, !dbg !3791
  %cmp4 = icmp ugt i64 %conv3, 126, !dbg !3793
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !3794

if.then6:                                         ; preds = %do.end
  store i32 -22, ptr %retval, align 4, !dbg !3795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3795

if.end7:                                          ; preds = %do.end
  %7 = load ptr, ptr %page_addr.addr, align 8, !dbg !3796
  %add.ptr = getelementptr i8, ptr %7, i64 52, !dbg !3797
  store ptr %add.ptr, ptr %phdr, align 8, !dbg !3798
  store i32 0, ptr %i, align 4, !dbg !3799
  br label %for.cond, !dbg !3801

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, ptr %i, align 4, !dbg !3802
  %9 = load i32, ptr %phnum, align 4, !dbg !3804
  %cmp8 = icmp ult i32 %8, %9, !dbg !3805
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3806

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %phdr, align 8, !dbg !3807
  %11 = load i32, ptr %i, align 4, !dbg !3810
  %idxprom = zext i32 %11 to i64, !dbg !3807
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %10, i64 %idxprom, !dbg !3807
  %p_type = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx, i32 0, i32 0, !dbg !3811
  %12 = load i32, ptr %p_type, align 4, !dbg !3811
  %cmp10 = icmp eq i32 %12, 4, !dbg !3812
  br i1 %cmp10, label %land.lhs.true, label %if.end26, !dbg !3813

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %page_addr.addr, align 8, !dbg !3814
  %14 = load ptr, ptr %build_id.addr, align 8, !dbg !3815
  %15 = load ptr, ptr %size.addr, align 8, !dbg !3816
  %16 = load ptr, ptr %page_addr.addr, align 8, !dbg !3817
  br label %do.body12, !dbg !3818

do.body12:                                        ; preds = %land.lhs.true
  br label %do.cond13, !dbg !3820

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3820

do.end14:                                         ; preds = %do.cond13
  %17 = load ptr, ptr %phdr, align 8, !dbg !3818
  %18 = load i32, ptr %i, align 4, !dbg !3818
  %idxprom16 = zext i32 %18 to i64, !dbg !3818
  %arrayidx17 = getelementptr %struct.elf32_phdr, ptr %17, i64 %idxprom16, !dbg !3818
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx17, i32 0, i32 1, !dbg !3818
  %19 = load volatile i32, ptr %p_offset, align 4, !dbg !3818
  store i32 %19, ptr %tmp15, align 4, !dbg !3820
  %20 = load i32, ptr %tmp15, align 4, !dbg !3818
  %idx.ext = zext i32 %20 to i64, !dbg !3822
  %add.ptr18 = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !3822
  br label %do.body19, !dbg !3823

do.body19:                                        ; preds = %do.end14
  br label %do.cond20, !dbg !3825

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3825

do.end21:                                         ; preds = %do.cond20
  %21 = load ptr, ptr %phdr, align 8, !dbg !3823
  %22 = load i32, ptr %i, align 4, !dbg !3823
  %idxprom23 = zext i32 %22 to i64, !dbg !3823
  %arrayidx24 = getelementptr %struct.elf32_phdr, ptr %21, i64 %idxprom23, !dbg !3823
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx24, i32 0, i32 4, !dbg !3823
  %23 = load volatile i32, ptr %p_filesz, align 4, !dbg !3823
  store i32 %23, ptr %tmp22, align 4, !dbg !3825
  %24 = load i32, ptr %tmp22, align 4, !dbg !3823
  %call = call i32 @parse_build_id(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %add.ptr18, i32 noundef %24) #15, !dbg !3827
  %tobool = icmp ne i32 %call, 0, !dbg !3827
  br i1 %tobool, label %if.end26, label %if.then25, !dbg !3828

if.then25:                                        ; preds = %do.end21
  store i32 0, ptr %retval, align 4, !dbg !3829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3829

if.end26:                                         ; preds = %do.end21, %for.body
  br label %for.inc, !dbg !3830

for.inc:                                          ; preds = %if.end26
  %25 = load i32, ptr %i, align 4, !dbg !3831
  %inc = add i32 %25, 1, !dbg !3831
  store i32 %inc, ptr %i, align 4, !dbg !3831
  br label %for.cond, !dbg !3832, !llvm.loop !3833

for.end:                                          ; preds = %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !3837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3837

cleanup:                                          ; preds = %for.end, %if.then25, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %phnum) #14, !dbg !3838
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3838
  call void @llvm.lifetime.end.p0(i64 8, ptr %phdr) #14, !dbg !3838
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehdr) #14, !dbg !3838
  %26 = load i32, ptr %retval, align 4, !dbg !3838
  ret i32 %26, !dbg !3838
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_build_id_64(ptr noundef %page_addr, ptr noundef %build_id, ptr noundef %size) #0 align 16 !dbg !3839 {
entry:
  %retval = alloca i32, align 4
  %page_addr.addr = alloca ptr, align 8
  %build_id.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %ehdr = alloca ptr, align 8
  %phdr = alloca ptr, align 8
  %i = alloca i32, align 4
  %phnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i16, align 2
  %tmp13 = alloca i64, align 8
  %tmp20 = alloca i64, align 8
  store ptr %page_addr, ptr %page_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_addr.addr, metadata !3841, metadata !DIExpression()), !dbg !3848
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !3842, metadata !DIExpression()), !dbg !3849
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3843, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehdr) #14, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !3844, metadata !DIExpression()), !dbg !3852
  %0 = load ptr, ptr %page_addr.addr, align 8, !dbg !3853
  store ptr %0, ptr %ehdr, align 8, !dbg !3852
  call void @llvm.lifetime.start.p0(i64 8, ptr %phdr) #14, !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %phdr, metadata !3845, metadata !DIExpression()), !dbg !3855
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3846, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 4, ptr %phnum) #14, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %phnum, metadata !3847, metadata !DIExpression()), !dbg !3858
  %1 = load ptr, ptr %ehdr, align 8, !dbg !3859
  %e_phoff = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 5, !dbg !3861
  %2 = load i64, ptr %e_phoff, align 8, !dbg !3861
  %cmp = icmp ne i64 %2, 64, !dbg !3862
  br i1 %cmp, label %if.then, label %if.end, !dbg !3863

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3864

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3865

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3867

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3867

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %ehdr, align 8, !dbg !3865
  %e_phnum = getelementptr inbounds %struct.elf64_hdr, ptr %3, i32 0, i32 10, !dbg !3865
  %4 = load volatile i16, ptr %e_phnum, align 8, !dbg !3865
  store i16 %4, ptr %tmp, align 2, !dbg !3867
  %5 = load i16, ptr %tmp, align 2, !dbg !3865
  %conv = zext i16 %5 to i32, !dbg !3869
  store i32 %conv, ptr %phnum, align 4, !dbg !3870
  %6 = load i32, ptr %phnum, align 4, !dbg !3871
  %conv1 = zext i32 %6 to i64, !dbg !3871
  %cmp2 = icmp ugt i64 %conv1, 72, !dbg !3873
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3874

if.then4:                                         ; preds = %do.end
  store i32 -22, ptr %retval, align 4, !dbg !3875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3875

if.end5:                                          ; preds = %do.end
  %7 = load ptr, ptr %page_addr.addr, align 8, !dbg !3876
  %add.ptr = getelementptr i8, ptr %7, i64 64, !dbg !3877
  store ptr %add.ptr, ptr %phdr, align 8, !dbg !3878
  store i32 0, ptr %i, align 4, !dbg !3879
  br label %for.cond, !dbg !3881

for.cond:                                         ; preds = %for.inc, %if.end5
  %8 = load i32, ptr %i, align 4, !dbg !3882
  %9 = load i32, ptr %phnum, align 4, !dbg !3884
  %cmp6 = icmp ult i32 %8, %9, !dbg !3885
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3886

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %phdr, align 8, !dbg !3887
  %11 = load i32, ptr %i, align 4, !dbg !3890
  %idxprom = zext i32 %11 to i64, !dbg !3887
  %arrayidx = getelementptr %struct.elf64_phdr, ptr %10, i64 %idxprom, !dbg !3887
  %p_type = getelementptr inbounds %struct.elf64_phdr, ptr %arrayidx, i32 0, i32 0, !dbg !3891
  %12 = load i32, ptr %p_type, align 8, !dbg !3891
  %cmp8 = icmp eq i32 %12, 4, !dbg !3892
  br i1 %cmp8, label %land.lhs.true, label %if.end25, !dbg !3893

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %page_addr.addr, align 8, !dbg !3894
  %14 = load ptr, ptr %build_id.addr, align 8, !dbg !3895
  %15 = load ptr, ptr %size.addr, align 8, !dbg !3896
  %16 = load ptr, ptr %page_addr.addr, align 8, !dbg !3897
  br label %do.body10, !dbg !3898

do.body10:                                        ; preds = %land.lhs.true
  br label %do.cond11, !dbg !3900

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3900

do.end12:                                         ; preds = %do.cond11
  %17 = load ptr, ptr %phdr, align 8, !dbg !3898
  %18 = load i32, ptr %i, align 4, !dbg !3898
  %idxprom14 = zext i32 %18 to i64, !dbg !3898
  %arrayidx15 = getelementptr %struct.elf64_phdr, ptr %17, i64 %idxprom14, !dbg !3898
  %p_offset = getelementptr inbounds %struct.elf64_phdr, ptr %arrayidx15, i32 0, i32 2, !dbg !3898
  %19 = load volatile i64, ptr %p_offset, align 8, !dbg !3898
  store i64 %19, ptr %tmp13, align 8, !dbg !3900
  %20 = load i64, ptr %tmp13, align 8, !dbg !3898
  %add.ptr16 = getelementptr i8, ptr %16, i64 %20, !dbg !3902
  br label %do.body17, !dbg !3903

do.body17:                                        ; preds = %do.end12
  br label %do.cond18, !dbg !3905

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3905

do.end19:                                         ; preds = %do.cond18
  %21 = load ptr, ptr %phdr, align 8, !dbg !3903
  %22 = load i32, ptr %i, align 4, !dbg !3903
  %idxprom21 = zext i32 %22 to i64, !dbg !3903
  %arrayidx22 = getelementptr %struct.elf64_phdr, ptr %21, i64 %idxprom21, !dbg !3903
  %p_filesz = getelementptr inbounds %struct.elf64_phdr, ptr %arrayidx22, i32 0, i32 5, !dbg !3903
  %23 = load volatile i64, ptr %p_filesz, align 8, !dbg !3903
  store i64 %23, ptr %tmp20, align 8, !dbg !3905
  %24 = load i64, ptr %tmp20, align 8, !dbg !3903
  %conv23 = trunc i64 %24 to i32, !dbg !3907
  %call = call i32 @parse_build_id(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %add.ptr16, i32 noundef %conv23) #15, !dbg !3908
  %tobool = icmp ne i32 %call, 0, !dbg !3908
  br i1 %tobool, label %if.end25, label %if.then24, !dbg !3909

if.then24:                                        ; preds = %do.end19
  store i32 0, ptr %retval, align 4, !dbg !3910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3910

if.end25:                                         ; preds = %do.end19, %for.body
  br label %for.inc, !dbg !3911

for.inc:                                          ; preds = %if.end25
  %25 = load i32, ptr %i, align 4, !dbg !3912
  %inc = add i32 %25, 1, !dbg !3912
  store i32 %inc, ptr %i, align 4, !dbg !3912
  br label %for.cond, !dbg !3913, !llvm.loop !3914

for.end:                                          ; preds = %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !3916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3916

cleanup:                                          ; preds = %for.end, %if.then24, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %phnum) #14, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %phdr) #14, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehdr) #14, !dbg !3917
  %26 = load i32, ptr %retval, align 4, !dbg !3917
  ret i32 %26, !dbg !3917
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_atomic(ptr noundef %addr) #3 align 16 !dbg !3580 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3585, metadata !DIExpression()), !dbg !3918
  call void @pagefault_enable() #15, !dbg !3919
  br label %do.body, !dbg !3920

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3922, !srcloc !3924
  %call = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !3925
  %lnot = xor i1 %call, true, !dbg !3925
  %lnot1 = xor i1 %lnot, true, !dbg !3925
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3925
  %conv = sext i32 %lnot.ext to i64, !dbg !3925
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3925
  %tobool = icmp ne i64 %expval, 0, !dbg !3925
  br i1 %tobool, label %if.then, label %if.end, !dbg !3922

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !3925

do.body2:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !3587), !dbg !3927
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !3927, !srcloc !3929
  call void @llvm.write_register.i64(metadata !3587, i64 %1), !dbg !3927
  br label %do.end, !dbg !3927

do.end:                                           ; preds = %do.body2
  br label %if.end, !dbg !3927

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end3, !dbg !3922

do.end3:                                          ; preds = %if.end
  ret void, !dbg !3930
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @build_id_parse_buf(ptr noundef %buf, ptr noundef %build_id, i32 noundef %buf_size) #0 align 16 !dbg !3931 {
entry:
  %buf.addr = alloca ptr, align 8
  %build_id.addr = alloca ptr, align 8
  %buf_size.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3935, metadata !DIExpression()), !dbg !3938
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !3936, metadata !DIExpression()), !dbg !3939
  store i32 %buf_size, ptr %buf_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !3937, metadata !DIExpression()), !dbg !3940
  %0 = load ptr, ptr %build_id.addr, align 8, !dbg !3941
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !3942
  %2 = load i32, ptr %buf_size.addr, align 4, !dbg !3943
  %call = call i32 @parse_build_id_buf(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2) #15, !dbg !3944
  ret i32 %call, !dbg !3945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_build_id_buf(ptr noundef %build_id, ptr noundef %size, ptr noundef %note_start, i32 noundef %note_size) #0 align 16 !dbg !3946 {
entry:
  %retval = alloca i32, align 4
  %build_id.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %note_start.addr = alloca ptr, align 8
  %note_size.addr = alloca i32, align 4
  %note_name = alloca [4 x i8], align 1
  %note_name_sz = alloca i64, align 8
  %note_off = alloca i64, align 8
  %new_off = alloca i64, align 8
  %name_sz = alloca i64, align 8
  %desc_sz = alloca i64, align 8
  %data = alloca ptr, align 8
  %nhdr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !3950, metadata !DIExpression()), !dbg !3965
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3951, metadata !DIExpression()), !dbg !3966
  store ptr %note_start, ptr %note_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %note_start.addr, metadata !3952, metadata !DIExpression()), !dbg !3967
  store i32 %note_size, ptr %note_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %note_size.addr, metadata !3953, metadata !DIExpression()), !dbg !3968
  call void @llvm.lifetime.start.p0(i64 4, ptr %note_name) #14, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %note_name, metadata !3954, metadata !DIExpression()), !dbg !3970
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %note_name, ptr align 1 @__const.parse_build_id_buf.note_name, i64 4, i1 false), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 8, ptr %note_name_sz) #14, !dbg !3971
  call void @llvm.dbg.declare(metadata ptr %note_name_sz, metadata !3956, metadata !DIExpression()), !dbg !3972
  store i64 4, ptr %note_name_sz, align 8, !dbg !3972
  call void @llvm.lifetime.start.p0(i64 8, ptr %note_off) #14, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %note_off, metadata !3958, metadata !DIExpression()), !dbg !3974
  store i64 0, ptr %note_off, align 8, !dbg !3974
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_off) #14, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %new_off, metadata !3959, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_sz) #14, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %name_sz, metadata !3960, metadata !DIExpression()), !dbg !3976
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_sz) #14, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %desc_sz, metadata !3961, metadata !DIExpression()), !dbg !3977
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3962, metadata !DIExpression()), !dbg !3979
  br label %while.cond, !dbg !3980

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %note_off, align 8, !dbg !3981
  %add = add i64 %0, 12, !dbg !3982
  %1 = load i32, ptr %note_size.addr, align 4, !dbg !3983
  %conv = zext i32 %1 to i64, !dbg !3983
  %cmp = icmp ult i64 %add, %conv, !dbg !3984
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3985

land.rhs:                                         ; preds = %while.cond
  %2 = load i64, ptr %note_off, align 8, !dbg !3986
  %add2 = add i64 %2, 12, !dbg !3987
  %3 = load i64, ptr %note_off, align 8, !dbg !3988
  %cmp3 = icmp ugt i64 %add2, %3, !dbg !3989
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !3990
  br i1 %4, label %while.body, label %while.end, !dbg !3980

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %nhdr) #14, !dbg !3991
  call void @llvm.dbg.declare(metadata ptr %nhdr, metadata !3963, metadata !DIExpression()), !dbg !3992
  %5 = load ptr, ptr %note_start.addr, align 8, !dbg !3993
  %6 = load i64, ptr %note_off, align 8, !dbg !3994
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !3995
  store ptr %add.ptr, ptr %nhdr, align 8, !dbg !3992
  br label %do.body, !dbg !3996

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !3998

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3998

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %nhdr, align 8, !dbg !3996
  %n_namesz = getelementptr inbounds %struct.elf32_note, ptr %7, i32 0, i32 0, !dbg !3996
  %8 = load volatile i32, ptr %n_namesz, align 4, !dbg !3996
  store i32 %8, ptr %tmp, align 4, !dbg !3998
  %9 = load i32, ptr %tmp, align 4, !dbg !3996
  %conv5 = zext i32 %9 to i64, !dbg !4000
  store i64 %conv5, ptr %name_sz, align 8, !dbg !4001
  br label %do.body6, !dbg !4002

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !4004

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4004

do.end8:                                          ; preds = %do.cond7
  %10 = load ptr, ptr %nhdr, align 8, !dbg !4002
  %n_descsz = getelementptr inbounds %struct.elf32_note, ptr %10, i32 0, i32 1, !dbg !4002
  %11 = load volatile i32, ptr %n_descsz, align 4, !dbg !4002
  store i32 %11, ptr %tmp9, align 4, !dbg !4004
  %12 = load i32, ptr %tmp9, align 4, !dbg !4002
  %conv10 = zext i32 %12 to i64, !dbg !4006
  store i64 %conv10, ptr %desc_sz, align 8, !dbg !4007
  %13 = load i64, ptr %note_off, align 8, !dbg !4008
  %add11 = add i64 %13, 12, !dbg !4009
  store i64 %add11, ptr %new_off, align 8, !dbg !4010
  %14 = load i64, ptr %new_off, align 8, !dbg !4011
  %15 = load i64, ptr %name_sz, align 8, !dbg !4011
  %add12 = add i64 %15, 3, !dbg !4011
  %and = and i64 %add12, -4, !dbg !4011
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %and), !dbg !4011
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4011
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4011
  store i64 %18, ptr %new_off, align 8, !dbg !4011
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %17) #15, !dbg !4011
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !4013

lor.lhs.false:                                    ; preds = %do.end8
  %19 = load i64, ptr %new_off, align 8, !dbg !4014
  %20 = load i64, ptr %desc_sz, align 8, !dbg !4014
  %add14 = add i64 %20, 3, !dbg !4014
  %and15 = and i64 %add14, -4, !dbg !4014
  %21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 %and15), !dbg !4014
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !4014
  %23 = extractvalue { i64, i1 } %21, 0, !dbg !4014
  store i64 %23, ptr %new_off, align 8, !dbg !4014
  %call16 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %22) #15, !dbg !4014
  br i1 %call16, label %if.then, label %lor.lhs.false18, !dbg !4015

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %24 = load i64, ptr %new_off, align 8, !dbg !4016
  %25 = load i32, ptr %note_size.addr, align 4, !dbg !4017
  %conv19 = zext i32 %25 to i64, !dbg !4017
  %cmp20 = icmp ugt i64 %24, %conv19, !dbg !4018
  br i1 %cmp20, label %if.then, label %if.end, !dbg !4019

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %do.end8
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4020

if.end:                                           ; preds = %lor.lhs.false18
  %26 = load ptr, ptr %nhdr, align 8, !dbg !4021
  %n_type = getelementptr inbounds %struct.elf32_note, ptr %26, i32 0, i32 2, !dbg !4023
  %27 = load i32, ptr %n_type, align 4, !dbg !4023
  %cmp22 = icmp eq i32 %27, 3, !dbg !4024
  br i1 %cmp22, label %land.lhs.true, label %if.end45, !dbg !4025

land.lhs.true:                                    ; preds = %if.end
  %28 = load i64, ptr %name_sz, align 8, !dbg !4026
  %cmp24 = icmp eq i64 %28, 4, !dbg !4027
  br i1 %cmp24, label %land.lhs.true26, label %if.end45, !dbg !4028

land.lhs.true26:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %nhdr, align 8, !dbg !4029
  %add.ptr27 = getelementptr %struct.elf32_note, ptr %29, i64 1, !dbg !4030
  %arraydecay = getelementptr inbounds [4 x i8], ptr %note_name, i64 0, i64 0, !dbg !4031
  %call28 = call i32 @memcmp(ptr noundef %add.ptr27, ptr noundef %arraydecay, i64 noundef 4) #15, !dbg !4032
  %cmp29 = icmp eq i32 %call28, 0, !dbg !4033
  br i1 %cmp29, label %land.lhs.true31, label %if.end45, !dbg !4034

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %30 = load i64, ptr %desc_sz, align 8, !dbg !4035
  %cmp32 = icmp ugt i64 %30, 0, !dbg !4036
  br i1 %cmp32, label %land.lhs.true34, label %if.end45, !dbg !4037

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %31 = load i64, ptr %desc_sz, align 8, !dbg !4038
  %cmp35 = icmp ule i64 %31, 20, !dbg !4039
  br i1 %cmp35, label %if.then37, label %if.end45, !dbg !4040

if.then37:                                        ; preds = %land.lhs.true34
  %32 = load ptr, ptr %note_start.addr, align 8, !dbg !4041
  %33 = load i64, ptr %note_off, align 8, !dbg !4043
  %add.ptr38 = getelementptr i8, ptr %32, i64 %33, !dbg !4044
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i64 12, !dbg !4045
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i64 4, !dbg !4046
  store ptr %add.ptr40, ptr %data, align 8, !dbg !4047
  %34 = load ptr, ptr %build_id.addr, align 8, !dbg !4048
  %35 = load ptr, ptr %data, align 8, !dbg !4049
  %36 = load i64, ptr %desc_sz, align 8, !dbg !4050
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %36, i1 false), !dbg !4051
  %37 = load ptr, ptr %build_id.addr, align 8, !dbg !4052
  %38 = load i64, ptr %desc_sz, align 8, !dbg !4053
  %add.ptr41 = getelementptr i8, ptr %37, i64 %38, !dbg !4054
  %39 = load i64, ptr %desc_sz, align 8, !dbg !4055
  %sub = sub i64 20, %39, !dbg !4056
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr41, i8 0, i64 %sub, i1 false), !dbg !4057
  %40 = load ptr, ptr %size.addr, align 8, !dbg !4058
  %tobool = icmp ne ptr %40, null, !dbg !4058
  br i1 %tobool, label %if.then42, label %if.end44, !dbg !4060

if.then42:                                        ; preds = %if.then37
  %41 = load i64, ptr %desc_sz, align 8, !dbg !4061
  %conv43 = trunc i64 %41 to i32, !dbg !4061
  %42 = load ptr, ptr %size.addr, align 8, !dbg !4062
  store i32 %conv43, ptr %42, align 4, !dbg !4063
  br label %if.end44, !dbg !4064

if.end44:                                         ; preds = %if.then42, %if.then37
  store i32 0, ptr %retval, align 4, !dbg !4065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4065

if.end45:                                         ; preds = %land.lhs.true34, %land.lhs.true31, %land.lhs.true26, %land.lhs.true, %if.end
  %43 = load i64, ptr %new_off, align 8, !dbg !4066
  store i64 %43, ptr %note_off, align 8, !dbg !4067
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4068
  br label %cleanup, !dbg !4068

cleanup:                                          ; preds = %if.end45, %if.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nhdr) #14, !dbg !4068
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3980, !llvm.loop !4069

while.end:                                        ; preds = %cleanup, %land.end
  store i32 -22, ptr %retval, align 4, !dbg !4070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !4070

cleanup46:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_sz) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_sz) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_off) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %note_off) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %note_name_sz) #14, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 4, ptr %note_name) #14, !dbg !4071
  %44 = load i32, ptr %retval, align 4, !dbg !4071
  ret i32 %44, !dbg !4071
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_vmlinux_build_id() #5 section ".init.text" align 16 !dbg !4072 {
entry:
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #14, !dbg !4075
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4074, metadata !DIExpression()), !dbg !4076
  store i32 trunc (i64 sub (i64 ptrtoint (ptr @__stop_notes to i64), i64 ptrtoint (ptr @__start_notes to i64)) to i32), ptr %size, align 4, !dbg !4076
  %0 = load i32, ptr %size, align 4, !dbg !4077
  %call = call i32 @build_id_parse_buf(ptr noundef @__start_notes, ptr noundef @vmlinux_build_id, i32 noundef %0) #15, !dbg !4078
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #14, !dbg !4079
  ret void, !dbg !4079
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4080 dso_local ptr @pagecache_get_page(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_uptodate(ptr noundef %folio) #3 align 16 !dbg !4084 {
entry:
  %folio.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4089, metadata !DIExpression()), !dbg !4092
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !4093
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #15, !dbg !4093
  %call1 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %call) #15, !dbg !4093
  %frombool = zext i1 %call1 to i8, !dbg !4092
  store i8 %frombool, ptr %ret, align 1, !dbg !4092
  %1 = load i8, ptr %ret, align 1, !dbg !4094, !range !4096, !noundef !438
  %tobool = trunc i8 %1 to i1, !dbg !4094
  br i1 %tobool, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4098

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !4099

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4101

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4101

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4099

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4103

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4105

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4105

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4103, !srcloc !4107
  br label %do.cond7, !dbg !4103

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4103

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4099

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4099

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !4099

if.end:                                           ; preds = %do.end10, %entry
  %2 = load i8, ptr %ret, align 1, !dbg !4108, !range !4096, !noundef !438
  %tobool11 = trunc i8 %2 to i1, !dbg !4108
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !4109
  ret i1 %tobool11, !dbg !4110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !4111 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4115, metadata !DIExpression()), !dbg !4117
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #14, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4116, metadata !DIExpression()), !dbg !4119
  br label %do.body, !dbg !4120

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4122

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4122

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4120
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !4120
  %compound_head = getelementptr inbounds %struct.anon.32, ptr %1, i32 0, i32 0, !dbg !4120
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !4120
  store i64 %2, ptr %tmp, align 8, !dbg !4122
  %3 = load i64, ptr %tmp, align 8, !dbg !4120
  store i64 %3, ptr %head, align 8, !dbg !4119
  %4 = load i64, ptr %head, align 8, !dbg !4124
  %and = and i64 %4, 1, !dbg !4124
  %tobool = icmp ne i64 %and, 0, !dbg !4124
  %lnot = xor i1 %tobool, true, !dbg !4124
  %lnot1 = xor i1 %lnot, true, !dbg !4124
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4124
  %conv = sext i32 %lnot.ext to i64, !dbg !4124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4124
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4124
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4126

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !4127
  %sub = sub i64 %5, 1, !dbg !4128
  store i64 %sub, ptr %retval, align 8, !dbg !4129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4129

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !4130
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #15, !dbg !4131
  %7 = ptrtoint ptr %call to i64, !dbg !4132
  store i64 %7, ptr %retval, align 8, !dbg !4133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #14, !dbg !4134
  %8 = load i64, ptr %retval, align 8, !dbg !4134
  ret i64 %8, !dbg !4134
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4135 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4140, metadata !DIExpression()), !dbg !4142
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4141, metadata !DIExpression()), !dbg !4143
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4144
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4145
  %div = udiv i64 %1, 64, !dbg !4145
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4146
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !4147
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4148
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4149
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4150
  ret i1 %call, !dbg !4151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !4152 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !4156, metadata !DIExpression()), !dbg !4159
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4157, metadata !DIExpression()), !dbg !4160
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !4161
  call void @llvm.dbg.declare(metadata ptr %page, metadata !4158, metadata !DIExpression()), !dbg !4162
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !4163
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !4164
  store ptr %1, ptr %page, align 8, !dbg !4162
  %2 = load ptr, ptr %page, align 8, !dbg !4165
  %3 = load i32, ptr %n.addr, align 4, !dbg !4166
  %idxprom = zext i32 %3 to i64, !dbg !4165
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !4165
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !4167
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !4168
  ret ptr %flags, !dbg !4169
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4170 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4178, metadata !DIExpression()), !dbg !4180
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4179, metadata !DIExpression()), !dbg !4181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4182
  %1 = load i64, ptr %size.addr, align 8, !dbg !4183
  %conv = trunc i64 %1 to i32, !dbg !4183
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !4184
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4185
  %3 = load i64, ptr %size.addr, align 8, !dbg !4185
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !4185
  ret void, !dbg !4186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4187 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4190, metadata !DIExpression()), !dbg !4192
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4191, metadata !DIExpression()), !dbg !4193
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4194
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4195
  br i1 %1, label %cond.true, label %cond.false, !dbg !4195

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4196
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4197
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4198
  %conv = zext i1 %call to i32, !dbg !4198
  br label %cond.end, !dbg !4195

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4199
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4200
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !4201
  %conv2 = zext i1 %call1 to i32, !dbg !4201
  br label %cond.end, !dbg !4195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4195
  %tobool = icmp ne i32 %cond, 0, !dbg !4195
  ret i1 %tobool, !dbg !4202
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4203 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4208, metadata !DIExpression()), !dbg !4210
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4209, metadata !DIExpression()), !dbg !4211
  ret i1 true, !dbg !4212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4213 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4218, metadata !DIExpression()), !dbg !4221
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4219, metadata !DIExpression()), !dbg !4222
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4220, metadata !DIExpression()), !dbg !4223
  ret void, !dbg !4224
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4225 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4229, metadata !DIExpression()), !dbg !4231
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4230, metadata !DIExpression()), !dbg !4232
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4233
  %and = and i64 %0, 63, !dbg !4234
  %shl = shl i64 1, %and, !dbg !4235
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4236
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4237
  %shr = ashr i64 %2, 6, !dbg !4238
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4236
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4236
  %and1 = and i64 %shl, %3, !dbg !4239
  %cmp = icmp ne i64 %and1, 0, !dbg !4240
  ret i1 %cmp, !dbg !4241
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4242 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4244, metadata !DIExpression()), !dbg !4247
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4246, metadata !DIExpression()), !dbg !4250
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4251
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4252
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !4253, !srcloc !4254
  %3 = icmp ult i8 %2, 2, !dbg !4253
  call void @llvm.assume(i1 %3), !dbg !4253
  store i8 %2, ptr %oldbit, align 1, !dbg !4253
  %4 = load i8, ptr %oldbit, align 1, !dbg !4255, !range !4096, !noundef !438
  %tobool = trunc i8 %4 to i1, !dbg !4255
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !4256
  ret i1 %tobool, !dbg !4257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #6 align 16 !dbg !4258 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4262, metadata !DIExpression()), !dbg !4269
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !4270
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !4263, metadata !DIExpression()), !dbg !4270
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #15, !dbg !4271
  %frombool = zext i1 %call to i8, !dbg !4271
  store i8 %frombool, ptr %branch, align 1, !dbg !4271
  %0 = load i8, ptr %branch, align 1, !dbg !4270, !range !4096, !noundef !438
  %tobool = trunc i8 %0 to i1, !dbg !4270
  %lnot = xor i1 %tobool, true, !dbg !4270
  %lnot1 = xor i1 %lnot, true, !dbg !4270
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4270
  %conv = sext i32 %lnot.ext to i64, !dbg !4270
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4270
  store i64 %expval, ptr %tmp, align 8, !dbg !4274
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !4275
  %1 = load i64, ptr %tmp, align 8, !dbg !4270
  %tobool2 = icmp ne i64 %1, 0, !dbg !4275
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4276

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !4277
  store ptr %2, ptr %retval, align 8, !dbg !4278
  br label %return, !dbg !4278

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !4279
  %4 = ptrtoint ptr %3 to i64, !dbg !4279
  %and = and i64 %4, 4095, !dbg !4279
  %cmp = icmp eq i64 %and, 0, !dbg !4279
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !4280

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !4281
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !4281
  %6 = ptrtoint ptr %flags to i64, !dbg !4281
  %cmp4 = icmp ne i64 %6, 0, !dbg !4281
  %conv5 = zext i1 %cmp4 to i32, !dbg !4281
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !4281
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !4281

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !4281
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !4281
  %9 = ptrtoint ptr %flags7 to i64, !dbg !4281
  %cmp8 = icmp ne i64 %9, 0, !dbg !4281
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !4281

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !4281
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !4281
  %11 = load i64, ptr %flags11, align 16, !dbg !4281
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !4281
  br i1 %12, label %cond.true, label %cond.false, !dbg !4282

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !4281
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !4281
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #15, !dbg !4281
  br i1 %call13, label %if.then18, label %if.end31, !dbg !4281

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !4281
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !4281
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #15, !dbg !4281
  br i1 %call16, label %if.then18, label %if.end31, !dbg !4282

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #14, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4266, metadata !DIExpression()), !dbg !4284
  br label %do.body, !dbg !4285

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !4287

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4287

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !4285
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !4285
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !4285
  %compound_head = getelementptr inbounds %struct.anon.32, ptr %16, i32 0, i32 0, !dbg !4285
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !4285
  store i64 %17, ptr %tmp19, align 8, !dbg !4287
  %18 = load i64, ptr %tmp19, align 8, !dbg !4285
  store i64 %18, ptr %head, align 8, !dbg !4284
  %19 = load i64, ptr %head, align 8, !dbg !4289
  %and20 = and i64 %19, 1, !dbg !4289
  %tobool21 = icmp ne i64 %and20, 0, !dbg !4289
  %lnot22 = xor i1 %tobool21, true, !dbg !4289
  %lnot24 = xor i1 %lnot22, true, !dbg !4289
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4289
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4289
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !4289
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !4289
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4291

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !4292
  %sub = sub i64 %20, 1, !dbg !4293
  %21 = inttoptr i64 %sub to ptr, !dbg !4294
  store ptr %21, ptr %retval, align 8, !dbg !4295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4295

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4296
  br label %cleanup, !dbg !4296

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #14, !dbg !4296
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !4297

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !4298
  store ptr %22, ptr %retval, align 8, !dbg !4299
  br label %return, !dbg !4299

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !4300
  ret ptr %23, !dbg !4300

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !4301 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4325, metadata !DIExpression()), !dbg !4328
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4326, metadata !DIExpression()), !dbg !4329
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4330
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4331, !range !4096, !noundef !438
  %tobool = trunc i8 %1 to i1, !dbg !4331
  %conv = zext i1 %tobool to i32, !dbg !4331
  %or = or i32 2, %conv, !dbg !4332
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !4333, !srcloc !4334

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4335
  br label %return, !dbg !4335

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4327), !dbg !4336
  store i1 true, ptr %retval, align 1, !dbg !4337
  br label %return, !dbg !4337

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4338
  ret i1 %2, !dbg !4338
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4339 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4342, metadata !DIExpression()), !dbg !4347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4344, metadata !DIExpression()), !dbg !4350
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4351
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4352
  %div = udiv i64 %1, 64, !dbg !4352
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4353
  store ptr %add.ptr, ptr %p, align 8, !dbg !4350
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4345, metadata !DIExpression()), !dbg !4355
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4356
  %rem = urem i64 %2, 64, !dbg !4356
  %shl = shl i64 1, %rem, !dbg !4356
  store i64 %shl, ptr %mask, align 8, !dbg !4355
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !4357
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4346, metadata !DIExpression()), !dbg !4358
  %3 = load ptr, ptr %p, align 8, !dbg !4359
  %4 = load i64, ptr %3, align 8, !dbg !4360
  store i64 %4, ptr %val, align 8, !dbg !4358
  %5 = load i64, ptr %val, align 8, !dbg !4361
  %6 = load i64, ptr %mask, align 8, !dbg !4362
  %and = and i64 %5, %6, !dbg !4363
  %tobool = icmp ne i64 %and, 0, !dbg !4364
  %lnot = xor i1 %tobool, true, !dbg !4364
  %lnot1 = xor i1 %lnot, true, !dbg !4365
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !4366
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !4366
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !4366
  ret i1 %lnot1, !dbg !4367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page(ptr noundef %page) #3 align 16 !dbg !4368 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4374
  %call = call zeroext i1 @put_devmap_managed_page_refs(ptr noundef %0, i32 noundef 1) #15, !dbg !4375
  ret i1 %call, !dbg !4376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #3 align 16 !dbg !4377 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !4381
  %call = call i32 @folio_put_testzero(ptr noundef %0) #15, !dbg !4383
  %tobool = icmp ne i32 %call, 0, !dbg !4383
  br i1 %tobool, label %if.then, label %if.end, !dbg !4384

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !4385
  call void @__folio_put(ptr noundef %1) #15, !dbg !4386
  br label %if.end, !dbg !4386

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @put_devmap_managed_page_refs(ptr noundef %page, i32 noundef %refs) #3 align 16 !dbg !4388 {
entry:
  %page.addr = alloca ptr, align 8
  %refs.addr = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4392, metadata !DIExpression()), !dbg !4394
  store i32 %refs, ptr %refs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %refs.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  ret i1 false, !dbg !4396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #3 align 16 !dbg !4397 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !4401
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !4402
  %call = call i32 @put_page_testzero(ptr noundef %1) #15, !dbg !4403
  ret i32 %call, !dbg !4404
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4405 dso_local void @__folio_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #3 align 16 !dbg !4406 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4410
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #15, !dbg !4411
  ret i32 %call, !dbg !4412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #3 align 16 !dbg !4413 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4416, metadata !DIExpression()), !dbg !4418
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !4419
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4417, metadata !DIExpression()), !dbg !4420
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4421
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !4422
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #15, !dbg !4423
  %conv = zext i1 %call to i32, !dbg !4423
  store i32 %conv, ptr %ret, align 4, !dbg !4420
  %1 = load i32, ptr %ret, align 4, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !4425
  ret i32 %1, !dbg !4426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !4427 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  br label %do.body, !dbg !4435

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4436

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4438
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !4439
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4440
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #15, !dbg !4441
  ret i1 %call, !dbg !4442
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4443 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4445, metadata !DIExpression()), !dbg !4447
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4446, metadata !DIExpression()), !dbg !4448
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4449
  %1 = load i64, ptr %size.addr, align 8, !dbg !4450
  %conv = trunc i64 %1 to i32, !dbg !4450
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !4451
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4452
  %3 = load i64, ptr %size.addr, align 8, !dbg !4452
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !4452
  ret void, !dbg !4453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !4454 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4459
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #15, !dbg !4460
  ret i1 %call, !dbg !4461
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4462 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4464, metadata !DIExpression()), !dbg !4466
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4465, metadata !DIExpression()), !dbg !4467
  ret i1 true, !dbg !4468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #6 align 16 !dbg !4469 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4472, metadata !DIExpression()), !dbg !4475
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !4476
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4473, metadata !DIExpression()), !dbg !4476
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4476
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4476
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #14, !dbg !4476, !srcloc !4477
  %2 = icmp ult i8 %1, 2, !dbg !4476
  call void @llvm.assume(i1 %2), !dbg !4476
  store i8 %1, ptr %c, align 1, !dbg !4476
  %3 = load i8, ptr %c, align 1, !dbg !4476, !range !4096, !noundef !438
  %tobool = trunc i8 %3 to i1, !dbg !4476
  %frombool = zext i1 %tobool to i8, !dbg !4476
  store i8 %frombool, ptr %tmp, align 1, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !4478
  %4 = load i8, ptr %tmp, align 1, !dbg !4476, !range !4096, !noundef !438
  %tobool1 = trunc i8 %4 to i1, !dbg !4476
  ret i1 %tobool1, !dbg !4479
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !4480 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4483, metadata !DIExpression()), !dbg !4491
  br label %do.body, !dbg !4492

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4484, metadata !DIExpression()), !dbg !4493
  %0 = load i32, ptr %val.addr, align 4, !dbg !4493
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4493
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4493

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4493
  %cmp = icmp eq i32 %2, 1, !dbg !4493
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4493

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4493
  %cmp1 = icmp eq i32 %3, -1, !dbg !4493
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4493

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4493
  br label %cond.end, !dbg !4493

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4493
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4493
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4494
  %cmp2 = icmp eq i32 %5, 1, !dbg !4494
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4493

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !4495, !srcloc !4497
  br label %if.end8, !dbg !4494

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4498
  %cmp3 = icmp eq i32 %6, -1, !dbg !4498
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4494

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !4499, !srcloc !4501
  br label %if.end, !dbg !4498

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4498

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4487, metadata !DIExpression()), !dbg !4502
  %7 = load i32, ptr %val.addr, align 4, !dbg !4502
  %conv = sext i32 %7 to i64, !dbg !4502
  %and = and i64 %conv, 4294967295, !dbg !4502
  %conv7 = trunc i64 %and to i32, !dbg !4502
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4502
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4502
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !4502, !srcloc !4503
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !4498
  br label %do.cond, !dbg !4502

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4502

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !4492
  br label %do.end10, !dbg !4493

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #3 align 16 !dbg !4505 {
entry:
  call void @pagefault_disabled_inc() #15, !dbg !4507
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4508, !srcloc !4509
  ret void, !dbg !4510
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #6 align 16 !dbg !4511 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4517
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !4517
  %2 = inttoptr i64 %1 to ptr, !dbg !4517
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4517
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !4517
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4517
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4517
  %shl = shl i64 %sub.ptr.div, 12, !dbg !4517
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !4517
  %add = add i64 %shl, %3, !dbg !4517
  %4 = inttoptr i64 %add to ptr, !dbg !4517
  ret ptr %4, !dbg !4518
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #6 align 16 !dbg !4519 {
entry:
  %call = call ptr @get_current() #15, !dbg !4520
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !4521
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !4522
  %inc = add i32 %0, 1, !dbg !4522
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !4522
  ret void, !dbg !4523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4524 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4529, metadata !DIExpression()), !dbg !4535
  br label %do.body, !dbg !4535

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4531, metadata !DIExpression()), !dbg !4536
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4536
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4535
  br label %do.cond, !dbg !4536

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4536

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4533, metadata !DIExpression()), !dbg !4537
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !4537, !srcloc !4538
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4537
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4537
  %3 = inttoptr i64 %2 to ptr, !dbg !4537
  store ptr %3, ptr %tmp, align 8, !dbg !4537
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !4535
  %4 = load ptr, ptr %tmp, align 8, !dbg !4537
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4535
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4535
  store ptr %5, ptr %tmp1, align 8, !dbg !4535
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !4539
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4535
  ret ptr %6, !dbg !4540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_build_id(ptr noundef %page_addr, ptr noundef %build_id, ptr noundef %size, ptr noundef %note_start, i32 noundef %note_size) #3 align 16 !dbg !4541 {
entry:
  %retval = alloca i32, align 4
  %page_addr.addr = alloca ptr, align 8
  %build_id.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %note_start.addr = alloca ptr, align 8
  %note_size.addr = alloca i32, align 4
  store ptr %page_addr, ptr %page_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_addr.addr, metadata !4545, metadata !DIExpression()), !dbg !4550
  store ptr %build_id, ptr %build_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %build_id.addr, metadata !4546, metadata !DIExpression()), !dbg !4551
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4547, metadata !DIExpression()), !dbg !4552
  store ptr %note_start, ptr %note_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %note_start.addr, metadata !4548, metadata !DIExpression()), !dbg !4553
  store i32 %note_size, ptr %note_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %note_size.addr, metadata !4549, metadata !DIExpression()), !dbg !4554
  %0 = load ptr, ptr %note_start.addr, align 8, !dbg !4555
  %1 = load ptr, ptr %page_addr.addr, align 8, !dbg !4557
  %cmp = icmp ult ptr %0, %1, !dbg !4558
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4559

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %note_start.addr, align 8, !dbg !4560
  %3 = load i32, ptr %note_size.addr, align 4, !dbg !4561
  %idx.ext = zext i32 %3 to i64, !dbg !4562
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.ext, !dbg !4562
  %4 = load ptr, ptr %note_start.addr, align 8, !dbg !4563
  %cmp1 = icmp ult ptr %add.ptr, %4, !dbg !4564
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4565

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4566
  br label %return, !dbg !4566

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %note_start.addr, align 8, !dbg !4567
  %6 = load i32, ptr %note_size.addr, align 4, !dbg !4569
  %idx.ext2 = zext i32 %6 to i64, !dbg !4570
  %add.ptr3 = getelementptr i8, ptr %5, i64 %idx.ext2, !dbg !4570
  %7 = load ptr, ptr %page_addr.addr, align 8, !dbg !4571
  %add.ptr4 = getelementptr i8, ptr %7, i64 4096, !dbg !4572
  %cmp5 = icmp ugt ptr %add.ptr3, %add.ptr4, !dbg !4573
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4574

if.then6:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4575
  br label %return, !dbg !4575

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %build_id.addr, align 8, !dbg !4576
  %9 = load ptr, ptr %size.addr, align 8, !dbg !4577
  %10 = load ptr, ptr %note_start.addr, align 8, !dbg !4578
  %11 = load i32, ptr %note_size.addr, align 4, !dbg !4579
  %call = call i32 @parse_build_id_buf(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) #15, !dbg !4580
  store i32 %call, ptr %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !4582
  ret i32 %12, !dbg !4582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #3 align 16 !dbg !4583 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4584, !srcloc !4585
  call void @pagefault_disabled_dec() #15, !dbg !4586
  ret void, !dbg !4587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !4588 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !4594
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4592, metadata !DIExpression()), !dbg !4594
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.42, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !4594, !srcloc !4595
  %1 = icmp ult i8 %0, 2, !dbg !4594
  call void @llvm.assume(i1 %1), !dbg !4594
  store i8 %0, ptr %c, align 1, !dbg !4594
  %2 = load i8, ptr %c, align 1, !dbg !4594, !range !4096, !noundef !438
  %tobool = trunc i8 %2 to i1, !dbg !4594
  %frombool = zext i1 %tobool to i8, !dbg !4594
  store i8 %frombool, ptr %tmp, align 1, !dbg !4594
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !4596
  %3 = load i8, ptr %tmp, align 1, !dbg !4594, !range !4096, !noundef !438
  %tobool1 = trunc i8 %3 to i1, !dbg !4594
  ret i1 %tobool1, !dbg !4597
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #6 align 16 !dbg !4598 {
entry:
  %call = call ptr @get_current() #15, !dbg !4599
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !4600
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !4601
  %dec = add i32 %0, -1, !dbg !4601
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !4601
  ret void, !dbg !4602
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !4603 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4610, !range !4096, !noundef !438
  %tobool = trunc i8 %0 to i1, !dbg !4610
  %lnot = xor i1 %tobool, true, !dbg !4610
  %lnot1 = xor i1 %lnot, true, !dbg !4610
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4610
  %conv = sext i32 %lnot.ext to i64, !dbg !4610
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4610
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4610
  ret i1 %tobool2, !dbg !4611
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!3587}
!llvm.module.flags = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595}
!llvm.ident = !{!3596}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/buildid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a14cbee67d1891c5d53c0b5feece977")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "vmlinux_build_id", scope: !9, file: !2, line: 204, type: !3586, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.buildid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/buildid\22 -D KBUILD_BASENAME=\22buildid\22 -D KBUILD_MODNAME=\22buildid\22 -D __KBUILD_MODNAME=kmod_buildid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/buildid.ll lib/buildid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !125, globals: !3577, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !25, !31, !36, !42, !49, !57, !73, !80, !120}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !81, line: 100, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!83 = !DIEnumerator(name: "PG_locked", value: 0)
!84 = !DIEnumerator(name: "PG_writeback", value: 1)
!85 = !DIEnumerator(name: "PG_referenced", value: 2)
!86 = !DIEnumerator(name: "PG_uptodate", value: 3)
!87 = !DIEnumerator(name: "PG_dirty", value: 4)
!88 = !DIEnumerator(name: "PG_lru", value: 5)
!89 = !DIEnumerator(name: "PG_head", value: 6)
!90 = !DIEnumerator(name: "PG_waiters", value: 7)
!91 = !DIEnumerator(name: "PG_active", value: 8)
!92 = !DIEnumerator(name: "PG_workingset", value: 9)
!93 = !DIEnumerator(name: "PG_error", value: 10)
!94 = !DIEnumerator(name: "PG_slab", value: 11)
!95 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!96 = !DIEnumerator(name: "PG_arch_1", value: 13)
!97 = !DIEnumerator(name: "PG_reserved", value: 14)
!98 = !DIEnumerator(name: "PG_private", value: 15)
!99 = !DIEnumerator(name: "PG_private_2", value: 16)
!100 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!101 = !DIEnumerator(name: "PG_reclaim", value: 18)
!102 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!103 = !DIEnumerator(name: "PG_unevictable", value: 20)
!104 = !DIEnumerator(name: "PG_mlocked", value: 21)
!105 = !DIEnumerator(name: "PG_uncached", value: 22)
!106 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!107 = !DIEnumerator(name: "PG_readahead", value: 18)
!108 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!109 = !DIEnumerator(name: "PG_checked", value: 12)
!110 = !DIEnumerator(name: "PG_swapcache", value: 12)
!111 = !DIEnumerator(name: "PG_fscache", value: 16)
!112 = !DIEnumerator(name: "PG_pinned", value: 12)
!113 = !DIEnumerator(name: "PG_savepinned", value: 4)
!114 = !DIEnumerator(name: "PG_foreign", value: 12)
!115 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!116 = !DIEnumerator(name: "PG_isolated", value: 18)
!117 = !DIEnumerator(name: "PG_reported", value: 3)
!118 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!119 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 10, baseType: !13, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "false", value: 0)
!124 = !DIEnumerator(name: "true", value: 1)
!125 = !{!126, !157, !3504, !3505, !167, !3508, !182, !3509, !3510, !311, !260, !3512, !871, !3513, !1686, !3514, !3517, !3529, !3532, !3554, !3567, !3570, !264, !523}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Ehdr", file: !128, line: 224, baseType: !129)
!128 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf32_hdr", file: !128, line: 209, size: 416, elements: !130)
!130 = !{!131, !136, !141, !142, !145, !147, !149, !150, !151, !152, !153, !154, !155, !156}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !129, file: !128, line: 210, baseType: !132, size: 128)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !134)
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !{!135}
!135 = !DISubrange(count: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !129, file: !128, line: 211, baseType: !137, size: 16, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Half", file: !128, line: 10, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !129, file: !128, line: 212, baseType: !137, size: 16, offset: 144)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !129, file: !128, line: 213, baseType: !143, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Word", file: !128, line: 13, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !13)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !129, file: !128, line: 214, baseType: !146, size: 32, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Addr", file: !128, line: 9, baseType: !144)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !129, file: !128, line: 215, baseType: !148, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Off", file: !128, line: 11, baseType: !144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !129, file: !128, line: 216, baseType: !148, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !129, file: !128, line: 217, baseType: !143, size: 32, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !129, file: !128, line: 218, baseType: !137, size: 16, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !129, file: !128, line: 219, baseType: !137, size: 16, offset: 336)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !129, file: !128, line: 220, baseType: !137, size: 16, offset: 352)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !129, file: !128, line: 221, baseType: !137, size: 16, offset: 368)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !129, file: !128, line: 222, baseType: !137, size: 16, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !129, file: !128, line: 223, baseType: !137, size: 16, offset: 400)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !58, line: 293, size: 1536, elements: !159)
!159 = !{!160, !3471, !3485}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !58, line: 295, baseType: !161, size: 512)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !58, line: 295, size: 512, elements: !162)
!162 = !{!163, !3470}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !58, line: 296, baseType: !164, size: 448)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !58, line: 296, size: 448, elements: !165)
!165 = !{!166, !168, !184, !3458, !3459, !3468, !3469}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !58, line: 298, baseType: !167, size: 64)
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !58, line: 299, baseType: !169, size: 128, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !58, line: 299, size: 128, elements: !170)
!170 = !{!171, !178}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !169, file: !58, line: 300, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !173, line: 190, size: 128, elements: !174)
!173 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !173, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !58, line: 302, baseType: !179, size: 128)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !58, line: 302, size: 128, elements: !180)
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !179, file: !58, line: 303, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !179, file: !58, line: 305, baseType: !13, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !164, file: !58, line: 310, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !21, line: 472, size: 1536, align: 64, elements: !187)
!187 = !{!188, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3452, !3453, !3454, !3455, !3456, !3457}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !186, file: !21, line: 473, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !21, line: 641, size: 4800, elements: !191)
!191 = !{!192, !194, !195, !204, !205, !212, !213, !216, !217, !3286, !3287, !3288, !3289, !3290, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3330, !3333, !3334, !3335, !3344, !3345, !3346, !3347}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !190, file: !21, line: 642, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !173, line: 24, baseType: !140)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !190, file: !21, line: 643, baseType: !140, size: 16, offset: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !190, file: !21, line: 644, baseType: !196, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !197, line: 23, baseType: !198)
!197 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 21, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !197, line: 22, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !173, line: 37, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !203, line: 49, baseType: !13)
!203 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !190, file: !21, line: 645, baseType: !172, size: 128, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !190, file: !21, line: 646, baseType: !206, size: 32, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !197, line: 28, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 26, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !207, file: !197, line: 27, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !173, line: 38, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !203, line: 50, baseType: !13)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !190, file: !21, line: 647, baseType: !13, size: 32, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !190, file: !21, line: 650, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !21, line: 607, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !190, file: !21, line: 651, baseType: !214, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !190, file: !21, line: 654, baseType: !218, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !21, line: 1966, size: 2048, align: 512, elements: !221)
!221 = !{!222, !3111, !3124, !3128, !3132, !3136, !3140, !3144, !3148, !3152, !3156, !3157, !3161, !3165, !3202, !3231, !3235, !3241, !3245, !3249, !3253, !3257, !3261, !3267, !3271}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !220, file: !21, line: 1967, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !189, !226, !13}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !228, line: 82, size: 1536, elements: !229)
!228 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!229 = !{!230, !231, !241, !249, !250, !270, !271, !275, !326, !3094, !3095, !3096, !3097, !3103, !3104, !3105}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !227, file: !228, line: 84, baseType: !13, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !227, file: !228, line: 85, baseType: !232, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !233, line: 275, baseType: !234)
!233 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !233, line: 275, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !234, file: !233, line: 275, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !233, line: 69, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !233, line: 64, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !238, file: !233, line: 65, baseType: !13, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !227, file: !228, line: 86, baseType: !242, size: 128, offset: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !243, line: 38, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!244 = !{!245, !247}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !243, line: 39, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !242, file: !243, line: 39, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !227, file: !228, line: 87, baseType: !226, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !227, file: !228, line: 88, baseType: !251, size: 128, offset: 256)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !228, line: 49, size: 128, elements: !252)
!252 = !{!253, !267}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !228, line: 50, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !228, line: 50, size: 64, elements: !255)
!255 = !{!256, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !228, line: 51, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !228, line: 51, size: 64, elements: !258)
!258 = !{!259, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !257, file: !228, line: 52, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !144)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !257, file: !228, line: 52, baseType: !260, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !254, file: !228, line: 54, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !266)
!266 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !228, line: 56, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !227, file: !228, line: 89, baseType: !189, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !227, file: !228, line: 91, baseType: !272, size: 256, offset: 448)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !227, file: !228, line: 94, baseType: !276, size: 64, offset: 704)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !277, line: 25, size: 64, elements: !278)
!277 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !277, line: 26, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !277, line: 26, size: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !280, file: !277, line: 28, baseType: !265, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !277, line: 30, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !277, line: 30, size: 64, elements: !285)
!285 = !{!286, !325}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !284, file: !277, line: 31, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !288, line: 29, baseType: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !288, line: 17, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !288, line: 18, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !288, line: 18, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !292, file: !288, line: 19, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !296, line: 14, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !295, file: !296, line: 15, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !300, line: 44, baseType: !301)
!300 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !300, line: 14, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !300, line: 15, baseType: !304, size: 32)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !300, line: 15, size: 32, elements: !305)
!305 = !{!306, !312, !319}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !304, file: !300, line: 16, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !173, line: 174, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 172, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !308, file: !173, line: 173, baseType: !311, size: 32)
!311 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !300, line: 24, baseType: !313, size: 16)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !300, line: 24, size: 16, elements: !314)
!314 = !{!315, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !313, file: !300, line: 25, baseType: !316, size: 8)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !133)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !313, file: !300, line: 26, baseType: !316, size: 8, offset: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !300, line: 28, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !300, line: 28, size: 32, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !320, file: !300, line: 29, baseType: !323, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !138)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !320, file: !300, line: 30, baseType: !323, size: 16, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !284, file: !277, line: 32, baseType: !311, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !227, file: !228, line: 95, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !228, line: 128, size: 1024, align: 512, elements: !330)
!330 = !{!331, !335, !336, !343, !351, !355, !359, !363, !364, !368, !373, !3084, !3088}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !329, file: !228, line: 129, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!311, !226, !13}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !329, file: !228, line: 130, baseType: !332, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !329, file: !228, line: 131, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!311, !340, !342}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !329, file: !228, line: 132, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!311, !340, !13, !347, !349}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !329, file: !228, line: 134, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!311, !340}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !329, file: !228, line: 135, baseType: !356, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!311, !226}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !329, file: !228, line: 136, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !226}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !329, file: !228, line: 137, baseType: !360, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !329, file: !228, line: 138, baseType: !365, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !226, !189}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !329, file: !228, line: 139, baseType: !369, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !226, !372, !311}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !329, file: !228, line: 140, baseType: !374, size: 64, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !3083}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !379, line: 70, size: 256, elements: !380)
!379 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!380 = !{!381, !382, !3079, !3080}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !378, file: !379, line: 71, baseType: !226, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !378, file: !379, line: 72, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !21, line: 1190, size: 10752, elements: !385)
!385 = !{!386, !387, !390, !391, !392, !396, !449, !617, !657, !747, !751, !752, !753, !754, !755, !764, !765, !766, !767, !772, !776, !777, !780, !783, !786, !789, !790, !791, !832, !3010, !3011, !3012, !3013, !3014, !3015, !3018, !3020, !3027, !3028, !3029, !3030, !3031, !3046, !3047, !3048, !3049, !3050, !3053, !3054, !3055, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !384, file: !21, line: 1191, baseType: !172, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !384, file: !21, line: 1192, baseType: !388, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !173, line: 21, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !173, line: 18, baseType: !260)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !384, file: !21, line: 1193, baseType: !133, size: 8, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !384, file: !21, line: 1194, baseType: !167, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !384, file: !21, line: 1195, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !173, line: 52, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !203, line: 88, baseType: !395)
!395 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !384, file: !21, line: 1196, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !21, line: 2366, size: 576, elements: !399)
!399 = !{!400, !401, !402, !408, !412, !416, !420, !424, !425, !435, !439, !440, !441, !445, !446, !447, !448}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !21, line: 2367, baseType: !347, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !398, file: !21, line: 2368, baseType: !311, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !398, file: !21, line: 2376, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!311, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !379, line: 21, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !398, file: !21, line: 2377, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !21, line: 75, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !398, file: !21, line: 2378, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!226, !397, !311, !347, !182}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !398, file: !21, line: 2380, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !383}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !398, file: !21, line: 2381, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !423, line: 103, flags: DIFlagFwdDecl)
!423 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !21, line: 2382, baseType: !397, size: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !398, file: !21, line: 2383, baseType: !426, size: 64, offset: 512)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !173, line: 194, size: 64, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !426, file: !173, line: 195, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !173, line: 198, size: 128, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !173, line: 199, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !430, file: !173, line: 199, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !398, file: !21, line: 2385, baseType: !436, offset: 576)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !437, line: 206, elements: !438)
!437 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!438 = !{}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !398, file: !21, line: 2386, baseType: !436, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !398, file: !21, line: 2387, baseType: !436, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !398, file: !21, line: 2388, baseType: !442, offset: 576)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 3)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !398, file: !21, line: 2390, baseType: !436, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !398, file: !21, line: 2391, baseType: !436, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !398, file: !21, line: 2392, baseType: !436, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !398, file: !21, line: 2393, baseType: !436, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !384, file: !21, line: 1197, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !21, line: 2057, size: 1664, elements: !453)
!453 = !{!454, !458, !462, !463, !467, !473, !477, !478, !479, !483, !487, !491, !492, !493, !499, !504, !505, !512, !513, !514, !515, !526, !530, !599, !615, !616}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !452, file: !21, line: 2058, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!189, !383}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !452, file: !21, line: 2059, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !189}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !452, file: !21, line: 2060, baseType: !459, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !452, file: !21, line: 2062, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !189, !311}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !452, file: !21, line: 2063, baseType: !468, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!311, !189, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 309, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !452, file: !21, line: 2064, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!311, !189}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !452, file: !21, line: 2065, baseType: !459, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !452, file: !21, line: 2066, baseType: !417, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !452, file: !21, line: 2067, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!311, !383, !311}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !452, file: !21, line: 2068, baseType: !484, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!311, !383, !20}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !452, file: !21, line: 2069, baseType: !488, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!311, !383}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !452, file: !21, line: 2070, baseType: !484, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !452, file: !21, line: 2071, baseType: !488, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !452, file: !21, line: 2072, baseType: !494, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!311, !226, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !21, line: 62, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !452, file: !21, line: 2073, baseType: !500, size: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!311, !383, !503, !372}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !452, file: !21, line: 2074, baseType: !417, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !452, file: !21, line: 2076, baseType: !506, size: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!311, !509, !226}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !511, line: 66, flags: DIFlagFwdDecl)
!511 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !452, file: !21, line: 2077, baseType: !506, size: 64, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !452, file: !21, line: 2078, baseType: !506, size: 64, offset: 1152)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !452, file: !21, line: 2079, baseType: !506, size: 64, offset: 1216)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !452, file: !21, line: 2081, baseType: !516, size: 64, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !383, !311, !372, !523, !393}
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !173, line: 66, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !203, line: 73, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !203, line: 15, baseType: !522)
!522 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 61, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !203, line: 72, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !203, line: 16, baseType: !167)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !452, file: !21, line: 2082, baseType: !527, size: 64, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!519, !383, !311, !347, !523, !393}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !452, file: !21, line: 2083, baseType: !531, size: 64, offset: 1408)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !189}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !26, line: 296, size: 1664, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !563, !564, !565, !566, !582, !583, !584}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !536, file: !26, line: 297, baseType: !430, size: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !536, file: !26, line: 298, baseType: !172, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !536, file: !26, line: 299, baseType: !172, size: 128, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !536, file: !26, line: 300, baseType: !172, size: 128, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !536, file: !26, line: 301, baseType: !543, size: 256, offset: 512)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !544, line: 66, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!545 = !{!546, !555, !557, !562}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !543, file: !544, line: 67, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !548, line: 13, baseType: !549)
!548 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !173, line: 181, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 179, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !550, file: !173, line: 180, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !395)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !543, file: !544, line: 68, baseType: !556, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !296, line: 23, baseType: !295)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !543, file: !544, line: 70, baseType: !558, size: 32, offset: 96)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !559, line: 15, size: 32, elements: !560)
!559 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !558, file: !559, line: 20, baseType: !307, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !543, file: !544, line: 72, baseType: !172, size: 128, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !536, file: !26, line: 302, baseType: !287, size: 32, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !536, file: !26, line: 303, baseType: !307, size: 32, offset: 800)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !536, file: !26, line: 304, baseType: !383, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !536, file: !26, line: 305, baseType: !567, size: 64, offset: 896)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !26, line: 68, size: 64, elements: !568)
!568 = !{!569, !581}
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !26, line: 69, baseType: !570, size: 32)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !26, line: 69, size: 32, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !570, file: !26, line: 70, baseType: !196, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !570, file: !26, line: 71, baseType: !206, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !570, file: !26, line: 72, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !576, line: 24, baseType: !577)
!576 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 22, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !577, file: !576, line: 23, baseType: !580, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !576, line: 20, baseType: !202)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !26, line: 74, baseType: !25, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !536, file: !26, line: 306, baseType: !393, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !536, file: !26, line: 307, baseType: !167, size: 64, offset: 1024)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !536, file: !26, line: 308, baseType: !585, size: 576, offset: 1088)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !26, line: 205, size: 576, elements: !586)
!586 = !{!587, !589, !590, !591, !592, !593, !594, !595, !598}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !585, file: !26, line: 206, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !26, line: 66, baseType: !395)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !585, file: !26, line: 207, baseType: !588, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !585, file: !26, line: 208, baseType: !588, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !585, file: !26, line: 209, baseType: !588, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !585, file: !26, line: 210, baseType: !588, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !585, file: !26, line: 211, baseType: !588, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !585, file: !26, line: 212, baseType: !588, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !585, file: !26, line: 213, baseType: !596, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !597, line: 8, baseType: !554)
!597 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !585, file: !26, line: 214, baseType: !596, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !452, file: !21, line: 2085, baseType: !600, size: 64, offset: 1472)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!522, !383, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !605, line: 15, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!606 = !{!607, !609, !610, !611, !612}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !604, file: !605, line: 16, baseType: !608, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !173, line: 154, baseType: !13)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !604, file: !605, line: 19, baseType: !311, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !604, file: !605, line: 26, baseType: !167, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !604, file: !605, line: 33, baseType: !167, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !604, file: !605, line: 36, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !58, line: 33, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !452, file: !21, line: 2087, baseType: !600, size: 64, offset: 1536)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !452, file: !21, line: 2089, baseType: !417, size: 64, offset: 1600)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !384, file: !21, line: 1198, baseType: !618, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !26, line: 324, size: 704, elements: !621)
!621 = !{!622, !626, !630, !634, !635, !636, !637, !638, !643, !648, !652}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !620, file: !26, line: 325, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!311, !535}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !620, file: !26, line: 326, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!535, !383, !311}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !620, file: !26, line: 327, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !535}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !620, file: !26, line: 328, baseType: !623, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !620, file: !26, line: 329, baseType: !623, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !620, file: !26, line: 330, baseType: !623, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !620, file: !26, line: 331, baseType: !480, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !620, file: !26, line: 334, baseType: !639, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !189}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !620, file: !26, line: 335, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!311, !189, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !620, file: !26, line: 337, baseType: !649, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!311, !189, !642}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !620, file: !26, line: 339, baseType: !653, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!311, !383, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !384, file: !21, line: 1199, baseType: !658, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !26, line: 430, size: 704, elements: !661)
!661 = !{!662, !673, !674, !678, !679, !680, !695, !718, !722, !723, !746}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !660, file: !26, line: 431, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!311, !383, !311, !311, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !669, line: 8, size: 128, elements: !670)
!669 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !668, file: !669, line: 9, baseType: !377, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !668, file: !669, line: 10, baseType: !226, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !660, file: !26, line: 432, baseType: !480, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !660, file: !26, line: 433, baseType: !675, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!311, !383, !13}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !660, file: !26, line: 434, baseType: !675, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !660, file: !26, line: 435, baseType: !480, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !660, file: !26, line: 436, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!311, !383, !311, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !26, line: 417, size: 256, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !685, file: !26, line: 418, baseType: !311, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !685, file: !26, line: 419, baseType: !13, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !685, file: !26, line: 420, baseType: !13, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !685, file: !26, line: 422, baseType: !13, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !685, file: !26, line: 423, baseType: !13, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !685, file: !26, line: 424, baseType: !13, size: 32, offset: 160)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !685, file: !26, line: 425, baseType: !13, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !685, file: !26, line: 426, baseType: !13, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !660, file: !26, line: 437, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!311, !383, !567, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !26, line: 345, size: 960, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !700, file: !26, line: 346, baseType: !311, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !700, file: !26, line: 347, baseType: !264, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !700, file: !26, line: 348, baseType: !264, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !700, file: !26, line: 349, baseType: !264, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !700, file: !26, line: 350, baseType: !264, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !700, file: !26, line: 351, baseType: !264, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !700, file: !26, line: 352, baseType: !264, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !700, file: !26, line: 353, baseType: !553, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !700, file: !26, line: 355, baseType: !553, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !700, file: !26, line: 356, baseType: !311, size: 32, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !700, file: !26, line: 357, baseType: !311, size: 32, offset: 608)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !700, file: !26, line: 358, baseType: !264, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !700, file: !26, line: 359, baseType: !264, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !700, file: !26, line: 360, baseType: !264, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !700, file: !26, line: 361, baseType: !553, size: 64, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !700, file: !26, line: 362, baseType: !311, size: 32, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !660, file: !26, line: 438, baseType: !719, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!311, !383, !656, !699}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !660, file: !26, line: 440, baseType: !696, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !660, file: !26, line: 441, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!311, !383, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !26, line: 411, size: 1408, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !728, file: !26, line: 412, baseType: !13, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !728, file: !26, line: 413, baseType: !732, size: 1344, offset: 64)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 1344, elements: !443)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !26, line: 397, size: 448, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !745}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !26, line: 398, baseType: !13, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !733, file: !26, line: 399, baseType: !13, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !733, file: !26, line: 401, baseType: !13, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !733, file: !26, line: 402, baseType: !13, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !733, file: !26, line: 403, baseType: !13, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !733, file: !26, line: 404, baseType: !13, size: 32, offset: 160)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !733, file: !26, line: 405, baseType: !13, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !733, file: !26, line: 406, baseType: !266, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !733, file: !26, line: 407, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !173, line: 132, baseType: !264)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !733, file: !26, line: 408, baseType: !744, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !660, file: !26, line: 442, baseType: !675, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !384, file: !21, line: 1200, baseType: !748, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !21, line: 54, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !384, file: !21, line: 1201, baseType: !167, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !384, file: !21, line: 1202, baseType: !167, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !384, file: !21, line: 1203, baseType: !167, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !384, file: !21, line: 1204, baseType: !226, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !384, file: !21, line: 1205, baseType: !756, size: 320, offset: 896)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !757, line: 48, size: 320, elements: !758)
!757 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!758 = !{!759, !760, !761, !762, !763}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !757, line: 49, baseType: !547, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !756, file: !757, line: 55, baseType: !547, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !756, file: !757, line: 57, baseType: !558, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !756, file: !757, line: 59, baseType: !556, size: 32, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !756, file: !757, line: 60, baseType: !172, size: 128, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !384, file: !21, line: 1206, baseType: !311, size: 32, offset: 1216)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !384, file: !21, line: 1207, baseType: !307, size: 32, offset: 1248)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !384, file: !21, line: 1209, baseType: !182, size: 64, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !384, file: !21, line: 1211, baseType: !768, size: 64, offset: 1344)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !21, line: 1211, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !384, file: !21, line: 1223, baseType: !773, size: 64, offset: 1408)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !243, line: 34, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !773, file: !243, line: 35, baseType: !246, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !384, file: !21, line: 1224, baseType: !172, size: 128, offset: 1472)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !384, file: !21, line: 1225, baseType: !778, size: 64, offset: 1600)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !21, line: 1225, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !384, file: !21, line: 1226, baseType: !781, size: 64, offset: 1664)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !21, line: 1226, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !384, file: !21, line: 1227, baseType: !784, size: 64, offset: 1728)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !21, line: 50, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !384, file: !21, line: 1228, baseType: !787, size: 64, offset: 1792)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !21, line: 1228, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !384, file: !21, line: 1229, baseType: !430, size: 128, offset: 1856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !384, file: !21, line: 1230, baseType: !13, size: 32, offset: 1984)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !384, file: !21, line: 1231, baseType: !792, size: 2496, offset: 2048)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !26, line: 521, size: 2496, elements: !793)
!793 = !{!794, !795, !796, !798, !830}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !26, line: 522, baseType: !13, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !792, file: !26, line: 523, baseType: !756, size: 320, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !792, file: !26, line: 524, baseType: !797, size: 192, offset: 384)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !443)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !792, file: !26, line: 525, baseType: !799, size: 1728, offset: 576)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 1728, elements: !443)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !26, line: 222, size: 576, elements: !801)
!801 = !{!802, !822, !823, !824, !825, !826, !827, !828, !829}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !800, file: !26, line: 223, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !26, line: 445, size: 256, elements: !805)
!805 = !{!806, !807, !820, !821}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !804, file: !26, line: 446, baseType: !311, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !804, file: !26, line: 447, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !26, line: 312, size: 512, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !810, file: !26, line: 313, baseType: !480, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !810, file: !26, line: 314, baseType: !480, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !810, file: !26, line: 315, baseType: !480, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !810, file: !26, line: 316, baseType: !480, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !810, file: !26, line: 317, baseType: !623, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !810, file: !26, line: 318, baseType: !623, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !810, file: !26, line: 319, baseType: !623, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !810, file: !26, line: 320, baseType: !653, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !804, file: !26, line: 448, baseType: !421, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !804, file: !26, line: 449, baseType: !803, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !800, file: !26, line: 224, baseType: !311, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !800, file: !26, line: 226, baseType: !172, size: 128, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !800, file: !26, line: 227, baseType: !167, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !800, file: !26, line: 228, baseType: !13, size: 32, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !800, file: !26, line: 229, baseType: !13, size: 32, offset: 352)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !800, file: !26, line: 230, baseType: !588, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !800, file: !26, line: 231, baseType: !588, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !800, file: !26, line: 232, baseType: !182, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !792, file: !26, line: 526, baseType: !831, size: 192, offset: 2304)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 192, elements: !443)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !384, file: !21, line: 1233, baseType: !833, size: 2368, offset: 4544)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !21, line: 1184, size: 2368, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !833, file: !21, line: 1185, baseType: !140, size: 16)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !833, file: !21, line: 1186, baseType: !140, size: 16, offset: 16)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !833, file: !21, line: 1187, baseType: !838, size: 2304, offset: 64)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 2304, elements: !443)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !840, line: 12, size: 768, elements: !841)
!840 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!841 = !{!842, !864, !866, !3008, !3009}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !839, file: !840, line: 13, baseType: !843, size: 384)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !844, line: 17, size: 384, elements: !845)
!844 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!845 = !{!846, !847, !848, !855}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !843, file: !844, line: 18, baseType: !311, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !843, file: !844, line: 19, baseType: !311, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !843, file: !844, line: 20, baseType: !849, size: 192, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !850, line: 41, baseType: !851)
!850 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !850, line: 37, size: 192, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !851, file: !850, line: 38, baseType: !287, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !851, file: !850, line: 39, baseType: !172, size: 128, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !843, file: !844, line: 22, baseType: !856, size: 128, align: 64, offset: 256)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !173, line: 232, size: 128, align: 64, elements: !857)
!857 = !{!858, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !173, line: 233, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !856, file: !173, line: 234, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !859}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !839, file: !840, line: 14, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !839, file: !840, line: 15, baseType: !867, size: 64, offset: 448)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !868, line: 16, size: 64, elements: !869)
!868 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !867, file: !868, line: 17, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !511, line: 746, size: 58368, elements: !873)
!873 = !{!874, !882, !883, !884, !890, !891, !892, !893, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !971, !982, !1077, !1081, !1084, !1115, !1116, !1117, !1118, !1129, !1131, !1132, !1133, !1134, !1135, !1136, !1147, !1148, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1165, !1166, !1173, !1174, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2179, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2194, !2195, !2196, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2228, !2234, !2235, !2236, !2237, !2238, !2240, !2243, !2250, !2255, !2258, !2261, !2264, !2267, !2407, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2449, !2450, !2451, !2460, !2468, !2469, !2470, !2471, !2472, !2477, !2478, !2479, !2482, !2483, !2486, !2489, !2492, !2500, !2503, !2504, !2590, !2591, !2592, !2593, !2594, !2600, !2601, !2602, !2603, !2606, !2607, !2610, !2613, !2614, !2617, !2618, !2619, !2622, !2623, !2624, !2625, !2626, !2627, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2659, !2660, !2666, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2678, !2750, !2752, !2753, !2754, !2755, !2756, !2768, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2785, !2786, !2787}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !872, file: !511, line: 752, baseType: !875, size: 192)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !876, line: 56, size: 192, elements: !877)
!876 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !876, line: 57, baseType: !167, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !875, file: !876, line: 58, baseType: !167, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !875, file: !876, line: 59, baseType: !260, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !875, file: !876, line: 61, baseType: !260, size: 32, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !872, file: !511, line: 754, baseType: !13, size: 32, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !872, file: !511, line: 767, baseType: !182, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !872, file: !511, line: 768, baseType: !885, size: 32, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !886, line: 113, baseType: !887)
!886 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !886, line: 111, size: 32, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !887, file: !886, line: 112, baseType: !307, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !511, line: 770, baseType: !13, size: 32, offset: 352)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !872, file: !511, line: 771, baseType: !13, size: 32, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !872, file: !511, line: 774, baseType: !311, size: 32, offset: 416)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !872, file: !511, line: 775, baseType: !894, size: 128, offset: 448)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !895, line: 58, size: 128, elements: !896)
!895 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!896 = !{!897, !903, !908, !909}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !894, file: !895, line: 59, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !899, line: 60, size: 64, elements: !900)
!899 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !899, line: 61, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !895, line: 60, baseType: !904, size: 32, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !895, line: 60, size: 32, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !904, file: !895, line: 61, baseType: !13, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !904, file: !895, line: 62, baseType: !307, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !894, file: !895, line: 65, baseType: !323, size: 16, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !894, file: !895, line: 65, baseType: !323, size: 16, offset: 112)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !872, file: !511, line: 776, baseType: !13, size: 32, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !872, file: !511, line: 777, baseType: !167, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !872, file: !511, line: 778, baseType: !871, size: 64, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !872, file: !511, line: 787, baseType: !311, size: 32, offset: 768)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !872, file: !511, line: 788, baseType: !311, size: 32, offset: 800)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !872, file: !511, line: 790, baseType: !311, size: 32, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !872, file: !511, line: 792, baseType: !311, size: 32, offset: 864)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !872, file: !511, line: 793, baseType: !311, size: 32, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !872, file: !511, line: 794, baseType: !311, size: 32, offset: 928)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !872, file: !511, line: 795, baseType: !13, size: 32, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !872, file: !511, line: 797, baseType: !921, size: 2048, offset: 1024)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !511, line: 551, size: 2048, elements: !922)
!922 = !{!923, !928, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !950, !953, !954, !955}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !921, file: !511, line: 553, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !511, line: 411, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !924, file: !511, line: 412, baseType: !167, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !924, file: !511, line: 413, baseType: !260, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !921, file: !511, line: 554, baseType: !929, size: 192, align: 64, offset: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !930, line: 5, size: 192, align: 64, elements: !931)
!930 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!931 = !{!932, !933, !935}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !929, file: !930, line: 6, baseType: !167, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !929, file: !930, line: 7, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !929, file: !930, line: 8, baseType: !934, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !921, file: !511, line: 555, baseType: !264, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !921, file: !511, line: 556, baseType: !264, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !921, file: !511, line: 558, baseType: !172, size: 128, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !921, file: !511, line: 559, baseType: !13, size: 32, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !921, file: !511, line: 561, baseType: !264, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !921, file: !511, line: 562, baseType: !264, size: 64, offset: 704)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !921, file: !511, line: 563, baseType: !264, size: 64, offset: 768)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !921, file: !511, line: 564, baseType: !264, size: 64, offset: 832)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !921, file: !511, line: 565, baseType: !553, size: 64, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !921, file: !511, line: 566, baseType: !264, size: 64, offset: 960)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !921, file: !511, line: 568, baseType: !264, size: 64, offset: 1024)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !921, file: !511, line: 571, baseType: !311, size: 32, offset: 1088)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !921, file: !511, line: 572, baseType: !949, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !921, file: !511, line: 574, baseType: !951, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !511, line: 49, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !921, file: !511, line: 576, baseType: !951, size: 64, offset: 1280)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !921, file: !511, line: 578, baseType: !167, size: 64, offset: 1344)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !921, file: !511, line: 588, baseType: !956, size: 512, align: 512, offset: 1536)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !511, line: 497, size: 512, align: 512, elements: !957)
!957 = !{!958, !959, !960, !961, !962, !963, !964, !965, !966}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !956, file: !511, line: 498, baseType: !264, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !956, file: !511, line: 499, baseType: !264, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !956, file: !511, line: 500, baseType: !264, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !956, file: !511, line: 501, baseType: !260, size: 32, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !956, file: !511, line: 502, baseType: !260, size: 32, offset: 224)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !956, file: !511, line: 503, baseType: !167, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !956, file: !511, line: 504, baseType: !167, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !956, file: !511, line: 505, baseType: !167, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !956, file: !511, line: 506, baseType: !967, size: 64, align: 64, offset: 448)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !511, line: 445, size: 64, align: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !967, file: !511, line: 446, baseType: !13, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !967, file: !511, line: 447, baseType: !13, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !872, file: !511, line: 798, baseType: !972, size: 384, offset: 3072)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !511, line: 592, size: 384, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !972, file: !511, line: 593, baseType: !172, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !972, file: !511, line: 594, baseType: !167, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !972, file: !511, line: 595, baseType: !167, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !972, file: !511, line: 596, baseType: !13, size: 32, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !972, file: !511, line: 597, baseType: !140, size: 16, offset: 288)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !972, file: !511, line: 598, baseType: !140, size: 16, offset: 304)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !972, file: !511, line: 600, baseType: !981, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !872, file: !511, line: 799, baseType: !983, size: 1792, offset: 3456)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !511, line: 610, size: 1792, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !1074, !1075}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !983, file: !511, line: 611, baseType: !929, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !983, file: !511, line: 618, baseType: !264, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !983, file: !511, line: 619, baseType: !264, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !983, file: !511, line: 620, baseType: !264, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !983, file: !511, line: 621, baseType: !264, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !983, file: !511, line: 622, baseType: !264, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !983, file: !511, line: 629, baseType: !553, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !983, file: !511, line: 630, baseType: !264, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !511, line: 631, baseType: !13, size: 32, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !983, file: !511, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !983, file: !511, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !983, file: !511, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !983, file: !511, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !983, file: !511, line: 662, baseType: !999, size: 512, offset: 704)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1000)
!1000 = !{!1001, !1009, !1010, !1015, !1070, !1071, !1072, !1073}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !999, file: !32, line: 119, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1003, line: 9, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1002, file: !1003, line: 10, baseType: !929, size: 192, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1002, file: !1003, line: 11, baseType: !1007, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1008, line: 29, baseType: !553)
!1008 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !999, file: !32, line: 120, baseType: !1007, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !999, file: !32, line: 121, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!31, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !999, file: !32, line: 122, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1018)
!1018 = !{!1019, !1044, !1045, !1048, !1053, !1054, !1065, !1069}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1017, file: !32, line: 160, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 215, size: 4608, align: 512, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !32, line: 216, baseType: !556, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1021, file: !32, line: 217, baseType: !13, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1021, file: !32, line: 218, baseType: !13, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1021, file: !32, line: 219, baseType: !13, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1021, file: !32, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1021, file: !32, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1021, file: !32, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1021, file: !32, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1021, file: !32, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1021, file: !32, line: 226, baseType: !13, size: 32, offset: 160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1021, file: !32, line: 227, baseType: !140, size: 16, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1021, file: !32, line: 228, baseType: !140, size: 16, offset: 208)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1021, file: !32, line: 229, baseType: !13, size: 32, offset: 224)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1021, file: !32, line: 235, baseType: !1007, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1021, file: !32, line: 236, baseType: !1014, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1021, file: !32, line: 237, baseType: !1007, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1021, file: !32, line: 238, baseType: !1014, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1021, file: !32, line: 239, baseType: !1041, size: 4096, align: 512, offset: 512)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 4096, align: 512, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 8)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1017, file: !32, line: 161, baseType: !13, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1017, file: !32, line: 162, baseType: !1046, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !173, line: 32, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !203, line: 96, baseType: !311)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1017, file: !32, line: 163, baseType: !1049, size: 32, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !233, line: 274, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !233, line: 274, size: 32, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1050, file: !233, line: 274, baseType: !237, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1017, file: !32, line: 164, baseType: !1014, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1017, file: !32, line: 165, baseType: !1055, size: 128, offset: 256)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1003, line: 14, size: 128, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1055, file: !1003, line: 15, baseType: !1058, size: 128)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !930, line: 26, size: 128, elements: !1059)
!1059 = !{!1060, !1064}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1058, file: !930, line: 27, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !930, line: 12, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1061, file: !930, line: 13, baseType: !934, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1058, file: !930, line: 28, baseType: !934, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1017, file: !32, line: 166, baseType: !1066, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1007}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1017, file: !32, line: 167, baseType: !1007, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !999, file: !32, line: 123, baseType: !316, size: 8, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !999, file: !32, line: 124, baseType: !316, size: 8, offset: 456)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !999, file: !32, line: 125, baseType: !316, size: 8, offset: 464)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !999, file: !32, line: 126, baseType: !316, size: 8, offset: 472)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !983, file: !511, line: 671, baseType: !999, size: 512, offset: 1216)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !983, file: !511, line: 679, baseType: !1076, size: 64, offset: 1728)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !872, file: !511, line: 800, baseType: !1078, size: 64, offset: 5248)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !511, line: 800, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !872, file: !511, line: 809, baseType: !1082, size: 64, offset: 5312)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !511, line: 70, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !872, file: !511, line: 825, baseType: !1085, size: 2048, align: 512, offset: 5632)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !511, line: 509, size: 2048, align: 512, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1085, file: !511, line: 511, baseType: !264, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1085, file: !511, line: 512, baseType: !264, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1085, file: !511, line: 513, baseType: !264, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1085, file: !511, line: 514, baseType: !264, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1085, file: !511, line: 515, baseType: !264, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1085, file: !511, line: 516, baseType: !264, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1085, file: !511, line: 518, baseType: !264, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1085, file: !511, line: 519, baseType: !264, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1085, file: !511, line: 520, baseType: !553, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1085, file: !511, line: 522, baseType: !264, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1085, file: !511, line: 523, baseType: !264, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1085, file: !511, line: 524, baseType: !553, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1085, file: !511, line: 526, baseType: !553, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1085, file: !511, line: 527, baseType: !264, size: 64, offset: 832)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1085, file: !511, line: 529, baseType: !264, size: 64, offset: 896)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1085, file: !511, line: 530, baseType: !264, size: 64, offset: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1085, file: !511, line: 531, baseType: !264, size: 64, offset: 1024)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1085, file: !511, line: 532, baseType: !264, size: 64, offset: 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1085, file: !511, line: 533, baseType: !264, size: 64, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1085, file: !511, line: 535, baseType: !264, size: 64, offset: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1085, file: !511, line: 536, baseType: !264, size: 64, offset: 1280)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1085, file: !511, line: 537, baseType: !264, size: 64, offset: 1344)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1085, file: !511, line: 538, baseType: !264, size: 64, offset: 1408)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1085, file: !511, line: 539, baseType: !264, size: 64, offset: 1472)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1085, file: !511, line: 540, baseType: !264, size: 64, offset: 1536)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1085, file: !511, line: 541, baseType: !264, size: 64, offset: 1600)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1085, file: !511, line: 542, baseType: !264, size: 64, offset: 1664)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1085, file: !511, line: 543, baseType: !264, size: 64, offset: 1728)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !872, file: !511, line: 833, baseType: !13, size: 32, offset: 7680)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !872, file: !511, line: 836, baseType: !13, size: 32, offset: 7712)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !872, file: !511, line: 837, baseType: !311, size: 32, offset: 7744)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !872, file: !511, line: 838, baseType: !1119, size: 64, offset: 7808)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1122, line: 19, baseType: !1123)
!1122 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1122, line: 19, size: 64, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1123, file: !1122, line: 19, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 1)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !872, file: !511, line: 839, baseType: !1130, size: 64, offset: 7872)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !872, file: !511, line: 840, baseType: !1121, size: 64, offset: 7936)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !872, file: !511, line: 841, baseType: !182, size: 64, offset: 8000)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !872, file: !511, line: 843, baseType: !140, size: 16, offset: 8064)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !872, file: !511, line: 845, baseType: !140, size: 16, offset: 8080)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !872, file: !511, line: 848, baseType: !311, size: 32, offset: 8096)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !872, file: !511, line: 849, baseType: !1137, size: 32, offset: 8128)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !511, line: 718, size: 32, elements: !1138)
!1138 = !{!1139, !1146}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1137, file: !511, line: 724, baseType: !1140, size: 32)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !511, line: 719, size: 32, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1140, file: !511, line: 720, baseType: !316, size: 8)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1140, file: !511, line: 721, baseType: !316, size: 8, offset: 8)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1140, file: !511, line: 722, baseType: !316, size: 8, offset: 16)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1140, file: !511, line: 723, baseType: !316, size: 8, offset: 24)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1137, file: !511, line: 725, baseType: !260, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !872, file: !511, line: 850, baseType: !172, size: 128, offset: 8192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !872, file: !511, line: 851, baseType: !1149, size: 64, offset: 8320)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !511, line: 60, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !872, file: !511, line: 855, baseType: !167, size: 64, offset: 8384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !872, file: !511, line: 856, baseType: !316, size: 8, offset: 8448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !872, file: !511, line: 857, baseType: !316, size: 8, offset: 8456)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !872, file: !511, line: 858, baseType: !311, size: 32, offset: 8480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !872, file: !511, line: 859, baseType: !172, size: 128, offset: 8512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !872, file: !511, line: 860, baseType: !311, size: 32, offset: 8640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !872, file: !511, line: 861, baseType: !172, size: 128, offset: 8704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !872, file: !511, line: 873, baseType: !1159, size: 256, offset: 8832)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !511, line: 376, size: 256, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1159, file: !511, line: 381, baseType: !167, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1159, file: !511, line: 384, baseType: !266, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1159, file: !511, line: 389, baseType: !266, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1159, file: !511, line: 392, baseType: !266, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !872, file: !511, line: 875, baseType: !172, size: 128, offset: 9088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !872, file: !511, line: 877, baseType: !1167, size: 320, offset: 9216)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1168, line: 86, size: 320, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1167, file: !1168, line: 87, baseType: !311, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1167, file: !1168, line: 88, baseType: !172, size: 128, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1167, file: !1168, line: 89, baseType: !172, size: 128, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !872, file: !511, line: 878, baseType: !929, size: 192, align: 64, offset: 9536)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !872, file: !511, line: 881, baseType: !1175, size: 64, offset: 9728)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !58, line: 733, size: 10240, elements: !1177)
!1177 = !{!1178, !2098}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !58, line: 734, baseType: !1179, size: 10240)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !58, line: 734, size: 10240, elements: !1180)
!1180 = !{!1181, !1185, !1198, !1962, !1963, !1964, !1965, !1966, !1967, !1974, !1975, !1976, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2015, !2017, !2020, !2067, !2068, !2069, !2072, !2073, !2074, !2077, !2078, !2079, !2085, !2086}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !58, line: 739, baseType: !1182, size: 512, align: 512)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !58, line: 739, size: 512, align: 512, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1182, file: !58, line: 747, baseType: !307, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1179, file: !58, line: 750, baseType: !1186, size: 128, offset: 512)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1187, line: 218, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1188 = !{!1189, !1196, !1197}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1187, line: 219, baseType: !1190, size: 32)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 219, size: 32, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1190, file: !1187, line: 220, baseType: !287, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1190, file: !1187, line: 221, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1187, line: 197, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1187, line: 197, elements: !438)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1186, file: !1187, line: 223, baseType: !13, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1186, file: !1187, line: 224, baseType: !182, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1179, file: !58, line: 752, baseType: !1199, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!167, !1202, !167, !167, !167, !167}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !21, line: 994, size: 1856, align: 64, elements: !1204)
!1204 = !{!1205, !1211, !1212, !1214, !1215, !1216, !1217, !1218, !1270, !1465, !1474, !1475, !1476, !1952, !1953, !1954, !1955, !1957, !1958, !1961}
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !21, line: 995, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !21, line: 995, size: 128, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1206, file: !21, line: 996, baseType: !898, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1206, file: !21, line: 997, baseType: !856, size: 128, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1206, file: !21, line: 998, baseType: !13, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1203, file: !21, line: 1005, baseType: !287, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1203, file: !21, line: 1006, baseType: !1213, size: 32, offset: 160)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !173, line: 156, baseType: !13)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1203, file: !21, line: 1007, baseType: !547, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1203, file: !21, line: 1008, baseType: !543, size: 256, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1203, file: !21, line: 1009, baseType: !393, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1203, file: !21, line: 1010, baseType: !13, size: 32, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1203, file: !21, line: 1011, baseType: !1219, size: 256, offset: 640)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !21, line: 948, size: 256, elements: !1220)
!1220 = !{!1221, !1242, !1266, !1267, !1268, !1269}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1219, file: !21, line: 949, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1223, line: 34, baseType: !1224)
!1223 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 25, size: 64, elements: !1225)
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1224, file: !1223, line: 26, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1228, line: 27, baseType: !1229)
!1228 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1228, line: 13, size: 64, elements: !1230)
!1230 = !{!1231, !1241}
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1228, line: 14, baseType: !1232, size: 32)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1228, line: 14, size: 32, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1232, file: !1228, line: 15, baseType: !307, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1228, line: 16, baseType: !1236, size: 32)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !1228, line: 16, size: 32, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1236, file: !1228, line: 18, baseType: !316, size: 8)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1236, file: !1228, line: 19, baseType: !1240, size: 24, offset: 8)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 24, elements: !443)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1229, file: !1228, line: 26, baseType: !299, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1219, file: !21, line: 950, baseType: !1243, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1253, !1254, !1255, !1256}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1244, file: !12, line: 61, baseType: !885, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1244, file: !12, line: 62, baseType: !13, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1244, file: !12, line: 63, baseType: !287, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1244, file: !12, line: 65, baseType: !1250, size: 256, offset: 128)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 4)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1244, file: !12, line: 66, baseType: !426, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1244, file: !12, line: 68, baseType: !849, size: 192, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1244, file: !12, line: 69, baseType: !856, size: 128, align: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1244, file: !12, line: 70, baseType: !1257, offset: 768)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, elements: !1264)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1258, file: !12, line: 55, baseType: !311, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1258, file: !12, line: 56, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!1264 = !{!1265}
!1265 = !DISubrange(count: -1)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1219, file: !21, line: 951, baseType: !11, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1219, file: !21, line: 952, baseType: !196, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1219, file: !21, line: 952, baseType: !196, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1219, file: !21, line: 953, baseType: !311, size: 32, offset: 224)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1203, file: !21, line: 1012, baseType: !1271, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1274, line: 110, size: 1472, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1292, !1293, !1294, !1295, !1296, !1297, !1410, !1411, !1412, !1413, !1414, !1445, !1448, !1452, !1460}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1273, file: !1274, line: 111, baseType: !547, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1273, file: !1274, line: 112, baseType: !196, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1273, file: !1274, line: 113, baseType: !206, size: 32, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1273, file: !1274, line: 114, baseType: !196, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1273, file: !1274, line: 115, baseType: !206, size: 32, offset: 160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1273, file: !1274, line: 116, baseType: !196, size: 32, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1273, file: !1274, line: 117, baseType: !206, size: 32, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1273, file: !1274, line: 118, baseType: !196, size: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1273, file: !1274, line: 119, baseType: !206, size: 32, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1273, file: !1274, line: 120, baseType: !13, size: 32, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1273, file: !1274, line: 121, baseType: !1287, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1288, line: 24, baseType: !1289)
!1288 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 24, size: 64, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1289, file: !1288, line: 24, baseType: !264, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1273, file: !1274, line: 122, baseType: !1287, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1273, file: !1274, line: 123, baseType: !1287, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1273, file: !1274, line: 124, baseType: !1287, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1273, file: !1274, line: 125, baseType: !1287, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1273, file: !1274, line: 127, baseType: !133, size: 8, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1273, file: !1274, line: 129, baseType: !1298, size: 64, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1300, line: 195, size: 1728, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1301 = !{!1302, !1303, !1308, !1313, !1314, !1317, !1318, !1323, !1324, !1325, !1326, !1329, !1330, !1331, !1333, !1334, !1374, !1395}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1299, file: !1300, line: 196, baseType: !885, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1299, file: !1300, line: 197, baseType: !1304, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1300, line: 28, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !173, line: 104, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !311)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 198, baseType: !1309, size: 192, offset: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 198, size: 192, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1309, file: !1300, line: 199, baseType: !172, size: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1309, file: !1300, line: 200, baseType: !929, size: 192, align: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1299, file: !1300, line: 205, baseType: !756, size: 320, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1299, file: !1300, line: 206, baseType: !1315, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1300, line: 206, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1299, file: !1300, line: 207, baseType: !182, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 208, baseType: !1319, size: 64, offset: 704)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 208, size: 64, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1319, file: !1300, line: 209, baseType: !596, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1319, file: !1300, line: 210, baseType: !596, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1299, file: !1300, line: 212, baseType: !596, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1299, file: !1300, line: 213, baseType: !196, size: 32, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1299, file: !1300, line: 214, baseType: !206, size: 32, offset: 864)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1299, file: !1300, line: 215, baseType: !1327, size: 32, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1300, line: 31, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !173, line: 110, baseType: !260)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1299, file: !1300, line: 216, baseType: !140, size: 16, offset: 928)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1299, file: !1300, line: 217, baseType: !140, size: 16, offset: 944)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1299, file: !1300, line: 221, baseType: !1332, size: 16, offset: 960)
!1332 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 228, baseType: !167, size: 64, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 245, baseType: !1335, size: 320, offset: 1088)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 245, size: 320, elements: !1336)
!1336 = !{!1337, !1366}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1335, file: !1300, line: 246, baseType: !1338, size: 320)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1300, line: 114, size: 320, elements: !1339)
!1339 = !{!1340, !1341, !1353, !1356, !1365}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1338, file: !1300, line: 116, baseType: !167, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !1300, line: 117, baseType: !1342, size: 64, offset: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1338, file: !1300, line: 117, size: 64, elements: !1343)
!1343 = !{!1344, !1352}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1300, line: 118, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1300, line: 118, size: 64, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1345, file: !1300, line: 120, baseType: !323, size: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1345, file: !1300, line: 121, baseType: !1349, size: 48, offset: 16)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 6)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1342, file: !1300, line: 127, baseType: !167, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1338, file: !1300, line: 129, baseType: !1354, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1300, line: 102, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1338, file: !1300, line: 130, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1300, line: 108, size: 192, elements: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1358, file: !1300, line: 109, baseType: !856, size: 128, align: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1358, file: !1300, line: 110, baseType: !885, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1358, file: !1300, line: 111, baseType: !1363, size: 8, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !173, line: 35, baseType: !1364)
!1364 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1338, file: !1300, line: 131, baseType: !347, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1300, line: 247, baseType: !1367, size: 320)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !1300, line: 247, size: 320, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1367, file: !1300, line: 248, baseType: !167, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1367, file: !1300, line: 249, baseType: !167, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !1300, line: 250, baseType: !1354, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1367, file: !1300, line: 251, baseType: !1357, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1367, file: !1300, line: 252, baseType: !372, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1300, line: 260, baseType: !1375, size: 256, offset: 1408)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1300, line: 260, size: 256, elements: !1376)
!1376 = !{!1377, !1383}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1375, file: !1300, line: 261, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1300, line: 134, size: 256, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1378, file: !1300, line: 135, baseType: !182, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1378, file: !1300, line: 136, baseType: !1382, size: 256)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !1251)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1300, line: 262, baseType: !1384, size: 256)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !1300, line: 262, size: 256, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1384, file: !1300, line: 264, baseType: !172, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1384, file: !1300, line: 265, baseType: !1388, size: 128, offset: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1389, line: 22, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1390 = !{!1391, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1388, file: !1389, line: 23, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1389, line: 23, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1388, file: !1389, line: 24, baseType: !167, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1299, file: !1300, line: 280, baseType: !1396, size: 64, offset: 1664)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1300, line: 176, size: 192, elements: !1398)
!1398 = !{!1399, !1408, !1409}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1397, file: !1300, line: 177, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1300, line: 171, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!311, !1298, !1404, !1406, !1298}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1397, file: !1300, line: 178, baseType: !1298, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1397, file: !1300, line: 179, baseType: !1354, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1273, file: !1274, line: 130, baseType: !1298, size: 64, offset: 832)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1273, file: !1274, line: 131, baseType: !1298, size: 64, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1273, file: !1274, line: 132, baseType: !1298, size: 64, offset: 960)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1273, file: !1274, line: 135, baseType: !182, size: 64, offset: 1024)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1273, file: !1274, line: 137, baseType: !1415, size: 64, offset: 1088)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1417, line: 14, size: 1088, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1418 = !{!1419, !1420, !1429, !1430, !1431, !1432, !1433, !1434}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1416, file: !1417, line: 15, baseType: !885, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1416, file: !1417, line: 17, baseType: !1421, size: 320, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1422, line: 22, size: 320, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 23, baseType: !556, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 24, baseType: !553, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1421, file: !1422, line: 26, baseType: !172, size: 128, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1421, file: !1422, line: 28, baseType: !1428, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1416, file: !1417, line: 19, baseType: !167, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1416, file: !1417, line: 20, baseType: !547, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1416, file: !1417, line: 23, baseType: !430, size: 128, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1416, file: !1417, line: 24, baseType: !196, size: 32, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1416, file: !1417, line: 29, baseType: !547, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1416, file: !1417, line: 36, baseType: !1435, size: 320, offset: 768)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1436, line: 15, size: 320, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1436, line: 16, baseType: !556, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1435, file: !1436, line: 18, baseType: !311, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1435, file: !1436, line: 19, baseType: !311, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1435, file: !1436, line: 20, baseType: !311, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1435, file: !1436, line: 21, baseType: !311, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1435, file: !1436, line: 22, baseType: !167, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 23, baseType: !167, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1273, file: !1274, line: 138, baseType: !1446, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !58, line: 901, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1273, file: !1274, line: 139, baseType: !1449, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1451, line: 16, flags: DIFlagFwdDecl)
!1451 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1273, file: !1274, line: 140, baseType: !1453, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1274, line: 25, size: 64, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1454, file: !1274, line: 26, baseType: !307, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1454, file: !1274, line: 27, baseType: !311, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1454, file: !1274, line: 28, baseType: !1459, offset: 64)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !1264)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 142, baseType: !1461, size: 128, offset: 1344)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 142, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1461, file: !1274, line: 143, baseType: !311, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1461, file: !1274, line: 144, baseType: !856, size: 128, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1203, file: !21, line: 1013, baseType: !1466, size: 256, offset: 960)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !21, line: 970, size: 256, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1466, file: !21, line: 971, baseType: !167, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1466, file: !21, line: 972, baseType: !13, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1466, file: !21, line: 973, baseType: !13, size: 32, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1466, file: !21, line: 974, baseType: !13, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1466, file: !21, line: 975, baseType: !13, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1466, file: !21, line: 976, baseType: !393, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1203, file: !21, line: 1014, baseType: !668, size: 128, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1203, file: !21, line: 1015, baseType: !189, size: 64, offset: 1344)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1203, file: !21, line: 1016, baseType: !1477, size: 64, offset: 1408)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !21, line: 1914, size: 2112, elements: !1480)
!1480 = !{!1481, !1482, !1486, !1491, !1495, !1540, !1541, !1547, !1560, !1568, !1572, !1573, !1874, !1875, !1879, !1884, !1885, !1889, !1893, !1899, !1900, !1904, !1905, !1911, !1915, !1919, !1925, !1929, !1933, !1937, !1941, !1942, !1948}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1479, file: !21, line: 1915, baseType: !421, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1479, file: !21, line: 1916, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!393, !1202, !393, !311}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1479, file: !21, line: 1917, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!519, !1202, !372, !523, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1479, file: !21, line: 1918, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!519, !1202, !347, !523, !1490}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1479, file: !21, line: 1919, baseType: !1496, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!519, !1499, !1538}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !21, line: 373, size: 384, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1508, !1509, !1510, !1511}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1500, file: !21, line: 374, baseType: !1202, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1500, file: !21, line: 375, baseType: !393, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1500, file: !21, line: 376, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1499, !522}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1500, file: !21, line: 377, baseType: !182, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1500, file: !21, line: 378, baseType: !311, size: 32, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1500, file: !21, line: 379, baseType: !323, size: 16, offset: 288)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !21, line: 380, baseType: !1512, size: 64, offset: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1500, file: !21, line: 380, size: 64, elements: !1513)
!1513 = !{!1514, !1534}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1512, file: !21, line: 386, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1517, line: 998, size: 448, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1516, file: !1517, line: 999, baseType: !157, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1516, file: !1517, line: 1000, baseType: !311, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1516, file: !1517, line: 1001, baseType: !1522, size: 320, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !850, line: 14, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !850, line: 30, size: 320, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !850, line: 31, baseType: !13, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1523, file: !850, line: 32, baseType: !182, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1523, file: !850, line: 33, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !850, line: 16, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!311, !1532, !13, !311, !182}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1523, file: !850, line: 34, baseType: !172, size: 128, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1512, file: !21, line: 395, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!519, !182}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !21, line: 69, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1479, file: !21, line: 1920, baseType: !1496, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1479, file: !21, line: 1921, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!311, !1499, !1545, !13}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !21, line: 53, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1479, file: !21, line: 1923, baseType: !1548, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!311, !1202, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !21, line: 1858, size: 128, elements: !1553)
!1553 = !{!1554, !1559}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1552, file: !21, line: 1859, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !21, line: 1855, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1363, !1551, !347, !311, !393, !264, !13}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1552, file: !21, line: 1860, baseType: !393, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1479, file: !21, line: 1924, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1564, !1202, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1565, line: 59, baseType: !13)
!1565 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !21, line: 61, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1479, file: !21, line: 1925, baseType: !1569, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!522, !1202, !13, !167}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1479, file: !21, line: 1926, baseType: !1569, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1479, file: !21, line: 1927, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!311, !1202, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !58, line: 625, size: 1344, elements: !1579)
!1579 = !{!1580, !1589, !1590, !1598, !1605, !1606, !1611, !1612, !1617, !1618, !1621, !1867, !1868, !1869, !1870, !1871, !1872}
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !58, line: 628, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !58, line: 628, size: 128, elements: !1582)
!1582 = !{!1583, !1588}
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !58, line: 629, baseType: !1584, size: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !58, line: 629, size: 128, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1584, file: !58, line: 631, baseType: !167, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1584, file: !58, line: 632, baseType: !167, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1581, file: !58, line: 635, baseType: !856, size: 128, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1578, file: !58, line: 639, baseType: !1175, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1578, file: !58, line: 640, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1592, line: 297, baseType: !1593)
!1592 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1592, line: 297, size: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1593, file: !1592, line: 297, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1597, line: 19, baseType: !167)
!1597 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !58, line: 646, baseType: !1599, size: 64, offset: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !58, line: 646, size: 64, elements: !1600)
!1600 = !{!1601, !1604}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1599, file: !58, line: 647, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !58, line: 542, baseType: !167)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1599, file: !58, line: 648, baseType: !1603, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1578, file: !58, line: 666, baseType: !311, size: 32, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1578, file: !58, line: 667, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !58, line: 579, size: 320, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1608, file: !58, line: 580, baseType: !756, size: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1578, file: !58, line: 670, baseType: !1363, size: 8, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1578, file: !58, line: 681, baseType: !1613, size: 256, offset: 512)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !58, line: 678, size: 256, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1613, file: !58, line: 679, baseType: !929, size: 192, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1613, file: !58, line: 680, baseType: !167, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1578, file: !58, line: 689, baseType: !172, size: 128, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1578, file: !58, line: 691, baseType: !1619, size: 64, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !58, line: 691, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1578, file: !58, line: 694, baseType: !1622, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1625, line: 563, size: 1024, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1626 = !{!1627, !1631, !1632, !1636, !1640, !1644, !1831, !1835, !1839, !1843, !1844, !1845, !1849, !1853, !1859, !1863}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1624, file: !1625, line: 564, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1577}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1624, file: !1625, line: 569, baseType: !1628, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1624, file: !1625, line: 571, baseType: !1633, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!311, !1577, !167}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1624, file: !1625, line: 572, baseType: !1637, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!311, !1577}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1624, file: !1625, line: 578, baseType: !1641, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!311, !1577, !167, !167, !167}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1624, file: !1625, line: 580, baseType: !1645, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !58, line: 1184, baseType: !13)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1625, line: 512, size: 896, elements: !1651)
!1651 = !{!1652, !1660, !1661, !1668, !1675, !1685, !1824, !1825, !1827, !1829}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1625, line: 513, baseType: !1653, size: 320)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1625, line: 513, size: 320, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1653, file: !1625, line: 514, baseType: !1577, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1653, file: !1625, line: 515, baseType: !608, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1653, file: !1625, line: 516, baseType: !167, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1653, file: !1625, line: 517, baseType: !167, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1653, file: !1625, line: 518, baseType: !167, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !1625, line: 520, baseType: !57, size: 32, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1650, file: !1625, line: 522, baseType: !1662, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1597, line: 22, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 22, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1664, file: !1597, line: 22, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1597, line: 15, baseType: !167)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1650, file: !1625, line: 524, baseType: !1669, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1592, line: 372, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1592, line: 372, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1671, file: !1592, line: 372, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1597, line: 16, baseType: !167)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1625, line: 527, baseType: !1676, size: 64, offset: 512)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1625, line: 527, size: 64, elements: !1677)
!1677 = !{!1678, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1676, file: !1625, line: 528, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1597, line: 21, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 21, size: 64, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1680, file: !1597, line: 21, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1597, line: 14, baseType: !167)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1676, file: !1625, line: 529, baseType: !1663, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1650, file: !1625, line: 534, baseType: !1686, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !58, line: 74, size: 512, align: 128, elements: !1688)
!1688 = !{!1689, !1690, !1818, !1823}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1687, file: !58, line: 75, baseType: !167, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !58, line: 83, baseType: !1691, size: 320, offset: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !58, line: 83, size: 320, elements: !1692)
!1692 = !{!1693, !1714, !1728, !1732, !1817}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !58, line: 84, baseType: !1694, size: 320)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !58, line: 84, size: 320, elements: !1695)
!1695 = !{!1696, !1707, !1708, !1713}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !58, line: 90, baseType: !1697, size: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !58, line: 90, size: 128, elements: !1698)
!1698 = !{!1699, !1700, !1705, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1697, file: !58, line: 91, baseType: !172, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !58, line: 94, baseType: !1701, size: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !58, line: 94, size: 128, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1701, file: !58, line: 96, baseType: !182, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1701, file: !58, line: 98, baseType: !13, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1697, file: !58, line: 102, baseType: !172, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1697, file: !58, line: 103, baseType: !172, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1694, file: !58, line: 106, baseType: !185, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !58, line: 107, baseType: !1709, size: 64, offset: 192)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !58, line: 107, size: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1709, file: !58, line: 108, baseType: !167, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1709, file: !58, line: 109, baseType: !167, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1694, file: !58, line: 117, baseType: !167, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !58, line: 119, baseType: !1715, size: 320)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !58, line: 119, size: 320, elements: !1716)
!1716 = !{!1717, !1718, !1721, !1722, !1723}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1715, file: !58, line: 124, baseType: !167, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1715, file: !58, line: 125, baseType: !1719, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !58, line: 125, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1715, file: !58, line: 126, baseType: !167, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1715, file: !58, line: 127, baseType: !167, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !58, line: 128, baseType: !1724, size: 64, offset: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !58, line: 128, size: 64, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1724, file: !58, line: 133, baseType: !167, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1724, file: !58, line: 138, baseType: !547, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !58, line: 141, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !58, line: 141, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1729, file: !58, line: 142, baseType: !167, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !58, line: 144, baseType: !1733, size: 128)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !58, line: 144, size: 128, elements: !1734)
!1734 = !{!1735, !1816}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1733, file: !58, line: 146, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !50, line: 126, size: 1216, elements: !1738)
!1738 = !{!1739, !1749, !1770, !1781, !1782, !1783, !1784, !1798, !1799, !1800}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1737, file: !50, line: 127, baseType: !1740, size: 384)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !50, line: 21, size: 384, elements: !1741)
!1741 = !{!1742, !1743, !1745, !1746, !1747, !1748}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1740, file: !50, line: 22, baseType: !167, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1740, file: !50, line: 23, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1740, file: !50, line: 24, baseType: !1744, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1740, file: !50, line: 25, baseType: !167, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1740, file: !50, line: 26, baseType: !167, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1740, file: !50, line: 27, baseType: !167, size: 64, offset: 320)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1737, file: !50, line: 128, baseType: !1750, size: 128, offset: 384)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1751, line: 105, size: 128, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1750, file: !1751, line: 110, baseType: !167, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1750, file: !1751, line: 118, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1751, line: 95, size: 448, elements: !1757)
!1757 = !{!1758, !1759, !1765, !1766, !1767, !1768, !1769}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1756, file: !1751, line: 96, baseType: !547, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1756, file: !1751, line: 97, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1751, line: 60, baseType: !1762)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1756, file: !1751, line: 98, baseType: !1760, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1756, file: !1751, line: 99, baseType: !1363, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1756, file: !1751, line: 100, baseType: !1363, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1756, file: !1751, line: 101, baseType: !856, size: 128, align: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1756, file: !1751, line: 102, baseType: !1764, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1737, file: !50, line: 129, baseType: !1771, size: 256, offset: 512)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1772, line: 26, size: 256, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1771, file: !1772, line: 27, baseType: !13, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1771, file: !1772, line: 28, baseType: !1776, size: 192, offset: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1777, line: 43, size: 192, elements: !1778)
!1777 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !1777, line: 44, baseType: !556, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1776, file: !1777, line: 45, baseType: !172, size: 128, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1737, file: !50, line: 130, baseType: !49, size: 32, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !50, line: 131, baseType: !13, size: 32, offset: 800)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1737, file: !50, line: 132, baseType: !167, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1737, file: !50, line: 133, baseType: !1785, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !50, line: 77, size: 192, elements: !1788)
!1788 = !{!1789, !1793, !1794}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1787, file: !50, line: 83, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1686}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1787, file: !50, line: 89, baseType: !1645, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1787, file: !50, line: 100, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!311, !1736, !167, !167, !311}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1737, file: !50, line: 134, baseType: !182, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1737, file: !50, line: 135, baseType: !311, size: 32, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !50, line: 136, baseType: !1801, size: 128, offset: 1088)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !50, line: 136, size: 128, elements: !1802)
!1802 = !{!1803, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1801, file: !50, line: 137, baseType: !1804, size: 128)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1805, line: 6, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1804, file: !1805, line: 7, baseType: !264, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1804, file: !1805, line: 8, baseType: !264, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !50, line: 138, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !50, line: 138, elements: !1811)
!1811 = !{!1812, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1810, file: !50, line: 138, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !50, line: 138, elements: !438)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1810, file: !50, line: 138, baseType: !1815)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, elements: !1264)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1733, file: !58, line: 147, baseType: !182, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1691, file: !58, line: 161, baseType: !856, size: 128, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !58, line: 164, baseType: !1819, size: 32, offset: 384)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !58, line: 164, size: 32, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1819, file: !58, line: 169, baseType: !307, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1819, file: !58, line: 177, baseType: !13, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1687, file: !58, line: 181, baseType: !307, size: 32, offset: 416)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1650, file: !1625, line: 535, baseType: !1686, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1650, file: !1625, line: 541, baseType: !1826, size: 64, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1650, file: !1625, line: 545, baseType: !1828, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1650, file: !1625, line: 549, baseType: !1830, size: 64, offset: 832)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1592, line: 520, baseType: !1686)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1624, file: !1625, line: 581, baseType: !1832, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1648, !1649, !13}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1624, file: !1625, line: 582, baseType: !1836, size: 64, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1648, !1649, !167, !167}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1624, file: !1625, line: 584, baseType: !1840, size: 64, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!167, !1577}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1624, file: !1625, line: 588, baseType: !1645, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1624, file: !1625, line: 591, baseType: !1645, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1624, file: !1625, line: 597, baseType: !1846, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!311, !1577, !167, !182, !311, !311}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1624, file: !1625, line: 603, baseType: !1850, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!347, !1577}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1624, file: !1625, line: 613, baseType: !1854, size: 64, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!311, !1577, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !58, line: 717, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1624, file: !1625, line: 625, baseType: !1860, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1857, !1577, !167}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1624, file: !1625, line: 633, baseType: !1864, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!1686, !1577, !167}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1578, file: !58, line: 697, baseType: !167, size: 64, offset: 1024)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1578, file: !58, line: 699, baseType: !1202, size: 64, offset: 1088)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1578, file: !58, line: 700, baseType: !182, size: 64, offset: 1152)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1578, file: !58, line: 711, baseType: !547, size: 64, offset: 1216)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1578, file: !58, line: 717, baseType: !1857, size: 64, offset: 1280)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1578, file: !58, line: 722, baseType: !1873, offset: 1344)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !58, line: 570, elements: !438)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1479, file: !21, line: 1928, baseType: !167, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1479, file: !21, line: 1929, baseType: !1876, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!311, !189, !1202}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1479, file: !21, line: 1930, baseType: !1880, size: 64, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!311, !1202, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !21, line: 1061, baseType: !182)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1479, file: !21, line: 1931, baseType: !1876, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1479, file: !21, line: 1932, baseType: !1886, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!311, !1202, !393, !393, !311}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1479, file: !21, line: 1933, baseType: !1890, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!311, !311, !1202, !311}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !21, line: 1934, baseType: !1894, size: 64, offset: 1152)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!311, !1202, !311, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !21, line: 1063, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1479, file: !21, line: 1935, baseType: !1199, size: 64, offset: 1216)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1479, file: !21, line: 1936, baseType: !1901, size: 64, offset: 1280)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!311, !311}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1479, file: !21, line: 1937, baseType: !1894, size: 64, offset: 1344)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1479, file: !21, line: 1938, baseType: !1906, size: 64, offset: 1408)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!519, !1909, !1202, !1490, !523, !13}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !511, line: 59, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1479, file: !21, line: 1939, baseType: !1912, size: 64, offset: 1472)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!519, !1202, !1490, !1909, !523, !13}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1479, file: !21, line: 1940, baseType: !1916, size: 64, offset: 1536)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1202}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1479, file: !21, line: 1941, baseType: !1920, size: 64, offset: 1600)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!311, !1202, !311, !1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1479, file: !21, line: 1942, baseType: !1926, size: 64, offset: 1664)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!522, !1202, !311, !393, !393}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1479, file: !21, line: 1944, baseType: !1930, size: 64, offset: 1728)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !509, !1202}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1479, file: !21, line: 1948, baseType: !1934, size: 64, offset: 1792)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!519, !1202, !393, !1202, !393, !523, !13}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1479, file: !21, line: 1950, baseType: !1938, size: 64, offset: 1856)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!393, !1202, !393, !1202, !393, !393, !13}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1479, file: !21, line: 1953, baseType: !1886, size: 64, offset: 1920)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1479, file: !21, line: 1954, baseType: !1943, size: 64, offset: 1984)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!311, !1946, !13}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !21, line: 1911, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1479, file: !21, line: 1955, baseType: !1949, size: 64, offset: 2048)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!311, !1946, !1545, !13}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1203, file: !21, line: 1018, baseType: !264, size: 64, offset: 1472)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1203, file: !21, line: 1020, baseType: !182, size: 64, offset: 1536)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1203, file: !21, line: 1023, baseType: !182, size: 64, offset: 1600)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1203, file: !21, line: 1027, baseType: !1956, size: 64, offset: 1664)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1203, file: !21, line: 1029, baseType: !185, size: 64, offset: 1728)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1203, file: !21, line: 1030, baseType: !1959, size: 32, offset: 1792)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1960, line: 8, baseType: !260)
!1960 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1203, file: !21, line: 1031, baseType: !1959, size: 32, offset: 1824)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1179, file: !58, line: 756, baseType: !167, size: 64, offset: 704)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1179, file: !58, line: 757, baseType: !167, size: 64, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1179, file: !58, line: 760, baseType: !167, size: 64, offset: 832)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1179, file: !58, line: 761, baseType: !167, size: 64, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1179, file: !58, line: 763, baseType: !167, size: 64, offset: 960)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1179, file: !58, line: 764, baseType: !1968, size: 64, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1592, line: 299, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1592, line: 299, size: 64, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1970, file: !1592, line: 299, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1597, line: 18, baseType: !167)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1179, file: !58, line: 773, baseType: !307, size: 32, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1179, file: !58, line: 785, baseType: !307, size: 32, offset: 1120)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1179, file: !58, line: 795, baseType: !1977, size: 64, offset: 1152)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !58, line: 726, size: 128, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1978, file: !58, line: 727, baseType: !264, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1978, file: !58, line: 728, baseType: !311, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1179, file: !58, line: 801, baseType: !167, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1179, file: !58, line: 804, baseType: !547, size: 64, offset: 1280)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1179, file: !58, line: 806, baseType: !311, size: 32, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1179, file: !58, line: 808, baseType: !287, size: 32, offset: 1376)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1179, file: !58, line: 823, baseType: !756, size: 320, offset: 1408)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1179, file: !58, line: 825, baseType: !172, size: 128, offset: 1728)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1179, file: !58, line: 845, baseType: !311, size: 32, offset: 1856)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1179, file: !58, line: 849, baseType: !167, size: 64, offset: 1920)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1179, file: !58, line: 850, baseType: !167, size: 64, offset: 1984)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1179, file: !58, line: 852, baseType: !167, size: 64, offset: 2048)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1179, file: !58, line: 853, baseType: !167, size: 64, offset: 2112)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1179, file: !58, line: 854, baseType: !549, size: 64, offset: 2176)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1179, file: !58, line: 855, baseType: !167, size: 64, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1179, file: !58, line: 856, baseType: !167, size: 64, offset: 2304)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1179, file: !58, line: 857, baseType: !167, size: 64, offset: 2368)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1179, file: !58, line: 858, baseType: !167, size: 64, offset: 2432)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1179, file: !58, line: 865, baseType: !237, size: 32, offset: 2496)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1179, file: !58, line: 867, baseType: !287, size: 32, offset: 2528)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1179, file: !58, line: 869, baseType: !167, size: 64, offset: 2560)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1179, file: !58, line: 869, baseType: !167, size: 64, offset: 2624)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1179, file: !58, line: 869, baseType: !167, size: 64, offset: 2688)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1179, file: !58, line: 869, baseType: !167, size: 64, offset: 2752)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1179, file: !58, line: 870, baseType: !167, size: 64, offset: 2816)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1179, file: !58, line: 870, baseType: !167, size: 64, offset: 2880)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1179, file: !58, line: 870, baseType: !167, size: 64, offset: 2944)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1179, file: !58, line: 871, baseType: !167, size: 64, offset: 3008)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1179, file: !58, line: 871, baseType: !167, size: 64, offset: 3072)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1179, file: !58, line: 871, baseType: !167, size: 64, offset: 3136)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1179, file: !58, line: 871, baseType: !167, size: 64, offset: 3200)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1179, file: !58, line: 873, baseType: !2012, size: 3328, offset: 3264)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 3328, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 52)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1179, file: !58, line: 875, baseType: !2016, size: 1280, offset: 6592)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 1280, elements: !1251)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1179, file: !58, line: 877, baseType: !2018, size: 64, offset: 7872)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !58, line: 877, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1179, file: !58, line: 880, baseType: !2021, size: 1088, offset: 7936)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2022, line: 72, baseType: !2023)
!2022 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2022, line: 23, size: 1088, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034, !2035, !2062, !2063, !2064}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2023, file: !2022, line: 28, baseType: !264, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2023, file: !2022, line: 38, baseType: !549, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2023, file: !2022, line: 40, baseType: !167, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2023, file: !2022, line: 43, baseType: !756, size: 320, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2023, file: !2022, line: 44, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2022, line: 44, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !2022, line: 48, baseType: !167, size: 64, offset: 576)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2023, file: !2022, line: 59, baseType: !543, size: 256, offset: 640)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2023, file: !2022, line: 60, baseType: !182, size: 64, offset: 896)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2023, file: !2022, line: 61, baseType: !2036, size: 64, offset: 960)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2039, line: 13, size: 1216, elements: !2040)
!2039 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2038, file: !2039, line: 14, baseType: !182, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2038, file: !2039, line: 15, baseType: !167, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2038, file: !2039, line: 17, baseType: !167, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2038, file: !2039, line: 17, baseType: !167, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2038, file: !2039, line: 18, baseType: !167, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2038, file: !2039, line: 18, baseType: !167, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2038, file: !2039, line: 19, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2038, file: !2039, line: 21, baseType: !522, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2038, file: !2039, line: 23, baseType: !522, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2038, file: !2039, line: 24, baseType: !522, size: 64, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2038, file: !2039, line: 25, baseType: !522, size: 64, offset: 640)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2038, file: !2039, line: 26, baseType: !522, size: 64, offset: 704)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2038, file: !2039, line: 27, baseType: !522, size: 64, offset: 768)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2038, file: !2039, line: 28, baseType: !522, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2038, file: !2039, line: 29, baseType: !522, size: 64, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2038, file: !2039, line: 30, baseType: !522, size: 64, offset: 960)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2038, file: !2039, line: 31, baseType: !522, size: 64, offset: 1024)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2038, file: !2039, line: 32, baseType: !522, size: 64, offset: 1088)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2038, file: !2039, line: 33, baseType: !522, size: 64, offset: 1152)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2023, file: !2022, line: 63, baseType: !307, size: 32, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2023, file: !2022, line: 69, baseType: !323, size: 16, offset: 1056)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2023, file: !2022, line: 70, baseType: !2065, size: 16, offset: 1072)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !1332)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !58, line: 882, baseType: !167, size: 64, offset: 9024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1179, file: !58, line: 885, baseType: !287, size: 32, offset: 9088)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1179, file: !58, line: 886, baseType: !2070, size: 64, offset: 9152)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !58, line: 732, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1179, file: !58, line: 901, baseType: !1446, size: 64, offset: 9216)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1179, file: !58, line: 904, baseType: !1202, size: 64, offset: 9280)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1179, file: !58, line: 906, baseType: !2075, size: 64, offset: 9344)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !58, line: 906, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1179, file: !58, line: 930, baseType: !307, size: 32, offset: 9408)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1179, file: !58, line: 933, baseType: !307, size: 32, offset: 9440)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1179, file: !58, line: 935, baseType: !2080, size: 64, offset: 9472)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2081)
!2081 = !{!2082}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2080, file: !74, line: 104, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1179, file: !58, line: 940, baseType: !547, size: 64, offset: 9536)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1179, file: !58, line: 942, baseType: !2087, size: 256, offset: 9600)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2088, line: 98, size: 256, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2087, file: !2088, line: 99, baseType: !547, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2087, file: !2088, line: 100, baseType: !172, size: 128, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2087, file: !2088, line: 101, baseType: !2093, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2088, line: 21, baseType: !2094)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1176, file: !58, line: 986, baseType: !2099, offset: 10240)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !1264)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !872, file: !511, line: 882, baseType: !1175, size: 64, offset: 9792)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !872, file: !511, line: 884, baseType: !311, size: 32, offset: 9856)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !872, file: !511, line: 885, baseType: !311, size: 32, offset: 9888)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !872, file: !511, line: 886, baseType: !311, size: 32, offset: 9920)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !872, file: !511, line: 888, baseType: !311, size: 32, offset: 9952)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !872, file: !511, line: 890, baseType: !167, size: 64, offset: 9984)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !872, file: !511, line: 893, baseType: !13, size: 32, offset: 10048)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !872, file: !511, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !872, file: !511, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !872, file: !511, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !872, file: !511, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !872, file: !511, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !872, file: !511, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !872, file: !511, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !872, file: !511, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !872, file: !511, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !872, file: !511, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !872, file: !511, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !872, file: !511, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !872, file: !511, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !872, file: !511, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !872, file: !511, line: 969, baseType: !167, size: 64, offset: 10176)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !872, file: !511, line: 971, baseType: !2123, size: 448, offset: 10240)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 448, elements: !2124)
!2124 = !{!2125, !2126, !2131}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2123, file: !37, line: 26, baseType: !167, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2123, file: !37, line: 27, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!522, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !37, line: 28, baseType: !2132, size: 320, offset: 128)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !37, line: 28, size: 320, elements: !2133)
!2133 = !{!2134, !2144, !2169}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2132, file: !37, line: 37, baseType: !2135, size: 320)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !37, line: 30, size: 320, elements: !2136)
!2136 = !{!2137, !2139, !2140, !2141, !2142, !2143}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2135, file: !37, line: 31, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2135, file: !37, line: 32, baseType: !260, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !37, line: 33, baseType: !260, size: 32, offset: 96)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2135, file: !37, line: 34, baseType: !260, size: 32, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2135, file: !37, line: 35, baseType: !264, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2135, file: !37, line: 36, baseType: !2138, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2132, file: !37, line: 47, baseType: !2145, size: 192)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !37, line: 39, size: 192, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2168}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2145, file: !37, line: 40, baseType: !1046, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2145, file: !37, line: 41, baseType: !36, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2145, file: !37, line: 42, baseType: !2150, size: 64, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2145, file: !37, line: 42, size: 64, elements: !2151)
!2151 = !{!2152, !2160}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2150, file: !37, line: 43, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2155, line: 7, size: 128, elements: !2156)
!2155 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2156 = !{!2157, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2154, file: !2155, line: 8, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !203, line: 93, baseType: !395)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2154, file: !2155, line: 9, baseType: !395, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2150, file: !37, line: 44, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2163, line: 7, size: 64, elements: !2164)
!2163 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2164 = !{!2165, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2162, file: !2163, line: 8, baseType: !2166, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2163, line: 5, baseType: !1306)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2162, file: !2163, line: 9, baseType: !1306, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2145, file: !37, line: 46, baseType: !264, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2132, file: !37, line: 55, baseType: !2170, size: 256)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !37, line: 49, size: 256, elements: !2171)
!2171 = !{!2172, !2175, !2176, !2177, !2178}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2170, file: !37, line: 50, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2170, file: !37, line: 51, baseType: !311, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2170, file: !37, line: 52, baseType: !311, size: 32, offset: 96)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2170, file: !37, line: 53, baseType: !167, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2170, file: !37, line: 54, baseType: !167, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !872, file: !511, line: 973, baseType: !2180, size: 32, offset: 10688)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !173, line: 27, baseType: !2181)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !203, line: 28, baseType: !311)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !872, file: !511, line: 974, baseType: !2180, size: 32, offset: 10720)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !872, file: !511, line: 978, baseType: !167, size: 64, offset: 10752)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !872, file: !511, line: 987, baseType: !871, size: 64, offset: 10816)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !872, file: !511, line: 990, baseType: !871, size: 64, offset: 10880)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !872, file: !511, line: 995, baseType: !172, size: 128, offset: 10944)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !872, file: !511, line: 996, baseType: !172, size: 128, offset: 11072)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !872, file: !511, line: 997, baseType: !871, size: 64, offset: 11200)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !872, file: !511, line: 1005, baseType: !172, size: 128, offset: 11264)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !872, file: !511, line: 1006, baseType: !172, size: 128, offset: 11392)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !872, file: !511, line: 1009, baseType: !1243, size: 64, offset: 11520)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !872, file: !511, line: 1010, baseType: !2193, size: 512, offset: 11584)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 512, elements: !1251)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !872, file: !511, line: 1011, baseType: !172, size: 128, offset: 12096)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !872, file: !511, line: 1012, baseType: !172, size: 128, offset: 12224)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !872, file: !511, line: 1014, baseType: !2197, size: 64, offset: 12352)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !872, file: !511, line: 1017, baseType: !503, size: 64, offset: 12416)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !872, file: !511, line: 1020, baseType: !503, size: 64, offset: 12480)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !872, file: !511, line: 1023, baseType: !182, size: 64, offset: 12544)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !872, file: !511, line: 1025, baseType: !264, size: 64, offset: 12608)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !872, file: !511, line: 1026, baseType: !264, size: 64, offset: 12672)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !872, file: !511, line: 1031, baseType: !264, size: 64, offset: 12736)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !872, file: !511, line: 1032, baseType: !2205, size: 192, offset: 12800)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !511, line: 324, size: 192, elements: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2205, file: !511, line: 326, baseType: !264, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2205, file: !511, line: 327, baseType: !264, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2205, file: !511, line: 328, baseType: !556, size: 32, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !872, file: !511, line: 1041, baseType: !167, size: 64, offset: 12992)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !872, file: !511, line: 1042, baseType: !167, size: 64, offset: 13056)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !872, file: !511, line: 1045, baseType: !264, size: 64, offset: 13120)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !872, file: !511, line: 1048, baseType: !264, size: 64, offset: 13184)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !872, file: !511, line: 1051, baseType: !167, size: 64, offset: 13248)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !872, file: !511, line: 1052, baseType: !167, size: 64, offset: 13312)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !872, file: !511, line: 1055, baseType: !2217, size: 640, offset: 13376)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2218, line: 132, size: 640, elements: !2219)
!2218 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2219 = !{!2220, !2226, !2227}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2217, file: !2218, line: 133, baseType: !2221, size: 576)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2222, size: 576, elements: !443)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2218, line: 117, size: 192, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2222, file: !2218, line: 118, baseType: !264, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2222, file: !2218, line: 119, baseType: !1055, size: 128, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2217, file: !2218, line: 134, baseType: !13, size: 32, offset: 576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2217, file: !2218, line: 135, baseType: !13, size: 32, offset: 608)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !872, file: !511, line: 1058, baseType: !2229, size: 448, offset: 14016)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2218, line: 144, size: 448, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2229, file: !2218, line: 145, baseType: !856, size: 128, align: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2229, file: !2218, line: 146, baseType: !543, size: 256, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2229, file: !2218, line: 147, baseType: !13, size: 32, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !872, file: !511, line: 1064, baseType: !1271, size: 64, offset: 14464)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !872, file: !511, line: 1067, baseType: !1271, size: 64, offset: 14528)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !872, file: !511, line: 1070, baseType: !1271, size: 64, offset: 14592)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !872, file: !511, line: 1074, baseType: !1298, size: 64, offset: 14656)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !872, file: !511, line: 1084, baseType: !2239, size: 128, offset: 14720)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !134)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !872, file: !511, line: 1086, baseType: !2241, size: 64, offset: 14848)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !511, line: 55, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !872, file: !511, line: 1089, baseType: !2244, size: 64, offset: 14912)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2245, line: 12, size: 64, elements: !2246)
!2245 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2244, file: !2245, line: 13, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2245, line: 8, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !872, file: !511, line: 1090, baseType: !2251, size: 128, offset: 14976)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2252, line: 13, size: 128, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2251, file: !2252, line: 14, baseType: !172, size: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !872, file: !511, line: 1097, baseType: !2256, size: 64, offset: 15104)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !511, line: 50, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !872, file: !511, line: 1100, baseType: !2259, size: 64, offset: 15168)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !511, line: 1100, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !872, file: !511, line: 1103, baseType: !2262, size: 64, offset: 15232)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !511, line: 53, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !872, file: !511, line: 1107, baseType: !2265, size: 64, offset: 15296)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !511, line: 56, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !872, file: !511, line: 1110, baseType: !2268, size: 64, offset: 15360)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2270, line: 93, size: 8768, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2321, !2330, !2331, !2333, !2334, !2335, !2338, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2376, !2377, !2384, !2394, !2397, !2398, !2401, !2402, !2403, !2404, !2405, !2406}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2269, file: !2270, line: 94, baseType: !885, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2269, file: !2270, line: 95, baseType: !307, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2269, file: !2270, line: 96, baseType: !311, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2269, file: !2270, line: 97, baseType: !311, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2269, file: !2270, line: 98, baseType: !172, size: 128, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2269, file: !2270, line: 100, baseType: !849, size: 192, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2269, file: !2270, line: 103, baseType: !871, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2269, file: !2270, line: 106, baseType: !2280, size: 192, offset: 512)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1451, line: 32, size: 192, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2280, file: !1451, line: 33, baseType: !172, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2280, file: !1451, line: 34, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2285, line: 25, baseType: !2286)
!2285 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2285, line: 23, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2286, file: !2285, line: 24, baseType: !1126, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2269, file: !2270, line: 109, baseType: !426, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2269, file: !2270, line: 112, baseType: !311, size: 32, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2269, file: !2270, line: 114, baseType: !311, size: 32, offset: 800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2269, file: !2270, line: 115, baseType: !871, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2269, file: !2270, line: 118, baseType: !311, size: 32, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !2270, line: 119, baseType: !13, size: 32, offset: 928)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2269, file: !2270, line: 121, baseType: !2296, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2270, line: 80, size: 448, elements: !2298)
!2298 = !{!2299, !2300, !2306}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2297, file: !2270, line: 81, baseType: !307, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2297, file: !2270, line: 82, baseType: !2301, size: 128, offset: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2270, line: 75, size: 128, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2301, file: !2270, line: 76, baseType: !871, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2301, file: !2270, line: 77, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2297, file: !2270, line: 83, baseType: !1771, size: 256, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2269, file: !2270, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2269, file: !2270, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2269, file: !2270, line: 138, baseType: !13, size: 32, offset: 1056)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2269, file: !2270, line: 139, baseType: !172, size: 128, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2269, file: !2270, line: 142, baseType: !999, size: 512, offset: 1216)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2269, file: !2270, line: 143, baseType: !1007, size: 64, offset: 1728)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2269, file: !2270, line: 150, baseType: !2314, size: 256, offset: 1792)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, size: 256, elements: !2319)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2270, line: 38, size: 128, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2315, file: !2270, line: 39, baseType: !264, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2315, file: !2270, line: 40, baseType: !264, size: 64, offset: 64)
!2319 = !{!2320}
!2320 = !DISubrange(count: 2)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2269, file: !2270, line: 156, baseType: !2322, size: 192, offset: 2048)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2270, line: 66, size: 192, elements: !2323)
!2323 = !{!2324}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2322, file: !2270, line: 67, baseType: !2325, size: 192)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2270, line: 47, size: 192, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2325, file: !2270, line: 48, baseType: !549, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2325, file: !2270, line: 49, baseType: !549, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2325, file: !2270, line: 50, baseType: !549, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2269, file: !2270, line: 160, baseType: !2217, size: 640, offset: 2240)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2269, file: !2270, line: 163, baseType: !2332, size: 256, offset: 2880)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 256, elements: !1251)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2269, file: !2270, line: 169, baseType: !1243, size: 64, offset: 3136)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2269, file: !2270, line: 172, baseType: !311, size: 32, offset: 3200)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2269, file: !2270, line: 174, baseType: !2336, size: 64, offset: 3264)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2270, line: 174, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2269, file: !2270, line: 185, baseType: !2339, size: 64, offset: 3328)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !233, line: 860, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 853, size: 64, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2340, file: !233, line: 858, baseType: !232, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2340, file: !233, line: 859, baseType: !287, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2269, file: !2270, line: 186, baseType: !264, size: 64, offset: 3392)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2269, file: !2270, line: 186, baseType: !264, size: 64, offset: 3456)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2269, file: !2270, line: 186, baseType: !264, size: 64, offset: 3520)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2269, file: !2270, line: 186, baseType: !264, size: 64, offset: 3584)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2269, file: !2270, line: 187, baseType: !264, size: 64, offset: 3648)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2269, file: !2270, line: 188, baseType: !264, size: 64, offset: 3712)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2269, file: !2270, line: 189, baseType: !2205, size: 192, offset: 3776)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2269, file: !2270, line: 190, baseType: !167, size: 64, offset: 3968)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2269, file: !2270, line: 190, baseType: !167, size: 64, offset: 4032)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2269, file: !2270, line: 190, baseType: !167, size: 64, offset: 4096)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2269, file: !2270, line: 190, baseType: !167, size: 64, offset: 4160)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2269, file: !2270, line: 191, baseType: !167, size: 64, offset: 4224)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2269, file: !2270, line: 191, baseType: !167, size: 64, offset: 4288)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2269, file: !2270, line: 191, baseType: !167, size: 64, offset: 4352)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2269, file: !2270, line: 191, baseType: !167, size: 64, offset: 4416)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2269, file: !2270, line: 192, baseType: !167, size: 64, offset: 4480)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2269, file: !2270, line: 192, baseType: !167, size: 64, offset: 4544)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2269, file: !2270, line: 192, baseType: !167, size: 64, offset: 4608)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2269, file: !2270, line: 192, baseType: !167, size: 64, offset: 4672)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2269, file: !2270, line: 193, baseType: !167, size: 64, offset: 4736)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2269, file: !2270, line: 193, baseType: !167, size: 64, offset: 4800)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2269, file: !2270, line: 194, baseType: !2366, size: 448, offset: 4864)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2367, line: 12, size: 448, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2366, file: !2367, line: 15, baseType: !264, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2366, file: !2367, line: 17, baseType: !264, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2366, file: !2367, line: 19, baseType: !264, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2366, file: !2367, line: 21, baseType: !264, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2366, file: !2367, line: 29, baseType: !264, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2366, file: !2367, line: 35, baseType: !264, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2366, file: !2367, line: 44, baseType: !264, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2269, file: !2270, line: 202, baseType: !266, size: 64, offset: 5312)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2269, file: !2270, line: 213, baseType: !2378, size: 2048, offset: 5376)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, size: 2048, elements: !134)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2380, line: 43, size: 128, elements: !2381)
!2380 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2379, file: !2380, line: 44, baseType: !525, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2379, file: !2380, line: 45, baseType: !525, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2269, file: !2270, line: 216, baseType: !2385, size: 448, offset: 7424)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2270, line: 30, size: 448, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2385, file: !2270, line: 31, baseType: !311, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2385, file: !2270, line: 32, baseType: !522, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2385, file: !2270, line: 33, baseType: !167, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2385, file: !2270, line: 34, baseType: !264, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2385, file: !2270, line: 34, baseType: !264, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2385, file: !2270, line: 35, baseType: !167, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2385, file: !2270, line: 35, baseType: !167, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2269, file: !2270, line: 219, baseType: !2395, size: 64, offset: 7872)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2270, line: 219, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2269, file: !2270, line: 222, baseType: !13, size: 32, offset: 7936)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2269, file: !2270, line: 223, baseType: !2399, size: 64, offset: 8000)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2270, line: 223, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2269, file: !2270, line: 230, baseType: !1363, size: 8, offset: 8064)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2269, file: !2270, line: 231, baseType: !1332, size: 16, offset: 8080)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2269, file: !2270, line: 232, baseType: !1332, size: 16, offset: 8096)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2269, file: !2270, line: 234, baseType: !1175, size: 64, offset: 8128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2269, file: !2270, line: 237, baseType: !543, size: 256, offset: 8192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2269, file: !2270, line: 243, baseType: !756, size: 320, offset: 8448)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !872, file: !511, line: 1111, baseType: !2408, size: 64, offset: 15424)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2270, line: 20, size: 16640, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2409, file: !2270, line: 21, baseType: !287, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2409, file: !2270, line: 22, baseType: !885, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2409, file: !2270, line: 23, baseType: !849, size: 192, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2409, file: !2270, line: 24, baseType: !2415, size: 16384, offset: 256)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, size: 16384, elements: !2436)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1451, line: 51, size: 256, elements: !2417)
!2417 = !{!2418}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2416, file: !1451, line: 52, baseType: !2419, size: 256)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1451, line: 37, size: 256, elements: !2420)
!2420 = !{!2421, !2428, !2429, !2435}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2419, file: !1451, line: 39, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2423, line: 83, baseType: !2424)
!2423 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2423, line: 82, baseType: !2426)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !311}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2419, file: !1451, line: 40, baseType: !167, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2419, file: !1451, line: 46, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2423, line: 86, baseType: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2423, line: 85, baseType: !2433)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2419, file: !1451, line: 48, baseType: !2284, size: 64, offset: 192)
!2436 = !{!2437}
!2437 = !DISubrange(count: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !872, file: !511, line: 1112, baseType: !2284, size: 64, offset: 15488)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !872, file: !511, line: 1113, baseType: !2284, size: 64, offset: 15552)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !872, file: !511, line: 1115, baseType: !2284, size: 64, offset: 15616)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !872, file: !511, line: 1116, baseType: !2280, size: 192, offset: 15680)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !872, file: !511, line: 1117, baseType: !167, size: 64, offset: 15872)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !872, file: !511, line: 1118, baseType: !523, size: 64, offset: 15936)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !872, file: !511, line: 1119, baseType: !13, size: 32, offset: 16000)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !872, file: !511, line: 1121, baseType: !859, size: 64, offset: 16064)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !872, file: !511, line: 1125, baseType: !2447, size: 64, offset: 16128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !511, line: 43, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !872, file: !511, line: 1127, baseType: !196, size: 32, offset: 16192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !872, file: !511, line: 1128, baseType: !13, size: 32, offset: 16224)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !872, file: !511, line: 1130, baseType: !2452, size: 128, offset: 16256)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2453, line: 37, size: 128, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2452, file: !2453, line: 38, baseType: !311, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2452, file: !2453, line: 39, baseType: !307, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2452, file: !2453, line: 40, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2453, line: 24, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !872, file: !511, line: 1131, baseType: !2461, size: 256, offset: 16384)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2462, line: 12, size: 256, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2463 = !{!2464, !2465, !2466, !2467}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2461, file: !2462, line: 13, baseType: !372, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2461, file: !2462, line: 14, baseType: !167, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2461, file: !2462, line: 15, baseType: !167, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2461, file: !2462, line: 16, baseType: !1363, size: 8, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !872, file: !511, line: 1134, baseType: !264, size: 64, offset: 16640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !872, file: !511, line: 1135, baseType: !264, size: 64, offset: 16704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !872, file: !511, line: 1138, baseType: !287, size: 32, offset: 16768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !872, file: !511, line: 1141, baseType: !556, size: 32, offset: 16800)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !872, file: !511, line: 1143, baseType: !2473, size: 64, offset: 16832)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !511, line: 735, size: 64, elements: !2474)
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2473, file: !511, line: 736, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !872, file: !511, line: 1147, baseType: !1058, size: 128, offset: 16896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !872, file: !511, line: 1149, baseType: !871, size: 64, offset: 17024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !872, file: !511, line: 1151, baseType: !2480, size: 64, offset: 17088)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !511, line: 1151, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !872, file: !511, line: 1188, baseType: !182, size: 64, offset: 17152)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !872, file: !511, line: 1191, baseType: !2484, size: 64, offset: 17216)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !511, line: 44, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !872, file: !511, line: 1194, baseType: !2487, size: 64, offset: 17280)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !511, line: 45, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !872, file: !511, line: 1197, baseType: !2490, size: 64, offset: 17344)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !511, line: 61, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !872, file: !511, line: 1199, baseType: !2493, size: 64, offset: 17408)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2495, line: 99, size: 128, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2494, file: !2495, line: 100, baseType: !547, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2494, file: !2495, line: 101, baseType: !307, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2494, file: !2495, line: 103, baseType: !140, size: 16, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !872, file: !511, line: 1202, baseType: !2501, size: 64, offset: 17472)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !511, line: 48, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !872, file: !511, line: 1205, baseType: !167, size: 64, offset: 17536)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !872, file: !511, line: 1206, baseType: !2505, size: 64, offset: 17600)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1451, line: 14, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1451, line: 12, size: 384, elements: !2508)
!2508 = !{!2509}
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !1451, line: 13, baseType: !2510, size: 384)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !1451, line: 13, size: 384, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2510, file: !1451, line: 13, baseType: !311, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2510, file: !1451, line: 13, baseType: !311, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2510, file: !1451, line: 13, baseType: !311, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2510, file: !1451, line: 13, baseType: !2516, size: 256, offset: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2517, line: 37, size: 256, elements: !2518)
!2517 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2518 = !{!2519, !2524, !2537, !2543, !2552, !2579, !2584}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2516, file: !2517, line: 42, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 39, size: 64, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2520, file: !2517, line: 40, baseType: !2181, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2520, file: !2517, line: 41, baseType: !202, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2516, file: !2517, line: 50, baseType: !2525, size: 192)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 45, size: 192, elements: !2526)
!2526 = !{!2527, !2529, !2530, !2536}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2525, file: !2517, line: 46, baseType: !2528, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !203, line: 95, baseType: !311)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2525, file: !2517, line: 47, baseType: !311, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2525, file: !2517, line: 48, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2517, line: 11, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2517, line: 8, size: 64, elements: !2533)
!2533 = !{!2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2532, file: !2517, line: 9, baseType: !311, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2532, file: !2517, line: 10, baseType: !182, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2525, file: !2517, line: 49, baseType: !311, size: 32, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2516, file: !2517, line: 57, baseType: !2538, size: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 53, size: 128, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2538, file: !2517, line: 54, baseType: !2181, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2538, file: !2517, line: 55, baseType: !202, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2538, file: !2517, line: 56, baseType: !2531, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2516, file: !2517, line: 66, baseType: !2544, size: 256)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 60, size: 256, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2551}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2544, file: !2517, line: 61, baseType: !2181, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2544, file: !2517, line: 62, baseType: !202, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2544, file: !2517, line: 63, baseType: !311, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2544, file: !2517, line: 64, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !203, line: 94, baseType: !521)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2544, file: !2517, line: 65, baseType: !2550, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2516, file: !2517, line: 105, baseType: !2553, size: 256)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 69, size: 256, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2553, file: !2517, line: 70, baseType: !182, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !2517, line: 79, baseType: !2557, size: 192, offset: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !2517, line: 79, size: 192, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2568, !2573}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2557, file: !2517, line: 81, baseType: !311, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2557, file: !2517, line: 86, baseType: !1332, size: 16)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2557, file: !2517, line: 92, baseType: !2562, size: 192)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 88, size: 192, elements: !2563)
!2563 = !{!2564, !2566, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2562, file: !2517, line: 89, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1042)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2562, file: !2517, line: 90, baseType: !182, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2562, file: !2517, line: 91, baseType: !182, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2557, file: !2517, line: 97, baseType: !2569, size: 96)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 94, size: 96, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2569, file: !2517, line: 95, baseType: !2565, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2569, file: !2517, line: 96, baseType: !144, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2557, file: !2517, line: 103, baseType: !2574, size: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 99, size: 128, elements: !2575)
!2575 = !{!2576, !2577, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2574, file: !2517, line: 100, baseType: !167, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2574, file: !2517, line: 101, baseType: !144, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2574, file: !2517, line: 102, baseType: !144, size: 32, offset: 96)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2516, file: !2517, line: 111, baseType: !2580, size: 128)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 108, size: 128, elements: !2581)
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2580, file: !2517, line: 109, baseType: !522, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2580, file: !2517, line: 110, baseType: !311, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2516, file: !2517, line: 118, baseType: !2585, size: 128)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 114, size: 128, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2585, file: !2517, line: 115, baseType: !182, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2585, file: !2517, line: 116, baseType: !311, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2585, file: !2517, line: 117, baseType: !13, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !872, file: !511, line: 1208, baseType: !2366, size: 448, offset: 17664)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !872, file: !511, line: 1215, baseType: !264, size: 64, offset: 18112)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !872, file: !511, line: 1217, baseType: !264, size: 64, offset: 18176)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !872, file: !511, line: 1219, baseType: !264, size: 64, offset: 18240)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !872, file: !511, line: 1223, baseType: !2595, size: 64, offset: 18304)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2596, line: 99, baseType: !2597)
!2596 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2596, line: 99, size: 64, elements: !2598)
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2597, file: !2596, line: 99, baseType: !1126, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !872, file: !511, line: 1225, baseType: !232, size: 32, offset: 18368)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !872, file: !511, line: 1226, baseType: !311, size: 32, offset: 18400)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !872, file: !511, line: 1227, baseType: !311, size: 32, offset: 18432)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !872, file: !511, line: 1231, baseType: !2604, size: 64, offset: 18496)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !511, line: 1231, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !872, file: !511, line: 1233, baseType: !172, size: 128, offset: 18560)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !872, file: !511, line: 1240, baseType: !2608, size: 64, offset: 18688)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !511, line: 62, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !872, file: !511, line: 1242, baseType: !2611, size: 64, offset: 18752)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !511, line: 1242, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !872, file: !511, line: 1244, baseType: !172, size: 128, offset: 18816)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !872, file: !511, line: 1245, baseType: !2615, size: 64, offset: 18944)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !511, line: 51, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !872, file: !511, line: 1246, baseType: !543, size: 256, offset: 19008)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !872, file: !511, line: 1247, baseType: !13, size: 32, offset: 19264)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !872, file: !511, line: 1250, baseType: !2620, size: 64, offset: 19328)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !511, line: 57, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !872, file: !511, line: 1251, baseType: !543, size: 256, offset: 19392)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !872, file: !511, line: 1252, baseType: !172, size: 128, offset: 19648)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !872, file: !511, line: 1259, baseType: !1857, size: 64, offset: 19776)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !872, file: !511, line: 1260, baseType: !1332, size: 16, offset: 19840)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !872, file: !511, line: 1261, baseType: !1332, size: 16, offset: 19856)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !872, file: !511, line: 1314, baseType: !2628, size: 64, offset: 19904)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2630, line: 62, size: 256, align: 256, elements: !2631)
!2630 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2629, file: !2630, line: 75, baseType: !144, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2629, file: !2630, line: 90, baseType: !144, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2629, file: !2630, line: 112, baseType: !265, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !2630, line: 132, baseType: !144, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2629, file: !2630, line: 140, baseType: !144, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2629, file: !2630, line: 149, baseType: !144, size: 32, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2629, file: !2630, line: 154, baseType: !2639, offset: 224)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1264)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !872, file: !511, line: 1315, baseType: !260, size: 32, offset: 19968)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !872, file: !511, line: 1316, baseType: !260, size: 32, offset: 20000)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !872, file: !511, line: 1321, baseType: !167, size: 64, offset: 20032)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !872, file: !511, line: 1325, baseType: !311, size: 32, offset: 20096)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !872, file: !511, line: 1326, baseType: !311, size: 32, offset: 20128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !872, file: !511, line: 1327, baseType: !311, size: 32, offset: 20160)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !872, file: !511, line: 1328, baseType: !311, size: 32, offset: 20192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !872, file: !511, line: 1329, baseType: !856, size: 128, align: 64, offset: 20224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !872, file: !511, line: 1332, baseType: !2649, size: 128, offset: 20352)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2650, line: 51, size: 128, elements: !2651)
!2650 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2651 = !{!2652, !2657, !2658}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2649, file: !2650, line: 60, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2654, line: 7, size: 64, elements: !2655)
!2654 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2653, file: !2654, line: 12, baseType: !1123, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2649, file: !2650, line: 63, baseType: !1363, size: 8, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2649, file: !2650, line: 70, baseType: !1363, size: 8, offset: 72)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !872, file: !511, line: 1335, baseType: !1909, size: 64, offset: 20480)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !872, file: !511, line: 1337, baseType: !2661, size: 128, offset: 20544)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2650, line: 39, size: 128, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2661, file: !2650, line: 40, baseType: !1686, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2661, file: !2650, line: 42, baseType: !144, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2661, file: !2650, line: 43, baseType: !144, size: 32, offset: 96)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !872, file: !511, line: 1340, baseType: !2667, size: 64, offset: 20672)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !511, line: 69, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !872, file: !511, line: 1351, baseType: !311, size: 32, offset: 20736)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !872, file: !511, line: 1352, baseType: !311, size: 32, offset: 20768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !872, file: !511, line: 1354, baseType: !167, size: 64, offset: 20800)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !872, file: !511, line: 1364, baseType: !264, size: 64, offset: 20864)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !872, file: !511, line: 1365, baseType: !264, size: 64, offset: 20928)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !872, file: !511, line: 1412, baseType: !167, size: 64, offset: 20992)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !872, file: !511, line: 1453, baseType: !2676, size: 64, offset: 21056)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !511, line: 1453, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !872, file: !511, line: 1457, baseType: !2679, size: 64, offset: 21120)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !2681)
!2681 = !{!2682, !2683, !2702, !2705, !2706, !2739, !2749}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2680, file: !74, line: 62, baseType: !73, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !74, line: 64, baseType: !2684, size: 192, offset: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2680, file: !74, line: 64, size: 192, elements: !2685)
!2685 = !{!2686, !2697}
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !74, line: 65, baseType: !2687, size: 192)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2684, file: !74, line: 65, size: 192, elements: !2688)
!2688 = !{!2689, !2696}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2687, file: !74, line: 66, baseType: !2690, size: 128)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2691, line: 50, size: 128, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2690, file: !2691, line: 52, baseType: !167, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2690, file: !2691, line: 54, baseType: !13, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2690, file: !2691, line: 55, baseType: !13, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2687, file: !74, line: 67, baseType: !167, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !74, line: 70, baseType: !2698, size: 192)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2684, file: !74, line: 70, size: 192, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2698, file: !74, line: 71, baseType: !856, size: 128, align: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2698, file: !74, line: 72, baseType: !167, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2680, file: !74, line: 76, baseType: !2703, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2680, file: !74, line: 77, baseType: !167, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2680, file: !74, line: 79, baseType: !2707, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2691, line: 25, size: 256, elements: !2709)
!2709 = !{!2710, !2716, !2720}
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !2708, file: !2691, line: 26, baseType: !2711, size: 128)
!2711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2708, file: !2691, line: 26, size: 128, elements: !2712)
!2712 = !{!2713, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2711, file: !2691, line: 27, baseType: !2714, size: 128)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !134)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2711, file: !2691, line: 28, baseType: !2714, size: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2708, file: !2691, line: 31, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2691, line: 23, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2708, file: !2691, line: 33, baseType: !2721, size: 64, offset: 192)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2708, file: !2691, line: 33, size: 64, elements: !2722)
!2722 = !{!2723, !2729, !2734}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2721, file: !2691, line: 38, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2691, line: 34, size: 64, elements: !2725)
!2725 = !{!2726, !2727, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2724, file: !2691, line: 35, baseType: !1306, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2724, file: !2691, line: 36, baseType: !316, size: 8, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2724, file: !2691, line: 37, baseType: !316, size: 8, offset: 40)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2721, file: !2691, line: 42, baseType: !2730, size: 16)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2691, line: 39, size: 16, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2730, file: !2691, line: 40, baseType: !316, size: 8)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2730, file: !2691, line: 41, baseType: !316, size: 8, offset: 8)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2721, file: !2691, line: 46, baseType: !2735, size: 16)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2721, file: !2691, line: 43, size: 16, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2735, file: !2691, line: 44, baseType: !316, size: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2735, file: !2691, line: 45, baseType: !316, size: 8, offset: 8)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2680, file: !74, line: 81, baseType: !2740, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2741, file: !74, line: 86, baseType: !2703, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2741, file: !74, line: 87, baseType: !167, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2741, file: !74, line: 88, baseType: !167, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2741, file: !74, line: 89, baseType: !167, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2741, file: !74, line: 90, baseType: !1363, size: 8, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2741, file: !74, line: 92, baseType: !2740, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2680, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !872, file: !511, line: 1463, baseType: !2751, offset: 21184)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !511, line: 739, elements: !438)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !872, file: !511, line: 1470, baseType: !856, size: 128, align: 64, offset: 21184)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !872, file: !511, line: 1471, baseType: !885, size: 32, offset: 21312)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !872, file: !511, line: 1472, baseType: !311, size: 32, offset: 21344)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !872, file: !511, line: 1474, baseType: !871, size: 64, offset: 21376)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !872, file: !511, line: 1475, baseType: !2757, size: 320, offset: 21440)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2758, line: 11, size: 320, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2759 = !{!2760, !2761, !2762, !2767}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2757, file: !2758, line: 16, baseType: !430, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2757, file: !2758, line: 17, baseType: !167, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2757, file: !2758, line: 18, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !2758, line: 19, baseType: !260, size: 32, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !872, file: !511, line: 1478, baseType: !2769, size: 64, offset: 21760)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !511, line: 1478, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !872, file: !511, line: 1482, baseType: !885, size: 32, offset: 21824)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !872, file: !511, line: 1489, baseType: !182, size: 64, offset: 21888)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !872, file: !511, line: 1504, baseType: !182, size: 64, offset: 21952)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !872, file: !511, line: 1505, baseType: !265, size: 64, offset: 22016)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !872, file: !511, line: 1506, baseType: !264, size: 64, offset: 22080)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !872, file: !511, line: 1507, baseType: !265, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !872, file: !511, line: 1508, baseType: !265, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !872, file: !511, line: 1509, baseType: !265, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !872, file: !511, line: 1510, baseType: !856, size: 128, align: 64, offset: 22208)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !872, file: !511, line: 1511, baseType: !311, size: 32, offset: 22336)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !872, file: !511, line: 1515, baseType: !2782, size: 64, offset: 22400)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !899, line: 56, size: 64, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2782, file: !899, line: 57, baseType: !902, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !872, file: !511, line: 1518, baseType: !2782, size: 64, offset: 22464)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !872, file: !511, line: 1528, baseType: !856, size: 128, align: 64, offset: 22528)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !872, file: !511, line: 1552, baseType: !2788, size: 35328, offset: 23040)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2789, line: 430, size: 35328, elements: !2790)
!2789 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2790 = !{!2791, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2820, !2821, !2822, !2823, !2824, !2825, !2828, !2829, !2830, !2831}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2788, file: !2789, line: 432, baseType: !2792, size: 192)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2793, size: 192, elements: !443)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2794, line: 16, size: 64, elements: !2795)
!2794 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2793, file: !2794, line: 17, baseType: !323, size: 16)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2793, file: !2794, line: 18, baseType: !323, size: 16, offset: 16)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2793, file: !2794, line: 19, baseType: !323, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2793, file: !2794, line: 19, baseType: !323, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2793, file: !2794, line: 19, baseType: !323, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2793, file: !2794, line: 19, baseType: !323, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2793, file: !2794, line: 19, baseType: !323, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2793, file: !2794, line: 20, baseType: !323, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2793, file: !2794, line: 20, baseType: !323, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2793, file: !2794, line: 20, baseType: !323, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2793, file: !2794, line: 20, baseType: !323, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2793, file: !2794, line: 20, baseType: !323, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2793, file: !2794, line: 20, baseType: !323, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2788, file: !2789, line: 436, baseType: !167, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2788, file: !2789, line: 440, baseType: !140, size: 16, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2788, file: !2789, line: 441, baseType: !140, size: 16, offset: 272)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2788, file: !2789, line: 442, baseType: !140, size: 16, offset: 288)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2788, file: !2789, line: 443, baseType: !140, size: 16, offset: 304)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2788, file: !2789, line: 447, baseType: !167, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2788, file: !2789, line: 448, baseType: !167, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2788, file: !2789, line: 459, baseType: !2817, size: 256, offset: 448)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2818, size: 256, elements: !1251)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2789, line: 428, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2788, file: !2789, line: 461, baseType: !167, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2788, file: !2789, line: 463, baseType: !167, size: 64, offset: 768)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2788, file: !2789, line: 465, baseType: !167, size: 64, offset: 832)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2788, file: !2789, line: 466, baseType: !167, size: 64, offset: 896)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2788, file: !2789, line: 467, baseType: !167, size: 64, offset: 960)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2788, file: !2789, line: 473, baseType: !2826, size: 64, offset: 1024)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2789, line: 10, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2788, file: !2789, line: 480, baseType: !167, size: 64, offset: 1088)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2788, file: !2789, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2788, file: !2789, line: 491, baseType: !260, size: 32, offset: 1184)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2788, file: !2789, line: 501, baseType: !2832, size: 33792, offset: 1536)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2833, line: 448, size: 33792, elements: !2834)
!2833 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2834 = !{!2835, !2836, !2837, !2999, !3000, !3006, !3007}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2832, file: !2833, line: 461, baseType: !13, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2832, file: !2833, line: 468, baseType: !167, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2832, file: !2833, line: 476, baseType: !2838, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2833, line: 356, size: 33280, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2839, file: !2833, line: 358, baseType: !13, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2839, file: !2833, line: 361, baseType: !13, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2839, file: !2833, line: 364, baseType: !264, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2839, file: !2833, line: 367, baseType: !264, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2839, file: !2833, line: 370, baseType: !264, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2839, file: !2833, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2839, file: !2833, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2839, file: !2833, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2839, file: !2833, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2839, file: !2833, line: 397, baseType: !2851, size: 32768, offset: 512)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2833, line: 348, size: 32768, elements: !2852)
!2852 = !{!2853, !2868, !2905, !2982, !2995}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2851, file: !2833, line: 349, baseType: !2854, size: 896)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2833, line: 12, size: 896, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2867}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2854, file: !2833, line: 13, baseType: !260, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2854, file: !2833, line: 14, baseType: !260, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2854, file: !2833, line: 15, baseType: !260, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2854, file: !2833, line: 16, baseType: !260, size: 32, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2854, file: !2833, line: 17, baseType: !260, size: 32, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2854, file: !2833, line: 18, baseType: !260, size: 32, offset: 160)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2854, file: !2833, line: 19, baseType: !260, size: 32, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2854, file: !2833, line: 22, baseType: !2864, size: 640, offset: 224)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 640, elements: !2865)
!2865 = !{!2866}
!2866 = !DISubrange(count: 20)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2854, file: !2833, line: 25, baseType: !260, size: 32, offset: 864)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2851, file: !2833, line: 350, baseType: !2869, size: 4096, align: 128)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2833, line: 34, size: 4096, align: 128, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2890, !2891, !2892, !2894, !2896, !2900}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2869, file: !2833, line: 35, baseType: !323, size: 16)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2869, file: !2833, line: 36, baseType: !323, size: 16, offset: 16)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2869, file: !2833, line: 37, baseType: !323, size: 16, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2869, file: !2833, line: 38, baseType: !323, size: 16, offset: 48)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !2833, line: 39, baseType: !2876, size: 128, offset: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !2833, line: 39, size: 128, elements: !2877)
!2877 = !{!2878, !2883}
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !2833, line: 40, baseType: !2879, size: 128)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2833, line: 40, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2879, file: !2833, line: 41, baseType: !264, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2879, file: !2833, line: 42, baseType: !264, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !2833, line: 44, baseType: !2884, size: 128)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2833, line: 44, size: 128, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2884, file: !2833, line: 45, baseType: !260, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2884, file: !2833, line: 46, baseType: !260, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2884, file: !2833, line: 47, baseType: !260, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2884, file: !2833, line: 48, baseType: !260, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2869, file: !2833, line: 51, baseType: !260, size: 32, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2869, file: !2833, line: 52, baseType: !260, size: 32, offset: 224)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2869, file: !2833, line: 55, baseType: !2893, size: 1024, offset: 256)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !273)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2869, file: !2833, line: 58, baseType: !2895, size: 2048, offset: 1280)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !2436)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2869, file: !2833, line: 60, baseType: !2897, size: 384, offset: 3328)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !2898)
!2898 = !{!2899}
!2899 = !DISubrange(count: 12)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !2833, line: 62, baseType: !2901, size: 384, offset: 3712)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2869, file: !2833, line: 62, size: 384, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2901, file: !2833, line: 63, baseType: !2897, size: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2901, file: !2833, line: 64, baseType: !2897, size: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2851, file: !2833, line: 351, baseType: !2906, size: 1088)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2833, line: 79, size: 1088, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2981}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2906, file: !2833, line: 80, baseType: !260, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2906, file: !2833, line: 81, baseType: !260, size: 32, offset: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2906, file: !2833, line: 82, baseType: !260, size: 32, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2906, file: !2833, line: 83, baseType: !260, size: 32, offset: 96)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2906, file: !2833, line: 84, baseType: !260, size: 32, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2906, file: !2833, line: 85, baseType: !260, size: 32, offset: 160)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2906, file: !2833, line: 86, baseType: !260, size: 32, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2906, file: !2833, line: 88, baseType: !2864, size: 640, offset: 224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2906, file: !2833, line: 89, baseType: !316, size: 8, offset: 864)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2906, file: !2833, line: 90, baseType: !316, size: 8, offset: 872)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2906, file: !2833, line: 91, baseType: !316, size: 8, offset: 880)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2906, file: !2833, line: 92, baseType: !316, size: 8, offset: 888)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2906, file: !2833, line: 93, baseType: !316, size: 8, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2906, file: !2833, line: 94, baseType: !316, size: 8, offset: 904)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2906, file: !2833, line: 95, baseType: !2923, size: 64, offset: 960)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2925, line: 11, size: 128, elements: !2926)
!2925 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2926 = !{!2927, !2928}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2924, file: !2925, line: 12, baseType: !522, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2924, file: !2925, line: 13, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2931, line: 103, size: 1344, elements: !2932)
!2931 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2961, !2962, !2963}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2930, file: !2931, line: 109, baseType: !167, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2930, file: !2931, line: 110, baseType: !167, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2930, file: !2931, line: 111, baseType: !167, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2930, file: !2931, line: 112, baseType: !167, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2930, file: !2931, line: 113, baseType: !167, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2930, file: !2931, line: 114, baseType: !167, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2930, file: !2931, line: 117, baseType: !167, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2930, file: !2931, line: 118, baseType: !167, size: 64, offset: 448)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2930, file: !2931, line: 119, baseType: !167, size: 64, offset: 512)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2930, file: !2931, line: 120, baseType: !167, size: 64, offset: 576)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2930, file: !2931, line: 121, baseType: !167, size: 64, offset: 640)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2930, file: !2931, line: 122, baseType: !167, size: 64, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2930, file: !2931, line: 123, baseType: !167, size: 64, offset: 768)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2930, file: !2931, line: 124, baseType: !167, size: 64, offset: 832)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2930, file: !2931, line: 125, baseType: !167, size: 64, offset: 896)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2930, file: !2931, line: 139, baseType: !167, size: 64, offset: 960)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2930, file: !2931, line: 142, baseType: !167, size: 64, offset: 1024)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2931, line: 144, baseType: !2951, size: 64, offset: 1088)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2930, file: !2931, line: 144, size: 64, elements: !2952)
!2952 = !{!2953, !2954, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2951, file: !2931, line: 146, baseType: !323, size: 16)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2951, file: !2931, line: 148, baseType: !264, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2951, file: !2931, line: 150, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2931, line: 59, size: 64, elements: !2957)
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2956, file: !2931, line: 61, baseType: !264, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2956, file: !2931, line: 63, baseType: !264, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2956, file: !2931, line: 65, baseType: !264, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2930, file: !2931, line: 153, baseType: !167, size: 64, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2930, file: !2931, line: 154, baseType: !167, size: 64, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2931, line: 156, baseType: !2964, size: 64, offset: 1280)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2930, file: !2931, line: 156, size: 64, elements: !2965)
!2965 = !{!2966, !2967, !2968}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2964, file: !2931, line: 158, baseType: !323, size: 16)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2964, file: !2931, line: 160, baseType: !264, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2964, file: !2931, line: 162, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2931, line: 69, size: 64, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2969, file: !2931, line: 71, baseType: !264, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2969, file: !2931, line: 73, baseType: !264, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2969, file: !2931, line: 75, baseType: !264, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2969, file: !2931, line: 77, baseType: !264, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2969, file: !2931, line: 80, baseType: !264, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2969, file: !2931, line: 83, baseType: !264, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2969, file: !2931, line: 86, baseType: !264, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2969, file: !2931, line: 88, baseType: !264, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2969, file: !2931, line: 93, baseType: !264, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2969, file: !2931, line: 100, baseType: !264, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2906, file: !2833, line: 96, baseType: !260, size: 32, offset: 1024)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2851, file: !2833, line: 352, baseType: !2983, size: 4608, align: 512)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2833, line: 333, size: 4608, align: 512, elements: !2984)
!2984 = !{!2985, !2986, !2993}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2983, file: !2833, line: 334, baseType: !2869, size: 4096, align: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2983, file: !2833, line: 335, baseType: !2987, size: 512, offset: 4096)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2833, line: 312, size: 512, elements: !2988)
!2988 = !{!2989, !2990, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2987, file: !2833, line: 313, baseType: !264, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2987, file: !2833, line: 314, baseType: !264, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2987, file: !2833, line: 315, baseType: !2992, size: 384, offset: 128)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 384, elements: !1350)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2983, file: !2833, line: 336, baseType: !2994, offset: 4608)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !1264)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2851, file: !2833, line: 353, baseType: !2996, size: 32768)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 32768, elements: !2997)
!2997 = !{!2998}
!2998 = !DISubrange(count: 4096)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2832, file: !2833, line: 484, baseType: !2838, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2832, file: !2833, line: 491, baseType: !3001, size: 128, offset: 256)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2833, line: 404, size: 128, elements: !3002)
!3002 = !{!3003, !3004, !3005}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3001, file: !2833, line: 424, baseType: !264, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3001, file: !2833, line: 432, baseType: !13, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3001, file: !2833, line: 440, baseType: !13, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2832, file: !2833, line: 498, baseType: !3001, size: 128, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2832, file: !2833, line: 508, baseType: !2839, size: 33280, align: 512, offset: 512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !839, file: !840, line: 16, baseType: !849, size: 192, offset: 512)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !839, file: !840, line: 17, baseType: !307, size: 32, offset: 704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !384, file: !21, line: 1240, baseType: !182, size: 64, offset: 6912)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !384, file: !21, line: 1243, baseType: !260, size: 32, offset: 6976)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !384, file: !21, line: 1245, baseType: !596, size: 64, offset: 7040)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !384, file: !21, line: 1246, baseType: !596, size: 64, offset: 7104)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !384, file: !21, line: 1248, baseType: !144, size: 32, offset: 7168)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !384, file: !21, line: 1249, baseType: !3016, size: 64, offset: 7232)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !21, line: 634, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !384, file: !21, line: 1252, baseType: !3019, size: 256, offset: 7296)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !273)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !384, file: !21, line: 1253, baseType: !3021, size: 128, offset: 7552)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3022, line: 21, baseType: !3023)
!3022 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3022, line: 19, size: 128, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3023, file: !3022, line: 20, baseType: !3026, size: 128)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !134)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !384, file: !21, line: 1255, baseType: !13, size: 32, offset: 7680)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !384, file: !21, line: 1261, baseType: !543, size: 256, offset: 7744)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !384, file: !21, line: 1267, baseType: !347, size: 64, offset: 8000)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !384, file: !21, line: 1269, baseType: !327, size: 64, offset: 8064)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !384, file: !21, line: 1271, baseType: !3032, size: 448, offset: 8128)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !605, line: 63, size: 448, elements: !3033)
!3033 = !{!3034, !3039, !3040, !3041, !3042, !3043, !3044}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3032, file: !605, line: 64, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!167, !3038, !603}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3032, file: !605, line: 66, baseType: !3035, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3032, file: !605, line: 69, baseType: !522, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3032, file: !605, line: 70, baseType: !311, size: 32, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3032, file: !605, line: 71, baseType: !13, size: 32, offset: 224)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !605, line: 74, baseType: !172, size: 128, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3032, file: !605, line: 85, baseType: !3045, size: 64, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !384, file: !21, line: 1274, baseType: !547, size: 64, offset: 8576)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !384, file: !21, line: 1280, baseType: !547, size: 64, offset: 8640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !384, file: !21, line: 1283, baseType: !311, size: 32, offset: 8704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !384, file: !21, line: 1286, baseType: !1959, size: 32, offset: 8736)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !384, file: !21, line: 1289, baseType: !3051, size: 64, offset: 8768)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2088, line: 18, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !384, file: !21, line: 1290, baseType: !426, size: 64, offset: 8832)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !384, file: !21, line: 1297, baseType: !1446, size: 64, offset: 8896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !384, file: !21, line: 1304, baseType: !3056, size: 64, offset: 8960)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3057, line: 49, size: 64, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3056, file: !3057, line: 50, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3057, line: 41, size: 512, align: 512, elements: !3062)
!3062 = !{!3063, !3064, !3069}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3061, file: !3057, line: 43, baseType: !287, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3061, file: !3057, line: 45, baseType: !3065, size: 192, offset: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3057, line: 29, size: 192, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3065, file: !3057, line: 30, baseType: !172, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3065, file: !3057, line: 32, baseType: !522, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3061, file: !3057, line: 46, baseType: !522, size: 64, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !384, file: !21, line: 1305, baseType: !3056, size: 64, offset: 9024)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !384, file: !21, line: 1306, baseType: !856, size: 128, align: 64, offset: 9088)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !384, file: !21, line: 1307, baseType: !2087, size: 256, offset: 9216)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !384, file: !21, line: 1309, baseType: !543, size: 256, offset: 9472)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !384, file: !21, line: 1314, baseType: !311, size: 32, offset: 9728)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !384, file: !21, line: 1317, baseType: !287, size: 32, align: 512, offset: 10240)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !384, file: !21, line: 1318, baseType: !172, size: 128, offset: 10304)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !384, file: !21, line: 1320, baseType: !287, size: 32, offset: 10432)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !384, file: !21, line: 1321, baseType: !172, size: 128, offset: 10496)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !378, file: !379, line: 73, baseType: !311, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !378, file: !379, line: 74, baseType: !3081, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1288, line: 42, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !329, file: !228, line: 141, baseType: !3085, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!311, !666, !1363}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !329, file: !228, line: 142, baseType: !3089, size: 64, offset: 768)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!226, !226, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !227, file: !228, line: 96, baseType: !383, size: 64, offset: 832)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !227, file: !228, line: 97, baseType: !167, size: 64, offset: 896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !227, file: !228, line: 98, baseType: !182, size: 64, offset: 960)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !228, line: 100, baseType: !3098, size: 128, offset: 1024)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !228, line: 100, size: 128, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3098, file: !228, line: 101, baseType: !172, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3098, file: !228, line: 102, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !227, file: !228, line: 104, baseType: !172, size: 128, offset: 1152)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !227, file: !228, line: 105, baseType: !172, size: 128, offset: 1280)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !227, file: !228, line: 113, baseType: !3106, size: 128, offset: 1408)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !228, line: 109, size: 128, elements: !3107)
!3107 = !{!3108, !3109, !3110}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3106, file: !228, line: 110, baseType: !430, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3106, file: !228, line: 111, baseType: !242, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3106, file: !228, line: 112, baseType: !856, size: 128, align: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !220, file: !21, line: 1968, baseType: !3112, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!347, !226, !189, !3115}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3117, line: 10, size: 128, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3118 = !{!3119, !3123}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3116, file: !3117, line: 11, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !182}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3116, file: !3117, line: 12, baseType: !182, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !220, file: !21, line: 1969, baseType: !3125, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!311, !3081, !189, !311}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !220, file: !21, line: 1970, baseType: !3129, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!214, !189, !311, !1363}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !220, file: !21, line: 1972, baseType: !3133, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!311, !226, !372, !311}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !220, file: !21, line: 1974, baseType: !3137, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!311, !3081, !189, !226, !193, !1363}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !220, file: !21, line: 1976, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!311, !226, !189, !226}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !220, file: !21, line: 1977, baseType: !3145, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!311, !189, !226}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !220, file: !21, line: 1978, baseType: !3149, size: 64, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!311, !3081, !189, !226, !347}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !220, file: !21, line: 1980, baseType: !3153, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!311, !3081, !189, !226, !193}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !220, file: !21, line: 1982, baseType: !3145, size: 64, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !220, file: !21, line: 1983, baseType: !3158, size: 64, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!311, !3081, !189, !226, !193, !388}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !220, file: !21, line: 1985, baseType: !3162, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!311, !3081, !189, !226, !189, !226, !13}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !220, file: !21, line: 1987, baseType: !3166, size: 64, offset: 832)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!311, !3081, !226, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !21, line: 226, size: 640, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3184, !3193, !3194, !3199, !3200, !3201}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3170, file: !21, line: 227, baseType: !13, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3170, file: !21, line: 228, baseType: !193, size: 16, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3170, file: !21, line: 241, baseType: !3175, size: 32, offset: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3170, file: !21, line: 241, size: 32, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3175, file: !21, line: 242, baseType: !196, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3175, file: !21, line: 243, baseType: !3179, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3180, line: 16, baseType: !3181)
!3180 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3180, line: 14, size: 32, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3181, file: !3180, line: 15, baseType: !201, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !3170, file: !21, line: 245, baseType: !3185, size: 32, offset: 96)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3170, file: !21, line: 245, size: 32, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3185, file: !21, line: 246, baseType: !206, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3185, file: !21, line: 247, baseType: !3189, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3180, line: 20, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3180, line: 18, size: 32, elements: !3191)
!3191 = !{!3192}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3190, file: !3180, line: 19, baseType: !210, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3170, file: !21, line: 249, baseType: !393, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3170, file: !21, line: 250, baseType: !3195, size: 128, offset: 192)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !597, line: 13, size: 128, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3195, file: !597, line: 14, baseType: !596, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3195, file: !597, line: 15, baseType: !522, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3170, file: !21, line: 251, baseType: !3195, size: 128, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3170, file: !21, line: 252, baseType: !3195, size: 128, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3170, file: !21, line: 259, baseType: !1202, size: 64, offset: 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !220, file: !21, line: 1988, baseType: !3203, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!311, !3081, !666, !3206, !260, !13}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3208, line: 22, size: 1280, elements: !3209)
!3208 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3207, file: !3208, line: 23, baseType: !260, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3207, file: !3208, line: 24, baseType: !193, size: 16, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3207, file: !3208, line: 25, baseType: !13, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3207, file: !3208, line: 26, baseType: !1328, size: 32, offset: 96)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3207, file: !3208, line: 27, baseType: !264, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3207, file: !3208, line: 28, baseType: !264, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3207, file: !3208, line: 41, baseType: !264, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3207, file: !3208, line: 42, baseType: !388, size: 32, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3207, file: !3208, line: 43, baseType: !388, size: 32, offset: 352)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3207, file: !3208, line: 44, baseType: !196, size: 32, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3207, file: !3208, line: 45, baseType: !206, size: 32, offset: 416)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3207, file: !3208, line: 46, baseType: !393, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3207, file: !3208, line: 47, baseType: !3195, size: 128, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3207, file: !3208, line: 48, baseType: !3195, size: 128, offset: 640)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3207, file: !3208, line: 49, baseType: !3195, size: 128, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3207, file: !3208, line: 50, baseType: !3195, size: 128, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3207, file: !3208, line: 51, baseType: !264, size: 64, offset: 1024)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3207, file: !3208, line: 52, baseType: !264, size: 64, offset: 1088)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3207, file: !3208, line: 53, baseType: !260, size: 32, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3207, file: !3208, line: 54, baseType: !260, size: 32, offset: 1184)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3207, file: !3208, line: 55, baseType: !264, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !220, file: !21, line: 1990, baseType: !3232, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!519, !226, !372, !523}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !220, file: !21, line: 1991, baseType: !3236, size: 64, offset: 1024)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!311, !189, !3239, !264, !264}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !21, line: 55, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !220, file: !21, line: 1993, baseType: !3242, size: 64, offset: 1088)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!311, !189, !311}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !220, file: !21, line: 1994, baseType: !3246, size: 64, offset: 1152)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!311, !189, !226, !1202, !13, !193}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !220, file: !21, line: 1997, baseType: !3250, size: 64, offset: 1216)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!311, !3081, !189, !1202, !193}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !220, file: !21, line: 1999, baseType: !3254, size: 64, offset: 1280)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!214, !3081, !226, !311}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !220, file: !21, line: 2001, baseType: !3258, size: 64, offset: 1344)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!311, !3081, !226, !214, !311}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !220, file: !21, line: 2003, baseType: !3262, size: 64, offset: 1408)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!311, !3081, !226, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !21, line: 76, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !220, file: !21, line: 2005, baseType: !3268, size: 64, offset: 1472)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!311, !226, !3265}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !220, file: !21, line: 2006, baseType: !3272, size: 64, offset: 1536)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!3275, !189}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !21, line: 3192, size: 192, elements: !3277)
!3277 = !{!3278, !3285}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3276, file: !21, line: 3193, baseType: !3279, size: 128)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3280, line: 296, size: 128, elements: !3281)
!3280 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3279, file: !3280, line: 297, baseType: !287, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3279, file: !3280, line: 299, baseType: !608, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3279, file: !3280, line: 300, baseType: !182, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3276, file: !21, line: 3194, baseType: !260, size: 32, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !190, file: !21, line: 655, baseType: !383, size: 64, offset: 448)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !190, file: !21, line: 656, baseType: !185, size: 64, offset: 512)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !190, file: !21, line: 659, baseType: !182, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !190, file: !21, line: 663, baseType: !167, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !21, line: 671, baseType: !3291, size: 32, offset: 704)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !21, line: 671, size: 32, elements: !3292)
!3292 = !{!3293, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3291, file: !21, line: 672, baseType: !3294, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3291, file: !21, line: 673, baseType: !13, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !190, file: !21, line: 675, baseType: !388, size: 32, offset: 736)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !190, file: !21, line: 676, baseType: !393, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !190, file: !21, line: 677, baseType: !3195, size: 128, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !190, file: !21, line: 678, baseType: !3195, size: 128, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !190, file: !21, line: 679, baseType: !3195, size: 128, offset: 1088)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !190, file: !21, line: 680, baseType: !287, size: 32, offset: 1216)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !190, file: !21, line: 681, baseType: !140, size: 16, offset: 1248)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !190, file: !21, line: 682, baseType: !316, size: 8, offset: 1264)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !190, file: !21, line: 683, baseType: !316, size: 8, offset: 1272)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !190, file: !21, line: 684, baseType: !744, size: 64, offset: 1280)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !190, file: !21, line: 691, baseType: !167, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !190, file: !21, line: 692, baseType: !756, size: 320, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !190, file: !21, line: 694, baseType: !167, size: 64, offset: 1728)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !190, file: !21, line: 695, baseType: !167, size: 64, offset: 1792)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !190, file: !21, line: 697, baseType: !430, size: 128, offset: 1856)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !190, file: !21, line: 698, baseType: !172, size: 128, offset: 1984)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !190, file: !21, line: 707, baseType: !172, size: 128, offset: 2112)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !190, file: !21, line: 708, baseType: !172, size: 128, offset: 2240)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !21, line: 709, baseType: !3315, size: 128, offset: 2368)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !21, line: 709, size: 128, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3315, file: !21, line: 710, baseType: !426, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3315, file: !21, line: 711, baseType: !856, size: 128, align: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !190, file: !21, line: 713, baseType: !549, size: 64, offset: 2496)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !190, file: !21, line: 714, baseType: !549, size: 64, offset: 2560)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !190, file: !21, line: 715, baseType: !307, size: 32, offset: 2624)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !190, file: !21, line: 716, baseType: !307, size: 32, offset: 2656)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !190, file: !21, line: 717, baseType: !307, size: 32, offset: 2688)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !190, file: !21, line: 719, baseType: !307, size: 32, offset: 2720)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !21, line: 721, baseType: !3326, size: 64, offset: 2752)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !21, line: 721, size: 64, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3326, file: !21, line: 722, baseType: !1477, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3326, file: !21, line: 723, baseType: !459, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !190, file: !21, line: 725, baseType: !3331, size: 64, offset: 2816)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !21, line: 725, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !190, file: !21, line: 726, baseType: !186, size: 1536, align: 64, offset: 2880)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !190, file: !21, line: 727, baseType: !172, size: 128, offset: 4416)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !21, line: 728, baseType: !3336, size: 64, offset: 4544)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !21, line: 728, size: 64, elements: !3337)
!3337 = !{!3338, !3339, !3342, !3343}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3336, file: !21, line: 729, baseType: !1909, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3336, file: !21, line: 730, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !21, line: 730, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3336, file: !21, line: 731, baseType: !372, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3336, file: !21, line: 732, baseType: !13, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !190, file: !21, line: 735, baseType: !144, size: 32, offset: 4608)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !190, file: !21, line: 738, baseType: !144, size: 32, offset: 4640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !190, file: !21, line: 739, baseType: !3016, size: 64, offset: 4672)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !190, file: !21, line: 750, baseType: !182, size: 64, offset: 4736)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !186, file: !21, line: 474, baseType: !3279, size: 128, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !186, file: !21, line: 475, baseType: !756, size: 320, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !186, file: !21, line: 476, baseType: !608, size: 32, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !186, file: !21, line: 477, baseType: !307, size: 32, offset: 544)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !186, file: !21, line: 482, baseType: !1058, size: 128, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !186, file: !21, line: 483, baseType: !167, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !186, file: !21, line: 484, baseType: !167, size: 64, offset: 768)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !186, file: !21, line: 485, baseType: !3356, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !21, line: 404, size: 1280, elements: !3359)
!3359 = !{!3360, !3364, !3368, !3372, !3376, !3392, !3397, !3401, !3406, !3410, !3414, !3418, !3419, !3423, !3427, !3431, !3436, !3440, !3447, !3448}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3358, file: !21, line: 405, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!311, !1686, !471}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3358, file: !21, line: 406, baseType: !3365, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!311, !1202, !157}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3358, file: !21, line: 409, baseType: !3369, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!311, !185, !471}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3358, file: !21, line: 412, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!1363, !185, !157}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3358, file: !21, line: 414, baseType: !3377, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !3380}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1517, line: 1276, size: 448, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3387, !3388, !3389, !3390, !3391}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3381, file: !1517, line: 1277, baseType: !1202, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3381, file: !1517, line: 1278, baseType: !185, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3381, file: !1517, line: 1279, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3381, file: !1517, line: 1281, baseType: !167, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3381, file: !1517, line: 1282, baseType: !13, size: 32, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3381, file: !1517, line: 1283, baseType: !13, size: 32, offset: 288)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3381, file: !1517, line: 1284, baseType: !1363, size: 8, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3381, file: !1517, line: 1285, baseType: !167, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3358, file: !21, line: 416, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!311, !1202, !185, !393, !13, !3396, !1924}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3358, file: !21, line: 419, baseType: !3398, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!311, !1202, !185, !393, !13, !13, !1686, !182}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3358, file: !21, line: 424, baseType: !3402, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!3405, !185, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !173, line: 131, baseType: !264)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3358, file: !21, line: 425, baseType: !3407, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !157, !523, !523}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3358, file: !21, line: 426, baseType: !3411, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!1363, !157, !608}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3358, file: !21, line: 427, baseType: !3415, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !157}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3358, file: !21, line: 428, baseType: !1496, size: 64, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3358, file: !21, line: 433, baseType: !3420, size: 64, offset: 768)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!311, !185, !157, !157, !42}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3358, file: !21, line: 435, baseType: !3424, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!311, !157}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3358, file: !21, line: 436, baseType: !3428, size: 64, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!1363, !157, !523, !523}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3358, file: !21, line: 438, baseType: !3432, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !157, !3435, !3435}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3358, file: !21, line: 439, baseType: !3437, size: 64, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!311, !185, !1686}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3358, file: !21, line: 442, baseType: !3441, size: 64, offset: 1088)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!311, !3444, !1202, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !21, line: 66, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3358, file: !21, line: 444, baseType: !1916, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3358, file: !21, line: 445, baseType: !3449, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!311, !1499, !1538}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !21, line: 486, baseType: !167, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !186, file: !21, line: 487, baseType: !756, size: 320, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !186, file: !21, line: 488, baseType: !1959, size: 32, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !186, file: !21, line: 489, baseType: !287, size: 32, offset: 1312)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !186, file: !21, line: 490, baseType: !172, size: 128, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !186, file: !21, line: 491, baseType: !182, size: 64, offset: 1472)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !164, file: !58, line: 311, baseType: !167, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !58, line: 312, baseType: !3460, size: 64, offset: 320)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !58, line: 312, size: 64, elements: !3461)
!3461 = !{!3462, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3460, file: !58, line: 313, baseType: !182, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3460, file: !58, line: 314, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !58, line: 257, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 255, size: 64, elements: !3466)
!3466 = !{!3467}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3465, file: !58, line: 256, baseType: !167, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !164, file: !58, line: 316, baseType: !307, size: 32, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !164, file: !58, line: 317, baseType: !307, size: 32, offset: 416)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !161, file: !58, line: 323, baseType: !1687, size: 512, align: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !58, line: 325, baseType: !3472, size: 512, offset: 512)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !58, line: 325, size: 512, elements: !3473)
!3473 = !{!3474, !3484}
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !58, line: 326, baseType: !3475, size: 320)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3472, file: !58, line: 326, size: 320, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3475, file: !58, line: 327, baseType: !167, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3475, file: !58, line: 328, baseType: !167, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3475, file: !58, line: 329, baseType: !167, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3475, file: !58, line: 331, baseType: !307, size: 32, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3475, file: !58, line: 332, baseType: !307, size: 32, offset: 224)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3475, file: !58, line: 333, baseType: !307, size: 32, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3475, file: !58, line: 335, baseType: !13, size: 32, offset: 288)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3472, file: !58, line: 339, baseType: !1687, size: 512, align: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !58, line: 341, baseType: !3486, size: 512, offset: 1024)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !58, line: 341, size: 512, elements: !3487)
!3487 = !{!3488, !3497, !3503}
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !58, line: 342, baseType: !3489, size: 384)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3486, file: !58, line: 342, size: 384, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3489, file: !58, line: 343, baseType: !167, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3489, file: !58, line: 344, baseType: !167, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3489, file: !58, line: 346, baseType: !182, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3489, file: !58, line: 347, baseType: !182, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3489, file: !58, line: 348, baseType: !182, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3489, file: !58, line: 349, baseType: !182, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !58, line: 352, baseType: !3498, size: 256)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3486, file: !58, line: 352, size: 256, elements: !3499)
!3499 = !{!3500, !3501, !3502}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3498, file: !58, line: 353, baseType: !167, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3498, file: !58, line: 354, baseType: !167, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3498, file: !58, line: 356, baseType: !172, size: 128, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3486, file: !58, line: 359, baseType: !1687, size: 512, align: 128)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !167)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !173, line: 42, baseType: !167)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !173, line: 159, baseType: !264)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Phdr", file: !128, line: 258, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf32_phdr", file: !128, line: 249, size: 256, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p_type", scope: !3519, file: !128, line: 250, baseType: !143, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "p_offset", scope: !3519, file: !128, line: 251, baseType: !148, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "p_vaddr", scope: !3519, file: !128, line: 252, baseType: !146, size: 32, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p_paddr", scope: !3519, file: !128, line: 253, baseType: !146, size: 32, offset: 96)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "p_filesz", scope: !3519, file: !128, line: 254, baseType: !143, size: 32, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "p_memsz", scope: !3519, file: !128, line: 255, baseType: !143, size: 32, offset: 160)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !3519, file: !128, line: 256, baseType: !143, size: 32, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "p_align", scope: !3519, file: !128, line: 257, baseType: !143, size: 32, offset: 224)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !128, line: 241, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !128, line: 226, size: 512, elements: !3535)
!3535 = !{!3536, !3537, !3539, !3540, !3542, !3544, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !3534, file: !128, line: 227, baseType: !132, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !3534, file: !128, line: 228, baseType: !3538, size: 16, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !128, line: 17, baseType: !138)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !3534, file: !128, line: 229, baseType: !3538, size: 16, offset: 144)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !3534, file: !128, line: 230, baseType: !3541, size: 32, offset: 160)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !128, line: 21, baseType: !144)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !3534, file: !128, line: 231, baseType: !3543, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !128, line: 16, baseType: !265)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !3534, file: !128, line: 232, baseType: !3545, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !128, line: 19, baseType: !265)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !3534, file: !128, line: 233, baseType: !3545, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !3534, file: !128, line: 234, baseType: !3541, size: 32, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !3534, file: !128, line: 235, baseType: !3538, size: 16, offset: 416)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !3534, file: !128, line: 236, baseType: !3538, size: 16, offset: 432)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !3534, file: !128, line: 237, baseType: !3538, size: 16, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !3534, file: !128, line: 238, baseType: !3538, size: 16, offset: 464)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !3534, file: !128, line: 239, baseType: !3538, size: 16, offset: 480)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !3534, file: !128, line: 240, baseType: !3538, size: 16, offset: 496)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Phdr", file: !128, line: 269, baseType: !3556)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_phdr", file: !128, line: 260, size: 448, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3565, !3566}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "p_type", scope: !3556, file: !128, line: 261, baseType: !3541, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !3556, file: !128, line: 262, baseType: !3541, size: 32, offset: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "p_offset", scope: !3556, file: !128, line: 263, baseType: !3545, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "p_vaddr", scope: !3556, file: !128, line: 264, baseType: !3543, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "p_paddr", scope: !3556, file: !128, line: 265, baseType: !3543, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "p_filesz", scope: !3556, file: !128, line: 266, baseType: !3564, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !128, line: 22, baseType: !265)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "p_memsz", scope: !3556, file: !128, line: 267, baseType: !3564, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "p_align", scope: !3556, file: !128, line: 268, baseType: !3564, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3569)
!3569 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !266)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Nhdr", file: !128, line: 466, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf32_note", file: !128, line: 462, size: 96, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "n_namesz", scope: !3572, file: !128, line: 463, baseType: !143, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "n_descsz", scope: !3572, file: !128, line: 464, baseType: !143, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !3572, file: !128, line: 465, baseType: !143, size: 32, offset: 64)
!3577 = !{!0, !7, !3578}
!3578 = !DIGlobalVariableExpression(var: !3579, expr: !DIExpression())
!3579 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule277", scope: !3580, file: !3581, line: 239, type: !182, isLocal: true, isDefinition: true)
!3580 = distinct !DISubprogram(name: "__kunmap_atomic", scope: !3581, file: !3581, line: 230, type: !3582, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3584)
!3581 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !2048}
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "addr", arg: 1, scope: !3580, file: !3581, line: 230, type: !2048)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 160, elements: !2865)
!3587 = !{!"rsp"}
!3588 = !{i32 7, !"Dwarf Version", i32 5}
!3589 = !{i32 2, !"Debug Info Version", i32 3}
!3590 = !{i32 1, !"wchar_size", i32 2}
!3591 = !{i32 8, !"cf-protection-branch", i32 1}
!3592 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3593 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3594 = !{i32 1, !"Code Model", i32 2}
!3595 = !{i32 1, !"override-stack-alignment", i32 8}
!3596 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3597 = distinct !DISubprogram(name: "build_id_parse", scope: !2, file: !2, line: 148, type: !3598, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3602)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!311, !1577, !3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3603 = !DILocalVariable(name: "vma", arg: 1, scope: !3597, file: !2, line: 148, type: !1577)
!3604 = !DILocalVariable(name: "build_id", arg: 2, scope: !3597, file: !2, line: 148, type: !3600)
!3605 = !DILocalVariable(name: "size", arg: 3, scope: !3597, file: !2, line: 149, type: !3601)
!3606 = !DILocalVariable(name: "ehdr", scope: !3597, file: !2, line: 151, type: !126)
!3607 = !DILocalVariable(name: "page", scope: !3597, file: !2, line: 152, type: !1686)
!3608 = !DILocalVariable(name: "page_addr", scope: !3597, file: !2, line: 153, type: !182)
!3609 = !DILocalVariable(name: "ret", scope: !3597, file: !2, line: 154, type: !311)
!3610 = !DILabel(scope: !3597, name: "out", file: !2, line: 184)
!3611 = !DILocation(line: 148, column: 43, scope: !3597)
!3612 = !DILocation(line: 148, column: 63, scope: !3597)
!3613 = !DILocation(line: 149, column: 13, scope: !3597)
!3614 = !DILocation(line: 151, column: 2, scope: !3597)
!3615 = !DILocation(line: 151, column: 14, scope: !3597)
!3616 = !DILocation(line: 152, column: 2, scope: !3597)
!3617 = !DILocation(line: 152, column: 15, scope: !3597)
!3618 = !DILocation(line: 153, column: 2, scope: !3597)
!3619 = !DILocation(line: 153, column: 8, scope: !3597)
!3620 = !DILocation(line: 154, column: 2, scope: !3597)
!3621 = !DILocation(line: 154, column: 6, scope: !3597)
!3622 = !DILocation(line: 157, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 157, column: 6)
!3624 = !DILocation(line: 157, column: 12, scope: !3623)
!3625 = !DILocation(line: 157, column: 6, scope: !3597)
!3626 = !DILocation(line: 158, column: 3, scope: !3623)
!3627 = !DILocation(line: 160, column: 23, scope: !3597)
!3628 = !DILocation(line: 160, column: 28, scope: !3597)
!3629 = !DILocation(line: 160, column: 37, scope: !3597)
!3630 = !DILocation(line: 160, column: 9, scope: !3597)
!3631 = !DILocation(line: 160, column: 7, scope: !3597)
!3632 = !DILocation(line: 161, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 161, column: 6)
!3634 = !DILocation(line: 161, column: 6, scope: !3597)
!3635 = !DILocation(line: 162, column: 3, scope: !3633)
!3636 = !DILocation(line: 163, column: 20, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 163, column: 6)
!3638 = !DILocation(line: 163, column: 7, scope: !3637)
!3639 = !DILocation(line: 163, column: 6, scope: !3597)
!3640 = !DILocation(line: 164, column: 12, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 163, column: 27)
!3642 = !DILocation(line: 164, column: 3, scope: !3641)
!3643 = !DILocation(line: 165, column: 3, scope: !3641)
!3644 = !DILocation(line: 168, column: 6, scope: !3597)
!3645 = !DILocation(line: 169, column: 26, scope: !3597)
!3646 = !DILocation(line: 169, column: 14, scope: !3597)
!3647 = !DILocation(line: 169, column: 12, scope: !3597)
!3648 = !DILocation(line: 170, column: 23, scope: !3597)
!3649 = !DILocation(line: 170, column: 7, scope: !3597)
!3650 = !DILocation(line: 173, column: 13, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 173, column: 6)
!3652 = !DILocation(line: 173, column: 19, scope: !3651)
!3653 = !DILocation(line: 173, column: 6, scope: !3651)
!3654 = !DILocation(line: 173, column: 45, scope: !3651)
!3655 = !DILocation(line: 173, column: 6, scope: !3597)
!3656 = !DILocation(line: 174, column: 3, scope: !3651)
!3657 = !DILocation(line: 177, column: 6, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 177, column: 6)
!3659 = !DILocation(line: 177, column: 12, scope: !3658)
!3660 = !DILocation(line: 177, column: 19, scope: !3658)
!3661 = !DILocation(line: 177, column: 30, scope: !3658)
!3662 = !DILocation(line: 177, column: 33, scope: !3658)
!3663 = !DILocation(line: 177, column: 39, scope: !3658)
!3664 = !DILocation(line: 177, column: 46, scope: !3658)
!3665 = !DILocation(line: 177, column: 6, scope: !3597)
!3666 = !DILocation(line: 178, column: 3, scope: !3658)
!3667 = !DILocation(line: 180, column: 6, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 180, column: 6)
!3669 = !DILocation(line: 180, column: 12, scope: !3668)
!3670 = !DILocation(line: 180, column: 30, scope: !3668)
!3671 = !DILocation(line: 180, column: 6, scope: !3597)
!3672 = !DILocation(line: 181, column: 25, scope: !3668)
!3673 = !DILocation(line: 181, column: 36, scope: !3668)
!3674 = !DILocation(line: 181, column: 46, scope: !3668)
!3675 = !DILocation(line: 181, column: 9, scope: !3668)
!3676 = !DILocation(line: 181, column: 7, scope: !3668)
!3677 = !DILocation(line: 181, column: 3, scope: !3668)
!3678 = !DILocation(line: 182, column: 11, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3668, file: !2, line: 182, column: 11)
!3680 = !DILocation(line: 182, column: 17, scope: !3679)
!3681 = !DILocation(line: 182, column: 35, scope: !3679)
!3682 = !DILocation(line: 182, column: 11, scope: !3668)
!3683 = !DILocation(line: 183, column: 25, scope: !3679)
!3684 = !DILocation(line: 183, column: 36, scope: !3679)
!3685 = !DILocation(line: 183, column: 46, scope: !3679)
!3686 = !DILocation(line: 183, column: 9, scope: !3679)
!3687 = !DILocation(line: 183, column: 7, scope: !3679)
!3688 = !DILocation(line: 183, column: 3, scope: !3679)
!3689 = !DILocation(line: 180, column: 33, scope: !3668)
!3690 = !DILocation(line: 184, column: 1, scope: !3597)
!3691 = !DILocation(line: 185, column: 2, scope: !3597)
!3692 = !DILocation(line: 185, column: 2, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 185, column: 2)
!3694 = !DILocation(line: 185, column: 2, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3693, file: !2, line: 185, column: 2)
!3696 = !DILocation(line: 186, column: 11, scope: !3597)
!3697 = !DILocation(line: 186, column: 2, scope: !3597)
!3698 = !DILocation(line: 187, column: 9, scope: !3597)
!3699 = !DILocation(line: 187, column: 2, scope: !3597)
!3700 = !DILocation(line: 188, column: 1, scope: !3597)
!3701 = distinct !DISubprogram(name: "find_get_page", scope: !1517, file: !1517, line: 702, type: !3702, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!1686, !185, !167}
!3704 = !{!3705, !3706}
!3705 = !DILocalVariable(name: "mapping", arg: 1, scope: !3701, file: !1517, line: 702, type: !185)
!3706 = !DILocalVariable(name: "offset", arg: 2, scope: !3701, file: !1517, line: 703, type: !167)
!3707 = !DILocation(line: 702, column: 64, scope: !3701)
!3708 = !DILocation(line: 703, column: 14, scope: !3701)
!3709 = !DILocation(line: 705, column: 28, scope: !3701)
!3710 = !DILocation(line: 705, column: 37, scope: !3701)
!3711 = !DILocation(line: 705, column: 9, scope: !3701)
!3712 = !DILocation(line: 705, column: 2, scope: !3701)
!3713 = distinct !DISubprogram(name: "PageUptodate", scope: !81, file: !81, line: 742, type: !3714, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!311, !1686}
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "page", arg: 1, scope: !3713, file: !81, line: 742, type: !1686)
!3718 = !DILocation(line: 742, column: 45, scope: !3713)
!3719 = !DILocation(line: 744, column: 29, scope: !3713)
!3720 = !DILocation(line: 744, column: 9, scope: !3713)
!3721 = !DILocation(line: 744, column: 2, scope: !3713)
!3722 = distinct !DISubprogram(name: "put_page", scope: !1625, file: !1625, line: 1540, type: !1791, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3723)
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "page", arg: 1, scope: !3722, file: !1625, line: 1540, type: !1686)
!3725 = !DILocalVariable(name: "folio", scope: !3722, file: !1625, line: 1542, type: !157)
!3726 = !DILocation(line: 1540, column: 42, scope: !3722)
!3727 = !DILocation(line: 1542, column: 2, scope: !3722)
!3728 = !DILocation(line: 1542, column: 16, scope: !3722)
!3729 = !DILocation(line: 1542, column: 24, scope: !3722)
!3730 = !DILocation(line: 1548, column: 31, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3722, file: !1625, line: 1548, column: 6)
!3732 = !DILocation(line: 1548, column: 38, scope: !3731)
!3733 = !DILocation(line: 1548, column: 6, scope: !3731)
!3734 = !DILocation(line: 1548, column: 6, scope: !3722)
!3735 = !DILocation(line: 1549, column: 3, scope: !3731)
!3736 = !DILocation(line: 1550, column: 12, scope: !3722)
!3737 = !DILocation(line: 1550, column: 2, scope: !3722)
!3738 = !DILocation(line: 1551, column: 1, scope: !3722)
!3739 = distinct !DISubprogram(name: "kmap_atomic", scope: !3581, file: !3581, line: 210, type: !3740, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!182, !1686}
!3742 = !{!3743}
!3743 = !DILocalVariable(name: "page", arg: 1, scope: !3739, file: !3581, line: 210, type: !1686)
!3744 = !DILocation(line: 210, column: 46, scope: !3739)
!3745 = !DILocation(line: 215, column: 3, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3739, file: !3581, line: 212, column: 6)
!3747 = !DILocation(line: 215, column: 3, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3746, file: !3581, line: 215, column: 3)
!3749 = !{i64 2154077831}
!3750 = !DILocation(line: 216, column: 2, scope: !3739)
!3751 = !DILocation(line: 217, column: 9, scope: !3739)
!3752 = !DILocation(line: 217, column: 2, scope: !3739)
!3753 = !DISubprogram(name: "memcmp", scope: !3754, file: !3754, line: 196, type: !3755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3754 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!311, !2048, !2048, !524}
!3757 = distinct !DISubprogram(name: "get_build_id_32", scope: !2, file: !2, line: 75, type: !3758, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!311, !2048, !3600, !3601}
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767}
!3761 = !DILocalVariable(name: "page_addr", arg: 1, scope: !3757, file: !2, line: 75, type: !2048)
!3762 = !DILocalVariable(name: "build_id", arg: 2, scope: !3757, file: !2, line: 75, type: !3600)
!3763 = !DILocalVariable(name: "size", arg: 3, scope: !3757, file: !2, line: 76, type: !3601)
!3764 = !DILocalVariable(name: "ehdr", scope: !3757, file: !2, line: 78, type: !126)
!3765 = !DILocalVariable(name: "phdr", scope: !3757, file: !2, line: 79, type: !3517)
!3766 = !DILocalVariable(name: "i", scope: !3757, file: !2, line: 80, type: !144)
!3767 = !DILocalVariable(name: "phnum", scope: !3757, file: !2, line: 80, type: !144)
!3768 = !DILocation(line: 75, column: 40, scope: !3757)
!3769 = !DILocation(line: 75, column: 66, scope: !3757)
!3770 = !DILocation(line: 76, column: 14, scope: !3757)
!3771 = !DILocation(line: 78, column: 2, scope: !3757)
!3772 = !DILocation(line: 78, column: 14, scope: !3757)
!3773 = !DILocation(line: 78, column: 35, scope: !3757)
!3774 = !DILocation(line: 79, column: 2, scope: !3757)
!3775 = !DILocation(line: 79, column: 14, scope: !3757)
!3776 = !DILocation(line: 80, column: 2, scope: !3757)
!3777 = !DILocation(line: 80, column: 8, scope: !3757)
!3778 = !DILocation(line: 80, column: 11, scope: !3757)
!3779 = !DILocation(line: 87, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 87, column: 6)
!3781 = !DILocation(line: 87, column: 12, scope: !3780)
!3782 = !DILocation(line: 87, column: 20, scope: !3780)
!3783 = !DILocation(line: 87, column: 6, scope: !3757)
!3784 = !DILocation(line: 88, column: 3, scope: !3780)
!3785 = !DILocation(line: 90, column: 10, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 90, column: 10)
!3787 = !DILocation(line: 90, column: 10, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3786, file: !2, line: 90, column: 10)
!3789 = !DILocation(line: 90, column: 10, scope: !3757)
!3790 = !DILocation(line: 90, column: 8, scope: !3757)
!3791 = !DILocation(line: 92, column: 6, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 92, column: 6)
!3793 = !DILocation(line: 92, column: 12, scope: !3792)
!3794 = !DILocation(line: 92, column: 6, scope: !3757)
!3795 = !DILocation(line: 93, column: 3, scope: !3792)
!3796 = !DILocation(line: 95, column: 24, scope: !3757)
!3797 = !DILocation(line: 95, column: 34, scope: !3757)
!3798 = !DILocation(line: 95, column: 7, scope: !3757)
!3799 = !DILocation(line: 97, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 97, column: 2)
!3801 = !DILocation(line: 97, column: 7, scope: !3800)
!3802 = !DILocation(line: 97, column: 14, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3800, file: !2, line: 97, column: 2)
!3804 = !DILocation(line: 97, column: 18, scope: !3803)
!3805 = !DILocation(line: 97, column: 16, scope: !3803)
!3806 = !DILocation(line: 97, column: 2, scope: !3800)
!3807 = !DILocation(line: 98, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !2, line: 98, column: 7)
!3809 = distinct !DILexicalBlock(scope: !3803, file: !2, line: 97, column: 30)
!3810 = !DILocation(line: 98, column: 12, scope: !3808)
!3811 = !DILocation(line: 98, column: 15, scope: !3808)
!3812 = !DILocation(line: 98, column: 22, scope: !3808)
!3813 = !DILocation(line: 98, column: 33, scope: !3808)
!3814 = !DILocation(line: 99, column: 23, scope: !3808)
!3815 = !DILocation(line: 99, column: 34, scope: !3808)
!3816 = !DILocation(line: 99, column: 44, scope: !3808)
!3817 = !DILocation(line: 100, column: 9, scope: !3808)
!3818 = !DILocation(line: 100, column: 21, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3808, file: !2, line: 100, column: 21)
!3820 = !DILocation(line: 100, column: 21, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3819, file: !2, line: 100, column: 21)
!3822 = !DILocation(line: 100, column: 19, scope: !3808)
!3823 = !DILocation(line: 101, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3808, file: !2, line: 101, column: 9)
!3825 = !DILocation(line: 101, column: 9, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3824, file: !2, line: 101, column: 9)
!3827 = !DILocation(line: 99, column: 8, scope: !3808)
!3828 = !DILocation(line: 98, column: 7, scope: !3809)
!3829 = !DILocation(line: 102, column: 4, scope: !3808)
!3830 = !DILocation(line: 103, column: 2, scope: !3809)
!3831 = !DILocation(line: 97, column: 25, scope: !3803)
!3832 = !DILocation(line: 97, column: 2, scope: !3803)
!3833 = distinct !{!3833, !3806, !3834, !3835, !3836}
!3834 = !DILocation(line: 103, column: 2, scope: !3800)
!3835 = !{!"llvm.loop.mustprogress"}
!3836 = !{!"llvm.loop.unroll.disable"}
!3837 = !DILocation(line: 104, column: 2, scope: !3757)
!3838 = !DILocation(line: 105, column: 1, scope: !3757)
!3839 = distinct !DISubprogram(name: "get_build_id_64", scope: !2, file: !2, line: 108, type: !3758, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3841 = !DILocalVariable(name: "page_addr", arg: 1, scope: !3839, file: !2, line: 108, type: !2048)
!3842 = !DILocalVariable(name: "build_id", arg: 2, scope: !3839, file: !2, line: 108, type: !3600)
!3843 = !DILocalVariable(name: "size", arg: 3, scope: !3839, file: !2, line: 109, type: !3601)
!3844 = !DILocalVariable(name: "ehdr", scope: !3839, file: !2, line: 111, type: !3532)
!3845 = !DILocalVariable(name: "phdr", scope: !3839, file: !2, line: 112, type: !3554)
!3846 = !DILocalVariable(name: "i", scope: !3839, file: !2, line: 113, type: !144)
!3847 = !DILocalVariable(name: "phnum", scope: !3839, file: !2, line: 113, type: !144)
!3848 = !DILocation(line: 108, column: 40, scope: !3839)
!3849 = !DILocation(line: 108, column: 66, scope: !3839)
!3850 = !DILocation(line: 109, column: 14, scope: !3839)
!3851 = !DILocation(line: 111, column: 2, scope: !3839)
!3852 = !DILocation(line: 111, column: 14, scope: !3839)
!3853 = !DILocation(line: 111, column: 35, scope: !3839)
!3854 = !DILocation(line: 112, column: 2, scope: !3839)
!3855 = !DILocation(line: 112, column: 14, scope: !3839)
!3856 = !DILocation(line: 113, column: 2, scope: !3839)
!3857 = !DILocation(line: 113, column: 8, scope: !3839)
!3858 = !DILocation(line: 113, column: 11, scope: !3839)
!3859 = !DILocation(line: 120, column: 6, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 120, column: 6)
!3861 = !DILocation(line: 120, column: 12, scope: !3860)
!3862 = !DILocation(line: 120, column: 20, scope: !3860)
!3863 = !DILocation(line: 120, column: 6, scope: !3839)
!3864 = !DILocation(line: 121, column: 3, scope: !3860)
!3865 = !DILocation(line: 123, column: 10, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 123, column: 10)
!3867 = !DILocation(line: 123, column: 10, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3866, file: !2, line: 123, column: 10)
!3869 = !DILocation(line: 123, column: 10, scope: !3839)
!3870 = !DILocation(line: 123, column: 8, scope: !3839)
!3871 = !DILocation(line: 125, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 125, column: 6)
!3873 = !DILocation(line: 125, column: 12, scope: !3872)
!3874 = !DILocation(line: 125, column: 6, scope: !3839)
!3875 = !DILocation(line: 126, column: 3, scope: !3872)
!3876 = !DILocation(line: 128, column: 24, scope: !3839)
!3877 = !DILocation(line: 128, column: 34, scope: !3839)
!3878 = !DILocation(line: 128, column: 7, scope: !3839)
!3879 = !DILocation(line: 130, column: 9, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 130, column: 2)
!3881 = !DILocation(line: 130, column: 7, scope: !3880)
!3882 = !DILocation(line: 130, column: 14, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3880, file: !2, line: 130, column: 2)
!3884 = !DILocation(line: 130, column: 18, scope: !3883)
!3885 = !DILocation(line: 130, column: 16, scope: !3883)
!3886 = !DILocation(line: 130, column: 2, scope: !3880)
!3887 = !DILocation(line: 131, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !2, line: 131, column: 7)
!3889 = distinct !DILexicalBlock(scope: !3883, file: !2, line: 130, column: 30)
!3890 = !DILocation(line: 131, column: 12, scope: !3888)
!3891 = !DILocation(line: 131, column: 15, scope: !3888)
!3892 = !DILocation(line: 131, column: 22, scope: !3888)
!3893 = !DILocation(line: 131, column: 33, scope: !3888)
!3894 = !DILocation(line: 132, column: 23, scope: !3888)
!3895 = !DILocation(line: 132, column: 34, scope: !3888)
!3896 = !DILocation(line: 132, column: 44, scope: !3888)
!3897 = !DILocation(line: 133, column: 9, scope: !3888)
!3898 = !DILocation(line: 133, column: 21, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3888, file: !2, line: 133, column: 21)
!3900 = !DILocation(line: 133, column: 21, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3899, file: !2, line: 133, column: 21)
!3902 = !DILocation(line: 133, column: 19, scope: !3888)
!3903 = !DILocation(line: 134, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3888, file: !2, line: 134, column: 9)
!3905 = !DILocation(line: 134, column: 9, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3904, file: !2, line: 134, column: 9)
!3907 = !DILocation(line: 134, column: 9, scope: !3888)
!3908 = !DILocation(line: 132, column: 8, scope: !3888)
!3909 = !DILocation(line: 131, column: 7, scope: !3889)
!3910 = !DILocation(line: 135, column: 4, scope: !3888)
!3911 = !DILocation(line: 136, column: 2, scope: !3889)
!3912 = !DILocation(line: 130, column: 25, scope: !3883)
!3913 = !DILocation(line: 130, column: 2, scope: !3883)
!3914 = distinct !{!3914, !3886, !3915, !3835, !3836}
!3915 = !DILocation(line: 136, column: 2, scope: !3880)
!3916 = !DILocation(line: 137, column: 2, scope: !3839)
!3917 = !DILocation(line: 138, column: 1, scope: !3839)
!3918 = !DILocation(line: 230, column: 48, scope: !3580)
!3919 = !DILocation(line: 235, column: 2, scope: !3580)
!3920 = !DILocation(line: 239, column: 3, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3580, file: !3581, line: 236, column: 6)
!3922 = !DILocation(line: 239, column: 3, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3921, file: !3581, line: 239, column: 3)
!3924 = !{i64 2154079357}
!3925 = !DILocation(line: 239, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3581, line: 239, column: 3)
!3927 = !DILocation(line: 239, column: 3, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3926, file: !3581, line: 239, column: 3)
!3929 = !{i64 2154079539}
!3930 = !DILocation(line: 240, column: 1, scope: !3580)
!3931 = distinct !DISubprogram(name: "build_id_parse_buf", scope: !2, file: !2, line: 198, type: !3932, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!311, !2048, !3600, !260}
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "buf", arg: 1, scope: !3931, file: !2, line: 198, type: !2048)
!3936 = !DILocalVariable(name: "build_id", arg: 2, scope: !3931, file: !2, line: 198, type: !3600)
!3937 = !DILocalVariable(name: "buf_size", arg: 3, scope: !3931, file: !2, line: 198, type: !260)
!3938 = !DILocation(line: 198, column: 36, scope: !3931)
!3939 = !DILocation(line: 198, column: 56, scope: !3931)
!3940 = !DILocation(line: 198, column: 70, scope: !3931)
!3941 = !DILocation(line: 200, column: 28, scope: !3931)
!3942 = !DILocation(line: 200, column: 44, scope: !3931)
!3943 = !DILocation(line: 200, column: 49, scope: !3931)
!3944 = !DILocation(line: 200, column: 9, scope: !3931)
!3945 = !DILocation(line: 200, column: 2, scope: !3931)
!3946 = distinct !DISubprogram(name: "parse_build_id_buf", scope: !2, file: !2, line: 16, type: !3947, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!311, !3600, !3601, !2048, !143}
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3956, !3958, !3959, !3960, !3961, !3962, !3963}
!3950 = !DILocalVariable(name: "build_id", arg: 1, scope: !3946, file: !2, line: 16, type: !3600)
!3951 = !DILocalVariable(name: "size", arg: 2, scope: !3946, file: !2, line: 17, type: !3601)
!3952 = !DILocalVariable(name: "note_start", arg: 3, scope: !3946, file: !2, line: 18, type: !2048)
!3953 = !DILocalVariable(name: "note_size", arg: 4, scope: !3946, file: !2, line: 19, type: !143)
!3954 = !DILocalVariable(name: "note_name", scope: !3946, file: !2, line: 21, type: !3955)
!3955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 32, elements: !1251)
!3956 = !DILocalVariable(name: "note_name_sz", scope: !3946, file: !2, line: 22, type: !3957)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!3958 = !DILocalVariable(name: "note_off", scope: !3946, file: !2, line: 23, type: !264)
!3959 = !DILocalVariable(name: "new_off", scope: !3946, file: !2, line: 23, type: !264)
!3960 = !DILocalVariable(name: "name_sz", scope: !3946, file: !2, line: 23, type: !264)
!3961 = !DILocalVariable(name: "desc_sz", scope: !3946, file: !2, line: 23, type: !264)
!3962 = !DILocalVariable(name: "data", scope: !3946, file: !2, line: 24, type: !347)
!3963 = !DILocalVariable(name: "nhdr", scope: !3964, file: !2, line: 28, type: !3570)
!3964 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 27, column: 66)
!3965 = !DILocation(line: 16, column: 46, scope: !3946)
!3966 = !DILocation(line: 17, column: 17, scope: !3946)
!3967 = !DILocation(line: 18, column: 22, scope: !3946)
!3968 = !DILocation(line: 19, column: 21, scope: !3946)
!3969 = !DILocation(line: 21, column: 2, scope: !3946)
!3970 = !DILocation(line: 21, column: 13, scope: !3946)
!3971 = !DILocation(line: 22, column: 2, scope: !3946)
!3972 = !DILocation(line: 22, column: 15, scope: !3946)
!3973 = !DILocation(line: 23, column: 2, scope: !3946)
!3974 = !DILocation(line: 23, column: 6, scope: !3946)
!3975 = !DILocation(line: 23, column: 20, scope: !3946)
!3976 = !DILocation(line: 23, column: 29, scope: !3946)
!3977 = !DILocation(line: 23, column: 38, scope: !3946)
!3978 = !DILocation(line: 24, column: 2, scope: !3946)
!3979 = !DILocation(line: 24, column: 14, scope: !3946)
!3980 = !DILocation(line: 26, column: 2, scope: !3946)
!3981 = !DILocation(line: 26, column: 9, scope: !3946)
!3982 = !DILocation(line: 26, column: 18, scope: !3946)
!3983 = !DILocation(line: 26, column: 41, scope: !3946)
!3984 = !DILocation(line: 26, column: 39, scope: !3946)
!3985 = !DILocation(line: 26, column: 51, scope: !3946)
!3986 = !DILocation(line: 27, column: 9, scope: !3946)
!3987 = !DILocation(line: 27, column: 18, scope: !3946)
!3988 = !DILocation(line: 27, column: 41, scope: !3946)
!3989 = !DILocation(line: 27, column: 39, scope: !3946)
!3990 = !DILocation(line: 0, scope: !3946)
!3991 = !DILocation(line: 28, column: 3, scope: !3964)
!3992 = !DILocation(line: 28, column: 15, scope: !3964)
!3993 = !DILocation(line: 28, column: 37, scope: !3964)
!3994 = !DILocation(line: 28, column: 50, scope: !3964)
!3995 = !DILocation(line: 28, column: 48, scope: !3964)
!3996 = !DILocation(line: 30, column: 13, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 30, column: 13)
!3998 = !DILocation(line: 30, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 30, column: 13)
!4000 = !DILocation(line: 30, column: 13, scope: !3964)
!4001 = !DILocation(line: 30, column: 11, scope: !3964)
!4002 = !DILocation(line: 31, column: 13, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 31, column: 13)
!4004 = !DILocation(line: 31, column: 13, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 31, column: 13)
!4006 = !DILocation(line: 31, column: 13, scope: !3964)
!4007 = !DILocation(line: 31, column: 11, scope: !3964)
!4008 = !DILocation(line: 33, column: 13, scope: !3964)
!4009 = !DILocation(line: 33, column: 22, scope: !3964)
!4010 = !DILocation(line: 33, column: 11, scope: !3964)
!4011 = !DILocation(line: 34, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 34, column: 7)
!4013 = !DILocation(line: 34, column: 64, scope: !4012)
!4014 = !DILocation(line: 35, column: 7, scope: !4012)
!4015 = !DILocation(line: 35, column: 64, scope: !4012)
!4016 = !DILocation(line: 36, column: 7, scope: !4012)
!4017 = !DILocation(line: 36, column: 17, scope: !4012)
!4018 = !DILocation(line: 36, column: 15, scope: !4012)
!4019 = !DILocation(line: 34, column: 7, scope: !3964)
!4020 = !DILocation(line: 37, column: 4, scope: !4012)
!4021 = !DILocation(line: 39, column: 7, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3964, file: !2, line: 39, column: 7)
!4023 = !DILocation(line: 39, column: 13, scope: !4022)
!4024 = !DILocation(line: 39, column: 20, scope: !4022)
!4025 = !DILocation(line: 39, column: 32, scope: !4022)
!4026 = !DILocation(line: 40, column: 7, scope: !4022)
!4027 = !DILocation(line: 40, column: 15, scope: !4022)
!4028 = !DILocation(line: 40, column: 31, scope: !4022)
!4029 = !DILocation(line: 41, column: 14, scope: !4022)
!4030 = !DILocation(line: 41, column: 19, scope: !4022)
!4031 = !DILocation(line: 41, column: 24, scope: !4022)
!4032 = !DILocation(line: 41, column: 7, scope: !4022)
!4033 = !DILocation(line: 41, column: 49, scope: !4022)
!4034 = !DILocation(line: 41, column: 54, scope: !4022)
!4035 = !DILocation(line: 42, column: 7, scope: !4022)
!4036 = !DILocation(line: 42, column: 15, scope: !4022)
!4037 = !DILocation(line: 42, column: 19, scope: !4022)
!4038 = !DILocation(line: 42, column: 22, scope: !4022)
!4039 = !DILocation(line: 42, column: 30, scope: !4022)
!4040 = !DILocation(line: 39, column: 7, scope: !3964)
!4041 = !DILocation(line: 43, column: 11, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4022, file: !2, line: 42, column: 52)
!4043 = !DILocation(line: 43, column: 24, scope: !4042)
!4044 = !DILocation(line: 43, column: 22, scope: !4042)
!4045 = !DILocation(line: 43, column: 33, scope: !4042)
!4046 = !DILocation(line: 43, column: 54, scope: !4042)
!4047 = !DILocation(line: 43, column: 9, scope: !4042)
!4048 = !DILocation(line: 44, column: 11, scope: !4042)
!4049 = !DILocation(line: 44, column: 21, scope: !4042)
!4050 = !DILocation(line: 44, column: 27, scope: !4042)
!4051 = !DILocation(line: 44, column: 4, scope: !4042)
!4052 = !DILocation(line: 45, column: 11, scope: !4042)
!4053 = !DILocation(line: 45, column: 22, scope: !4042)
!4054 = !DILocation(line: 45, column: 20, scope: !4042)
!4055 = !DILocation(line: 45, column: 54, scope: !4042)
!4056 = !DILocation(line: 45, column: 52, scope: !4042)
!4057 = !DILocation(line: 45, column: 4, scope: !4042)
!4058 = !DILocation(line: 46, column: 8, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4042, file: !2, line: 46, column: 8)
!4060 = !DILocation(line: 46, column: 8, scope: !4042)
!4061 = !DILocation(line: 47, column: 13, scope: !4059)
!4062 = !DILocation(line: 47, column: 6, scope: !4059)
!4063 = !DILocation(line: 47, column: 11, scope: !4059)
!4064 = !DILocation(line: 47, column: 5, scope: !4059)
!4065 = !DILocation(line: 48, column: 4, scope: !4042)
!4066 = !DILocation(line: 51, column: 14, scope: !3964)
!4067 = !DILocation(line: 51, column: 12, scope: !3964)
!4068 = !DILocation(line: 52, column: 2, scope: !3946)
!4069 = distinct !{!4069, !3980, !4068, !3835, !3836}
!4070 = !DILocation(line: 54, column: 2, scope: !3946)
!4071 = !DILocation(line: 55, column: 1, scope: !3946)
!4072 = distinct !DISubprogram(name: "init_vmlinux_build_id", scope: !2, file: !2, line: 209, type: !2433, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4073)
!4073 = !{!4074}
!4074 = !DILocalVariable(name: "size", scope: !4072, file: !2, line: 213, type: !13)
!4075 = !DILocation(line: 213, column: 2, scope: !4072)
!4076 = !DILocation(line: 213, column: 15, scope: !4072)
!4077 = !DILocation(line: 215, column: 55, scope: !4072)
!4078 = !DILocation(line: 215, column: 2, scope: !4072)
!4079 = !DILocation(line: 216, column: 1, scope: !4072)
!4080 = !DISubprogram(name: "pagecache_get_page", scope: !1517, file: !1517, line: 634, type: !4081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!1686, !185, !167, !4083, !608}
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "fgf_t", file: !1517, line: 597, baseType: !13)
!4084 = distinct !DISubprogram(name: "folio_test_uptodate", scope: !81, file: !81, line: 725, type: !4085, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!1363, !157}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "folio", arg: 1, scope: !4084, file: !81, line: 725, type: !157)
!4089 = !DILocalVariable(name: "ret", scope: !4084, file: !81, line: 727, type: !1363)
!4090 = !DILocation(line: 725, column: 54, scope: !4084)
!4091 = !DILocation(line: 727, column: 2, scope: !4084)
!4092 = !DILocation(line: 727, column: 7, scope: !4084)
!4093 = !DILocation(line: 727, column: 13, scope: !4084)
!4094 = !DILocation(line: 736, column: 6, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4084, file: !81, line: 736, column: 6)
!4096 = !{i8 0, i8 2}
!4097 = !DILocation(line: 736, column: 6, scope: !4084)
!4098 = !DILocation(line: 737, column: 3, scope: !4095)
!4099 = !DILocation(line: 737, column: 3, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4095, file: !81, line: 737, column: 3)
!4101 = !DILocation(line: 737, column: 3, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4100, file: !81, line: 737, column: 3)
!4103 = !DILocation(line: 737, column: 3, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !81, line: 737, column: 3)
!4105 = !DILocation(line: 737, column: 3, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4104, file: !81, line: 737, column: 3)
!4107 = !{i64 2151189432}
!4108 = !DILocation(line: 739, column: 9, scope: !4084)
!4109 = !DILocation(line: 740, column: 1, scope: !4084)
!4110 = !DILocation(line: 739, column: 2, scope: !4084)
!4111 = distinct !DISubprogram(name: "_compound_head", scope: !81, file: !81, line: 244, type: !4112, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!167, !3510}
!4114 = !{!4115, !4116}
!4115 = !DILocalVariable(name: "page", arg: 1, scope: !4111, file: !81, line: 244, type: !3510)
!4116 = !DILocalVariable(name: "head", scope: !4111, file: !81, line: 246, type: !167)
!4117 = !DILocation(line: 244, column: 63, scope: !4111)
!4118 = !DILocation(line: 246, column: 2, scope: !4111)
!4119 = !DILocation(line: 246, column: 16, scope: !4111)
!4120 = !DILocation(line: 246, column: 23, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4111, file: !81, line: 246, column: 23)
!4122 = !DILocation(line: 246, column: 23, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4121, file: !81, line: 246, column: 23)
!4124 = !DILocation(line: 248, column: 6, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4111, file: !81, line: 248, column: 6)
!4126 = !DILocation(line: 248, column: 6, scope: !4111)
!4127 = !DILocation(line: 249, column: 10, scope: !4125)
!4128 = !DILocation(line: 249, column: 15, scope: !4125)
!4129 = !DILocation(line: 249, column: 3, scope: !4125)
!4130 = !DILocation(line: 250, column: 45, scope: !4111)
!4131 = !DILocation(line: 250, column: 24, scope: !4111)
!4132 = !DILocation(line: 250, column: 9, scope: !4111)
!4133 = !DILocation(line: 250, column: 2, scope: !4111)
!4134 = !DILocation(line: 251, column: 1, scope: !4111)
!4135 = distinct !DISubprogram(name: "_test_bit", scope: !4136, file: !4136, line: 139, type: !4137, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4139)
!4136 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!1363, !167, !3505}
!4139 = !{!4140, !4141}
!4140 = !DILocalVariable(name: "nr", arg: 1, scope: !4135, file: !4136, line: 139, type: !167)
!4141 = !DILocalVariable(name: "addr", arg: 2, scope: !4135, file: !4136, line: 139, type: !3505)
!4142 = !DILocation(line: 139, column: 25, scope: !4135)
!4143 = !DILocation(line: 139, column: 59, scope: !4135)
!4144 = !DILocation(line: 141, column: 25, scope: !4135)
!4145 = !DILocation(line: 141, column: 32, scope: !4135)
!4146 = !DILocation(line: 141, column: 30, scope: !4135)
!4147 = !DILocation(line: 141, column: 2, scope: !4135)
!4148 = !DILocation(line: 142, column: 23, scope: !4135)
!4149 = !DILocation(line: 142, column: 27, scope: !4135)
!4150 = !DILocation(line: 142, column: 9, scope: !4135)
!4151 = !DILocation(line: 142, column: 2, scope: !4135)
!4152 = distinct !DISubprogram(name: "folio_flags", scope: !81, file: !81, line: 308, type: !4153, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!3504, !157, !13}
!4155 = !{!4156, !4157, !4158}
!4156 = !DILocalVariable(name: "folio", arg: 1, scope: !4152, file: !81, line: 308, type: !157)
!4157 = !DILocalVariable(name: "n", arg: 2, scope: !4152, file: !81, line: 308, type: !13)
!4158 = !DILocalVariable(name: "page", scope: !4152, file: !81, line: 310, type: !1686)
!4159 = !DILocation(line: 308, column: 49, scope: !4152)
!4160 = !DILocation(line: 308, column: 65, scope: !4152)
!4161 = !DILocation(line: 310, column: 2, scope: !4152)
!4162 = !DILocation(line: 310, column: 15, scope: !4152)
!4163 = !DILocation(line: 310, column: 23, scope: !4152)
!4164 = !DILocation(line: 310, column: 30, scope: !4152)
!4165 = !DILocation(line: 314, column: 10, scope: !4152)
!4166 = !DILocation(line: 314, column: 15, scope: !4152)
!4167 = !DILocation(line: 314, column: 18, scope: !4152)
!4168 = !DILocation(line: 315, column: 1, scope: !4152)
!4169 = !DILocation(line: 314, column: 2, scope: !4152)
!4170 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4171, file: !4171, line: 66, type: !4172, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4177)
!4171 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !4174, !523}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4176)
!4176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4177 = !{!4178, !4179}
!4178 = !DILocalVariable(name: "v", arg: 1, scope: !4170, file: !4171, line: 66, type: !4174)
!4179 = !DILocalVariable(name: "size", arg: 2, scope: !4170, file: !4171, line: 66, type: !523)
!4180 = !DILocation(line: 66, column: 73, scope: !4170)
!4181 = !DILocation(line: 66, column: 83, scope: !4170)
!4182 = !DILocation(line: 68, column: 19, scope: !4170)
!4183 = !DILocation(line: 68, column: 22, scope: !4170)
!4184 = !DILocation(line: 68, column: 2, scope: !4170)
!4185 = !DILocation(line: 69, column: 2, scope: !4170)
!4186 = !DILocation(line: 70, column: 1, scope: !4170)
!4187 = distinct !DISubprogram(name: "arch_test_bit", scope: !4188, file: !4188, line: 237, type: !4137, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4189)
!4188 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4189 = !{!4190, !4191}
!4190 = !DILocalVariable(name: "nr", arg: 1, scope: !4187, file: !4188, line: 237, type: !167)
!4191 = !DILocalVariable(name: "addr", arg: 2, scope: !4187, file: !4188, line: 237, type: !3505)
!4192 = !DILocation(line: 237, column: 29, scope: !4187)
!4193 = !DILocation(line: 237, column: 63, scope: !4187)
!4194 = !DILocation(line: 239, column: 30, scope: !4187)
!4195 = !DILocation(line: 239, column: 9, scope: !4187)
!4196 = !DILocation(line: 239, column: 54, scope: !4187)
!4197 = !DILocation(line: 239, column: 58, scope: !4187)
!4198 = !DILocation(line: 239, column: 36, scope: !4187)
!4199 = !DILocation(line: 240, column: 26, scope: !4187)
!4200 = !DILocation(line: 240, column: 30, scope: !4187)
!4201 = !DILocation(line: 240, column: 8, scope: !4187)
!4202 = !DILocation(line: 239, column: 2, scope: !4187)
!4203 = distinct !DISubprogram(name: "kasan_check_read", scope: !4204, file: !4204, line: 40, type: !4205, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4207)
!4204 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!1363, !4174, !13}
!4207 = !{!4208, !4209}
!4208 = !DILocalVariable(name: "p", arg: 1, scope: !4203, file: !4204, line: 40, type: !4174)
!4209 = !DILocalVariable(name: "size", arg: 2, scope: !4203, file: !4204, line: 40, type: !13)
!4210 = !DILocation(line: 40, column: 58, scope: !4203)
!4211 = !DILocation(line: 40, column: 74, scope: !4203)
!4212 = !DILocation(line: 42, column: 2, scope: !4203)
!4213 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4214, file: !4214, line: 229, type: !4215, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4217)
!4214 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4174, !523, !311}
!4217 = !{!4218, !4219, !4220}
!4218 = !DILocalVariable(name: "ptr", arg: 1, scope: !4213, file: !4214, line: 229, type: !4174)
!4219 = !DILocalVariable(name: "size", arg: 2, scope: !4213, file: !4214, line: 229, type: !523)
!4220 = !DILocalVariable(name: "type", arg: 3, scope: !4213, file: !4214, line: 230, type: !311)
!4221 = !DILocation(line: 229, column: 60, scope: !4213)
!4222 = !DILocation(line: 229, column: 72, scope: !4213)
!4223 = !DILocation(line: 230, column: 15, scope: !4213)
!4224 = !DILocation(line: 230, column: 23, scope: !4213)
!4225 = distinct !DISubprogram(name: "constant_test_bit", scope: !4188, file: !4188, line: 204, type: !4226, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!1363, !522, !3505}
!4228 = !{!4229, !4230}
!4229 = !DILocalVariable(name: "nr", arg: 1, scope: !4225, file: !4188, line: 204, type: !522)
!4230 = !DILocalVariable(name: "addr", arg: 2, scope: !4225, file: !4188, line: 204, type: !3505)
!4231 = !DILocation(line: 204, column: 52, scope: !4225)
!4232 = !DILocation(line: 204, column: 86, scope: !4225)
!4233 = !DILocation(line: 206, column: 19, scope: !4225)
!4234 = !DILocation(line: 206, column: 22, scope: !4225)
!4235 = !DILocation(line: 206, column: 15, scope: !4225)
!4236 = !DILocation(line: 207, column: 4, scope: !4225)
!4237 = !DILocation(line: 207, column: 9, scope: !4225)
!4238 = !DILocation(line: 207, column: 12, scope: !4225)
!4239 = !DILocation(line: 206, column: 44, scope: !4225)
!4240 = !DILocation(line: 207, column: 37, scope: !4225)
!4241 = !DILocation(line: 206, column: 2, scope: !4225)
!4242 = distinct !DISubprogram(name: "variable_test_bit", scope: !4188, file: !4188, line: 224, type: !4226, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DILocalVariable(name: "nr", arg: 1, scope: !4242, file: !4188, line: 224, type: !522)
!4245 = !DILocalVariable(name: "addr", arg: 2, scope: !4242, file: !4188, line: 224, type: !3505)
!4246 = !DILocalVariable(name: "oldbit", scope: !4242, file: !4188, line: 226, type: !1363)
!4247 = !DILocation(line: 224, column: 52, scope: !4242)
!4248 = !DILocation(line: 224, column: 86, scope: !4242)
!4249 = !DILocation(line: 226, column: 2, scope: !4242)
!4250 = !DILocation(line: 226, column: 7, scope: !4242)
!4251 = !DILocation(line: 231, column: 33, scope: !4242)
!4252 = !DILocation(line: 231, column: 46, scope: !4242)
!4253 = !DILocation(line: 228, column: 2, scope: !4242)
!4254 = !{i64 2148459677, i64 2148459751}
!4255 = !DILocation(line: 233, column: 9, scope: !4242)
!4256 = !DILocation(line: 234, column: 1, scope: !4242)
!4257 = !DILocation(line: 233, column: 2, scope: !4242)
!4258 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !81, file: !81, line: 207, type: !4259, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!3510, !3510}
!4261 = !{!4262, !4263, !4266}
!4262 = !DILocalVariable(name: "page", arg: 1, scope: !4258, file: !81, line: 207, type: !3510)
!4263 = !DILocalVariable(name: "branch", scope: !4264, file: !81, line: 209, type: !1363)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !81, line: 209, column: 7)
!4265 = distinct !DILexicalBlock(scope: !4258, file: !81, line: 209, column: 6)
!4266 = !DILocalVariable(name: "head", scope: !4267, file: !81, line: 225, type: !167)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !81, line: 219, column: 39)
!4268 = distinct !DILexicalBlock(scope: !4258, file: !81, line: 218, column: 6)
!4269 = !DILocation(line: 207, column: 83, scope: !4258)
!4270 = !DILocation(line: 209, column: 7, scope: !4264)
!4271 = !DILocation(line: 209, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !81, line: 209, column: 7)
!4273 = distinct !DILexicalBlock(scope: !4264, file: !81, line: 209, column: 7)
!4274 = !DILocation(line: 209, column: 7, scope: !4273)
!4275 = !DILocation(line: 209, column: 7, scope: !4265)
!4276 = !DILocation(line: 209, column: 6, scope: !4258)
!4277 = !DILocation(line: 210, column: 10, scope: !4265)
!4278 = !DILocation(line: 210, column: 3, scope: !4265)
!4279 = !DILocation(line: 218, column: 6, scope: !4268)
!4280 = !DILocation(line: 218, column: 49, scope: !4268)
!4281 = !DILocation(line: 219, column: 6, scope: !4268)
!4282 = !DILocation(line: 218, column: 6, scope: !4258)
!4283 = !DILocation(line: 225, column: 3, scope: !4267)
!4284 = !DILocation(line: 225, column: 17, scope: !4267)
!4285 = !DILocation(line: 225, column: 24, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4267, file: !81, line: 225, column: 24)
!4287 = !DILocation(line: 225, column: 24, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4286, file: !81, line: 225, column: 24)
!4289 = !DILocation(line: 227, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4267, file: !81, line: 227, column: 7)
!4291 = !DILocation(line: 227, column: 7, scope: !4267)
!4292 = !DILocation(line: 228, column: 33, scope: !4290)
!4293 = !DILocation(line: 228, column: 38, scope: !4290)
!4294 = !DILocation(line: 228, column: 11, scope: !4290)
!4295 = !DILocation(line: 228, column: 4, scope: !4290)
!4296 = !DILocation(line: 229, column: 2, scope: !4268)
!4297 = !DILocation(line: 229, column: 2, scope: !4267)
!4298 = !DILocation(line: 230, column: 9, scope: !4258)
!4299 = !DILocation(line: 230, column: 2, scope: !4258)
!4300 = !DILocation(line: 231, column: 1, scope: !4258)
!4301 = distinct !DISubprogram(name: "arch_static_branch", scope: !4302, file: !4302, line: 25, type: !4303, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4324)
!4302 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!1363, !4305, !1363}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4307, line: 85, size: 128, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4306, file: !4307, line: 86, baseType: !307, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4306, file: !4307, line: 101, baseType: !4311, size: 64, offset: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4306, file: !4307, line: 101, size: 64, elements: !4312)
!4312 = !{!4313, !4314, !4321}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4311, file: !4307, line: 102, baseType: !167, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4311, file: !4307, line: 103, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4307, line: 117, size: 128, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4316, file: !4307, line: 118, baseType: !1306, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4316, file: !4307, line: 119, baseType: !1306, size: 32, offset: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4316, file: !4307, line: 120, baseType: !522, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4311, file: !4307, line: 104, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4307, line: 104, flags: DIFlagFwdDecl)
!4324 = !{!4325, !4326, !4327}
!4325 = !DILocalVariable(name: "key", arg: 1, scope: !4301, file: !4302, line: 25, type: !4305)
!4326 = !DILocalVariable(name: "branch", arg: 2, scope: !4301, file: !4302, line: 25, type: !1363)
!4327 = !DILabel(scope: !4301, name: "l_yes", file: !4302, line: 33)
!4328 = !DILocation(line: 25, column: 67, scope: !4301)
!4329 = !DILocation(line: 25, column: 77, scope: !4301)
!4330 = !DILocation(line: 30, column: 13, scope: !4301)
!4331 = !DILocation(line: 30, column: 28, scope: !4301)
!4332 = !DILocation(line: 30, column: 26, scope: !4301)
!4333 = !DILocation(line: 27, column: 2, scope: !4301)
!4334 = !{i64 1294907, i64 1294951, i64 2148779634, i64 2148779655, i64 2148779681, i64 2148779714, i64 2148779748, i64 2148779772}
!4335 = !DILocation(line: 32, column: 2, scope: !4301)
!4336 = !DILocation(line: 33, column: 1, scope: !4301)
!4337 = !DILocation(line: 34, column: 2, scope: !4301)
!4338 = !DILocation(line: 35, column: 1, scope: !4301)
!4339 = distinct !DISubprogram(name: "const_test_bit", scope: !4340, file: !4340, line: 166, type: !4137, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4341)
!4340 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4341 = !{!4342, !4343, !4344, !4345, !4346}
!4342 = !DILocalVariable(name: "nr", arg: 1, scope: !4339, file: !4340, line: 166, type: !167)
!4343 = !DILocalVariable(name: "addr", arg: 2, scope: !4339, file: !4340, line: 166, type: !3505)
!4344 = !DILocalVariable(name: "p", scope: !4339, file: !4340, line: 168, type: !3509)
!4345 = !DILocalVariable(name: "mask", scope: !4339, file: !4340, line: 169, type: !167)
!4346 = !DILocalVariable(name: "val", scope: !4339, file: !4340, line: 170, type: !167)
!4347 = !DILocation(line: 166, column: 30, scope: !4339)
!4348 = !DILocation(line: 166, column: 64, scope: !4339)
!4349 = !DILocation(line: 168, column: 2, scope: !4339)
!4350 = !DILocation(line: 168, column: 23, scope: !4339)
!4351 = !DILocation(line: 168, column: 50, scope: !4339)
!4352 = !DILocation(line: 168, column: 57, scope: !4339)
!4353 = !DILocation(line: 168, column: 55, scope: !4339)
!4354 = !DILocation(line: 169, column: 2, scope: !4339)
!4355 = !DILocation(line: 169, column: 16, scope: !4339)
!4356 = !DILocation(line: 169, column: 23, scope: !4339)
!4357 = !DILocation(line: 170, column: 2, scope: !4339)
!4358 = !DILocation(line: 170, column: 16, scope: !4339)
!4359 = !DILocation(line: 170, column: 23, scope: !4339)
!4360 = !DILocation(line: 170, column: 22, scope: !4339)
!4361 = !DILocation(line: 172, column: 12, scope: !4339)
!4362 = !DILocation(line: 172, column: 18, scope: !4339)
!4363 = !DILocation(line: 172, column: 16, scope: !4339)
!4364 = !DILocation(line: 172, column: 10, scope: !4339)
!4365 = !DILocation(line: 172, column: 9, scope: !4339)
!4366 = !DILocation(line: 173, column: 1, scope: !4339)
!4367 = !DILocation(line: 172, column: 2, scope: !4339)
!4368 = distinct !DISubprogram(name: "put_devmap_managed_page", scope: !1625, file: !1625, line: 1428, type: !4369, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!1363, !1686}
!4371 = !{!4372}
!4372 = !DILocalVariable(name: "page", arg: 1, scope: !4368, file: !1625, line: 1428, type: !1686)
!4373 = !DILocation(line: 1428, column: 57, scope: !4368)
!4374 = !DILocation(line: 1430, column: 38, scope: !4368)
!4375 = !DILocation(line: 1430, column: 9, scope: !4368)
!4376 = !DILocation(line: 1430, column: 2, scope: !4368)
!4377 = distinct !DISubprogram(name: "folio_put", scope: !1625, file: !1625, line: 1478, type: !3416, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4378)
!4378 = !{!4379}
!4379 = !DILocalVariable(name: "folio", arg: 1, scope: !4377, file: !1625, line: 1478, type: !157)
!4380 = !DILocation(line: 1478, column: 44, scope: !4377)
!4381 = !DILocation(line: 1480, column: 25, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4377, file: !1625, line: 1480, column: 6)
!4383 = !DILocation(line: 1480, column: 6, scope: !4382)
!4384 = !DILocation(line: 1480, column: 6, scope: !4377)
!4385 = !DILocation(line: 1481, column: 15, scope: !4382)
!4386 = !DILocation(line: 1481, column: 3, scope: !4382)
!4387 = !DILocation(line: 1482, column: 1, scope: !4377)
!4388 = distinct !DISubprogram(name: "put_devmap_managed_page_refs", scope: !1625, file: !1625, line: 1422, type: !4389, scopeLine: 1423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!1363, !1686, !311}
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "page", arg: 1, scope: !4388, file: !1625, line: 1422, type: !1686)
!4393 = !DILocalVariable(name: "refs", arg: 2, scope: !4388, file: !1625, line: 1422, type: !311)
!4394 = !DILocation(line: 1422, column: 62, scope: !4388)
!4395 = !DILocation(line: 1422, column: 72, scope: !4388)
!4396 = !DILocation(line: 1424, column: 2, scope: !4388)
!4397 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1625, file: !1625, line: 1103, type: !3425, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4398)
!4398 = !{!4399}
!4399 = !DILocalVariable(name: "folio", arg: 1, scope: !4397, file: !1625, line: 1103, type: !157)
!4400 = !DILocation(line: 1103, column: 52, scope: !4397)
!4401 = !DILocation(line: 1105, column: 28, scope: !4397)
!4402 = !DILocation(line: 1105, column: 35, scope: !4397)
!4403 = !DILocation(line: 1105, column: 9, scope: !4397)
!4404 = !DILocation(line: 1105, column: 2, scope: !4397)
!4405 = !DISubprogram(name: "__folio_put", scope: !1625, file: !1625, line: 1283, type: !3416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4406 = distinct !DISubprogram(name: "put_page_testzero", scope: !1625, file: !1625, line: 1097, type: !3714, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4407)
!4407 = !{!4408}
!4408 = !DILocalVariable(name: "page", arg: 1, scope: !4406, file: !1625, line: 1097, type: !1686)
!4409 = !DILocation(line: 1097, column: 50, scope: !4406)
!4410 = !DILocation(line: 1100, column: 31, scope: !4406)
!4411 = !DILocation(line: 1100, column: 9, scope: !4406)
!4412 = !DILocation(line: 1100, column: 2, scope: !4406)
!4413 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !4414, file: !4414, line: 208, type: !3714, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4415)
!4414 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "page", arg: 1, scope: !4413, file: !4414, line: 208, type: !1686)
!4417 = !DILocalVariable(name: "ret", scope: !4413, file: !4414, line: 210, type: !311)
!4418 = !DILocation(line: 208, column: 54, scope: !4413)
!4419 = !DILocation(line: 210, column: 2, scope: !4413)
!4420 = !DILocation(line: 210, column: 6, scope: !4413)
!4421 = !DILocation(line: 210, column: 33, scope: !4413)
!4422 = !DILocation(line: 210, column: 39, scope: !4413)
!4423 = !DILocation(line: 210, column: 12, scope: !4413)
!4424 = !DILocation(line: 214, column: 9, scope: !4413)
!4425 = !DILocation(line: 215, column: 1, scope: !4413)
!4426 = !DILocation(line: 214, column: 2, scope: !4413)
!4427 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !4428, file: !4428, line: 1372, type: !4429, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4432)
!4428 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!1363, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4432 = !{!4433}
!4433 = !DILocalVariable(name: "v", arg: 1, scope: !4427, file: !4428, line: 1372, type: !4431)
!4434 = !DILocation(line: 1372, column: 31, scope: !4427)
!4435 = !DILocation(line: 1374, column: 2, scope: !4427)
!4436 = !DILocation(line: 1374, column: 2, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4427, file: !4428, line: 1374, column: 2)
!4438 = !DILocation(line: 1375, column: 31, scope: !4427)
!4439 = !DILocation(line: 1375, column: 2, scope: !4427)
!4440 = !DILocation(line: 1376, column: 33, scope: !4427)
!4441 = !DILocation(line: 1376, column: 9, scope: !4427)
!4442 = !DILocation(line: 1376, column: 2, scope: !4427)
!4443 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4171, file: !4171, line: 94, type: !4172, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4444)
!4444 = !{!4445, !4446}
!4445 = !DILocalVariable(name: "v", arg: 1, scope: !4443, file: !4171, line: 94, type: !4174)
!4446 = !DILocalVariable(name: "size", arg: 2, scope: !4443, file: !4171, line: 94, type: !523)
!4447 = !DILocation(line: 94, column: 79, scope: !4443)
!4448 = !DILocation(line: 94, column: 89, scope: !4443)
!4449 = !DILocation(line: 96, column: 20, scope: !4443)
!4450 = !DILocation(line: 96, column: 23, scope: !4443)
!4451 = !DILocation(line: 96, column: 2, scope: !4443)
!4452 = !DILocation(line: 97, column: 2, scope: !4443)
!4453 = !DILocation(line: 98, column: 1, scope: !4443)
!4454 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !4455, file: !4455, line: 2254, type: !4429, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4456)
!4455 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4456 = !{!4457}
!4457 = !DILocalVariable(name: "v", arg: 1, scope: !4454, file: !4455, line: 2254, type: !4431)
!4458 = !DILocation(line: 2254, column: 35, scope: !4454)
!4459 = !DILocation(line: 2257, column: 34, scope: !4454)
!4460 = !DILocation(line: 2257, column: 9, scope: !4454)
!4461 = !DILocation(line: 2257, column: 2, scope: !4454)
!4462 = distinct !DISubprogram(name: "kasan_check_write", scope: !4204, file: !4204, line: 44, type: !4205, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4463)
!4463 = !{!4464, !4465}
!4464 = !DILocalVariable(name: "p", arg: 1, scope: !4462, file: !4204, line: 44, type: !4174)
!4465 = !DILocalVariable(name: "size", arg: 2, scope: !4462, file: !4204, line: 44, type: !13)
!4466 = !DILocation(line: 44, column: 59, scope: !4462)
!4467 = !DILocation(line: 44, column: 75, scope: !4462)
!4468 = !DILocation(line: 46, column: 2, scope: !4462)
!4469 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !4470, file: !4470, line: 65, type: !4429, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4471)
!4470 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4471 = !{!4472, !4473}
!4472 = !DILocalVariable(name: "v", arg: 1, scope: !4469, file: !4470, line: 65, type: !4431)
!4473 = !DILocalVariable(name: "c", scope: !4474, file: !4470, line: 67, type: !1363)
!4474 = distinct !DILexicalBlock(scope: !4469, file: !4470, line: 67, column: 9)
!4475 = !DILocation(line: 65, column: 64, scope: !4469)
!4476 = !DILocation(line: 67, column: 9, scope: !4474)
!4477 = !{i64 2147817256, i64 2147817295, i64 2147817316, i64 2147817353, i64 2147817376, i64 2147817385, i64 2147817459}
!4478 = !DILocation(line: 67, column: 9, scope: !4469)
!4479 = !DILocation(line: 67, column: 2, scope: !4469)
!4480 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4481, file: !4481, line: 78, type: !2426, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4482)
!4481 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4482 = !{!4483, !4484, !4487}
!4483 = !DILocalVariable(name: "val", arg: 1, scope: !4480, file: !4481, line: 78, type: !311)
!4484 = !DILocalVariable(name: "pao_ID__", scope: !4485, file: !4481, line: 80, type: !4486)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !4481, line: 80, column: 2)
!4486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!4487 = !DILocalVariable(name: "pto_val__", scope: !4488, file: !4481, line: 80, type: !260)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !4481, line: 80, column: 2)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !4481, line: 80, column: 2)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !4481, line: 80, column: 2)
!4491 = !DILocation(line: 78, column: 53, scope: !4480)
!4492 = !DILocation(line: 80, column: 2, scope: !4480)
!4493 = !DILocation(line: 80, column: 2, scope: !4485)
!4494 = !DILocation(line: 80, column: 2, scope: !4490)
!4495 = !DILocation(line: 80, column: 2, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4490, file: !4481, line: 80, column: 2)
!4497 = !{i64 2149510408}
!4498 = !DILocation(line: 80, column: 2, scope: !4489)
!4499 = !DILocation(line: 80, column: 2, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4489, file: !4481, line: 80, column: 2)
!4501 = !{i64 2149510703}
!4502 = !DILocation(line: 80, column: 2, scope: !4488)
!4503 = !{i64 2149511408}
!4504 = !DILocation(line: 81, column: 1, scope: !4480)
!4505 = distinct !DISubprogram(name: "pagefault_disable", scope: !4506, file: !4506, line: 225, type: !2433, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4506 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4507 = !DILocation(line: 227, column: 2, scope: !4505)
!4508 = !DILocation(line: 232, column: 2, scope: !4505)
!4509 = !{i64 2153457927}
!4510 = !DILocation(line: 233, column: 1, scope: !4505)
!4511 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1625, file: !1625, line: 2176, type: !4512, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!182, !3510}
!4514 = !{!4515}
!4515 = !DILocalVariable(name: "page", arg: 1, scope: !4511, file: !1625, line: 2176, type: !3510)
!4516 = !DILocation(line: 2176, column: 69, scope: !4511)
!4517 = !DILocation(line: 2178, column: 9, scope: !4511)
!4518 = !DILocation(line: 2178, column: 2, scope: !4511)
!4519 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !4506, file: !4506, line: 208, type: !2433, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4520 = !DILocation(line: 210, column: 2, scope: !4519)
!4521 = !DILocation(line: 210, column: 11, scope: !4519)
!4522 = !DILocation(line: 210, column: 29, scope: !4519)
!4523 = !DILocation(line: 211, column: 1, scope: !4519)
!4524 = distinct !DISubprogram(name: "get_current", scope: !4525, file: !4525, line: 39, type: !4526, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4528)
!4525 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!871}
!4528 = !{!4529, !4531, !4533}
!4529 = !DILocalVariable(name: "pscr_ret__", scope: !4530, file: !4525, line: 41, type: !871)
!4530 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 41, column: 9)
!4531 = !DILocalVariable(name: "__vpp_verify", scope: !4532, file: !4525, line: 41, type: !2048)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !4525, line: 41, column: 9)
!4533 = !DILocalVariable(name: "pfo_val__", scope: !4534, file: !4525, line: 41, type: !264)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !4525, line: 41, column: 9)
!4535 = !DILocation(line: 41, column: 9, scope: !4530)
!4536 = !DILocation(line: 41, column: 9, scope: !4532)
!4537 = !DILocation(line: 41, column: 9, scope: !4534)
!4538 = !{i64 2149104494}
!4539 = !DILocation(line: 41, column: 9, scope: !4524)
!4540 = !DILocation(line: 41, column: 2, scope: !4524)
!4541 = distinct !DISubprogram(name: "parse_build_id", scope: !2, file: !2, line: 57, type: !4542, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!311, !2048, !3600, !3601, !2048, !143}
!4544 = !{!4545, !4546, !4547, !4548, !4549}
!4545 = !DILocalVariable(name: "page_addr", arg: 1, scope: !4541, file: !2, line: 57, type: !2048)
!4546 = !DILocalVariable(name: "build_id", arg: 2, scope: !4541, file: !2, line: 58, type: !3600)
!4547 = !DILocalVariable(name: "size", arg: 3, scope: !4541, file: !2, line: 59, type: !3601)
!4548 = !DILocalVariable(name: "note_start", arg: 4, scope: !4541, file: !2, line: 60, type: !2048)
!4549 = !DILocalVariable(name: "note_size", arg: 5, scope: !4541, file: !2, line: 61, type: !143)
!4550 = !DILocation(line: 57, column: 46, scope: !4541)
!4551 = !DILocation(line: 58, column: 21, scope: !4541)
!4552 = !DILocation(line: 59, column: 13, scope: !4541)
!4553 = !DILocation(line: 60, column: 18, scope: !4541)
!4554 = !DILocation(line: 61, column: 17, scope: !4541)
!4555 = !DILocation(line: 64, column: 6, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4541, file: !2, line: 64, column: 6)
!4557 = !DILocation(line: 64, column: 19, scope: !4556)
!4558 = !DILocation(line: 64, column: 17, scope: !4556)
!4559 = !DILocation(line: 64, column: 29, scope: !4556)
!4560 = !DILocation(line: 64, column: 32, scope: !4556)
!4561 = !DILocation(line: 64, column: 45, scope: !4556)
!4562 = !DILocation(line: 64, column: 43, scope: !4556)
!4563 = !DILocation(line: 64, column: 57, scope: !4556)
!4564 = !DILocation(line: 64, column: 55, scope: !4556)
!4565 = !DILocation(line: 64, column: 6, scope: !4541)
!4566 = !DILocation(line: 65, column: 3, scope: !4556)
!4567 = !DILocation(line: 68, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4541, file: !2, line: 68, column: 6)
!4569 = !DILocation(line: 68, column: 19, scope: !4568)
!4570 = !DILocation(line: 68, column: 17, scope: !4568)
!4571 = !DILocation(line: 68, column: 31, scope: !4568)
!4572 = !DILocation(line: 68, column: 41, scope: !4568)
!4573 = !DILocation(line: 68, column: 29, scope: !4568)
!4574 = !DILocation(line: 68, column: 6, scope: !4541)
!4575 = !DILocation(line: 69, column: 3, scope: !4568)
!4576 = !DILocation(line: 71, column: 28, scope: !4541)
!4577 = !DILocation(line: 71, column: 38, scope: !4541)
!4578 = !DILocation(line: 71, column: 44, scope: !4541)
!4579 = !DILocation(line: 71, column: 56, scope: !4541)
!4580 = !DILocation(line: 71, column: 9, scope: !4541)
!4581 = !DILocation(line: 71, column: 2, scope: !4541)
!4582 = !DILocation(line: 72, column: 1, scope: !4541)
!4583 = distinct !DISubprogram(name: "pagefault_enable", scope: !4506, file: !4506, line: 235, type: !2433, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4584 = !DILocation(line: 241, column: 2, scope: !4583)
!4585 = !{i64 2153458130}
!4586 = !DILocation(line: 242, column: 2, scope: !4583)
!4587 = !DILocation(line: 243, column: 1, scope: !4583)
!4588 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4481, file: !4481, line: 93, type: !4589, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!1363}
!4591 = !{!4592}
!4592 = !DILocalVariable(name: "c", scope: !4593, file: !4481, line: 95, type: !1363)
!4593 = distinct !DILexicalBlock(scope: !4588, file: !4481, line: 95, column: 9)
!4594 = !DILocation(line: 95, column: 9, scope: !4593)
!4595 = !{i64 2149514764, i64 2149514857}
!4596 = !DILocation(line: 95, column: 9, scope: !4588)
!4597 = !DILocation(line: 95, column: 2, scope: !4588)
!4598 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !4506, file: !4506, line: 213, type: !2433, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4599 = !DILocation(line: 215, column: 2, scope: !4598)
!4600 = !DILocation(line: 215, column: 11, scope: !4598)
!4601 = !DILocation(line: 215, column: 29, scope: !4598)
!4602 = !DILocation(line: 216, column: 1, scope: !4598)
!4603 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4604, file: !4604, line: 51, type: !4605, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4607)
!4604 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!1363, !1363}
!4607 = !{!4608}
!4608 = !DILocalVariable(name: "overflow", arg: 1, scope: !4603, file: !4604, line: 51, type: !1363)
!4609 = !DILocation(line: 51, column: 60, scope: !4603)
!4610 = !DILocation(line: 53, column: 9, scope: !4603)
!4611 = !DILocation(line: 53, column: 2, scope: !4603)
