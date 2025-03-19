; ModuleID = 'arch/x86/kernel/msr.c'
source_filename = "arch/x86/kernel/msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_msr__289_287_msr_init\22, \22a\22\09\09"
module asm "__initcall__kmod_msr__289_287_msr_init6:\09\09\09"
module asm ".long\09__initstub__kmod_msr__289_287_msr_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpuinfo_x86 = type { %union.anon.23, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.25, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.23 = type { i32 }
%union.anon.25 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.file = type { %union.anon.18, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.19, %struct.qspinlock }
%union.anon.19 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.14 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.15 = type { %struct.callback_head }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.17 = type { ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__UNIQUE_ID___addressable___initstub__kmod_msr__289_287_msr_init6290 = internal global ptr @__initstub__kmod_msr__289_287_msr_init6, section ".discard.addressable", align 8, !dbg !0
@cpuhp_msr_state = internal global i32 0, align 4, !dbg !4424
@msr_class = internal constant %struct.class { ptr @.str.7, ptr null, ptr null, ptr null, ptr @msr_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4468
@.str = private unnamed_addr constant [8 x i8] c"cpu/msr\00", align 1, !dbg !4398
@__exitcall_msr_exit = internal global ptr @msr_exit, section ".exitcall.exit", align 8, !dbg !4400
@__param_str_allow_writes = internal constant [17 x i8] c"msr.allow_writes\00", align 16, !dbg !4824
@allow_writes_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @set_allow_writes, ptr @get_allow_writes, ptr null }, align 8, !dbg !4829
@__param_allow_writes = internal constant %struct.kernel_param { ptr @__param_str_allow_writes, ptr null, ptr @allow_writes_ops, i16 384, i8 -1, i8 0, %union.anon.13 zeroinitializer }, section "__param", align 8, !dbg !4404
@__UNIQUE_ID_author291 = internal constant [42 x i8] c"msr.author=H. Peter Anvin <hpa@zytor.com>\00", section ".modinfo", align 1, !dbg !4406
@__UNIQUE_ID_description292 = internal constant [39 x i8] c"msr.description=x86 generic MSR driver\00", section ".modinfo", align 1, !dbg !4411
@__UNIQUE_ID_file293 = internal constant [29 x i8] c"msr.file=arch/x86/kernel/msr\00", section ".modinfo", align 1, !dbg !4416
@__UNIQUE_ID_license294 = internal constant [16 x i8] c"msr.license=GPL\00", section ".modinfo", align 1, !dbg !4421
@msr_fops = internal constant %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @msr_read, ptr @msr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msr_ioctl, ptr @msr_ioctl, ptr null, i64 0, ptr @msr_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4434
@.str.1 = private unnamed_addr constant [39 x i8] c"\013msr: unable to get major %d for msr\0A\00", align 1, !dbg !4426
@.str.2 = private unnamed_addr constant [15 x i8] c"x86/msr:online\00", align 1, !dbg !4429
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4436
@filter_write.fw_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 30000, i32 1, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4442
@allow_writes = internal global i32 2, align 4, !dbg !4461
@__func__.filter_write = private unnamed_addr constant [13 x i8] c"filter_write\00", align 1, !dbg !4449
@.str.4 = private unnamed_addr constant [56 x i8] c"\014msr: Write to unrecognized MSR 0x%x by %s (pid: %d).\0A\00", align 1, !dbg !4454
@.str.5 = private unnamed_addr constant [91 x i8] c"\014msr: See https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/about for details.\0A\00", align 1, !dbg !4456
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@nr_cpu_ids = external dso_local global i32, align 4
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"msr%d\00", align 1, !dbg !4463
@.str.7 = private unnamed_addr constant [4 x i8] c"msr\00", align 1, !dbg !4465
@.str.8 = private unnamed_addr constant [11 x i8] c"cpu/%u/msr\00", align 1, !dbg !4819
@.str.9 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !4831
@.str.10 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !4834
@.str.11 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !dbg !4836
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4838
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_msr__289_287_msr_init6290, ptr @msr_exit, ptr @__exitcall_msr_exit, ptr @__param_allow_writes, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_msr__289_287_msr_init6() #0 section ".init.text" align 16 !dbg !4849 {
entry:
  %call = call i32 @msr_init() #13, !dbg !4850
  ret i32 %call, !dbg !4850
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @msr_init() #0 section ".init.text" align 16 !dbg !4851 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4856
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4853, metadata !DIExpression()), !dbg !4857
  %call = call i32 @__register_chrdev(i32 noundef 202, i32 noundef 0, i32 noundef 64, ptr noundef @.str, ptr noundef @msr_fops) #15, !dbg !4858
  %tobool = icmp ne i32 %call, 0, !dbg !4858
  br i1 %tobool, label %if.then, label %if.end, !dbg !4860

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4861

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4864

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4864

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef 202) #13, !dbg !4861
  store i32 %call1, ptr %tmp, align 4, !dbg !4864
  %0 = load i32, ptr %tmp, align 4, !dbg !4861
  store i32 -16, ptr %retval, align 4, !dbg !4866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4866

if.end:                                           ; preds = %entry
  %call2 = call i32 @class_register(ptr noundef @msr_class) #15, !dbg !4867
  store i32 %call2, ptr %err, align 4, !dbg !4868
  %1 = load i32, ptr %err, align 4, !dbg !4869
  %tobool3 = icmp ne i32 %1, 0, !dbg !4869
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4871

if.then4:                                         ; preds = %if.end
  br label %out_chrdev, !dbg !4872

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.2, ptr noundef @msr_device_create, ptr noundef @msr_device_destroy) #15, !dbg !4873
  store i32 %call6, ptr %err, align 4, !dbg !4874
  %2 = load i32, ptr %err, align 4, !dbg !4875
  %cmp = icmp slt i32 %2, 0, !dbg !4877
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4878

if.then7:                                         ; preds = %if.end5
  br label %out_class, !dbg !4879

if.end8:                                          ; preds = %if.end5
  %3 = load i32, ptr %err, align 4, !dbg !4880
  store i32 %3, ptr @cpuhp_msr_state, align 4, !dbg !4881
  store i32 0, ptr %retval, align 4, !dbg !4882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4882

out_class:                                        ; preds = %if.then7
  call void @llvm.dbg.label(metadata !4854), !dbg !4883
  call void @class_unregister(ptr noundef @msr_class) #15, !dbg !4884
  br label %out_chrdev, !dbg !4884

out_chrdev:                                       ; preds = %out_class, %if.then4
  call void @llvm.dbg.label(metadata !4855), !dbg !4885
  call void @__unregister_chrdev(i32 noundef 202, i32 noundef 0, i32 noundef 64, ptr noundef @.str) #15, !dbg !4886
  %4 = load i32, ptr %err, align 4, !dbg !4887
  store i32 %4, ptr %retval, align 4, !dbg !4888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4888

cleanup:                                          ; preds = %out_chrdev, %if.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4889
  %5 = load i32, ptr %retval, align 4, !dbg !4889
  ret i32 %5, !dbg !4889
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @msr_exit() #0 section ".exit.text" align 16 !dbg !4890 {
entry:
  %0 = load i32, ptr @cpuhp_msr_state, align 4, !dbg !4891
  call void @cpuhp_remove_state(i32 noundef %0) #15, !dbg !4892
  call void @class_unregister(ptr noundef @msr_class) #15, !dbg !4893
  call void @__unregister_chrdev(i32 noundef 202, i32 noundef 0, i32 noundef 64, ptr noundef @.str) #15, !dbg !4894
  ret void, !dbg !4895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state(i32 noundef %state) #1 align 16 !dbg !4896 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load i32, ptr %state.addr, align 4, !dbg !4902
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #15, !dbg !4903
  ret void, !dbg !4904
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4905 dso_local void @class_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4906 dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4909 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4912 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4916 dso_local i32 @class_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #1 align 16 !dbg !4919 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4926, metadata !DIExpression()), !dbg !4930
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4927, metadata !DIExpression()), !dbg !4931
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !4928, metadata !DIExpression()), !dbg !4932
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !4929, metadata !DIExpression()), !dbg !4933
  %0 = load i32, ptr %state.addr, align 4, !dbg !4934
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4935
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !4936
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !4937
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #15, !dbg !4938
  ret i32 %call, !dbg !4939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_device_create(i32 noundef %cpu) #6 align 16 !dbg !4940 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4943, metadata !DIExpression()), !dbg !4946
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4947
  %or = or i32 211812352, %0, !dbg !4947
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4948
  %call = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef @msr_class, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef @.str.6, i32 noundef %1) #15, !dbg !4949
  store ptr %call, ptr %dev, align 8, !dbg !4950
  %2 = load ptr, ptr %dev, align 8, !dbg !4951
  %call1 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %2) #15, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !4953
  ret i32 %call1, !dbg !4954
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_device_destroy(i32 noundef %cpu) #6 align 16 !dbg !4955 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4959
  %or = or i32 211812352, %0, !dbg !4959
  call void @device_destroy(ptr noundef @msr_class, i32 noundef %or) #15, !dbg !4960
  ret i32 0, !dbg !4961
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msr_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #6 align 16 !dbg !4962 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %data = alloca [2 x i32], align 4
  %reg = alloca i32, align 4
  %cpu = alloca i32, align 4
  %err = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4964, metadata !DIExpression()), !dbg !4975
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4965, metadata !DIExpression()), !dbg !4976
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4966, metadata !DIExpression()), !dbg !4977
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4967, metadata !DIExpression()), !dbg !4978
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !4979
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4968, metadata !DIExpression()), !dbg !4980
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4981
  store ptr %0, ptr %tmp, align 8, !dbg !4980
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4969, metadata !DIExpression()), !dbg !4983
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #14, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !4971, metadata !DIExpression()), !dbg !4985
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !4986
  %2 = load i64, ptr %1, align 8, !dbg !4987
  %conv = trunc i64 %2 to i32, !dbg !4987
  store i32 %conv, ptr %reg, align 4, !dbg !4985
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !4988
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4972, metadata !DIExpression()), !dbg !4989
  %3 = load ptr, ptr %file.addr, align 8, !dbg !4990
  %call = call ptr @file_inode(ptr noundef %3) #15, !dbg !4991
  %call1 = call i32 @iminor(ptr noundef %call) #15, !dbg !4992
  store i32 %call1, ptr %cpu, align 4, !dbg !4989
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4973, metadata !DIExpression()), !dbg !4994
  store i32 0, ptr %err, align 4, !dbg !4994
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4974, metadata !DIExpression()), !dbg !4996
  store i64 0, ptr %bytes, align 8, !dbg !4996
  %4 = load i64, ptr %count.addr, align 8, !dbg !4997
  %rem = urem i64 %4, 8, !dbg !4999
  %tobool = icmp ne i64 %rem, 0, !dbg !4999
  br i1 %tobool, label %if.then, label %if.end, !dbg !5000

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !5001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5001

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !5002

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %count.addr, align 8, !dbg !5003
  %tobool2 = icmp ne i64 %5, 0, !dbg !5006
  br i1 %tobool2, label %for.body, label %for.end, !dbg !5006

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %cpu, align 4, !dbg !5007
  %7 = load i32, ptr %reg, align 4, !dbg !5009
  %arrayidx = getelementptr [2 x i32], ptr %data, i64 0, i64 0, !dbg !5010
  %arrayidx3 = getelementptr [2 x i32], ptr %data, i64 0, i64 1, !dbg !5011
  %call4 = call i32 @rdmsr_safe_on_cpu(i32 noundef %6, i32 noundef %7, ptr noundef %arrayidx, ptr noundef %arrayidx3) #15, !dbg !5012
  store i32 %call4, ptr %err, align 4, !dbg !5013
  %8 = load i32, ptr %err, align 4, !dbg !5014
  %tobool5 = icmp ne i32 %8, 0, !dbg !5014
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5016

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !5017

if.end7:                                          ; preds = %for.body
  %9 = load ptr, ptr %tmp, align 8, !dbg !5018
  %call8 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %data, i64 noundef 8) #15, !dbg !5020
  %tobool9 = icmp ne i64 %call8, 0, !dbg !5020
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5021

if.then10:                                        ; preds = %if.end7
  store i32 -14, ptr %err, align 4, !dbg !5022
  br label %for.end, !dbg !5024

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %tmp, align 8, !dbg !5025
  %add.ptr = getelementptr i32, ptr %10, i64 2, !dbg !5025
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5025
  %11 = load i64, ptr %bytes, align 8, !dbg !5026
  %add = add i64 %11, 8, !dbg !5026
  store i64 %add, ptr %bytes, align 8, !dbg !5026
  br label %for.inc, !dbg !5027

for.inc:                                          ; preds = %if.end11
  %12 = load i64, ptr %count.addr, align 8, !dbg !5028
  %sub = sub i64 %12, 8, !dbg !5028
  store i64 %sub, ptr %count.addr, align 8, !dbg !5028
  br label %for.cond, !dbg !5029, !llvm.loop !5030

for.end:                                          ; preds = %if.then10, %if.then6, %for.cond
  %13 = load i64, ptr %bytes, align 8, !dbg !5034
  %tobool12 = icmp ne i64 %13, 0, !dbg !5034
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !5034

cond.true:                                        ; preds = %for.end
  %14 = load i64, ptr %bytes, align 8, !dbg !5035
  br label %cond.end, !dbg !5034

cond.false:                                       ; preds = %for.end
  %15 = load i32, ptr %err, align 4, !dbg !5036
  %conv13 = sext i32 %15 to i64, !dbg !5036
  br label %cond.end, !dbg !5034

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %conv13, %cond.false ], !dbg !5034
  store i64 %cond, ptr %retval, align 8, !dbg !5037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5037

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #14, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !5038
  %16 = load i64, ptr %retval, align 8, !dbg !5038
  ret i64 %16, !dbg !5038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msr_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #6 align 16 !dbg !5039 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %data = alloca [2 x i32], align 4
  %reg = alloca i32, align 4
  %cpu = alloca i32, align 4
  %err = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5041, metadata !DIExpression()), !dbg !5051
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5042, metadata !DIExpression()), !dbg !5052
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5043, metadata !DIExpression()), !dbg !5053
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5044, metadata !DIExpression()), !dbg !5054
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5045, metadata !DIExpression()), !dbg !5056
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5057
  store ptr %0, ptr %tmp, align 8, !dbg !5056
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5046, metadata !DIExpression()), !dbg !5059
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #14, !dbg !5060
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !5047, metadata !DIExpression()), !dbg !5061
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !5062
  %2 = load i64, ptr %1, align 8, !dbg !5063
  %conv = trunc i64 %2 to i32, !dbg !5063
  store i32 %conv, ptr %reg, align 4, !dbg !5061
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !5064
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5048, metadata !DIExpression()), !dbg !5065
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5066
  %call = call ptr @file_inode(ptr noundef %3) #15, !dbg !5067
  %call1 = call i32 @iminor(ptr noundef %call) #15, !dbg !5068
  store i32 %call1, ptr %cpu, align 4, !dbg !5065
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5069
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5049, metadata !DIExpression()), !dbg !5070
  store i32 0, ptr %err, align 4, !dbg !5070
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5050, metadata !DIExpression()), !dbg !5072
  store i64 0, ptr %bytes, align 8, !dbg !5072
  %call2 = call i32 @security_locked_down(i32 noundef 8) #15, !dbg !5073
  store i32 %call2, ptr %err, align 4, !dbg !5074
  %4 = load i32, ptr %err, align 4, !dbg !5075
  %tobool = icmp ne i32 %4, 0, !dbg !5075
  br i1 %tobool, label %if.then, label %if.end, !dbg !5077

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !5078
  %conv3 = sext i32 %5 to i64, !dbg !5078
  store i64 %conv3, ptr %retval, align 8, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %reg, align 4, !dbg !5080
  %call4 = call i32 @filter_write(i32 noundef %6) #15, !dbg !5081
  store i32 %call4, ptr %err, align 4, !dbg !5082
  %7 = load i32, ptr %err, align 4, !dbg !5083
  %tobool5 = icmp ne i32 %7, 0, !dbg !5083
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5085

if.then6:                                         ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !5086
  %conv7 = sext i32 %8 to i64, !dbg !5086
  store i64 %conv7, ptr %retval, align 8, !dbg !5087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5087

if.end8:                                          ; preds = %if.end
  %9 = load i64, ptr %count.addr, align 8, !dbg !5088
  %rem = urem i64 %9, 8, !dbg !5090
  %tobool9 = icmp ne i64 %rem, 0, !dbg !5090
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5091

if.then10:                                        ; preds = %if.end8
  store i64 -22, ptr %retval, align 8, !dbg !5092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5092

if.end11:                                         ; preds = %if.end8
  br label %for.cond, !dbg !5093

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load i64, ptr %count.addr, align 8, !dbg !5094
  %tobool12 = icmp ne i64 %10, 0, !dbg !5097
  br i1 %tobool12, label %for.body, label %for.end, !dbg !5097

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %tmp, align 8, !dbg !5098
  %call13 = call i64 @copy_from_user(ptr noundef %data, ptr noundef %11, i64 noundef 8) #15, !dbg !5101
  %tobool14 = icmp ne i64 %call13, 0, !dbg !5101
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5102

if.then15:                                        ; preds = %for.body
  store i32 -14, ptr %err, align 4, !dbg !5103
  br label %for.end, !dbg !5105

if.end16:                                         ; preds = %for.body
  call void @add_taint(i32 noundef 2, i32 noundef 0) #15, !dbg !5106
  %12 = load i32, ptr %cpu, align 4, !dbg !5107
  %13 = load i32, ptr %reg, align 4, !dbg !5108
  %arrayidx = getelementptr [2 x i32], ptr %data, i64 0, i64 0, !dbg !5109
  %14 = load i32, ptr %arrayidx, align 4, !dbg !5109
  %arrayidx17 = getelementptr [2 x i32], ptr %data, i64 0, i64 1, !dbg !5110
  %15 = load i32, ptr %arrayidx17, align 4, !dbg !5110
  %call18 = call i32 @wrmsr_safe_on_cpu(i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #15, !dbg !5111
  store i32 %call18, ptr %err, align 4, !dbg !5112
  %16 = load i32, ptr %err, align 4, !dbg !5113
  %tobool19 = icmp ne i32 %16, 0, !dbg !5113
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5115

if.then20:                                        ; preds = %if.end16
  br label %for.end, !dbg !5116

if.end21:                                         ; preds = %if.end16
  %17 = load ptr, ptr %tmp, align 8, !dbg !5117
  %add.ptr = getelementptr i32, ptr %17, i64 2, !dbg !5117
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5117
  %18 = load i64, ptr %bytes, align 8, !dbg !5118
  %add = add i64 %18, 8, !dbg !5118
  store i64 %add, ptr %bytes, align 8, !dbg !5118
  br label %for.inc, !dbg !5119

for.inc:                                          ; preds = %if.end21
  %19 = load i64, ptr %count.addr, align 8, !dbg !5120
  %sub = sub i64 %19, 8, !dbg !5120
  store i64 %sub, ptr %count.addr, align 8, !dbg !5120
  br label %for.cond, !dbg !5121, !llvm.loop !5122

for.end:                                          ; preds = %if.then20, %if.then15, %for.cond
  %20 = load i64, ptr %bytes, align 8, !dbg !5124
  %tobool22 = icmp ne i64 %20, 0, !dbg !5124
  br i1 %tobool22, label %cond.true, label %cond.false, !dbg !5124

cond.true:                                        ; preds = %for.end
  %21 = load i64, ptr %bytes, align 8, !dbg !5125
  br label %cond.end, !dbg !5124

cond.false:                                       ; preds = %for.end
  %22 = load i32, ptr %err, align 4, !dbg !5126
  %conv23 = sext i32 %22 to i64, !dbg !5126
  br label %cond.end, !dbg !5124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %conv23, %cond.false ], !dbg !5124
  store i64 %cond, ptr %retval, align 8, !dbg !5127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5127

cleanup:                                          ; preds = %cond.end, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #14, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !5128
  %23 = load i64, ptr %retval, align 8, !dbg !5128
  ret i64 %23, !dbg !5128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msr_ioctl(ptr noundef %file, i32 noundef %ioc, i64 noundef %arg) #6 align 16 !dbg !5129 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %ioc.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %uregs = alloca ptr, align 8
  %regs = alloca [8 x i32], align 16
  %cpu = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5131, metadata !DIExpression()), !dbg !5139
  store i32 %ioc, ptr %ioc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioc.addr, metadata !5132, metadata !DIExpression()), !dbg !5140
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5133, metadata !DIExpression()), !dbg !5141
  call void @llvm.lifetime.start.p0(i64 8, ptr %uregs) #14, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %uregs, metadata !5134, metadata !DIExpression()), !dbg !5143
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5144
  %1 = inttoptr i64 %0 to ptr, !dbg !5145
  store ptr %1, ptr %uregs, align 8, !dbg !5143
  call void @llvm.lifetime.start.p0(i64 32, ptr %regs) #14, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !5135, metadata !DIExpression()), !dbg !5147
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !5148
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5137, metadata !DIExpression()), !dbg !5149
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5150
  %call = call ptr @file_inode(ptr noundef %2) #15, !dbg !5151
  %call1 = call i32 @iminor(ptr noundef %call) #15, !dbg !5152
  store i32 %call1, ptr %cpu, align 4, !dbg !5149
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5138, metadata !DIExpression()), !dbg !5154
  %3 = load i32, ptr %ioc.addr, align 4, !dbg !5155
  switch i32 %3, label %sw.default [
    i32 -1071619168, label %sw.bb
    i32 -1071619167, label %sw.bb14
  ], !dbg !5156

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5157
  %f_mode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2, !dbg !5160
  %5 = load i32, ptr %f_mode, align 4, !dbg !5160
  %and = and i32 %5, 1, !dbg !5161
  %tobool = icmp ne i32 %and, 0, !dbg !5161
  br i1 %tobool, label %if.end, label %if.then, !dbg !5162

if.then:                                          ; preds = %sw.bb
  store i32 -9, ptr %err, align 4, !dbg !5163
  br label %sw.epilog, !dbg !5165

if.end:                                           ; preds = %sw.bb
  %6 = load ptr, ptr %uregs, align 8, !dbg !5166
  %call2 = call i64 @copy_from_user(ptr noundef %regs, ptr noundef %6, i64 noundef 32) #15, !dbg !5168
  %tobool3 = icmp ne i64 %call2, 0, !dbg !5168
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5169

if.then4:                                         ; preds = %if.end
  store i32 -14, ptr %err, align 4, !dbg !5170
  br label %sw.epilog, !dbg !5172

if.end5:                                          ; preds = %if.end
  %7 = load i32, ptr %cpu, align 4, !dbg !5173
  %arraydecay = getelementptr inbounds [8 x i32], ptr %regs, i64 0, i64 0, !dbg !5174
  %call6 = call i32 @rdmsr_safe_regs_on_cpu(i32 noundef %7, ptr noundef %arraydecay) #15, !dbg !5175
  store i32 %call6, ptr %err, align 4, !dbg !5176
  %8 = load i32, ptr %err, align 4, !dbg !5177
  %tobool7 = icmp ne i32 %8, 0, !dbg !5177
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5179

if.then8:                                         ; preds = %if.end5
  br label %sw.epilog, !dbg !5180

if.end9:                                          ; preds = %if.end5
  %9 = load ptr, ptr %uregs, align 8, !dbg !5181
  %call10 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %regs, i64 noundef 32) #15, !dbg !5183
  %tobool11 = icmp ne i64 %call10, 0, !dbg !5183
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5184

if.then12:                                        ; preds = %if.end9
  store i32 -14, ptr %err, align 4, !dbg !5185
  br label %if.end13, !dbg !5186

if.end13:                                         ; preds = %if.then12, %if.end9
  br label %sw.epilog, !dbg !5187

sw.bb14:                                          ; preds = %entry
  %10 = load ptr, ptr %file.addr, align 8, !dbg !5188
  %f_mode15 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2, !dbg !5190
  %11 = load i32, ptr %f_mode15, align 4, !dbg !5190
  %and16 = and i32 %11, 2, !dbg !5191
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5191
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5192

if.then18:                                        ; preds = %sw.bb14
  store i32 -9, ptr %err, align 4, !dbg !5193
  br label %sw.epilog, !dbg !5195

if.end19:                                         ; preds = %sw.bb14
  %12 = load ptr, ptr %uregs, align 8, !dbg !5196
  %call20 = call i64 @copy_from_user(ptr noundef %regs, ptr noundef %12, i64 noundef 32) #15, !dbg !5198
  %tobool21 = icmp ne i64 %call20, 0, !dbg !5198
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5199

if.then22:                                        ; preds = %if.end19
  store i32 -14, ptr %err, align 4, !dbg !5200
  br label %sw.epilog, !dbg !5202

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @security_locked_down(i32 noundef 8) #15, !dbg !5203
  store i32 %call24, ptr %err, align 4, !dbg !5204
  %13 = load i32, ptr %err, align 4, !dbg !5205
  %tobool25 = icmp ne i32 %13, 0, !dbg !5205
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5207

if.then26:                                        ; preds = %if.end23
  br label %sw.epilog, !dbg !5208

if.end27:                                         ; preds = %if.end23
  %arrayidx = getelementptr [8 x i32], ptr %regs, i64 0, i64 1, !dbg !5209
  %14 = load i32, ptr %arrayidx, align 4, !dbg !5209
  %call28 = call i32 @filter_write(i32 noundef %14) #15, !dbg !5210
  store i32 %call28, ptr %err, align 4, !dbg !5211
  %15 = load i32, ptr %err, align 4, !dbg !5212
  %tobool29 = icmp ne i32 %15, 0, !dbg !5212
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5214

if.then30:                                        ; preds = %if.end27
  %16 = load i32, ptr %err, align 4, !dbg !5215
  %conv = sext i32 %16 to i64, !dbg !5215
  store i64 %conv, ptr %retval, align 8, !dbg !5216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5216

if.end31:                                         ; preds = %if.end27
  call void @add_taint(i32 noundef 2, i32 noundef 0) #15, !dbg !5217
  %17 = load i32, ptr %cpu, align 4, !dbg !5218
  %arraydecay32 = getelementptr inbounds [8 x i32], ptr %regs, i64 0, i64 0, !dbg !5219
  %call33 = call i32 @wrmsr_safe_regs_on_cpu(i32 noundef %17, ptr noundef %arraydecay32) #15, !dbg !5220
  store i32 %call33, ptr %err, align 4, !dbg !5221
  %18 = load i32, ptr %err, align 4, !dbg !5222
  %tobool34 = icmp ne i32 %18, 0, !dbg !5222
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5224

if.then35:                                        ; preds = %if.end31
  br label %sw.epilog, !dbg !5225

if.end36:                                         ; preds = %if.end31
  %19 = load ptr, ptr %uregs, align 8, !dbg !5226
  %call37 = call i64 @copy_to_user(ptr noundef %19, ptr noundef %regs, i64 noundef 32) #15, !dbg !5228
  %tobool38 = icmp ne i64 %call37, 0, !dbg !5228
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5229

if.then39:                                        ; preds = %if.end36
  store i32 -14, ptr %err, align 4, !dbg !5230
  br label %if.end40, !dbg !5231

if.end40:                                         ; preds = %if.then39, %if.end36
  br label %sw.epilog, !dbg !5232

sw.default:                                       ; preds = %entry
  store i32 -25, ptr %err, align 4, !dbg !5233
  br label %sw.epilog, !dbg !5234

sw.epilog:                                        ; preds = %sw.default, %if.end40, %if.then35, %if.then26, %if.then22, %if.then18, %if.end13, %if.then8, %if.then4, %if.then
  %20 = load i32, ptr %err, align 4, !dbg !5235
  %conv41 = sext i32 %20 to i64, !dbg !5235
  store i64 %conv41, ptr %retval, align 8, !dbg !5236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

cleanup:                                          ; preds = %sw.epilog, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 32, ptr %regs) #14, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 8, ptr %uregs) #14, !dbg !5237
  %21 = load i64, ptr %retval, align 8, !dbg !5237
  ret i64 %21, !dbg !5237
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @msr_open(ptr noundef %inode, ptr noundef %file) #6 align 16 !dbg !5238 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5240, metadata !DIExpression()), !dbg !5249
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5241, metadata !DIExpression()), !dbg !5250
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5242, metadata !DIExpression()), !dbg !5252
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5253
  %call = call ptr @file_inode(ptr noundef %0) #15, !dbg !5254
  %call1 = call i32 @iminor(ptr noundef %call) #15, !dbg !5255
  store i32 %call1, ptr %cpu, align 4, !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5243, metadata !DIExpression()), !dbg !5257
  %call2 = call zeroext i1 @capable(i32 noundef 17) #15, !dbg !5258
  br i1 %call2, label %if.end, label %if.then, !dbg !5260

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5261

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu, align 4, !dbg !5262
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5264
  %cmp = icmp uge i32 %1, %2, !dbg !5265
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !5266

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, ptr %cpu, align 4, !dbg !5267
  %call3 = call zeroext i1 @cpu_online(i32 noundef %3) #15, !dbg !5268
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5269

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -6, ptr %retval, align 4, !dbg !5270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5270

if.end5:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !5271

do.body:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5244, metadata !DIExpression()), !dbg !5272
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5272
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5271
  br label %do.cond, !dbg !5272

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5272

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5247, metadata !DIExpression()), !dbg !5273
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !5273
  %5 = load i64, ptr %__ptr, align 8, !dbg !5273
  %6 = load i32, ptr %cpu, align 4, !dbg !5273
  %idxprom = zext i32 %6 to i64, !dbg !5273
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5273
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5273
  %add = add i64 %5, %7, !dbg !5273
  %8 = inttoptr i64 %add to ptr, !dbg !5273
  store ptr %8, ptr %tmp6, align 8, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !5271
  %9 = load ptr, ptr %tmp6, align 8, !dbg !5273
  store ptr %9, ptr %tmp, align 8, !dbg !5272
  %10 = load ptr, ptr %tmp, align 8, !dbg !5271
  store ptr %10, ptr %c, align 8, !dbg !5274
  store i32 0, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

cleanup:                                          ; preds = %do.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !5276
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !5276
  %11 = load i32, ptr %retval, align 4, !dbg !5276
  ret i32 %11, !dbg !5276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #1 align 16 !dbg !5277 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5283
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !5283
  %1 = load i32, ptr %i_rdev, align 4, !dbg !5283
  %and = and i32 %1, 1048575, !dbg !5283
  ret i32 %and, !dbg !5284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #1 align 16 !dbg !5285 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5293
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5294
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5294
  ret ptr %1, !dbg !5295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5296 dso_local i32 @rdmsr_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !5300 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5305, metadata !DIExpression()), !dbg !5308
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5306, metadata !DIExpression()), !dbg !5309
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5307, metadata !DIExpression()), !dbg !5310
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5311
  %1 = load i64, ptr %n.addr, align 8, !dbg !5313
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !5314
  br i1 %call, label %if.then, label %if.end, !dbg !5315

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5316
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5317
  %4 = load i64, ptr %n.addr, align 8, !dbg !5318
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5319
  store i64 %call1, ptr %n.addr, align 8, !dbg !5320
  br label %if.end, !dbg !5321

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5322
  ret i64 %5, !dbg !5323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #7 align 16 !dbg !5324 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5328, metadata !DIExpression()), !dbg !5338
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5329, metadata !DIExpression()), !dbg !5339
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5330, metadata !DIExpression()), !dbg !5340
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5331, metadata !DIExpression()), !dbg !5342
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5343
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5344
  %conv = trunc i64 %1 to i32, !dbg !5344
  store i32 %conv, ptr %sz, align 4, !dbg !5342
  %2 = load i32, ptr %sz, align 4, !dbg !5345
  %cmp = icmp sge i32 %2, 0, !dbg !5345
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5345

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5345
  %conv2 = sext i32 %3 to i64, !dbg !5345
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5345
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5345
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5347
  %lnot = xor i1 %5, true, !dbg !5345
  %lnot5 = xor i1 %lnot, true, !dbg !5345
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5345
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5345
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5345
  %tobool = icmp ne i64 %expval, 0, !dbg !5345
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5348

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5349
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5352
  br i1 %7, label %if.else, label %if.then7, !dbg !5353

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5354
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5355
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !5356
  br label %if.end11, !dbg !5356

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5357, !range !5359, !noundef !774
  %tobool8 = trunc i8 %10 to i1, !dbg !5357
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5360

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !5361, !srcloc !5362
  br label %if.end, !dbg !5361

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !5363, !srcloc !5364
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5365

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5332, metadata !DIExpression()), !dbg !5366
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5366
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5366
  %lnot15 = xor i1 %cmp13, true, !dbg !5366
  %lnot17 = xor i1 %lnot15, true, !dbg !5366
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5366
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5366
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5367
  %tobool19 = icmp ne i32 %12, 0, !dbg !5367
  %lnot20 = xor i1 %tobool19, true, !dbg !5367
  %lnot22 = xor i1 %lnot20, true, !dbg !5367
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5367
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5367
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5367
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5367
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5366

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5367

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5335, metadata !DIExpression()), !dbg !5368
  store i32 2307, ptr %__flags, align 4, !dbg !5368
  br label %do.body28, !dbg !5368

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5369

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5369

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5368

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5371
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #14, !dbg !5371, !srcloc !5373
  br label %do.cond30, !dbg !5371

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5371

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5368

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5374

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5374

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5367
  br label %do.cond35, !dbg !5368

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5368

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5368

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5366
  %tobool38 = icmp ne i32 %14, 0, !dbg !5366
  %lnot39 = xor i1 %tobool38, true, !dbg !5366
  %lnot41 = xor i1 %lnot39, true, !dbg !5366
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5366
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5366
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5366
  store i64 %expval44, ptr %tmp, align 8, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5376
  %15 = load i64, ptr %tmp, align 8, !dbg !5366
  %tobool45 = icmp ne i64 %15, 0, !dbg !5376
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5377

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5379
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5380
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5381, !range !5359, !noundef !774
  %tobool48 = trunc i8 %18 to i1, !dbg !5381
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !5382
  store i1 true, ptr %retval, align 1, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !5384
  %19 = load i1, ptr %retval, align 1, !dbg !5384
  ret i1 %19, !dbg !5384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5385 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #1 align 16 !dbg !5386 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5390, metadata !DIExpression()), !dbg !5392
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5391, metadata !DIExpression()), !dbg !5393
  %0 = load i32, ptr %size.addr, align 4, !dbg !5394
  %1 = load i64, ptr %count.addr, align 8, !dbg !5396
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !5397
  ret void, !dbg !5398
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5399 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #1 align 16 !dbg !5401 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5405, metadata !DIExpression()), !dbg !5408
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5406, metadata !DIExpression()), !dbg !5409
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5407, metadata !DIExpression()), !dbg !5410
  ret void, !dbg !5411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5412 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5413 dso_local i32 @security_locked_down(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @filter_write(i32 noundef %reg) #6 align 16 !dbg !4444 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !4448, metadata !DIExpression()), !dbg !5416
  %0 = load i32, ptr @allow_writes, align 4, !dbg !5417
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5418

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

sw.bb1:                                           ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5421
  br label %return, !dbg !5421

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5422

sw.epilog:                                        ; preds = %sw.default
  %call = call i32 @___ratelimit(ptr noundef @filter_write.fw_rs, ptr noundef @__func__.filter_write) #15, !dbg !5423
  %tobool = icmp ne i32 %call, 0, !dbg !5423
  br i1 %tobool, label %if.end, label %if.then, !dbg !5425

if.then:                                          ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !5426
  br label %return, !dbg !5426

if.end:                                           ; preds = %sw.epilog
  br label %do.body, !dbg !5427

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5429

do.end:                                           ; preds = %do.body
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5427
  %call2 = call ptr @get_current() #15, !dbg !5427
  %comm = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 96, !dbg !5427
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !5427
  %call3 = call ptr @get_current() #15, !dbg !5427
  %pid = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 62, !dbg !5427
  %2 = load i32, ptr %pid, align 8, !dbg !5427
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %1, ptr noundef %arraydecay, i32 noundef %2) #13, !dbg !5427
  store i32 %call4, ptr %tmp, align 4, !dbg !5429
  %3 = load i32, ptr %tmp, align 4, !dbg !5427
  br label %do.body5, !dbg !5431

do.body5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5433

do.end6:                                          ; preds = %do.body5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #13, !dbg !5431
  store i32 %call8, ptr %tmp7, align 4, !dbg !5433
  %4 = load i32, ptr %tmp7, align 4, !dbg !5431
  store i32 0, ptr %retval, align 4, !dbg !5435
  br label %return, !dbg !5435

return:                                           ; preds = %do.end6, %if.then, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4, !dbg !5436
  ret i32 %5, !dbg !5436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !5437 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5439, metadata !DIExpression()), !dbg !5442
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5440, metadata !DIExpression()), !dbg !5443
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5441, metadata !DIExpression()), !dbg !5444
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5445
  %1 = load i64, ptr %n.addr, align 8, !dbg !5447
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !5448
  br i1 %call, label %if.then, label %if.end, !dbg !5449

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5450
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5451
  %4 = load i64, ptr %n.addr, align 8, !dbg !5452
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !5453
  store i64 %call1, ptr %n.addr, align 8, !dbg !5454
  br label %if.end, !dbg !5455

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5456
  ret i64 %5, !dbg !5457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5458 dso_local void @add_taint(i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5461 dso_local i32 @wrmsr_safe_on_cpu(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5464 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !5468 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5473, metadata !DIExpression()), !dbg !5479
  br label %do.body, !dbg !5479

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5475, metadata !DIExpression()), !dbg !5480
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5480
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5479
  br label %do.cond, !dbg !5480

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5480

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5477, metadata !DIExpression()), !dbg !5481
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !5481, !srcloc !5482
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5481
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5481
  %3 = inttoptr i64 %2 to ptr, !dbg !5481
  store ptr %3, ptr %tmp, align 8, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !5479
  %4 = load ptr, ptr %tmp, align 8, !dbg !5481
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5479
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5479
  store ptr %5, ptr %tmp1, align 8, !dbg !5479
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5483
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5479
  ret ptr %6, !dbg !5484
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5485 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5486 dso_local i32 @rdmsr_safe_regs_on_cpu(i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5489 dso_local i32 @wrmsr_safe_regs_on_cpu(i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5490 dso_local zeroext i1 @capable(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #1 align 16 !dbg !5493 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5499
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #15, !dbg !5500
  ret i1 %call, !dbg !5501
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !5502 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5506, metadata !DIExpression()), !dbg !5508
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5507, metadata !DIExpression()), !dbg !5509
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5510
  %call = call i32 @cpumask_check(i32 noundef %0) #15, !dbg !5510
  %conv = zext i32 %call to i64, !dbg !5510
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5510
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5510
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5510
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #15, !dbg !5510
  ret i1 %call1, !dbg !5511
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5512 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5521, metadata !DIExpression()), !dbg !5523
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5524
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5525
  %div = udiv i64 %1, 64, !dbg !5525
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5526
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5527
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5528
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5529
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5530
  ret i1 %call, !dbg !5531
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !5532 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5538
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #15, !dbg !5539
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5540
  ret i32 %1, !dbg !5541
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5542 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5550, metadata !DIExpression()), !dbg !5552
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5554
  %1 = load i64, ptr %size.addr, align 8, !dbg !5555
  %conv = trunc i64 %1 to i32, !dbg !5555
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !5556
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5557
  %3 = load i64, ptr %size.addr, align 8, !dbg !5557
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !5557
  ret void, !dbg !5558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5559 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5566
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5567
  br i1 %1, label %cond.true, label %cond.false, !dbg !5567

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5568
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5569
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5570
  %conv = zext i1 %call to i32, !dbg !5570
  br label %cond.end, !dbg !5567

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5571
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5572
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !5573
  %conv2 = zext i1 %call1 to i32, !dbg !5573
  br label %cond.end, !dbg !5567

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5567
  %tobool = icmp ne i32 %cond, 0, !dbg !5567
  ret i1 %tobool, !dbg !5574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #1 align 16 !dbg !5575 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5580, metadata !DIExpression()), !dbg !5582
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5581, metadata !DIExpression()), !dbg !5583
  ret i1 true, !dbg !5584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #1 align 16 !dbg !5585 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5590, metadata !DIExpression()), !dbg !5593
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5592, metadata !DIExpression()), !dbg !5595
  ret void, !dbg !5596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5597 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5601, metadata !DIExpression()), !dbg !5603
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5602, metadata !DIExpression()), !dbg !5604
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5605
  %and = and i64 %0, 63, !dbg !5606
  %shl = shl i64 1, %and, !dbg !5607
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5608
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5609
  %shr = ashr i64 %2, 6, !dbg !5610
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5608
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5608
  %and1 = and i64 %shl, %3, !dbg !5611
  %cmp = icmp ne i64 %and1, 0, !dbg !5612
  ret i1 %cmp, !dbg !5613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5614 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5616, metadata !DIExpression()), !dbg !5619
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5617, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5618, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5623
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5624
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !5625, !srcloc !5626
  %3 = icmp ult i8 %2, 2, !dbg !5625
  call void @llvm.assume(i1 %3), !dbg !5625
  store i8 %2, ptr %oldbit, align 1, !dbg !5625
  %4 = load i8, ptr %oldbit, align 1, !dbg !5627, !range !5359, !noundef !774
  %tobool = trunc i8 %4 to i1, !dbg !5627
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !5628
  ret i1 %tobool, !dbg !5629
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !5630 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5634, metadata !DIExpression()), !dbg !5636
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5635, metadata !DIExpression()), !dbg !5637
  ret void, !dbg !5638
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5639 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5642 dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #1 align 16 !dbg !5645 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5652
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #15, !dbg !5654
  br i1 %call, label %if.then, label %if.else, !dbg !5655

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5656
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #15, !dbg !5657
  %conv = trunc i64 %call1 to i32, !dbg !5657
  store i32 %conv, ptr %retval, align 4, !dbg !5658
  br label %return, !dbg !5658

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5659
  br label %return, !dbg !5659

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5660
  ret i32 %2, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #1 align 16 !dbg !5661 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5667
  %1 = ptrtoint ptr %0 to i64, !dbg !5667
  %2 = inttoptr i64 %1 to ptr, !dbg !5667
  %3 = ptrtoint ptr %2 to i64, !dbg !5667
  %cmp = icmp uge i64 %3, -4095, !dbg !5667
  %lnot = xor i1 %cmp, true, !dbg !5667
  %lnot1 = xor i1 %lnot, true, !dbg !5667
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5667
  %conv = sext i32 %lnot.ext to i64, !dbg !5667
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5667
  %tobool = icmp ne i64 %expval, 0, !dbg !5667
  ret i1 %tobool, !dbg !5668
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #1 align 16 !dbg !5669 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5675
  %1 = ptrtoint ptr %0 to i64, !dbg !5676
  ret i64 %1, !dbg !5677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local void @device_destroy(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5681 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @msr_devnode(ptr noundef %dev, ptr noundef %mode) #6 align 16 !dbg !5684 {
entry:
  %dev.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5687, metadata !DIExpression()), !dbg !5689
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5690
  %devt = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26, !dbg !5690
  %1 = load i32, ptr %devt, align 4, !dbg !5690
  %and = and i32 %1, 1048575, !dbg !5690
  %call = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.8, i32 noundef %and) #15, !dbg !5691
  ret ptr %call, !dbg !5692
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5693 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_allow_writes(ptr noundef %val, ptr noundef %cp) #6 align 16 !dbg !5697 {
entry:
  %val.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5699, metadata !DIExpression()), !dbg !5702
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !5700, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5701, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %val.addr, align 8, !dbg !5706
  %call = call ptr @strstrip(ptr noundef %0) #15, !dbg !5707
  store ptr %call, ptr %s, align 8, !dbg !5705
  %1 = load ptr, ptr %s, align 8, !dbg !5708
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.9) #15, !dbg !5710
  %tobool = icmp ne i32 %call1, 0, !dbg !5710
  br i1 %tobool, label %if.else, label %if.then, !dbg !5711

if.then:                                          ; preds = %entry
  store i32 0, ptr @allow_writes, align 4, !dbg !5712
  br label %if.end6, !dbg !5713

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %s, align 8, !dbg !5714
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.10) #15, !dbg !5716
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5716
  br i1 %tobool3, label %if.else5, label %if.then4, !dbg !5717

if.then4:                                         ; preds = %if.else
  store i32 1, ptr @allow_writes, align 4, !dbg !5718
  br label %if.end, !dbg !5719

if.else5:                                         ; preds = %if.else
  store i32 2, ptr @allow_writes, align 4, !dbg !5720
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !5721
  ret i32 0, !dbg !5722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_allow_writes(ptr noundef %buf, ptr noundef %kp) #6 align 16 !dbg !5723 {
entry:
  %buf.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5725, metadata !DIExpression()), !dbg !5728
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5726, metadata !DIExpression()), !dbg !5729
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #14, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5727, metadata !DIExpression()), !dbg !5731
  %0 = load i32, ptr @allow_writes, align 4, !dbg !5732
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5733

sw.bb:                                            ; preds = %entry
  store ptr @.str.9, ptr %res, align 8, !dbg !5734
  br label %sw.epilog, !dbg !5736

sw.bb1:                                           ; preds = %entry
  store ptr @.str.10, ptr %res, align 8, !dbg !5737
  br label %sw.epilog, !dbg !5738

sw.default:                                       ; preds = %entry
  store ptr @.str.11, ptr %res, align 8, !dbg !5739
  br label %sw.epilog, !dbg !5740

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5741
  %2 = load ptr, ptr %res, align 8, !dbg !5742
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.12, ptr noundef %2) #15, !dbg !5743
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #14, !dbg !5744
  ret i32 %call, !dbg !5745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @strstrip(ptr noundef %str) #1 align 16 !dbg !5746 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5753
  %call = call ptr @strim(ptr noundef %0) #15, !dbg !5754
  ret ptr %call, !dbg !5755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5756 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5759 dso_local ptr @strim(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5760 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847}
!llvm.ident = !{!4848}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_msr__289_287_msr_init6290", scope: !2, file: !3, line: 287, type: !384, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.msr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/msr\22 -D KBUILD_BASENAME=\22msr\22 -D KBUILD_MODNAME=\22msr\22 -D __KBUILD_MODNAME=kmod_msr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/msr.ll arch/x86/kernel/msr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !383, globals: !4397, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/msr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42574ff11f9c45b84e6e665e57225e4f")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !93, !100, !108, !116, !125, !130, !135, !141, !335, !340, !373, !378}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !57, line: 68, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !142, line: 57, baseType: !109, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!144 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!145 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!146 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!147 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!148 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!149 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!150 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!151 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!152 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!153 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!154 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!155 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!156 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!157 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!158 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!159 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!160 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!161 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!162 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!163 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!164 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!165 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!166 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!167 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!168 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!169 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!170 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!171 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!172 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!173 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!174 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!175 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!176 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!177 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!178 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!179 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!180 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!181 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!182 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!183 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!184 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!185 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!186 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!187 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!188 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!189 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!190 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!191 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!192 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!193 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!194 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!195 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!196 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!197 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!198 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!199 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!200 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!201 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!202 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!203 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!204 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!205 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!206 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!207 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!208 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!209 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!210 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!211 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!212 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!213 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!214 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!215 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!216 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!217 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!218 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!219 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!220 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!221 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!222 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!223 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!224 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!225 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!226 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!227 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!228 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!229 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!230 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!231 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!232 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!233 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!234 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!235 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!236 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!237 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!238 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!239 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!240 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!241 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!242 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!243 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!244 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!245 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!246 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!247 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!248 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!249 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!250 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!251 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!252 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!253 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!254 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!255 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!256 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!257 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!258 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!259 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!260 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!261 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!262 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!263 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!264 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!265 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!266 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!267 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!268 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!269 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!270 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!271 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!272 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!273 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!274 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!275 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!276 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!277 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!278 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!279 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!280 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!281 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!282 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!283 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!284 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!285 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!286 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!287 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!288 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!289 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!290 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!291 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!292 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!293 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!294 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!295 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!296 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!297 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!298 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!299 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!300 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!301 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!302 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!303 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!304 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!305 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!306 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!307 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!308 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!309 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!310 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!311 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!312 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!313 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!314 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!315 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!316 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!317 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!318 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!319 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!320 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!321 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!322 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!323 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!324 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!325 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!326 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!327 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!328 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!329 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!330 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!331 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!332 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!333 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!334 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 10, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "false", value: 0)
!339 = !DIEnumerator(name: "true", value: 1)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !341, line: 107, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!343 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!344 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!345 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!346 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!347 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!348 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!349 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!350 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!351 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!352 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!353 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!354 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!355 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!356 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!357 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!358 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!359 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!360 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!361 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!362 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!363 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!364 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!365 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!366 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!367 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!368 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!369 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!370 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!371 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!372 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !374, line: 87, baseType: !7, size: 32, elements: !375)
!374 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!375 = !{!376, !377}
!376 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!377 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "allow_write_msrs", file: !3, line: 44, baseType: !7, size: 32, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "MSR_WRITES_ON", value: 0)
!381 = !DIEnumerator(name: "MSR_WRITES_OFF", value: 1)
!382 = !DIEnumerator(name: "MSR_WRITES_DEFAULT", value: 2)
!383 = !{!384, !385, !2457, !7, !109, !4332, !4334, !1198, !540, !1540, !4335, !4395, !4317, !526, !935, !490}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !387)
!387 = !{!388, !389, !396, !401, !4008, !4034, !4035, !4036, !4037, !4041, !4044, !4045, !4046, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4113, !4117, !4135, !4152, !4153, !4154, !4155, !4164, !4187, !4188, !4191, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4205, !4206, !4292, !4300, !4301, !4302, !4304, !4308, !4309, !4313, !4314, !4315, !4316, !4318, !4319, !4320, !4327, !4328, !4329, !4331}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !21, line: 403, baseType: !20, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !386, file: !21, line: 406, baseType: !390, size: 128, offset: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !391, line: 190, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !391, line: 191, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !390, file: !391, line: 191, baseType: !394, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !21, line: 409, baseType: !397, size: 448, offset: 192)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 448, elements: !399)
!398 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!399 = !{!400}
!400 = !DISubrange(count: 56)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !386, file: !21, line: 417, baseType: !402, size: 768, offset: 640)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !403)
!403 = !{!404, !4002, !4003, !4004, !4007}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !402, file: !21, line: 46, baseType: !405, size: 512)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !406, line: 64, size: 512, elements: !407)
!406 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!407 = !{!408, !411, !412, !414, !503, !3889, !3992, !3997, !3998, !3999, !4000, !4001}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !406, line: 65, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !405, file: !406, line: 66, baseType: !390, size: 128, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 67, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !405, file: !406, line: 68, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !406, line: 168, size: 768, elements: !417)
!417 = !{!418, !419, !462, !463}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !416, file: !406, line: 169, baseType: !390, size: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !416, file: !406, line: 170, baseType: !420, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !421, line: 29, baseType: !422)
!421 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !421, line: 17, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !421, line: 18, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !421, line: 18, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !425, file: !421, line: 19, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !429, line: 14, size: 32, elements: !430)
!429 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !428, file: !429, line: 15, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !433, line: 44, baseType: !434)
!433 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !433, line: 14, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !433, line: 15, baseType: !437, size: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !433, line: 15, size: 32, elements: !438)
!438 = !{!439, !444, !454}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !433, line: 16, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !391, line: 174, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 172, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !441, file: !391, line: 173, baseType: !109, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !433, line: 24, baseType: !445, size: 16)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !433, line: 24, size: 16, elements: !446)
!446 = !{!447, !453}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !445, file: !433, line: 25, baseType: !448, size: 8)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !449, line: 17, baseType: !450)
!449 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !451, line: 21, baseType: !452)
!451 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!452 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !445, file: !433, line: 26, baseType: !448, size: 8, offset: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !433, line: 28, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !433, line: 28, size: 32, elements: !456)
!456 = !{!457, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !455, file: !433, line: 29, baseType: !458, size: 16)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !449, line: 19, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !451, line: 24, baseType: !460)
!460 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !455, file: !433, line: 30, baseType: !458, size: 16, offset: 16)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !416, file: !406, line: 171, baseType: !405, size: 512, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !416, file: !406, line: 172, baseType: !464, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !406, line: 133, size: 192, elements: !467)
!467 = !{!468, !475, !480}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !466, file: !406, line: 134, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!109, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !406, line: 135, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!409, !473}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !466, file: !406, line: 136, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!109, !473, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !406, line: 125, size: 20736, elements: !487)
!487 = !{!488, !493, !497, !498, !502}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !486, file: !406, line: 126, baseType: !489, size: 192)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !491)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!491 = !{!492}
!492 = !DISubrange(count: 3)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !486, file: !406, line: 127, baseType: !494, size: 4096, offset: 192)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 4096, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !486, file: !406, line: 128, baseType: !109, size: 32, offset: 4288)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !486, file: !406, line: 129, baseType: !499, size: 16384, offset: 4320)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 16384, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2048)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !486, file: !406, line: 130, baseType: !109, size: 32, offset: 20704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !405, file: !406, line: 69, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !406, line: 116, size: 384, elements: !507)
!507 = !{!508, !512, !541, !3851, !3879, !3883}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !506, file: !406, line: 117, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !413}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !506, file: !406, line: 118, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !516, line: 254, size: 128, elements: !517)
!516 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!517 = !{!518, !533}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !515, file: !516, line: 255, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !413, !527, !490}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !391, line: 66, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !524, line: 73, baseType: !525)
!524 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !524, line: 15, baseType: !526)
!526 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !516, line: 30, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !516, line: 31, baseType: !409, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !528, file: !516, line: 32, baseType: !532, size: 16, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !391, line: 24, baseType: !460)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !515, file: !516, line: 256, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!522, !413, !527, !409, !537}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !391, line: 61, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !524, line: 72, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !524, line: 16, baseType: !540)
!540 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !506, file: !406, line: 119, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !516, line: 84, size: 320, elements: !546)
!546 = !{!547, !548, !552, !3847, !3849}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !516, line: 85, baseType: !409, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !545, file: !516, line: 86, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!532, !413, !527, !109}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !545, file: !516, line: 88, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!532, !413, !556, !109}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !516, line: 175, size: 512, elements: !558)
!558 = !{!559, !560, !561, !562, !3838, !3842, !3843}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !557, file: !516, line: 176, baseType: !528, size: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !557, file: !516, line: 177, baseType: !537, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !557, file: !516, line: 178, baseType: !384, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !557, file: !516, line: 179, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !568)
!568 = !{!569, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3832, !3833, !3834, !3835, !3836, !3837}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !567, file: !28, line: 473, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !572)
!572 = !{!573, !574, !575, !583, !584, !591, !592, !595, !596, !3610, !3611, !3612, !3613, !3614, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3654, !3657, !3658, !3659, !3668, !3669, !3670, !3671}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !571, file: !28, line: 642, baseType: !532, size: 16)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !571, file: !28, line: 643, baseType: !460, size: 16, offset: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !571, file: !28, line: 644, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !577, line: 23, baseType: !578)
!577 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 21, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !578, file: !577, line: 22, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !391, line: 37, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !524, line: 49, baseType: !7)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !571, file: !28, line: 645, baseType: !390, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !571, file: !28, line: 646, baseType: !585, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !577, line: 28, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 26, size: 32, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !586, file: !577, line: 27, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !391, line: 38, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !524, line: 50, baseType: !7)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !571, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !571, file: !28, line: 650, baseType: !593, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !571, file: !28, line: 651, baseType: !593, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !571, file: !28, line: 654, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !600)
!600 = !{!601, !3435, !3448, !3452, !3456, !3460, !3464, !3468, !3472, !3476, !3480, !3481, !3485, !3489, !3526, !3555, !3559, !3565, !3569, !3573, !3577, !3581, !3585, !3591, !3595}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !599, file: !28, line: 1967, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !570, !605, !7}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !607, line: 82, size: 1536, elements: !608)
!607 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!608 = !{!609, !610, !620, !628, !629, !649, !650, !654, !667, !3419, !3420, !3421, !3422, !3427, !3428, !3429}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !606, file: !607, line: 84, baseType: !7, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !606, file: !607, line: 85, baseType: !611, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !612, line: 275, baseType: !613)
!612 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !612, line: 275, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !613, file: !612, line: 275, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !612, line: 69, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !612, line: 64, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !617, file: !612, line: 65, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !606, file: !607, line: 86, baseType: !621, size: 128, offset: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !622, line: 38, size: 128, elements: !623)
!622 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!623 = !{!624, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !622, line: 39, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !621, file: !622, line: 39, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !606, file: !607, line: 87, baseType: !605, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !606, file: !607, line: 88, baseType: !630, size: 128, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !607, line: 49, size: 128, elements: !631)
!631 = !{!632, !646}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !607, line: 50, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !607, line: 50, size: 64, elements: !634)
!634 = !{!635, !642}
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !607, line: 51, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !633, file: !607, line: 51, size: 64, elements: !637)
!637 = !{!638, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !636, file: !607, line: 52, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !449, line: 21, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !451, line: 27, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !636, file: !607, line: 52, baseType: !639, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !633, file: !607, line: 54, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !449, line: 23, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !451, line: 31, baseType: !645)
!645 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !630, file: !607, line: 56, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !606, file: !607, line: 89, baseType: !570, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !606, file: !607, line: 91, baseType: !651, size: 256, offset: 448)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !606, file: !607, line: 94, baseType: !655, size: 64, offset: 704)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !656, line: 25, size: 64, elements: !657)
!656 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 26, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 26, size: 64, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !659, file: !656, line: 28, baseType: !644, size: 64, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !656, line: 30, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !656, line: 30, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !656, line: 31, baseType: !420, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !663, file: !656, line: 32, baseType: !109, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !606, file: !607, line: 95, baseType: !668, size: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !607, line: 128, size: 1024, align: 512, elements: !671)
!671 = !{!672, !676, !677, !684, !690, !694, !698, !702, !703, !707, !711, !3409, !3413}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !670, file: !607, line: 129, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!109, !605, !7}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !670, file: !607, line: 130, baseType: !673, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !670, file: !607, line: 131, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!109, !681, !683}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !670, file: !607, line: 132, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!109, !681, !7, !409, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !670, file: !607, line: 134, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!109, !681}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !670, file: !607, line: 135, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!109, !605}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !670, file: !607, line: 136, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !605}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !670, file: !607, line: 137, baseType: !699, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !670, file: !607, line: 138, baseType: !704, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !605, !570}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !670, file: !607, line: 139, baseType: !708, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!490, !605, !490, !109}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !670, file: !607, line: 140, baseType: !712, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!715, !3408}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !717, line: 70, size: 256, elements: !718)
!717 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!718 = !{!719, !720, !3404, !3405}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !716, file: !717, line: 71, baseType: !605, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !716, file: !717, line: 72, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !723)
!723 = !{!724, !725, !728, !729, !730, !734, !783, !944, !984, !1074, !1078, !1079, !1080, !1081, !1082, !1091, !1092, !1093, !1094, !1099, !1103, !1104, !1107, !1110, !1113, !1116, !1117, !1118, !1159, !3335, !3336, !3337, !3338, !3339, !3340, !3343, !3345, !3352, !3353, !3354, !3355, !3356, !3371, !3372, !3373, !3374, !3375, !3378, !3379, !3380, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !722, file: !28, line: 1191, baseType: !390, size: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !722, file: !28, line: 1192, baseType: !726, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !391, line: 21, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !391, line: 18, baseType: !639)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !722, file: !28, line: 1193, baseType: !452, size: 8, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !722, file: !28, line: 1194, baseType: !540, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !722, file: !28, line: 1195, baseType: !731, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !391, line: 52, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !524, line: 88, baseType: !733)
!733 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !722, file: !28, line: 1196, baseType: !735, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !737)
!737 = !{!738, !739, !740, !747, !751, !755, !759, !760, !761, !771, !775, !776, !777, !779, !780, !781, !782}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !736, file: !28, line: 2367, baseType: !409, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !736, file: !28, line: 2368, baseType: !109, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !736, file: !28, line: 2376, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!109, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !746, line: 32, flags: DIFlagFwdDecl)
!746 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!747 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !736, file: !28, line: 2377, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !736, file: !28, line: 2378, baseType: !752, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!605, !735, !109, !409, !384}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !736, file: !28, line: 2380, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !721}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !736, file: !28, line: 2381, baseType: !385, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !28, line: 2382, baseType: !735, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !736, file: !28, line: 2383, baseType: !762, size: 64, offset: 512)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !391, line: 194, size: 64, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !762, file: !391, line: 195, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !391, line: 198, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !391, line: 199, baseType: !765, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !766, file: !391, line: 199, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !736, file: !28, line: 2385, baseType: !772, offset: 576)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !773, line: 206, elements: !774)
!773 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!774 = !{}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !736, file: !28, line: 2386, baseType: !772, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !736, file: !28, line: 2387, baseType: !772, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !736, file: !28, line: 2388, baseType: !778, offset: 576)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, elements: !491)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !736, file: !28, line: 2390, baseType: !772, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !736, file: !28, line: 2391, baseType: !772, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !736, file: !28, line: 2392, baseType: !772, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !736, file: !28, line: 2393, baseType: !772, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !722, file: !28, line: 1197, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !787)
!787 = !{!788, !792, !796, !797, !801, !807, !811, !812, !813, !817, !821, !825, !826, !827, !833, !838, !839, !846, !847, !848, !849, !853, !857, !926, !942, !943}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !786, file: !28, line: 2058, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!570, !721}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !786, file: !28, line: 2059, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !570}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !786, file: !28, line: 2060, baseType: !793, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !786, file: !28, line: 2062, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !570, !109}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !786, file: !28, line: 2063, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!109, !570, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !786, file: !28, line: 2064, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!109, !570}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !786, file: !28, line: 2065, baseType: !793, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !786, file: !28, line: 2066, baseType: !756, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !786, file: !28, line: 2067, baseType: !814, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!109, !721, !109}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !786, file: !28, line: 2068, baseType: !818, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!109, !721, !27}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !786, file: !28, line: 2069, baseType: !822, size: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!109, !721}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !786, file: !28, line: 2070, baseType: !818, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !786, file: !28, line: 2071, baseType: !822, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !786, file: !28, line: 2072, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!109, !605, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !786, file: !28, line: 2073, baseType: !834, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!109, !721, !837, !490}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !786, file: !28, line: 2074, baseType: !756, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !786, file: !28, line: 2076, baseType: !840, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!109, !843, !605}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !845, line: 66, flags: DIFlagFwdDecl)
!845 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!846 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !786, file: !28, line: 2077, baseType: !840, size: 64, offset: 1088)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !786, file: !28, line: 2078, baseType: !840, size: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !786, file: !28, line: 2079, baseType: !840, size: 64, offset: 1216)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !786, file: !28, line: 2081, baseType: !850, size: 64, offset: 1280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!522, !721, !109, !490, !537, !731}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !786, file: !28, line: 2082, baseType: !854, size: 64, offset: 1344)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!522, !721, !109, !409, !537, !731}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !786, file: !28, line: 2083, baseType: !858, size: 64, offset: 1408)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !570}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !890, !891, !892, !893, !909, !910, !911}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !863, file: !33, line: 297, baseType: !766, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !863, file: !33, line: 298, baseType: !390, size: 128, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !863, file: !33, line: 299, baseType: !390, size: 128, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !863, file: !33, line: 300, baseType: !390, size: 128, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !863, file: !33, line: 301, baseType: !870, size: 256, offset: 512)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !871, line: 66, size: 256, elements: !872)
!871 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!872 = !{!873, !882, !884, !889}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !870, file: !871, line: 67, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !875, line: 13, baseType: !876)
!875 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !391, line: 181, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 179, size: 64, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !877, file: !391, line: 180, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !449, line: 22, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !451, line: 30, baseType: !733)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !870, file: !871, line: 68, baseType: !883, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !429, line: 23, baseType: !428)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !870, file: !871, line: 70, baseType: !885, size: 32, offset: 96)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !886, line: 15, size: 32, elements: !887)
!886 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !885, file: !886, line: 20, baseType: !440, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !870, file: !871, line: 72, baseType: !390, size: 128, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !863, file: !33, line: 302, baseType: !420, size: 32, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !863, file: !33, line: 303, baseType: !440, size: 32, offset: 800)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !863, file: !33, line: 304, baseType: !721, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !863, file: !33, line: 305, baseType: !894, size: 64, offset: 896)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !895)
!895 = !{!896, !908}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !33, line: 69, baseType: !897, size: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !33, line: 69, size: 32, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !897, file: !33, line: 70, baseType: !576, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !897, file: !33, line: 71, baseType: !585, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !897, file: !33, line: 72, baseType: !902, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !903, line: 24, baseType: !904)
!903 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !903, line: 22, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !904, file: !903, line: 23, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !903, line: 20, baseType: !582)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !863, file: !33, line: 306, baseType: !731, size: 64, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !863, file: !33, line: 307, baseType: !540, size: 64, offset: 1024)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !863, file: !33, line: 308, baseType: !912, size: 576, offset: 1088)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !913)
!913 = !{!914, !916, !917, !918, !919, !920, !921, !922, !925}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !912, file: !33, line: 206, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !733)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !912, file: !33, line: 207, baseType: !915, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !912, file: !33, line: 208, baseType: !915, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !912, file: !33, line: 209, baseType: !915, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !912, file: !33, line: 210, baseType: !915, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !912, file: !33, line: 211, baseType: !915, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !912, file: !33, line: 212, baseType: !915, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !912, file: !33, line: 213, baseType: !923, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !924, line: 8, baseType: !881)
!924 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !912, file: !33, line: 214, baseType: !923, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !786, file: !28, line: 2085, baseType: !927, size: 64, offset: 1472)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!526, !721, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !932, line: 15, size: 256, elements: !933)
!932 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!933 = !{!934, !936, !937, !938, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !931, file: !932, line: 16, baseType: !935, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !391, line: 154, baseType: !7)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !931, file: !932, line: 19, baseType: !109, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !931, file: !932, line: 26, baseType: !540, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !931, file: !932, line: 33, baseType: !540, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !931, file: !932, line: 36, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !786, file: !28, line: 2087, baseType: !927, size: 64, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !786, file: !28, line: 2089, baseType: !756, size: 64, offset: 1600)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !722, file: !28, line: 1198, baseType: !945, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !948)
!948 = !{!949, !953, !957, !961, !962, !963, !964, !965, !970, !975, !979}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !947, file: !33, line: 325, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!109, !862}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !947, file: !33, line: 326, baseType: !954, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!862, !721, !109}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !947, file: !33, line: 327, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !862}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !947, file: !33, line: 328, baseType: !950, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !947, file: !33, line: 329, baseType: !950, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !947, file: !33, line: 330, baseType: !950, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !947, file: !33, line: 331, baseType: !814, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !947, file: !33, line: 334, baseType: !966, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!969, !570}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !947, file: !33, line: 335, baseType: !971, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!109, !570, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !947, file: !33, line: 337, baseType: !976, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!109, !570, !969}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !947, file: !33, line: 339, baseType: !980, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!109, !721, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !722, file: !28, line: 1199, baseType: !985, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !988)
!988 = !{!989, !1000, !1001, !1005, !1006, !1007, !1022, !1045, !1049, !1050, !1073}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !987, file: !33, line: 431, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!109, !721, !109, !109, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !996, line: 8, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !995, file: !996, line: 9, baseType: !715, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !995, file: !996, line: 10, baseType: !605, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !987, file: !33, line: 432, baseType: !814, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !987, file: !33, line: 433, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!109, !721, !7}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !987, file: !33, line: 434, baseType: !1002, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !987, file: !33, line: 435, baseType: !814, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !987, file: !33, line: 436, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!109, !721, !109, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1012, file: !33, line: 418, baseType: !109, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1012, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1012, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1012, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1012, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1012, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1012, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1012, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !987, file: !33, line: 437, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!109, !721, !894, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1027, file: !33, line: 346, baseType: !109, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1027, file: !33, line: 347, baseType: !643, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1027, file: !33, line: 348, baseType: !643, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1027, file: !33, line: 349, baseType: !643, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1027, file: !33, line: 350, baseType: !643, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1027, file: !33, line: 351, baseType: !643, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1027, file: !33, line: 352, baseType: !643, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1027, file: !33, line: 353, baseType: !880, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1027, file: !33, line: 355, baseType: !880, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1027, file: !33, line: 356, baseType: !109, size: 32, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1027, file: !33, line: 357, baseType: !109, size: 32, offset: 608)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1027, file: !33, line: 358, baseType: !643, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1027, file: !33, line: 359, baseType: !643, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1027, file: !33, line: 360, baseType: !643, size: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1027, file: !33, line: 361, baseType: !880, size: 64, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1027, file: !33, line: 362, baseType: !109, size: 32, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !987, file: !33, line: 438, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!109, !721, !983, !1026}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !987, file: !33, line: 440, baseType: !1023, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !987, file: !33, line: 441, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!109, !721, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1055, file: !33, line: 412, baseType: !7, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1055, file: !33, line: 413, baseType: !1059, size: 1344, offset: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 1344, elements: !491)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1072}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1060, file: !33, line: 398, baseType: !7, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1060, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1060, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1060, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1060, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1060, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1060, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1060, file: !33, line: 406, baseType: !645, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1060, file: !33, line: 407, baseType: !1071, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !391, line: 132, baseType: !643)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1060, file: !33, line: 408, baseType: !1071, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !987, file: !33, line: 442, baseType: !1002, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !722, file: !28, line: 1200, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !722, file: !28, line: 1201, baseType: !540, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !722, file: !28, line: 1202, baseType: !540, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !722, file: !28, line: 1203, baseType: !540, size: 64, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !722, file: !28, line: 1204, baseType: !605, size: 64, offset: 832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !722, file: !28, line: 1205, baseType: !1083, size: 320, offset: 896)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1084, line: 48, size: 320, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1085 = !{!1086, !1087, !1088, !1089, !1090}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1083, file: !1084, line: 49, baseType: !874, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1083, file: !1084, line: 55, baseType: !874, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1083, file: !1084, line: 57, baseType: !885, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1083, file: !1084, line: 59, baseType: !883, size: 32, offset: 160)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1083, file: !1084, line: 60, baseType: !390, size: 128, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !722, file: !28, line: 1206, baseType: !109, size: 32, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !722, file: !28, line: 1207, baseType: !440, size: 32, offset: 1248)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !722, file: !28, line: 1209, baseType: !384, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !722, file: !28, line: 1211, baseType: !1095, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !722, file: !28, line: 1223, baseType: !1100, size: 64, offset: 1408)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !622, line: 34, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1100, file: !622, line: 35, baseType: !625, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !722, file: !28, line: 1224, baseType: !390, size: 128, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !722, file: !28, line: 1225, baseType: !1105, size: 64, offset: 1600)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !722, file: !28, line: 1226, baseType: !1108, size: 64, offset: 1664)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !722, file: !28, line: 1227, baseType: !1111, size: 64, offset: 1728)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !722, file: !28, line: 1228, baseType: !1114, size: 64, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !722, file: !28, line: 1229, baseType: !766, size: 128, offset: 1856)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !722, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !722, file: !28, line: 1231, baseType: !1119, size: 2496, offset: 2048)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1125, !1157}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !33, line: 522, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1119, file: !33, line: 523, baseType: !1083, size: 320, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1119, file: !33, line: 524, baseType: !1124, size: 192, offset: 384)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 192, elements: !491)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1119, file: !33, line: 525, baseType: !1126, size: 1728, offset: 576)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 1728, elements: !491)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1128)
!1128 = !{!1129, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1127, file: !33, line: 223, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1147, !1148}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1131, file: !33, line: 446, baseType: !109, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1131, file: !33, line: 447, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1137, file: !33, line: 313, baseType: !814, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1137, file: !33, line: 314, baseType: !814, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1137, file: !33, line: 315, baseType: !814, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1137, file: !33, line: 316, baseType: !814, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1137, file: !33, line: 317, baseType: !950, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1137, file: !33, line: 318, baseType: !950, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1137, file: !33, line: 319, baseType: !950, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1137, file: !33, line: 320, baseType: !980, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1131, file: !33, line: 448, baseType: !385, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1131, file: !33, line: 449, baseType: !1130, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1127, file: !33, line: 224, baseType: !109, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1127, file: !33, line: 226, baseType: !390, size: 128, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1127, file: !33, line: 227, baseType: !540, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1127, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1127, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1127, file: !33, line: 230, baseType: !915, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1127, file: !33, line: 231, baseType: !915, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1127, file: !33, line: 232, baseType: !384, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1119, file: !33, line: 526, baseType: !1158, size: 192, offset: 2304)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 192, elements: !491)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !722, file: !28, line: 1233, baseType: !1160, size: 2368, offset: 4544)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1160, file: !28, line: 1185, baseType: !460, size: 16)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1160, file: !28, line: 1186, baseType: !460, size: 16, offset: 16)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1160, file: !28, line: 1187, baseType: !1165, size: 2304, offset: 64)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 2304, elements: !491)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1167, line: 12, size: 768, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1168 = !{!1169, !1191, !1193, !3333, !3334}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1166, file: !1167, line: 13, baseType: !1170, size: 384)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1171, line: 17, size: 384, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1172 = !{!1173, !1174, !1175, !1182}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1170, file: !1171, line: 18, baseType: !109, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1170, file: !1171, line: 19, baseType: !109, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1170, file: !1171, line: 20, baseType: !1176, size: 192, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1177, line: 41, baseType: !1178)
!1177 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1177, line: 37, size: 192, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1177, line: 38, baseType: !420, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1178, file: !1177, line: 39, baseType: !390, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1170, file: !1171, line: 22, baseType: !1183, size: 128, align: 64, offset: 256)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !391, line: 232, size: 128, align: 64, elements: !1184)
!1184 = !{!1185, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !391, line: 233, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1183, file: !391, line: 234, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1186}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1166, file: !1167, line: 14, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1166, file: !1167, line: 15, baseType: !1194, size: 64, offset: 448)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1195, line: 16, size: 64, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1194, file: !1195, line: 17, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !845, line: 746, size: 58368, elements: !1200)
!1200 = !{!1201, !1209, !1210, !1211, !1217, !1218, !1219, !1220, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1298, !1309, !1404, !1408, !1411, !1442, !1443, !1444, !1445, !1456, !1458, !1459, !1460, !1461, !1462, !1463, !1474, !1475, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1492, !1493, !1500, !1501, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2503, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2518, !2519, !2520, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2552, !2558, !2559, !2560, !2561, !2562, !2566, !2569, !2576, !2581, !2584, !2587, !2590, !2594, !2734, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2774, !2775, !2776, !2785, !2793, !2794, !2795, !2796, !2797, !2802, !2803, !2804, !2807, !2808, !2811, !2814, !2817, !2825, !2828, !2829, !2915, !2916, !2917, !2918, !2919, !2925, !2926, !2927, !2928, !2931, !2932, !2935, !2938, !2939, !2942, !2943, !2944, !2947, !2948, !2949, !2950, !2951, !2952, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2984, !2985, !2991, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3003, !3075, !3077, !3078, !3079, !3080, !3081, !3093, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3110, !3111, !3112}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1199, file: !845, line: 752, baseType: !1202, size: 192)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1203, line: 56, size: 192, elements: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1204 = !{!1205, !1206, !1207, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1203, line: 57, baseType: !540, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1202, file: !1203, line: 58, baseType: !540, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1202, file: !1203, line: 59, baseType: !639, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1202, file: !1203, line: 61, baseType: !639, size: 32, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1199, file: !845, line: 754, baseType: !7, size: 32, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1199, file: !845, line: 767, baseType: !384, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1199, file: !845, line: 768, baseType: !1212, size: 32, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1213, line: 113, baseType: !1214)
!1213 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1213, line: 111, size: 32, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1214, file: !1213, line: 112, baseType: !440, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1199, file: !845, line: 770, baseType: !7, size: 32, offset: 352)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1199, file: !845, line: 771, baseType: !7, size: 32, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1199, file: !845, line: 774, baseType: !109, size: 32, offset: 416)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1199, file: !845, line: 775, baseType: !1221, size: 128, offset: 448)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1222, line: 58, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1223 = !{!1224, !1230, !1235, !1236}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1221, file: !1222, line: 59, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1226, line: 60, size: 64, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !1226, line: 61, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1222, line: 60, baseType: !1231, size: 32, offset: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1221, file: !1222, line: 60, size: 32, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1231, file: !1222, line: 61, baseType: !7, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1231, file: !1222, line: 62, baseType: !440, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1221, file: !1222, line: 65, baseType: !458, size: 16, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1221, file: !1222, line: 65, baseType: !458, size: 16, offset: 112)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1199, file: !845, line: 776, baseType: !7, size: 32, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1199, file: !845, line: 777, baseType: !540, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1199, file: !845, line: 778, baseType: !1198, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1199, file: !845, line: 787, baseType: !109, size: 32, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1199, file: !845, line: 788, baseType: !109, size: 32, offset: 800)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1199, file: !845, line: 790, baseType: !109, size: 32, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1199, file: !845, line: 792, baseType: !109, size: 32, offset: 864)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1199, file: !845, line: 793, baseType: !109, size: 32, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1199, file: !845, line: 794, baseType: !109, size: 32, offset: 928)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1199, file: !845, line: 795, baseType: !7, size: 32, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1199, file: !845, line: 797, baseType: !1248, size: 2048, offset: 1024)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !845, line: 551, size: 2048, elements: !1249)
!1249 = !{!1250, !1255, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1277, !1280, !1281, !1282}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1248, file: !845, line: 553, baseType: !1251, size: 128)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !845, line: 411, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1251, file: !845, line: 412, baseType: !540, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1251, file: !845, line: 413, baseType: !639, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1248, file: !845, line: 554, baseType: !1256, size: 192, align: 64, offset: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1257, line: 5, size: 192, align: 64, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1258 = !{!1259, !1260, !1262}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1256, file: !1257, line: 6, baseType: !540, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1256, file: !1257, line: 7, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1256, file: !1257, line: 8, baseType: !1261, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1248, file: !845, line: 555, baseType: !643, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1248, file: !845, line: 556, baseType: !643, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1248, file: !845, line: 558, baseType: !390, size: 128, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !845, line: 559, baseType: !7, size: 32, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1248, file: !845, line: 561, baseType: !643, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1248, file: !845, line: 562, baseType: !643, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1248, file: !845, line: 563, baseType: !643, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1248, file: !845, line: 564, baseType: !643, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1248, file: !845, line: 565, baseType: !880, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1248, file: !845, line: 566, baseType: !643, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1248, file: !845, line: 568, baseType: !643, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1248, file: !845, line: 571, baseType: !109, size: 32, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1248, file: !845, line: 572, baseType: !1276, size: 64, offset: 1152)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1248, file: !845, line: 574, baseType: !1278, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !845, line: 49, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1248, file: !845, line: 576, baseType: !1278, size: 64, offset: 1280)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1248, file: !845, line: 578, baseType: !540, size: 64, offset: 1344)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1248, file: !845, line: 588, baseType: !1283, size: 512, align: 512, offset: 1536)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !845, line: 497, size: 512, align: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1283, file: !845, line: 498, baseType: !643, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1283, file: !845, line: 499, baseType: !643, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1283, file: !845, line: 500, baseType: !643, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1283, file: !845, line: 501, baseType: !639, size: 32, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1283, file: !845, line: 502, baseType: !639, size: 32, offset: 224)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1283, file: !845, line: 503, baseType: !540, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1283, file: !845, line: 504, baseType: !540, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1283, file: !845, line: 505, baseType: !540, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1283, file: !845, line: 506, baseType: !1294, size: 64, align: 64, offset: 448)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !845, line: 445, size: 64, align: 64, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1294, file: !845, line: 446, baseType: !7, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1294, file: !845, line: 447, baseType: !7, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1199, file: !845, line: 798, baseType: !1299, size: 384, offset: 3072)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !845, line: 592, size: 384, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1299, file: !845, line: 593, baseType: !390, size: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1299, file: !845, line: 594, baseType: !540, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1299, file: !845, line: 595, baseType: !540, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1299, file: !845, line: 596, baseType: !7, size: 32, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1299, file: !845, line: 597, baseType: !460, size: 16, offset: 288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1299, file: !845, line: 598, baseType: !460, size: 16, offset: 304)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1299, file: !845, line: 600, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1199, file: !845, line: 799, baseType: !1310, size: 1792, offset: 3456)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !845, line: 610, size: 1792, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1401, !1402}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1310, file: !845, line: 611, baseType: !1256, size: 192, align: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1310, file: !845, line: 618, baseType: !643, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1310, file: !845, line: 619, baseType: !643, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1310, file: !845, line: 620, baseType: !643, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1310, file: !845, line: 621, baseType: !643, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1310, file: !845, line: 622, baseType: !643, size: 64, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1310, file: !845, line: 629, baseType: !880, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1310, file: !845, line: 630, baseType: !643, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !845, line: 631, baseType: !7, size: 32, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1310, file: !845, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1310, file: !845, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1310, file: !845, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1310, file: !845, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1310, file: !845, line: 662, baseType: !1326, size: 512, offset: 704)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1327)
!1327 = !{!1328, !1336, !1337, !1342, !1397, !1398, !1399, !1400}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1326, file: !39, line: 119, baseType: !1329, size: 256)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1330, line: 9, size: 256, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1329, file: !1330, line: 10, baseType: !1256, size: 192, align: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1329, file: !1330, line: 11, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1335, line: 29, baseType: !880)
!1335 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1326, file: !39, line: 120, baseType: !1334, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1326, file: !39, line: 121, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!38, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1326, file: !39, line: 122, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1345)
!1345 = !{!1346, !1371, !1372, !1375, !1380, !1381, !1392, !1396}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1344, file: !39, line: 160, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !39, line: 216, baseType: !883, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1348, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1348, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1348, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1348, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1348, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1348, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1348, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1348, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1348, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1348, file: !39, line: 227, baseType: !460, size: 16, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1348, file: !39, line: 228, baseType: !460, size: 16, offset: 208)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1348, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1348, file: !39, line: 235, baseType: !1334, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1348, file: !39, line: 236, baseType: !1341, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1348, file: !39, line: 237, baseType: !1334, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1348, file: !39, line: 238, baseType: !1341, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1348, file: !39, line: 239, baseType: !1368, size: 4096, align: 512, offset: 512)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 4096, align: 512, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 8)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1344, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1344, file: !39, line: 162, baseType: !1373, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !391, line: 32, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !524, line: 96, baseType: !109)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1344, file: !39, line: 163, baseType: !1376, size: 32, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !612, line: 274, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !612, line: 274, size: 32, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1377, file: !612, line: 274, baseType: !616, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1344, file: !39, line: 164, baseType: !1341, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1344, file: !39, line: 165, baseType: !1382, size: 128, offset: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1330, line: 14, size: 128, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1382, file: !1330, line: 15, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1257, line: 26, size: 128, elements: !1386)
!1386 = !{!1387, !1391}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1385, file: !1257, line: 27, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1257, line: 12, size: 64, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1388, file: !1257, line: 13, baseType: !1261, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1385, file: !1257, line: 28, baseType: !1261, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1344, file: !39, line: 166, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1334}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1344, file: !39, line: 167, baseType: !1334, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1326, file: !39, line: 123, baseType: !448, size: 8, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1326, file: !39, line: 124, baseType: !448, size: 8, offset: 456)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1326, file: !39, line: 125, baseType: !448, size: 8, offset: 464)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1326, file: !39, line: 126, baseType: !448, size: 8, offset: 472)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1310, file: !845, line: 671, baseType: !1326, size: 512, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1310, file: !845, line: 679, baseType: !1403, size: 64, offset: 1728)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1199, file: !845, line: 800, baseType: !1405, size: 64, offset: 5248)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !845, line: 800, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1199, file: !845, line: 809, baseType: !1409, size: 64, offset: 5312)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !845, line: 70, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1199, file: !845, line: 825, baseType: !1412, size: 2048, align: 512, offset: 5632)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !845, line: 509, size: 2048, align: 512, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1412, file: !845, line: 511, baseType: !643, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1412, file: !845, line: 512, baseType: !643, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1412, file: !845, line: 513, baseType: !643, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1412, file: !845, line: 514, baseType: !643, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1412, file: !845, line: 515, baseType: !643, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1412, file: !845, line: 516, baseType: !643, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1412, file: !845, line: 518, baseType: !643, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1412, file: !845, line: 519, baseType: !643, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1412, file: !845, line: 520, baseType: !880, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1412, file: !845, line: 522, baseType: !643, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1412, file: !845, line: 523, baseType: !643, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1412, file: !845, line: 524, baseType: !880, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1412, file: !845, line: 526, baseType: !880, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1412, file: !845, line: 527, baseType: !643, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1412, file: !845, line: 529, baseType: !643, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1412, file: !845, line: 530, baseType: !643, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1412, file: !845, line: 531, baseType: !643, size: 64, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1412, file: !845, line: 532, baseType: !643, size: 64, offset: 1088)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1412, file: !845, line: 533, baseType: !643, size: 64, offset: 1152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1412, file: !845, line: 535, baseType: !643, size: 64, offset: 1216)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1412, file: !845, line: 536, baseType: !643, size: 64, offset: 1280)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1412, file: !845, line: 537, baseType: !643, size: 64, offset: 1344)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1412, file: !845, line: 538, baseType: !643, size: 64, offset: 1408)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1412, file: !845, line: 539, baseType: !643, size: 64, offset: 1472)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1412, file: !845, line: 540, baseType: !643, size: 64, offset: 1536)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1412, file: !845, line: 541, baseType: !643, size: 64, offset: 1600)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1412, file: !845, line: 542, baseType: !643, size: 64, offset: 1664)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1412, file: !845, line: 543, baseType: !643, size: 64, offset: 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1199, file: !845, line: 833, baseType: !7, size: 32, offset: 7680)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1199, file: !845, line: 836, baseType: !7, size: 32, offset: 7712)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1199, file: !845, line: 837, baseType: !109, size: 32, offset: 7744)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1199, file: !845, line: 838, baseType: !1446, size: 64, offset: 7808)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1449, line: 19, baseType: !1450)
!1449 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1449, line: 19, size: 64, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1450, file: !1449, line: 19, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 64, elements: !1454)
!1454 = !{!1455}
!1455 = !DISubrange(count: 1)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1199, file: !845, line: 839, baseType: !1457, size: 64, offset: 7872)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1199, file: !845, line: 840, baseType: !1448, size: 64, offset: 7936)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1199, file: !845, line: 841, baseType: !384, size: 64, offset: 8000)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1199, file: !845, line: 843, baseType: !460, size: 16, offset: 8064)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1199, file: !845, line: 845, baseType: !460, size: 16, offset: 8080)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1199, file: !845, line: 848, baseType: !109, size: 32, offset: 8096)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1199, file: !845, line: 849, baseType: !1464, size: 32, offset: 8128)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !845, line: 718, size: 32, elements: !1465)
!1465 = !{!1466, !1473}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1464, file: !845, line: 724, baseType: !1467, size: 32)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !845, line: 719, size: 32, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1467, file: !845, line: 720, baseType: !448, size: 8)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1467, file: !845, line: 721, baseType: !448, size: 8, offset: 8)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1467, file: !845, line: 722, baseType: !448, size: 8, offset: 16)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1467, file: !845, line: 723, baseType: !448, size: 8, offset: 24)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1464, file: !845, line: 725, baseType: !639, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1199, file: !845, line: 850, baseType: !390, size: 128, offset: 8192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1199, file: !845, line: 851, baseType: !1476, size: 64, offset: 8320)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !845, line: 60, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1199, file: !845, line: 855, baseType: !540, size: 64, offset: 8384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1199, file: !845, line: 856, baseType: !448, size: 8, offset: 8448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1199, file: !845, line: 857, baseType: !448, size: 8, offset: 8456)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1199, file: !845, line: 858, baseType: !109, size: 32, offset: 8480)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1199, file: !845, line: 859, baseType: !390, size: 128, offset: 8512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1199, file: !845, line: 860, baseType: !109, size: 32, offset: 8640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1199, file: !845, line: 861, baseType: !390, size: 128, offset: 8704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1199, file: !845, line: 873, baseType: !1486, size: 256, offset: 8832)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !845, line: 376, size: 256, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1486, file: !845, line: 381, baseType: !540, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1486, file: !845, line: 384, baseType: !645, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1486, file: !845, line: 389, baseType: !645, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1486, file: !845, line: 392, baseType: !645, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1199, file: !845, line: 875, baseType: !390, size: 128, offset: 9088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1199, file: !845, line: 877, baseType: !1494, size: 320, offset: 9216)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1495, line: 86, size: 320, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1494, file: !1495, line: 87, baseType: !109, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1494, file: !1495, line: 88, baseType: !390, size: 128, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1494, file: !1495, line: 89, baseType: !390, size: 128, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1199, file: !845, line: 878, baseType: !1256, size: 192, align: 64, offset: 9536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1199, file: !845, line: 881, baseType: !1502, size: 64, offset: 9728)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1504)
!1504 = !{!1505, !2417}
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !65, line: 734, baseType: !1506, size: 10240)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !65, line: 734, size: 10240, elements: !1507)
!1507 = !{!1508, !1512, !1525, !2281, !2282, !2283, !2284, !2285, !2286, !2293, !2294, !2295, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2334, !2336, !2339, !2386, !2387, !2388, !2391, !2392, !2393, !2396, !2397, !2398, !2404, !2405}
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !65, line: 739, baseType: !1509, size: 512, align: 512)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !65, line: 739, size: 512, align: 512, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1509, file: !65, line: 747, baseType: !440, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1506, file: !65, line: 750, baseType: !1513, size: 128, offset: 512)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1514, line: 218, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1515 = !{!1516, !1523, !1524}
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1514, line: 219, baseType: !1517, size: 32)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1514, line: 219, size: 32, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1517, file: !1514, line: 220, baseType: !420, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1517, file: !1514, line: 221, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1514, line: 197, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1514, line: 197, elements: !774)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1513, file: !1514, line: 223, baseType: !7, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1513, file: !1514, line: 224, baseType: !384, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1506, file: !65, line: 752, baseType: !1526, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!540, !1529, !540, !540, !540, !540}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1531)
!1531 = !{!1532, !1538, !1539, !1541, !1542, !1543, !1544, !1545, !1597, !1792, !1801, !1802, !1803, !2271, !2272, !2273, !2274, !2276, !2277, !2280}
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !28, line: 995, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !28, line: 995, size: 128, elements: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1533, file: !28, line: 996, baseType: !1225, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1533, file: !28, line: 997, baseType: !1183, size: 128, align: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1533, file: !28, line: 998, baseType: !7, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1530, file: !28, line: 1005, baseType: !420, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1530, file: !28, line: 1006, baseType: !1540, size: 32, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !391, line: 156, baseType: !7)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1530, file: !28, line: 1007, baseType: !874, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1530, file: !28, line: 1008, baseType: !870, size: 256, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1530, file: !28, line: 1009, baseType: !731, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1530, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1530, file: !28, line: 1011, baseType: !1546, size: 256, offset: 640)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1547)
!1547 = !{!1548, !1569, !1593, !1594, !1595, !1596}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !28, line: 949, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1550, line: 34, baseType: !1551)
!1550 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1550, line: 25, size: 64, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1551, file: !1550, line: 26, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1555, line: 27, baseType: !1556)
!1555 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1555, line: 13, size: 64, elements: !1557)
!1557 = !{!1558, !1568}
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !1555, line: 14, baseType: !1559, size: 32)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !1555, line: 14, size: 32, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1559, file: !1555, line: 15, baseType: !440, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1555, line: 16, baseType: !1563, size: 32)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1555, line: 16, size: 32, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1563, file: !1555, line: 18, baseType: !448, size: 8)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1563, file: !1555, line: 19, baseType: !1567, size: 24, offset: 8)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 24, elements: !491)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1556, file: !1555, line: 26, baseType: !432, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1546, file: !28, line: 950, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1580, !1581, !1582, !1583}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1571, file: !13, line: 61, baseType: !1212, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1571, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1571, file: !13, line: 63, baseType: !420, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1571, file: !13, line: 65, baseType: !1577, size: 256, offset: 128)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 256, elements: !1578)
!1578 = !{!1579}
!1579 = !DISubrange(count: 4)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1571, file: !13, line: 66, baseType: !762, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1571, file: !13, line: 68, baseType: !1176, size: 192, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1571, file: !13, line: 69, baseType: !1183, size: 128, align: 64, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1571, file: !13, line: 70, baseType: !1584, offset: 768)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1585, elements: !1591)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1585, file: !13, line: 55, baseType: !109, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1585, file: !13, line: 56, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1591 = !{!1592}
!1592 = !DISubrange(count: -1)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1546, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !28, line: 952, baseType: !576, size: 32, offset: 160)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1546, file: !28, line: 952, baseType: !576, size: 32, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1546, file: !28, line: 953, baseType: !109, size: 32, offset: 224)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1530, file: !28, line: 1012, baseType: !1598, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1601, line: 110, size: 1472, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1619, !1620, !1621, !1622, !1623, !1624, !1737, !1738, !1739, !1740, !1741, !1772, !1775, !1779, !1787}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1600, file: !1601, line: 111, baseType: !874, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1600, file: !1601, line: 112, baseType: !576, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1600, file: !1601, line: 113, baseType: !585, size: 32, offset: 96)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1600, file: !1601, line: 114, baseType: !576, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1600, file: !1601, line: 115, baseType: !585, size: 32, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1600, file: !1601, line: 116, baseType: !576, size: 32, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1600, file: !1601, line: 117, baseType: !585, size: 32, offset: 224)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1600, file: !1601, line: 118, baseType: !576, size: 32, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1600, file: !1601, line: 119, baseType: !585, size: 32, offset: 288)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1600, file: !1601, line: 120, baseType: !7, size: 32, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1600, file: !1601, line: 121, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1615, line: 24, baseType: !1616)
!1615 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1615, line: 24, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1616, file: !1615, line: 24, baseType: !643, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1600, file: !1601, line: 122, baseType: !1614, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1600, file: !1601, line: 123, baseType: !1614, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1600, file: !1601, line: 124, baseType: !1614, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1600, file: !1601, line: 125, baseType: !1614, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1600, file: !1601, line: 127, baseType: !452, size: 8, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1600, file: !1601, line: 129, baseType: !1625, size: 64, offset: 768)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1627, line: 195, size: 1728, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1628 = !{!1629, !1630, !1635, !1640, !1641, !1644, !1645, !1650, !1651, !1652, !1653, !1656, !1657, !1658, !1660, !1661, !1701, !1722}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1626, file: !1627, line: 196, baseType: !1212, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1626, file: !1627, line: 197, baseType: !1631, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1627, line: 28, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !391, line: 104, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !449, line: 20, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !451, line: 26, baseType: !109)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 198, baseType: !1636, size: 192, offset: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 198, size: 192, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1636, file: !1627, line: 199, baseType: !390, size: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1636, file: !1627, line: 200, baseType: !1256, size: 192, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1626, file: !1627, line: 205, baseType: !1083, size: 320, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1626, file: !1627, line: 206, baseType: !1642, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1627, line: 206, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1626, file: !1627, line: 207, baseType: !384, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 208, baseType: !1646, size: 64, offset: 704)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 208, size: 64, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1646, file: !1627, line: 209, baseType: !923, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1646, file: !1627, line: 210, baseType: !923, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1626, file: !1627, line: 212, baseType: !923, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1626, file: !1627, line: 213, baseType: !576, size: 32, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1626, file: !1627, line: 214, baseType: !585, size: 32, offset: 864)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1626, file: !1627, line: 215, baseType: !1654, size: 32, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1627, line: 31, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !391, line: 110, baseType: !639)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1626, file: !1627, line: 216, baseType: !460, size: 16, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1626, file: !1627, line: 217, baseType: !460, size: 16, offset: 944)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1626, file: !1627, line: 221, baseType: !1659, size: 16, offset: 960)
!1659 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1627, line: 228, baseType: !540, size: 64, offset: 1024)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 245, baseType: !1662, size: 320, offset: 1088)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 245, size: 320, elements: !1663)
!1663 = !{!1664, !1693}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1662, file: !1627, line: 246, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1627, line: 114, size: 320, elements: !1666)
!1666 = !{!1667, !1668, !1680, !1683, !1692}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1665, file: !1627, line: 116, baseType: !540, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1627, line: 117, baseType: !1669, size: 64, offset: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1627, line: 117, size: 64, elements: !1670)
!1670 = !{!1671, !1679}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1627, line: 118, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !1627, line: 118, size: 64, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1672, file: !1627, line: 120, baseType: !458, size: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1672, file: !1627, line: 121, baseType: !1676, size: 48, offset: 16)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 48, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 6)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1669, file: !1627, line: 127, baseType: !540, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !1627, line: 129, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1627, line: 102, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1665, file: !1627, line: 130, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1627, line: 108, size: 192, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1685, file: !1627, line: 109, baseType: !1183, size: 128, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1685, file: !1627, line: 110, baseType: !1212, size: 32, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1685, file: !1627, line: 111, baseType: !1690, size: 8, offset: 160)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !391, line: 35, baseType: !1691)
!1691 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1665, file: !1627, line: 131, baseType: !409, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1627, line: 247, baseType: !1694, size: 320)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1627, line: 247, size: 320, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1694, file: !1627, line: 248, baseType: !540, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1694, file: !1627, line: 249, baseType: !540, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1694, file: !1627, line: 250, baseType: !1681, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1694, file: !1627, line: 251, baseType: !1684, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1694, file: !1627, line: 252, baseType: !490, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 260, baseType: !1702, size: 256, offset: 1408)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 260, size: 256, elements: !1703)
!1703 = !{!1704, !1710}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1702, file: !1627, line: 261, baseType: !1705, size: 256)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1627, line: 134, size: 256, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1705, file: !1627, line: 135, baseType: !384, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1705, file: !1627, line: 136, baseType: !1709, size: 256)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !1578)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1627, line: 262, baseType: !1711, size: 256)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1627, line: 262, size: 256, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1711, file: !1627, line: 264, baseType: !390, size: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1711, file: !1627, line: 265, baseType: !1715, size: 128, offset: 128)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1716, line: 22, size: 128, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1717 = !{!1718, !1721}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1715, file: !1716, line: 23, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1716, line: 23, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1715, file: !1716, line: 24, baseType: !540, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1626, file: !1627, line: 280, baseType: !1723, size: 64, offset: 1664)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1627, line: 176, size: 192, elements: !1725)
!1725 = !{!1726, !1735, !1736}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1724, file: !1627, line: 177, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1627, line: 171, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!109, !1625, !1731, !1733, !1625}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1724, file: !1627, line: 178, baseType: !1625, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1724, file: !1627, line: 179, baseType: !1681, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1600, file: !1601, line: 130, baseType: !1625, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1600, file: !1601, line: 131, baseType: !1625, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1600, file: !1601, line: 132, baseType: !1625, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1600, file: !1601, line: 135, baseType: !384, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1600, file: !1601, line: 137, baseType: !1742, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1744, line: 14, size: 1088, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1745 = !{!1746, !1747, !1756, !1757, !1758, !1759, !1760, !1761}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1743, file: !1744, line: 15, baseType: !1212, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1743, file: !1744, line: 17, baseType: !1748, size: 320, offset: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1749, line: 22, size: 320, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 23, baseType: !883, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1748, file: !1749, line: 24, baseType: !880, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1748, file: !1749, line: 26, baseType: !390, size: 128, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1748, file: !1749, line: 28, baseType: !1755, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1743, file: !1744, line: 19, baseType: !540, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1743, file: !1744, line: 20, baseType: !874, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1743, file: !1744, line: 23, baseType: !766, size: 128, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1743, file: !1744, line: 24, baseType: !576, size: 32, offset: 640)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1743, file: !1744, line: 29, baseType: !874, size: 64, offset: 704)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1743, file: !1744, line: 36, baseType: !1762, size: 320, offset: 768)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1763, line: 15, size: 320, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1762, file: !1763, line: 16, baseType: !883, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1762, file: !1763, line: 18, baseType: !109, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1762, file: !1763, line: 19, baseType: !109, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1762, file: !1763, line: 20, baseType: !109, size: 32, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1762, file: !1763, line: 21, baseType: !109, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1762, file: !1763, line: 22, baseType: !540, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !1763, line: 23, baseType: !540, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1600, file: !1601, line: 138, baseType: !1773, size: 64, offset: 1152)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !577, line: 18, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1600, file: !1601, line: 139, baseType: !1776, size: 64, offset: 1216)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1778, line: 16, flags: DIFlagFwdDecl)
!1778 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1600, file: !1601, line: 140, baseType: !1780, size: 64, offset: 1280)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1601, line: 25, size: 64, elements: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1781, file: !1601, line: 26, baseType: !440, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1781, file: !1601, line: 27, baseType: !109, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1781, file: !1601, line: 28, baseType: !1786, offset: 64)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, elements: !1591)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1601, line: 142, baseType: !1788, size: 128, offset: 1344)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !1601, line: 142, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1788, file: !1601, line: 143, baseType: !109, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1788, file: !1601, line: 144, baseType: !1183, size: 128, align: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1530, file: !28, line: 1013, baseType: !1793, size: 256, offset: 960)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1793, file: !28, line: 971, baseType: !540, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1793, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1793, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1793, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1793, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1793, file: !28, line: 976, baseType: !731, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1530, file: !28, line: 1014, baseType: !995, size: 128, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1530, file: !28, line: 1015, baseType: !570, size: 64, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1530, file: !28, line: 1016, baseType: !1804, size: 64, offset: 1408)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1807)
!1807 = !{!1808, !1809, !1813, !1818, !1822, !1850, !1851, !1857, !1870, !1887, !1891, !1892, !2193, !2194, !2198, !2203, !2204, !2208, !2212, !2218, !2219, !2223, !2224, !2230, !2234, !2238, !2244, !2248, !2252, !2256, !2260, !2261, !2267}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1806, file: !28, line: 1915, baseType: !385, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1806, file: !28, line: 1916, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!731, !1529, !731, !109}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1806, file: !28, line: 1917, baseType: !1814, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!522, !1529, !490, !537, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1806, file: !28, line: 1918, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!522, !1529, !409, !537, !1817}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1806, file: !28, line: 1919, baseType: !1823, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!522, !1826, !1848}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1835, !1836, !1837, !1838}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1827, file: !28, line: 374, baseType: !1529, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1827, file: !28, line: 375, baseType: !731, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1827, file: !28, line: 376, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1826, !526}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1827, file: !28, line: 377, baseType: !384, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1827, file: !28, line: 378, baseType: !109, size: 32, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1827, file: !28, line: 379, baseType: !458, size: 16, offset: 288)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !28, line: 380, baseType: !1839, size: 64, offset: 320)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !28, line: 380, size: 64, elements: !1840)
!1840 = !{!1841, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1839, file: !28, line: 386, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1839, file: !28, line: 395, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!522, !384}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1806, file: !28, line: 1920, baseType: !1823, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1806, file: !28, line: 1921, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!109, !1826, !1855, !7}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1806, file: !28, line: 1923, baseType: !1858, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!109, !1529, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1863)
!1863 = !{!1864, !1869}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1862, file: !28, line: 1859, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1690, !1861, !409, !109, !731, !643, !7}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1862, file: !28, line: 1860, baseType: !731, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1806, file: !28, line: 1924, baseType: !1871, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1874, !1529, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1875, line: 59, baseType: !7)
!1875 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1878, line: 37, size: 128, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1879 = !{!1880, !1886}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1877, file: !1878, line: 38, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1878, line: 31, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1529, !1885, !1876}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1877, file: !1878, line: 39, baseType: !1874, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1806, file: !28, line: 1925, baseType: !1888, size: 64, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!526, !1529, !7, !540}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1806, file: !28, line: 1926, baseType: !1888, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1806, file: !28, line: 1927, baseType: !1893, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!109, !1529, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !1898)
!1898 = !{!1899, !1908, !1909, !1917, !1924, !1925, !1930, !1931, !1936, !1937, !1940, !2186, !2187, !2188, !2189, !2190, !2191}
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !65, line: 628, baseType: !1900, size: 128)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !65, line: 628, size: 128, elements: !1901)
!1901 = !{!1902, !1907}
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !65, line: 629, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !65, line: 629, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1903, file: !65, line: 631, baseType: !540, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1903, file: !65, line: 632, baseType: !540, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1900, file: !65, line: 635, baseType: !1183, size: 128, align: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1897, file: !65, line: 639, baseType: !1502, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1897, file: !65, line: 640, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1911, line: 297, baseType: !1912)
!1911 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1911, line: 297, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1912, file: !1911, line: 297, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1916, line: 19, baseType: !540)
!1916 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !65, line: 646, baseType: !1918, size: 64, offset: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !65, line: 646, size: 64, elements: !1919)
!1919 = !{!1920, !1923}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1918, file: !65, line: 647, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !540)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1918, file: !65, line: 648, baseType: !1922, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1897, file: !65, line: 666, baseType: !109, size: 32, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1897, file: !65, line: 667, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1927, file: !65, line: 580, baseType: !1083, size: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1897, file: !65, line: 670, baseType: !1690, size: 8, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1897, file: !65, line: 681, baseType: !1932, size: 256, offset: 512)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !65, line: 678, size: 256, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1932, file: !65, line: 679, baseType: !1256, size: 192, align: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1932, file: !65, line: 680, baseType: !540, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1897, file: !65, line: 689, baseType: !390, size: 128, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1897, file: !65, line: 691, baseType: !1938, size: 64, offset: 896)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1897, file: !65, line: 694, baseType: !1941, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1944, line: 563, size: 1024, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1945 = !{!1946, !1950, !1951, !1955, !1959, !1963, !2150, !2154, !2158, !2162, !2163, !2164, !2168, !2172, !2178, !2182}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1943, file: !1944, line: 564, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1896}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1943, file: !1944, line: 569, baseType: !1947, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1943, file: !1944, line: 571, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!109, !1896, !540}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1943, file: !1944, line: 572, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!109, !1896}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1943, file: !1944, line: 578, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!109, !1896, !540, !540, !540}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1943, file: !1944, line: 580, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1944, line: 512, size: 896, elements: !1970)
!1970 = !{!1971, !1979, !1980, !1987, !1994, !2004, !2143, !2144, !2146, !2148}
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !1944, line: 513, baseType: !1972, size: 320)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1944, line: 513, size: 320, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1972, file: !1944, line: 514, baseType: !1896, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1972, file: !1944, line: 515, baseType: !935, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1972, file: !1944, line: 516, baseType: !540, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1972, file: !1944, line: 517, baseType: !540, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1972, file: !1944, line: 518, baseType: !540, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !1944, line: 520, baseType: !64, size: 32, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1969, file: !1944, line: 522, baseType: !1981, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1916, line: 22, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1916, line: 22, size: 64, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1983, file: !1916, line: 22, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1916, line: 15, baseType: !540)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1969, file: !1944, line: 524, baseType: !1988, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1911, line: 372, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1911, line: 372, size: 64, elements: !1991)
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1990, file: !1911, line: 372, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1916, line: 16, baseType: !540)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !1944, line: 527, baseType: !1995, size: 64, offset: 512)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !1944, line: 527, size: 64, elements: !1996)
!1996 = !{!1997, !2003}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1995, file: !1944, line: 528, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1916, line: 21, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1916, line: 21, size: 64, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1999, file: !1916, line: 21, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1916, line: 14, baseType: !540)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1995, file: !1944, line: 529, baseType: !1982, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1969, file: !1944, line: 534, baseType: !2005, size: 64, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !2007)
!2007 = !{!2008, !2009, !2137, !2142}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2006, file: !65, line: 75, baseType: !540, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !65, line: 83, baseType: !2010, size: 320, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !65, line: 83, size: 320, elements: !2011)
!2011 = !{!2012, !2033, !2047, !2051, !2136}
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !65, line: 84, baseType: !2013, size: 320)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !65, line: 84, size: 320, elements: !2014)
!2014 = !{!2015, !2026, !2027, !2032}
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !65, line: 90, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2013, file: !65, line: 90, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2024, !2025}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2016, file: !65, line: 91, baseType: !390, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !65, line: 94, baseType: !2020, size: 128)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !65, line: 94, size: 128, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2020, file: !65, line: 96, baseType: !384, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2020, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2016, file: !65, line: 102, baseType: !390, size: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2016, file: !65, line: 103, baseType: !390, size: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2013, file: !65, line: 106, baseType: !566, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !65, line: 107, baseType: !2028, size: 64, offset: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2013, file: !65, line: 107, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2028, file: !65, line: 108, baseType: !540, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2028, file: !65, line: 109, baseType: !540, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2013, file: !65, line: 117, baseType: !540, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !65, line: 119, baseType: !2034, size: 320)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !65, line: 119, size: 320, elements: !2035)
!2035 = !{!2036, !2037, !2040, !2041, !2042}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2034, file: !65, line: 124, baseType: !540, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2034, file: !65, line: 125, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2034, file: !65, line: 126, baseType: !540, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2034, file: !65, line: 127, baseType: !540, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !65, line: 128, baseType: !2043, size: 64, offset: 256)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2034, file: !65, line: 128, size: 64, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2043, file: !65, line: 133, baseType: !540, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2043, file: !65, line: 138, baseType: !874, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !65, line: 141, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !65, line: 141, size: 64, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2048, file: !65, line: 142, baseType: !540, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !65, line: 144, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !65, line: 144, size: 128, elements: !2053)
!2053 = !{!2054, !2135}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2052, file: !65, line: 146, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !2057)
!2057 = !{!2058, !2068, !2089, !2100, !2101, !2102, !2103, !2117, !2118, !2119}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2056, file: !57, line: 127, baseType: !2059, size: 384)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !2060)
!2060 = !{!2061, !2062, !2064, !2065, !2066, !2067}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2059, file: !57, line: 22, baseType: !540, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2059, file: !57, line: 23, baseType: !2063, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2059, file: !57, line: 24, baseType: !2063, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2059, file: !57, line: 25, baseType: !540, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2059, file: !57, line: 26, baseType: !540, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2059, file: !57, line: 27, baseType: !540, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2056, file: !57, line: 128, baseType: !2069, size: 128, offset: 384)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2070, line: 105, size: 128, elements: !2071)
!2070 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2069, file: !2070, line: 110, baseType: !540, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2069, file: !2070, line: 118, baseType: !2074, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2070, line: 95, size: 448, elements: !2076)
!2076 = !{!2077, !2078, !2084, !2085, !2086, !2087, !2088}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2075, file: !2070, line: 96, baseType: !874, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2075, file: !2070, line: 97, baseType: !2079, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2070, line: 60, baseType: !2081)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2075, file: !2070, line: 98, baseType: !2079, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2075, file: !2070, line: 99, baseType: !1690, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2075, file: !2070, line: 100, baseType: !1690, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2075, file: !2070, line: 101, baseType: !1183, size: 128, align: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2075, file: !2070, line: 102, baseType: !2083, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2056, file: !57, line: 129, baseType: !2090, size: 256, offset: 512)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2091, line: 26, size: 256, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2090, file: !2091, line: 27, baseType: !7, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2090, file: !2091, line: 28, baseType: !2095, size: 192, offset: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2096, line: 43, size: 192, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2096, line: 44, baseType: !883, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2095, file: !2096, line: 45, baseType: !390, size: 128, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2056, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2056, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2056, file: !57, line: 132, baseType: !540, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2056, file: !57, line: 133, baseType: !2104, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !2107)
!2107 = !{!2108, !2112, !2113}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2106, file: !57, line: 83, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2005}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2106, file: !57, line: 89, baseType: !1964, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2106, file: !57, line: 100, baseType: !2114, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!109, !2055, !540, !540, !109}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2056, file: !57, line: 134, baseType: !384, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2056, file: !57, line: 135, baseType: !109, size: 32, offset: 1024)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !57, line: 136, baseType: !2120, size: 128, offset: 1088)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2056, file: !57, line: 136, size: 128, elements: !2121)
!2121 = !{!2122, !2128}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2120, file: !57, line: 137, baseType: !2123, size: 128)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2124, line: 6, size: 128, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2123, file: !2124, line: 7, baseType: !643, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2123, file: !2124, line: 8, baseType: !643, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !57, line: 138, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2120, file: !57, line: 138, elements: !2130)
!2130 = !{!2131, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2129, file: !57, line: 138, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2129, file: !57, line: 138, elements: !774)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2129, file: !57, line: 138, baseType: !2134)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2123, elements: !1591)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2052, file: !65, line: 147, baseType: !384, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2010, file: !65, line: 161, baseType: !1183, size: 128, align: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !65, line: 164, baseType: !2138, size: 32, offset: 384)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !65, line: 164, size: 32, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2138, file: !65, line: 169, baseType: !440, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2138, file: !65, line: 177, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2006, file: !65, line: 181, baseType: !440, size: 32, offset: 416)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1969, file: !1944, line: 535, baseType: !2005, size: 64, offset: 640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1969, file: !1944, line: 541, baseType: !2145, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1969, file: !1944, line: 545, baseType: !2147, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1969, file: !1944, line: 549, baseType: !2149, size: 64, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1911, line: 520, baseType: !2005)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1943, file: !1944, line: 581, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!1967, !1968, !7}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1943, file: !1944, line: 582, baseType: !2155, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!1967, !1968, !540, !540}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1943, file: !1944, line: 584, baseType: !2159, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!540, !1896}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1943, file: !1944, line: 588, baseType: !1964, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1943, file: !1944, line: 591, baseType: !1964, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1943, file: !1944, line: 597, baseType: !2165, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!109, !1896, !540, !384, !109, !109}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1943, file: !1944, line: 603, baseType: !2169, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!409, !1896}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1943, file: !1944, line: 613, baseType: !2173, size: 64, offset: 832)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!109, !1896, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1943, file: !1944, line: 625, baseType: !2179, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2176, !1896, !540}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1943, file: !1944, line: 633, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2005, !1896, !540}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1897, file: !65, line: 697, baseType: !540, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1897, file: !65, line: 699, baseType: !1529, size: 64, offset: 1088)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1897, file: !65, line: 700, baseType: !384, size: 64, offset: 1152)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1897, file: !65, line: 711, baseType: !874, size: 64, offset: 1216)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1897, file: !65, line: 717, baseType: !2176, size: 64, offset: 1280)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1897, file: !65, line: 722, baseType: !2192, offset: 1344)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !774)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1806, file: !28, line: 1928, baseType: !540, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1806, file: !28, line: 1929, baseType: !2195, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!109, !570, !1529}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1806, file: !28, line: 1930, baseType: !2199, size: 64, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!109, !1529, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !384)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1806, file: !28, line: 1931, baseType: !2195, size: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1806, file: !28, line: 1932, baseType: !2205, size: 64, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!109, !1529, !731, !731, !109}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1806, file: !28, line: 1933, baseType: !2209, size: 64, offset: 1088)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!109, !109, !1529, !109}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !28, line: 1934, baseType: !2213, size: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!109, !1529, !109, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1806, file: !28, line: 1935, baseType: !1526, size: 64, offset: 1216)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1806, file: !28, line: 1936, baseType: !2220, size: 64, offset: 1280)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!109, !109}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1806, file: !28, line: 1937, baseType: !2213, size: 64, offset: 1344)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1806, file: !28, line: 1938, baseType: !2225, size: 64, offset: 1408)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!522, !2228, !1529, !1817, !537, !7}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !845, line: 59, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1806, file: !28, line: 1939, baseType: !2231, size: 64, offset: 1472)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!522, !1529, !1817, !2228, !537, !7}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1806, file: !28, line: 1940, baseType: !2235, size: 64, offset: 1536)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !1529}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1806, file: !28, line: 1941, baseType: !2239, size: 64, offset: 1600)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!109, !1529, !109, !2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1806, file: !28, line: 1942, baseType: !2245, size: 64, offset: 1664)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!526, !1529, !109, !731, !731}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1806, file: !28, line: 1944, baseType: !2249, size: 64, offset: 1728)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !843, !1529}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1806, file: !28, line: 1948, baseType: !2253, size: 64, offset: 1792)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!522, !1529, !731, !1529, !731, !537, !7}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1806, file: !28, line: 1950, baseType: !2257, size: 64, offset: 1856)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!731, !1529, !731, !1529, !731, !731, !7}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1806, file: !28, line: 1953, baseType: !2205, size: 64, offset: 1920)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1806, file: !28, line: 1954, baseType: !2262, size: 64, offset: 1984)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!109, !2265, !7}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1806, file: !28, line: 1955, baseType: !2268, size: 64, offset: 2048)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!109, !2265, !1855, !7}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1530, file: !28, line: 1018, baseType: !643, size: 64, offset: 1472)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1530, file: !28, line: 1020, baseType: !384, size: 64, offset: 1536)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1530, file: !28, line: 1023, baseType: !384, size: 64, offset: 1600)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1530, file: !28, line: 1027, baseType: !2275, size: 64, offset: 1664)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1530, file: !28, line: 1029, baseType: !566, size: 64, offset: 1728)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1530, file: !28, line: 1030, baseType: !2278, size: 32, offset: 1792)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2279, line: 8, baseType: !639)
!2279 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1530, file: !28, line: 1031, baseType: !2278, size: 32, offset: 1824)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1506, file: !65, line: 756, baseType: !540, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1506, file: !65, line: 757, baseType: !540, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1506, file: !65, line: 760, baseType: !540, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1506, file: !65, line: 761, baseType: !540, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1506, file: !65, line: 763, baseType: !540, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1506, file: !65, line: 764, baseType: !2287, size: 64, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1911, line: 299, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1911, line: 299, size: 64, elements: !2290)
!2290 = !{!2291}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2289, file: !1911, line: 299, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1916, line: 18, baseType: !540)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1506, file: !65, line: 773, baseType: !440, size: 32, offset: 1088)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1506, file: !65, line: 785, baseType: !440, size: 32, offset: 1120)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1506, file: !65, line: 795, baseType: !2296, size: 64, offset: 1152)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2297, file: !65, line: 727, baseType: !643, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2297, file: !65, line: 728, baseType: !109, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1506, file: !65, line: 801, baseType: !540, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1506, file: !65, line: 804, baseType: !874, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1506, file: !65, line: 806, baseType: !109, size: 32, offset: 1344)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1506, file: !65, line: 808, baseType: !420, size: 32, offset: 1376)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1506, file: !65, line: 823, baseType: !1083, size: 320, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1506, file: !65, line: 825, baseType: !390, size: 128, offset: 1728)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1506, file: !65, line: 845, baseType: !109, size: 32, offset: 1856)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1506, file: !65, line: 849, baseType: !540, size: 64, offset: 1920)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1506, file: !65, line: 850, baseType: !540, size: 64, offset: 1984)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1506, file: !65, line: 852, baseType: !540, size: 64, offset: 2048)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1506, file: !65, line: 853, baseType: !540, size: 64, offset: 2112)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1506, file: !65, line: 854, baseType: !876, size: 64, offset: 2176)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1506, file: !65, line: 855, baseType: !540, size: 64, offset: 2240)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1506, file: !65, line: 856, baseType: !540, size: 64, offset: 2304)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1506, file: !65, line: 857, baseType: !540, size: 64, offset: 2368)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1506, file: !65, line: 858, baseType: !540, size: 64, offset: 2432)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1506, file: !65, line: 865, baseType: !616, size: 32, offset: 2496)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1506, file: !65, line: 867, baseType: !420, size: 32, offset: 2528)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1506, file: !65, line: 869, baseType: !540, size: 64, offset: 2560)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1506, file: !65, line: 869, baseType: !540, size: 64, offset: 2624)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1506, file: !65, line: 869, baseType: !540, size: 64, offset: 2688)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1506, file: !65, line: 869, baseType: !540, size: 64, offset: 2752)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1506, file: !65, line: 870, baseType: !540, size: 64, offset: 2816)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1506, file: !65, line: 870, baseType: !540, size: 64, offset: 2880)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1506, file: !65, line: 870, baseType: !540, size: 64, offset: 2944)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1506, file: !65, line: 871, baseType: !540, size: 64, offset: 3008)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1506, file: !65, line: 871, baseType: !540, size: 64, offset: 3072)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1506, file: !65, line: 871, baseType: !540, size: 64, offset: 3136)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1506, file: !65, line: 871, baseType: !540, size: 64, offset: 3200)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1506, file: !65, line: 873, baseType: !2331, size: 3328, offset: 3264)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 3328, elements: !2332)
!2332 = !{!2333}
!2333 = !DISubrange(count: 52)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1506, file: !65, line: 875, baseType: !2335, size: 1280, offset: 6592)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1748, size: 1280, elements: !1578)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1506, file: !65, line: 877, baseType: !2337, size: 64, offset: 7872)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1506, file: !65, line: 880, baseType: !2340, size: 1088, offset: 7936)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2341, line: 72, baseType: !2342)
!2341 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2341, line: 23, size: 1088, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2351, !2352, !2353, !2354, !2381, !2382, !2383}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2342, file: !2341, line: 28, baseType: !643, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2342, file: !2341, line: 38, baseType: !876, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2342, file: !2341, line: 40, baseType: !540, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2342, file: !2341, line: 43, baseType: !1083, size: 320, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2342, file: !2341, line: 44, baseType: !2349, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2341, line: 44, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2342, file: !2341, line: 48, baseType: !540, size: 64, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2342, file: !2341, line: 59, baseType: !870, size: 256, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2342, file: !2341, line: 60, baseType: !384, size: 64, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2342, file: !2341, line: 61, baseType: !2355, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2358, line: 13, size: 1216, elements: !2359)
!2358 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2357, file: !2358, line: 14, baseType: !384, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2357, file: !2358, line: 15, baseType: !540, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2357, file: !2358, line: 17, baseType: !540, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2357, file: !2358, line: 17, baseType: !540, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2357, file: !2358, line: 18, baseType: !540, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2357, file: !2358, line: 18, baseType: !540, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2357, file: !2358, line: 19, baseType: !2367, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2357, file: !2358, line: 21, baseType: !526, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2357, file: !2358, line: 23, baseType: !526, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2357, file: !2358, line: 24, baseType: !526, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2357, file: !2358, line: 25, baseType: !526, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2357, file: !2358, line: 26, baseType: !526, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2357, file: !2358, line: 27, baseType: !526, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2357, file: !2358, line: 28, baseType: !526, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2357, file: !2358, line: 29, baseType: !526, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2357, file: !2358, line: 30, baseType: !526, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2357, file: !2358, line: 31, baseType: !526, size: 64, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2357, file: !2358, line: 32, baseType: !526, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2357, file: !2358, line: 33, baseType: !526, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2342, file: !2341, line: 63, baseType: !440, size: 32, offset: 1024)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2342, file: !2341, line: 69, baseType: !458, size: 16, offset: 1056)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2342, file: !2341, line: 70, baseType: !2384, size: 16, offset: 1072)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !449, line: 18, baseType: !2385)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !451, line: 23, baseType: !1659)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !65, line: 882, baseType: !540, size: 64, offset: 9024)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1506, file: !65, line: 885, baseType: !420, size: 32, offset: 9088)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1506, file: !65, line: 886, baseType: !2389, size: 64, offset: 9152)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1506, file: !65, line: 901, baseType: !1773, size: 64, offset: 9216)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1506, file: !65, line: 904, baseType: !1529, size: 64, offset: 9280)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1506, file: !65, line: 906, baseType: !2394, size: 64, offset: 9344)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1506, file: !65, line: 930, baseType: !440, size: 32, offset: 9408)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1506, file: !65, line: 933, baseType: !440, size: 32, offset: 9440)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1506, file: !65, line: 935, baseType: !2399, size: 64, offset: 9472)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2400)
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2399, file: !81, line: 104, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1506, file: !65, line: 940, baseType: !874, size: 64, offset: 9536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1506, file: !65, line: 942, baseType: !2406, size: 256, offset: 9600)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2407, line: 98, size: 256, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2408 = !{!2409, !2410, !2411}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2406, file: !2407, line: 99, baseType: !874, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2406, file: !2407, line: 100, baseType: !390, size: 128, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2406, file: !2407, line: 101, baseType: !2412, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2407, line: 21, baseType: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1503, file: !65, line: 986, baseType: !2418, offset: 10240)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, elements: !1591)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1199, file: !845, line: 882, baseType: !1502, size: 64, offset: 9792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1199, file: !845, line: 884, baseType: !109, size: 32, offset: 9856)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1199, file: !845, line: 885, baseType: !109, size: 32, offset: 9888)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1199, file: !845, line: 886, baseType: !109, size: 32, offset: 9920)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1199, file: !845, line: 888, baseType: !109, size: 32, offset: 9952)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1199, file: !845, line: 890, baseType: !540, size: 64, offset: 9984)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1199, file: !845, line: 893, baseType: !7, size: 32, offset: 10048)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1199, file: !845, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1199, file: !845, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1199, file: !845, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1199, file: !845, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1199, file: !845, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1199, file: !845, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1199, file: !845, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1199, file: !845, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1199, file: !845, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1199, file: !845, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1199, file: !845, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1199, file: !845, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1199, file: !845, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1199, file: !845, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1199, file: !845, line: 969, baseType: !540, size: 64, offset: 10176)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1199, file: !845, line: 971, baseType: !2442, size: 448, offset: 10240)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2443)
!2443 = !{!2444, !2445, !2450}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2442, file: !44, line: 26, baseType: !540, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2442, file: !44, line: 27, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!526, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !44, line: 28, baseType: !2451, size: 320, offset: 128)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !44, line: 28, size: 320, elements: !2452)
!2452 = !{!2453, !2463, !2488}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2451, file: !44, line: 37, baseType: !2454, size: 320)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !44, line: 30, size: 320, elements: !2455)
!2455 = !{!2456, !2458, !2459, !2460, !2461, !2462}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2454, file: !44, line: 31, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2454, file: !44, line: 32, baseType: !639, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !44, line: 33, baseType: !639, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2454, file: !44, line: 34, baseType: !639, size: 32, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2454, file: !44, line: 35, baseType: !643, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2454, file: !44, line: 36, baseType: !2457, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2451, file: !44, line: 47, baseType: !2464, size: 192)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !44, line: 39, size: 192, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2487}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2464, file: !44, line: 40, baseType: !1373, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2464, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !44, line: 42, baseType: !2469, size: 64, offset: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2464, file: !44, line: 42, size: 64, elements: !2470)
!2470 = !{!2471, !2479}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2469, file: !44, line: 43, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2474, line: 7, size: 128, elements: !2475)
!2474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2475 = !{!2476, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2473, file: !2474, line: 8, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !524, line: 93, baseType: !733)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2473, file: !2474, line: 9, baseType: !733, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2469, file: !44, line: 44, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2482, line: 7, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2483 = !{!2484, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2481, file: !2482, line: 8, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2482, line: 5, baseType: !1633)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2481, file: !2482, line: 9, baseType: !1633, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2464, file: !44, line: 46, baseType: !643, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2451, file: !44, line: 55, baseType: !2489, size: 256)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !44, line: 49, size: 256, elements: !2490)
!2490 = !{!2491, !2499, !2500, !2501, !2502}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2489, file: !44, line: 50, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2494, line: 36, size: 64, elements: !2495)
!2494 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2493, file: !2494, line: 37, baseType: !109, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2493, file: !2494, line: 38, baseType: !1659, size: 16, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2493, file: !2494, line: 39, baseType: !1659, size: 16, offset: 48)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2489, file: !44, line: 51, baseType: !109, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2489, file: !44, line: 52, baseType: !109, size: 32, offset: 96)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2489, file: !44, line: 53, baseType: !540, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2489, file: !44, line: 54, baseType: !540, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1199, file: !845, line: 973, baseType: !2504, size: 32, offset: 10688)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !391, line: 27, baseType: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !524, line: 28, baseType: !109)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1199, file: !845, line: 974, baseType: !2504, size: 32, offset: 10720)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1199, file: !845, line: 978, baseType: !540, size: 64, offset: 10752)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1199, file: !845, line: 987, baseType: !1198, size: 64, offset: 10816)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1199, file: !845, line: 990, baseType: !1198, size: 64, offset: 10880)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1199, file: !845, line: 995, baseType: !390, size: 128, offset: 10944)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1199, file: !845, line: 996, baseType: !390, size: 128, offset: 11072)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1199, file: !845, line: 997, baseType: !1198, size: 64, offset: 11200)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1199, file: !845, line: 1005, baseType: !390, size: 128, offset: 11264)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1199, file: !845, line: 1006, baseType: !390, size: 128, offset: 11392)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1199, file: !845, line: 1009, baseType: !1570, size: 64, offset: 11520)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1199, file: !845, line: 1010, baseType: !2517, size: 512, offset: 11584)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 512, elements: !1578)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1199, file: !845, line: 1011, baseType: !390, size: 128, offset: 12096)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1199, file: !845, line: 1012, baseType: !390, size: 128, offset: 12224)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1199, file: !845, line: 1014, baseType: !2521, size: 64, offset: 12352)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1199, file: !845, line: 1017, baseType: !837, size: 64, offset: 12416)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1199, file: !845, line: 1020, baseType: !837, size: 64, offset: 12480)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1199, file: !845, line: 1023, baseType: !384, size: 64, offset: 12544)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1199, file: !845, line: 1025, baseType: !643, size: 64, offset: 12608)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1199, file: !845, line: 1026, baseType: !643, size: 64, offset: 12672)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1199, file: !845, line: 1031, baseType: !643, size: 64, offset: 12736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1199, file: !845, line: 1032, baseType: !2529, size: 192, offset: 12800)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !845, line: 324, size: 192, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2529, file: !845, line: 326, baseType: !643, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2529, file: !845, line: 327, baseType: !643, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2529, file: !845, line: 328, baseType: !883, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1199, file: !845, line: 1041, baseType: !540, size: 64, offset: 12992)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1199, file: !845, line: 1042, baseType: !540, size: 64, offset: 13056)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1199, file: !845, line: 1045, baseType: !643, size: 64, offset: 13120)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1199, file: !845, line: 1048, baseType: !643, size: 64, offset: 13184)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1199, file: !845, line: 1051, baseType: !540, size: 64, offset: 13248)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1199, file: !845, line: 1052, baseType: !540, size: 64, offset: 13312)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1199, file: !845, line: 1055, baseType: !2541, size: 640, offset: 13376)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2542, line: 132, size: 640, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2543 = !{!2544, !2550, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2541, file: !2542, line: 133, baseType: !2545, size: 576)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2546, size: 576, elements: !491)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2542, line: 117, size: 192, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2546, file: !2542, line: 118, baseType: !643, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2546, file: !2542, line: 119, baseType: !1382, size: 128, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2541, file: !2542, line: 134, baseType: !7, size: 32, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2541, file: !2542, line: 135, baseType: !7, size: 32, offset: 608)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1199, file: !845, line: 1058, baseType: !2553, size: 448, offset: 14016)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2542, line: 144, size: 448, elements: !2554)
!2554 = !{!2555, !2556, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2553, file: !2542, line: 145, baseType: !1183, size: 128, align: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2553, file: !2542, line: 146, baseType: !870, size: 256, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2553, file: !2542, line: 147, baseType: !7, size: 32, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1199, file: !845, line: 1064, baseType: !1598, size: 64, offset: 14464)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1199, file: !845, line: 1067, baseType: !1598, size: 64, offset: 14528)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1199, file: !845, line: 1070, baseType: !1598, size: 64, offset: 14592)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1199, file: !845, line: 1074, baseType: !1625, size: 64, offset: 14656)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1199, file: !845, line: 1084, baseType: !2563, size: 128, offset: 14720)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 128, elements: !2564)
!2564 = !{!2565}
!2565 = !DISubrange(count: 16)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1199, file: !845, line: 1086, baseType: !2567, size: 64, offset: 14848)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !845, line: 55, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1199, file: !845, line: 1089, baseType: !2570, size: 64, offset: 14912)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2571, line: 12, size: 64, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2572 = !{!2573}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2570, file: !2571, line: 13, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2571, line: 8, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1199, file: !845, line: 1090, baseType: !2577, size: 128, offset: 14976)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2578, line: 13, size: 128, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2577, file: !2578, line: 14, baseType: !390, size: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1199, file: !845, line: 1097, baseType: !2582, size: 64, offset: 15104)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !845, line: 50, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1199, file: !845, line: 1100, baseType: !2585, size: 64, offset: 15168)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !845, line: 1100, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1199, file: !845, line: 1103, baseType: !2588, size: 64, offset: 15232)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !845, line: 53, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1199, file: !845, line: 1107, baseType: !2591, size: 64, offset: 15296)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2593, line: 35, flags: DIFlagFwdDecl)
!2593 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1199, file: !845, line: 1110, baseType: !2595, size: 64, offset: 15360)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2597, line: 93, size: 8768, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2648, !2657, !2658, !2660, !2661, !2662, !2665, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2703, !2704, !2711, !2721, !2724, !2725, !2728, !2729, !2730, !2731, !2732, !2733}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2596, file: !2597, line: 94, baseType: !1212, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2596, file: !2597, line: 95, baseType: !440, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2596, file: !2597, line: 96, baseType: !109, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2596, file: !2597, line: 97, baseType: !109, size: 32, offset: 96)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2596, file: !2597, line: 98, baseType: !390, size: 128, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2596, file: !2597, line: 100, baseType: !1176, size: 192, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2596, file: !2597, line: 103, baseType: !1198, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2596, file: !2597, line: 106, baseType: !2607, size: 192, offset: 512)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1778, line: 32, size: 192, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2607, file: !1778, line: 33, baseType: !390, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2607, file: !1778, line: 34, baseType: !2611, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2612, line: 25, baseType: !2613)
!2612 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2612, line: 23, size: 64, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2613, file: !2612, line: 24, baseType: !1453, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2596, file: !2597, line: 109, baseType: !762, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2596, file: !2597, line: 112, baseType: !109, size: 32, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2596, file: !2597, line: 114, baseType: !109, size: 32, offset: 800)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2596, file: !2597, line: 115, baseType: !1198, size: 64, offset: 832)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2596, file: !2597, line: 118, baseType: !109, size: 32, offset: 896)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !2597, line: 119, baseType: !7, size: 32, offset: 928)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2596, file: !2597, line: 121, baseType: !2623, size: 64, offset: 960)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2597, line: 80, size: 448, elements: !2625)
!2625 = !{!2626, !2627, !2633}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2624, file: !2597, line: 81, baseType: !440, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2624, file: !2597, line: 82, baseType: !2628, size: 128, offset: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2597, line: 75, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2628, file: !2597, line: 76, baseType: !1198, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2628, file: !2597, line: 77, baseType: !2632, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2624, file: !2597, line: 83, baseType: !2090, size: 256, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2596, file: !2597, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2596, file: !2597, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2596, file: !2597, line: 138, baseType: !7, size: 32, offset: 1056)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2596, file: !2597, line: 139, baseType: !390, size: 128, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2596, file: !2597, line: 142, baseType: !1326, size: 512, offset: 1216)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2596, file: !2597, line: 143, baseType: !1334, size: 64, offset: 1728)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2596, file: !2597, line: 150, baseType: !2641, size: 256, offset: 1792)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 256, elements: !2646)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2597, line: 38, size: 128, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2642, file: !2597, line: 39, baseType: !643, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2642, file: !2597, line: 40, baseType: !643, size: 64, offset: 64)
!2646 = !{!2647}
!2647 = !DISubrange(count: 2)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2596, file: !2597, line: 156, baseType: !2649, size: 192, offset: 2048)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2597, line: 66, size: 192, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2649, file: !2597, line: 67, baseType: !2652, size: 192)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2597, line: 47, size: 192, elements: !2653)
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2652, file: !2597, line: 48, baseType: !876, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2652, file: !2597, line: 49, baseType: !876, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2652, file: !2597, line: 50, baseType: !876, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2596, file: !2597, line: 160, baseType: !2541, size: 640, offset: 2240)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2596, file: !2597, line: 163, baseType: !2659, size: 256, offset: 2880)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1570, size: 256, elements: !1578)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2596, file: !2597, line: 169, baseType: !1570, size: 64, offset: 3136)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2596, file: !2597, line: 172, baseType: !109, size: 32, offset: 3200)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2596, file: !2597, line: 174, baseType: !2663, size: 64, offset: 3264)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2597, line: 174, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2596, file: !2597, line: 185, baseType: !2666, size: 64, offset: 3328)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !612, line: 860, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 853, size: 64, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2667, file: !612, line: 858, baseType: !611, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2667, file: !612, line: 859, baseType: !420, size: 32, offset: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2596, file: !2597, line: 186, baseType: !643, size: 64, offset: 3392)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2596, file: !2597, line: 186, baseType: !643, size: 64, offset: 3456)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2596, file: !2597, line: 186, baseType: !643, size: 64, offset: 3520)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2596, file: !2597, line: 186, baseType: !643, size: 64, offset: 3584)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2596, file: !2597, line: 187, baseType: !643, size: 64, offset: 3648)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2596, file: !2597, line: 188, baseType: !643, size: 64, offset: 3712)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2596, file: !2597, line: 189, baseType: !2529, size: 192, offset: 3776)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2596, file: !2597, line: 190, baseType: !540, size: 64, offset: 3968)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2596, file: !2597, line: 190, baseType: !540, size: 64, offset: 4032)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2596, file: !2597, line: 190, baseType: !540, size: 64, offset: 4096)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2596, file: !2597, line: 190, baseType: !540, size: 64, offset: 4160)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2596, file: !2597, line: 191, baseType: !540, size: 64, offset: 4224)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2596, file: !2597, line: 191, baseType: !540, size: 64, offset: 4288)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2596, file: !2597, line: 191, baseType: !540, size: 64, offset: 4352)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2596, file: !2597, line: 191, baseType: !540, size: 64, offset: 4416)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2596, file: !2597, line: 192, baseType: !540, size: 64, offset: 4480)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2596, file: !2597, line: 192, baseType: !540, size: 64, offset: 4544)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2596, file: !2597, line: 192, baseType: !540, size: 64, offset: 4608)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2596, file: !2597, line: 192, baseType: !540, size: 64, offset: 4672)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2596, file: !2597, line: 193, baseType: !540, size: 64, offset: 4736)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2596, file: !2597, line: 193, baseType: !540, size: 64, offset: 4800)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2596, file: !2597, line: 194, baseType: !2693, size: 448, offset: 4864)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2694, line: 12, size: 448, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2693, file: !2694, line: 15, baseType: !643, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2693, file: !2694, line: 17, baseType: !643, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2693, file: !2694, line: 19, baseType: !643, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2693, file: !2694, line: 21, baseType: !643, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2693, file: !2694, line: 29, baseType: !643, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2693, file: !2694, line: 35, baseType: !643, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2693, file: !2694, line: 44, baseType: !643, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2596, file: !2597, line: 202, baseType: !645, size: 64, offset: 5312)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2596, file: !2597, line: 213, baseType: !2705, size: 2048, offset: 5376)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 2048, elements: !2564)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2707, line: 43, size: 128, elements: !2708)
!2707 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2706, file: !2707, line: 44, baseType: !539, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2706, file: !2707, line: 45, baseType: !539, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2596, file: !2597, line: 216, baseType: !2712, size: 448, offset: 7424)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2597, line: 30, size: 448, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2712, file: !2597, line: 31, baseType: !109, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2712, file: !2597, line: 32, baseType: !526, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2712, file: !2597, line: 33, baseType: !540, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2712, file: !2597, line: 34, baseType: !643, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2712, file: !2597, line: 34, baseType: !643, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2712, file: !2597, line: 35, baseType: !540, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2712, file: !2597, line: 35, baseType: !540, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2596, file: !2597, line: 219, baseType: !2722, size: 64, offset: 7872)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2597, line: 219, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2596, file: !2597, line: 222, baseType: !7, size: 32, offset: 7936)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2596, file: !2597, line: 223, baseType: !2726, size: 64, offset: 8000)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2597, line: 223, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2596, file: !2597, line: 230, baseType: !1690, size: 8, offset: 8064)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2596, file: !2597, line: 231, baseType: !1659, size: 16, offset: 8080)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2596, file: !2597, line: 232, baseType: !1659, size: 16, offset: 8096)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2596, file: !2597, line: 234, baseType: !1502, size: 64, offset: 8128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2596, file: !2597, line: 237, baseType: !870, size: 256, offset: 8192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2596, file: !2597, line: 243, baseType: !1083, size: 320, offset: 8448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1199, file: !845, line: 1111, baseType: !2735, size: 64, offset: 15424)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2597, line: 20, size: 16640, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2736, file: !2597, line: 21, baseType: !420, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2736, file: !2597, line: 22, baseType: !1212, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2736, file: !2597, line: 23, baseType: !1176, size: 192, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2736, file: !2597, line: 24, baseType: !2742, size: 16384, offset: 256)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 16384, elements: !495)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1778, line: 51, size: 256, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2743, file: !1778, line: 52, baseType: !2746, size: 256)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1778, line: 37, size: 256, elements: !2747)
!2747 = !{!2748, !2755, !2756, !2762}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2746, file: !1778, line: 39, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2750, line: 83, baseType: !2751)
!2750 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2750, line: 82, baseType: !2753)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !109}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2746, file: !1778, line: 40, baseType: !540, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2746, file: !1778, line: 46, baseType: !2757, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2750, line: 86, baseType: !2758)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2750, line: 85, baseType: !2760)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2746, file: !1778, line: 48, baseType: !2611, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1199, file: !845, line: 1112, baseType: !2611, size: 64, offset: 15488)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1199, file: !845, line: 1113, baseType: !2611, size: 64, offset: 15552)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1199, file: !845, line: 1115, baseType: !2611, size: 64, offset: 15616)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1199, file: !845, line: 1116, baseType: !2607, size: 192, offset: 15680)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1199, file: !845, line: 1117, baseType: !540, size: 64, offset: 15872)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1199, file: !845, line: 1118, baseType: !537, size: 64, offset: 15936)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1199, file: !845, line: 1119, baseType: !7, size: 32, offset: 16000)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1199, file: !845, line: 1121, baseType: !1186, size: 64, offset: 16064)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1199, file: !845, line: 1125, baseType: !2772, size: 64, offset: 16128)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !845, line: 43, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1199, file: !845, line: 1127, baseType: !576, size: 32, offset: 16192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1199, file: !845, line: 1128, baseType: !7, size: 32, offset: 16224)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1199, file: !845, line: 1130, baseType: !2777, size: 128, offset: 16256)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2778, line: 37, size: 128, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2777, file: !2778, line: 38, baseType: !109, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2777, file: !2778, line: 39, baseType: !440, size: 32, offset: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2777, file: !2778, line: 40, baseType: !2783, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2778, line: 24, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1199, file: !845, line: 1131, baseType: !2786, size: 256, offset: 16384)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2787, line: 12, size: 256, elements: !2788)
!2787 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2788 = !{!2789, !2790, !2791, !2792}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2786, file: !2787, line: 13, baseType: !490, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2786, file: !2787, line: 14, baseType: !540, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2786, file: !2787, line: 15, baseType: !540, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2786, file: !2787, line: 16, baseType: !1690, size: 8, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1199, file: !845, line: 1134, baseType: !643, size: 64, offset: 16640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1199, file: !845, line: 1135, baseType: !643, size: 64, offset: 16704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1199, file: !845, line: 1138, baseType: !420, size: 32, offset: 16768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1199, file: !845, line: 1141, baseType: !883, size: 32, offset: 16800)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1199, file: !845, line: 1143, baseType: !2798, size: 64, offset: 16832)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !845, line: 735, size: 64, elements: !2799)
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2798, file: !845, line: 736, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1199, file: !845, line: 1147, baseType: !1385, size: 128, offset: 16896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1199, file: !845, line: 1149, baseType: !1198, size: 64, offset: 17024)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1199, file: !845, line: 1151, baseType: !2805, size: 64, offset: 17088)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !845, line: 1151, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1199, file: !845, line: 1188, baseType: !384, size: 64, offset: 17152)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1199, file: !845, line: 1191, baseType: !2809, size: 64, offset: 17216)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !845, line: 44, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1199, file: !845, line: 1194, baseType: !2812, size: 64, offset: 17280)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !845, line: 45, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1199, file: !845, line: 1197, baseType: !2815, size: 64, offset: 17344)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !845, line: 61, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1199, file: !845, line: 1199, baseType: !2818, size: 64, offset: 17408)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2820, line: 99, size: 128, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2821 = !{!2822, !2823, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2819, file: !2820, line: 100, baseType: !874, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2819, file: !2820, line: 101, baseType: !440, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2819, file: !2820, line: 103, baseType: !460, size: 16, offset: 96)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1199, file: !845, line: 1202, baseType: !2826, size: 64, offset: 17472)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !845, line: 48, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1199, file: !845, line: 1205, baseType: !540, size: 64, offset: 17536)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1199, file: !845, line: 1206, baseType: !2830, size: 64, offset: 17600)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1778, line: 14, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1778, line: 12, size: 384, elements: !2833)
!2833 = !{!2834}
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2832, file: !1778, line: 13, baseType: !2835, size: 384)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2832, file: !1778, line: 13, size: 384, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2835, file: !1778, line: 13, baseType: !109, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2835, file: !1778, line: 13, baseType: !109, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2835, file: !1778, line: 13, baseType: !109, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2835, file: !1778, line: 13, baseType: !2841, size: 256, offset: 128)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2842, line: 37, size: 256, elements: !2843)
!2842 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2843 = !{!2844, !2849, !2862, !2868, !2877, !2904, !2909}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2841, file: !2842, line: 42, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 39, size: 64, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2845, file: !2842, line: 40, baseType: !2505, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2845, file: !2842, line: 41, baseType: !582, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2841, file: !2842, line: 50, baseType: !2850, size: 192)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 45, size: 192, elements: !2851)
!2851 = !{!2852, !2854, !2855, !2861}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2850, file: !2842, line: 46, baseType: !2853, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !524, line: 95, baseType: !109)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2850, file: !2842, line: 47, baseType: !109, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2850, file: !2842, line: 48, baseType: !2856, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2842, line: 11, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2842, line: 8, size: 64, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2857, file: !2842, line: 9, baseType: !109, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2857, file: !2842, line: 10, baseType: !384, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2850, file: !2842, line: 49, baseType: !109, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2841, file: !2842, line: 57, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 53, size: 128, elements: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2863, file: !2842, line: 54, baseType: !2505, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2863, file: !2842, line: 55, baseType: !582, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2863, file: !2842, line: 56, baseType: !2856, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2841, file: !2842, line: 66, baseType: !2869, size: 256)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 60, size: 256, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2876}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2869, file: !2842, line: 61, baseType: !2505, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2869, file: !2842, line: 62, baseType: !582, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2869, file: !2842, line: 63, baseType: !109, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2869, file: !2842, line: 64, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !524, line: 94, baseType: !525)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2869, file: !2842, line: 65, baseType: !2875, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2841, file: !2842, line: 105, baseType: !2878, size: 256)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 69, size: 256, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2878, file: !2842, line: 70, baseType: !384, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !2842, line: 79, baseType: !2882, size: 192, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !2842, line: 79, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2893, !2898}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2882, file: !2842, line: 81, baseType: !109, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2882, file: !2842, line: 86, baseType: !1659, size: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2882, file: !2842, line: 92, baseType: !2887, size: 192)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 88, size: 192, elements: !2888)
!2888 = !{!2889, !2891, !2892}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2887, file: !2842, line: 89, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 64, elements: !1369)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2887, file: !2842, line: 90, baseType: !384, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2887, file: !2842, line: 91, baseType: !384, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2882, file: !2842, line: 97, baseType: !2894, size: 96)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 94, size: 96, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2894, file: !2842, line: 95, baseType: !2890, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2894, file: !2842, line: 96, baseType: !640, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2882, file: !2842, line: 103, baseType: !2899, size: 128)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2882, file: !2842, line: 99, size: 128, elements: !2900)
!2900 = !{!2901, !2902, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2899, file: !2842, line: 100, baseType: !540, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2899, file: !2842, line: 101, baseType: !640, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2899, file: !2842, line: 102, baseType: !640, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2841, file: !2842, line: 111, baseType: !2905, size: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 108, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2905, file: !2842, line: 109, baseType: !526, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2905, file: !2842, line: 110, baseType: !109, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2841, file: !2842, line: 118, baseType: !2910, size: 128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2842, line: 114, size: 128, elements: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2910, file: !2842, line: 115, baseType: !384, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2910, file: !2842, line: 116, baseType: !109, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2910, file: !2842, line: 117, baseType: !7, size: 32, offset: 96)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1199, file: !845, line: 1208, baseType: !2693, size: 448, offset: 17664)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1199, file: !845, line: 1215, baseType: !643, size: 64, offset: 18112)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1199, file: !845, line: 1217, baseType: !643, size: 64, offset: 18176)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1199, file: !845, line: 1219, baseType: !643, size: 64, offset: 18240)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1199, file: !845, line: 1223, baseType: !2920, size: 64, offset: 18304)
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2921, line: 99, baseType: !2922)
!2921 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2921, line: 99, size: 64, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2922, file: !2921, line: 99, baseType: !1453, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1199, file: !845, line: 1225, baseType: !611, size: 32, offset: 18368)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1199, file: !845, line: 1226, baseType: !109, size: 32, offset: 18400)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1199, file: !845, line: 1227, baseType: !109, size: 32, offset: 18432)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1199, file: !845, line: 1231, baseType: !2929, size: 64, offset: 18496)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !845, line: 1231, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1199, file: !845, line: 1233, baseType: !390, size: 128, offset: 18560)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1199, file: !845, line: 1240, baseType: !2933, size: 64, offset: 18688)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !845, line: 62, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1199, file: !845, line: 1242, baseType: !2936, size: 64, offset: 18752)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !845, line: 1242, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1199, file: !845, line: 1244, baseType: !390, size: 128, offset: 18816)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1199, file: !845, line: 1245, baseType: !2940, size: 64, offset: 18944)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !845, line: 51, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1199, file: !845, line: 1246, baseType: !870, size: 256, offset: 19008)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1199, file: !845, line: 1247, baseType: !7, size: 32, offset: 19264)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1199, file: !845, line: 1250, baseType: !2945, size: 64, offset: 19328)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !845, line: 57, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1199, file: !845, line: 1251, baseType: !870, size: 256, offset: 19392)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1199, file: !845, line: 1252, baseType: !390, size: 128, offset: 19648)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1199, file: !845, line: 1259, baseType: !2176, size: 64, offset: 19776)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1199, file: !845, line: 1260, baseType: !1659, size: 16, offset: 19840)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1199, file: !845, line: 1261, baseType: !1659, size: 16, offset: 19856)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1199, file: !845, line: 1314, baseType: !2953, size: 64, offset: 19904)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2955, line: 62, size: 256, align: 256, elements: !2956)
!2955 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2954, file: !2955, line: 75, baseType: !640, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2954, file: !2955, line: 90, baseType: !640, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2954, file: !2955, line: 112, baseType: !644, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !2955, line: 132, baseType: !640, size: 32, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2954, file: !2955, line: 140, baseType: !640, size: 32, offset: 160)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2954, file: !2955, line: 149, baseType: !640, size: 32, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2954, file: !2955, line: 154, baseType: !2964, offset: 224)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1591)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1199, file: !845, line: 1315, baseType: !639, size: 32, offset: 19968)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1199, file: !845, line: 1316, baseType: !639, size: 32, offset: 20000)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1199, file: !845, line: 1321, baseType: !540, size: 64, offset: 20032)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1199, file: !845, line: 1325, baseType: !109, size: 32, offset: 20096)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1199, file: !845, line: 1326, baseType: !109, size: 32, offset: 20128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1199, file: !845, line: 1327, baseType: !109, size: 32, offset: 20160)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1199, file: !845, line: 1328, baseType: !109, size: 32, offset: 20192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1199, file: !845, line: 1329, baseType: !1183, size: 128, align: 64, offset: 20224)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1199, file: !845, line: 1332, baseType: !2974, size: 128, offset: 20352)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2975, line: 51, size: 128, elements: !2976)
!2975 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2976 = !{!2977, !2982, !2983}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2974, file: !2975, line: 60, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2979, line: 7, size: 64, elements: !2980)
!2979 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2978, file: !2979, line: 12, baseType: !1450, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2974, file: !2975, line: 63, baseType: !1690, size: 8, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2974, file: !2975, line: 70, baseType: !1690, size: 8, offset: 72)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1199, file: !845, line: 1335, baseType: !2228, size: 64, offset: 20480)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1199, file: !845, line: 1337, baseType: !2986, size: 128, offset: 20544)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2975, line: 39, size: 128, elements: !2987)
!2987 = !{!2988, !2989, !2990}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2986, file: !2975, line: 40, baseType: !2005, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2986, file: !2975, line: 42, baseType: !640, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2986, file: !2975, line: 43, baseType: !640, size: 32, offset: 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1199, file: !845, line: 1340, baseType: !2992, size: 64, offset: 20672)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !845, line: 69, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1199, file: !845, line: 1351, baseType: !109, size: 32, offset: 20736)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1199, file: !845, line: 1352, baseType: !109, size: 32, offset: 20768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1199, file: !845, line: 1354, baseType: !540, size: 64, offset: 20800)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1199, file: !845, line: 1364, baseType: !643, size: 64, offset: 20864)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1199, file: !845, line: 1365, baseType: !643, size: 64, offset: 20928)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1199, file: !845, line: 1412, baseType: !540, size: 64, offset: 20992)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1199, file: !845, line: 1453, baseType: !3001, size: 64, offset: 21056)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !845, line: 1453, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1199, file: !845, line: 1457, baseType: !3004, size: 64, offset: 21120)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3006)
!3006 = !{!3007, !3008, !3027, !3030, !3031, !3064, !3074}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3005, file: !81, line: 62, baseType: !80, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !3005, file: !81, line: 64, baseType: !3009, size: 192, offset: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3005, file: !81, line: 64, size: 192, elements: !3010)
!3010 = !{!3011, !3022}
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !81, line: 65, baseType: !3012, size: 192)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3009, file: !81, line: 65, size: 192, elements: !3013)
!3013 = !{!3014, !3021}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3012, file: !81, line: 66, baseType: !3015, size: 128)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3016, line: 50, size: 128, elements: !3017)
!3016 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3017 = !{!3018, !3019, !3020}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3015, file: !3016, line: 52, baseType: !540, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3015, file: !3016, line: 54, baseType: !7, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3015, file: !3016, line: 55, baseType: !7, size: 32, offset: 96)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3012, file: !81, line: 67, baseType: !540, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !81, line: 70, baseType: !3023, size: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3009, file: !81, line: 70, size: 192, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3023, file: !81, line: 71, baseType: !1183, size: 128, align: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3023, file: !81, line: 72, baseType: !540, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3005, file: !81, line: 76, baseType: !3028, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3005, file: !81, line: 77, baseType: !540, size: 64, offset: 320)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3005, file: !81, line: 79, baseType: !3032, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3016, line: 25, size: 256, elements: !3034)
!3034 = !{!3035, !3041, !3045}
!3035 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !3016, line: 26, baseType: !3036, size: 128)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !3016, line: 26, size: 128, elements: !3037)
!3037 = !{!3038, !3040}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3036, file: !3016, line: 27, baseType: !3039, size: 128)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 128, elements: !2564)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3036, file: !3016, line: 28, baseType: !3039, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3033, file: !3016, line: 31, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3044)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3016, line: 23, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !3016, line: 33, baseType: !3046, size: 64, offset: 192)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !3016, line: 33, size: 64, elements: !3047)
!3047 = !{!3048, !3054, !3059}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3046, file: !3016, line: 38, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !3016, line: 34, size: 64, elements: !3050)
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3049, file: !3016, line: 35, baseType: !1633, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3049, file: !3016, line: 36, baseType: !448, size: 8, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3049, file: !3016, line: 37, baseType: !448, size: 8, offset: 40)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3046, file: !3016, line: 42, baseType: !3055, size: 16)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !3016, line: 39, size: 16, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3055, file: !3016, line: 40, baseType: !448, size: 8)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3055, file: !3016, line: 41, baseType: !448, size: 8, offset: 8)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3046, file: !3016, line: 46, baseType: !3060, size: 16)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !3016, line: 43, size: 16, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3060, file: !3016, line: 44, baseType: !448, size: 8)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3060, file: !3016, line: 45, baseType: !448, size: 8, offset: 8)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3005, file: !81, line: 81, baseType: !3065, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3066, file: !81, line: 86, baseType: !3028, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3066, file: !81, line: 87, baseType: !540, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3066, file: !81, line: 88, baseType: !540, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3066, file: !81, line: 89, baseType: !540, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3066, file: !81, line: 90, baseType: !1690, size: 8, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3066, file: !81, line: 92, baseType: !3065, size: 64, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3005, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1199, file: !845, line: 1463, baseType: !3076, offset: 21184)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !845, line: 739, elements: !774)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1199, file: !845, line: 1470, baseType: !1183, size: 128, align: 64, offset: 21184)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1199, file: !845, line: 1471, baseType: !1212, size: 32, offset: 21312)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1199, file: !845, line: 1472, baseType: !109, size: 32, offset: 21344)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1199, file: !845, line: 1474, baseType: !1198, size: 64, offset: 21376)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1199, file: !845, line: 1475, baseType: !3082, size: 320, offset: 21440)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3083, line: 11, size: 320, elements: !3084)
!3083 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3084 = !{!3085, !3086, !3087, !3092}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3082, file: !3083, line: 16, baseType: !766, size: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3082, file: !3083, line: 17, baseType: !540, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3082, file: !3083, line: 18, baseType: !3088, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !3091}
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3082, file: !3083, line: 19, baseType: !639, size: 32, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1199, file: !845, line: 1478, baseType: !3094, size: 64, offset: 21760)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !845, line: 1478, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1199, file: !845, line: 1482, baseType: !1212, size: 32, offset: 21824)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1199, file: !845, line: 1489, baseType: !384, size: 64, offset: 21888)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1199, file: !845, line: 1504, baseType: !384, size: 64, offset: 21952)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1199, file: !845, line: 1505, baseType: !644, size: 64, offset: 22016)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1199, file: !845, line: 1506, baseType: !643, size: 64, offset: 22080)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1199, file: !845, line: 1507, baseType: !644, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1199, file: !845, line: 1508, baseType: !644, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1199, file: !845, line: 1509, baseType: !644, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1199, file: !845, line: 1510, baseType: !1183, size: 128, align: 64, offset: 22208)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1199, file: !845, line: 1511, baseType: !109, size: 32, offset: 22336)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1199, file: !845, line: 1515, baseType: !3107, size: 64, offset: 22400)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1226, line: 56, size: 64, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3107, file: !1226, line: 57, baseType: !1229, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1199, file: !845, line: 1518, baseType: !3107, size: 64, offset: 22464)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1199, file: !845, line: 1528, baseType: !1183, size: 128, align: 64, offset: 22528)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1199, file: !845, line: 1552, baseType: !3113, size: 35328, offset: 23040)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3114, line: 430, size: 35328, elements: !3115)
!3114 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3115 = !{!3116, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3145, !3146, !3147, !3148, !3149, !3150, !3153, !3154, !3155, !3156}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3113, file: !3114, line: 432, baseType: !3117, size: 192)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3118, size: 192, elements: !491)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3119, line: 16, size: 64, elements: !3120)
!3119 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3118, file: !3119, line: 17, baseType: !458, size: 16)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3118, file: !3119, line: 18, baseType: !458, size: 16, offset: 16)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3118, file: !3119, line: 19, baseType: !458, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3118, file: !3119, line: 19, baseType: !458, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3118, file: !3119, line: 19, baseType: !458, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3118, file: !3119, line: 19, baseType: !458, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3118, file: !3119, line: 19, baseType: !458, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3118, file: !3119, line: 20, baseType: !458, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3118, file: !3119, line: 20, baseType: !458, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3118, file: !3119, line: 20, baseType: !458, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3118, file: !3119, line: 20, baseType: !458, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3118, file: !3119, line: 20, baseType: !458, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3118, file: !3119, line: 20, baseType: !458, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3113, file: !3114, line: 436, baseType: !540, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3113, file: !3114, line: 440, baseType: !460, size: 16, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3113, file: !3114, line: 441, baseType: !460, size: 16, offset: 272)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3113, file: !3114, line: 442, baseType: !460, size: 16, offset: 288)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3113, file: !3114, line: 443, baseType: !460, size: 16, offset: 304)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3113, file: !3114, line: 447, baseType: !540, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3113, file: !3114, line: 448, baseType: !540, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3113, file: !3114, line: 459, baseType: !3142, size: 256, offset: 448)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3143, size: 256, elements: !1578)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3114, line: 428, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3113, file: !3114, line: 461, baseType: !540, size: 64, offset: 704)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3113, file: !3114, line: 463, baseType: !540, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3113, file: !3114, line: 465, baseType: !540, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3113, file: !3114, line: 466, baseType: !540, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3113, file: !3114, line: 467, baseType: !540, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3113, file: !3114, line: 473, baseType: !3151, size: 64, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3114, line: 10, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3113, file: !3114, line: 480, baseType: !540, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3113, file: !3114, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3113, file: !3114, line: 491, baseType: !639, size: 32, offset: 1184)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3113, file: !3114, line: 501, baseType: !3157, size: 33792, offset: 1536)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3158, line: 448, size: 33792, elements: !3159)
!3158 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3159 = !{!3160, !3161, !3162, !3324, !3325, !3331, !3332}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3157, file: !3158, line: 461, baseType: !7, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3157, file: !3158, line: 468, baseType: !540, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3157, file: !3158, line: 476, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3158, line: 356, size: 33280, align: 512, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3164, file: !3158, line: 358, baseType: !7, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3164, file: !3158, line: 361, baseType: !7, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3164, file: !3158, line: 364, baseType: !643, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3164, file: !3158, line: 367, baseType: !643, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3164, file: !3158, line: 370, baseType: !643, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3164, file: !3158, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3164, file: !3158, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3164, file: !3158, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3164, file: !3158, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3164, file: !3158, line: 397, baseType: !3176, size: 32768, offset: 512)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3158, line: 348, size: 32768, elements: !3177)
!3177 = !{!3178, !3193, !3230, !3307, !3320}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3176, file: !3158, line: 349, baseType: !3179, size: 896)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3158, line: 12, size: 896, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3192}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3179, file: !3158, line: 13, baseType: !639, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3179, file: !3158, line: 14, baseType: !639, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3179, file: !3158, line: 15, baseType: !639, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3179, file: !3158, line: 16, baseType: !639, size: 32, offset: 96)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3179, file: !3158, line: 17, baseType: !639, size: 32, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3179, file: !3158, line: 18, baseType: !639, size: 32, offset: 160)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3179, file: !3158, line: 19, baseType: !639, size: 32, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3179, file: !3158, line: 22, baseType: !3189, size: 640, offset: 224)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 640, elements: !3190)
!3190 = !{!3191}
!3191 = !DISubrange(count: 20)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3179, file: !3158, line: 25, baseType: !639, size: 32, offset: 864)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3176, file: !3158, line: 350, baseType: !3194, size: 4096, align: 128)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3158, line: 34, size: 4096, align: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3215, !3216, !3217, !3219, !3221, !3225}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3194, file: !3158, line: 35, baseType: !458, size: 16)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3194, file: !3158, line: 36, baseType: !458, size: 16, offset: 16)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3194, file: !3158, line: 37, baseType: !458, size: 16, offset: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3194, file: !3158, line: 38, baseType: !458, size: 16, offset: 48)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !3158, line: 39, baseType: !3201, size: 128, offset: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !3158, line: 39, size: 128, elements: !3202)
!3202 = !{!3203, !3208}
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3158, line: 40, baseType: !3204, size: 128)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3201, file: !3158, line: 40, size: 128, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3204, file: !3158, line: 41, baseType: !643, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3204, file: !3158, line: 42, baseType: !643, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3158, line: 44, baseType: !3209, size: 128)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3201, file: !3158, line: 44, size: 128, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3209, file: !3158, line: 45, baseType: !639, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3209, file: !3158, line: 46, baseType: !639, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3209, file: !3158, line: 47, baseType: !639, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3209, file: !3158, line: 48, baseType: !639, size: 32, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3194, file: !3158, line: 51, baseType: !639, size: 32, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3194, file: !3158, line: 52, baseType: !639, size: 32, offset: 224)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3194, file: !3158, line: 55, baseType: !3218, size: 1024, offset: 256)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 1024, elements: !652)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3194, file: !3158, line: 58, baseType: !3220, size: 2048, offset: 1280)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 2048, elements: !495)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3194, file: !3158, line: 60, baseType: !3222, size: 384, offset: 3328)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 384, elements: !3223)
!3223 = !{!3224}
!3224 = !DISubrange(count: 12)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !3158, line: 62, baseType: !3226, size: 384, offset: 3712)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !3158, line: 62, size: 384, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3226, file: !3158, line: 63, baseType: !3222, size: 384)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3226, file: !3158, line: 64, baseType: !3222, size: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3176, file: !3158, line: 351, baseType: !3231, size: 1088)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3158, line: 79, size: 1088, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3306}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3231, file: !3158, line: 80, baseType: !639, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3231, file: !3158, line: 81, baseType: !639, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3231, file: !3158, line: 82, baseType: !639, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3231, file: !3158, line: 83, baseType: !639, size: 32, offset: 96)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3231, file: !3158, line: 84, baseType: !639, size: 32, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3231, file: !3158, line: 85, baseType: !639, size: 32, offset: 160)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3231, file: !3158, line: 86, baseType: !639, size: 32, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3231, file: !3158, line: 88, baseType: !3189, size: 640, offset: 224)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3231, file: !3158, line: 89, baseType: !448, size: 8, offset: 864)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3231, file: !3158, line: 90, baseType: !448, size: 8, offset: 872)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3231, file: !3158, line: 91, baseType: !448, size: 8, offset: 880)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3231, file: !3158, line: 92, baseType: !448, size: 8, offset: 888)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3231, file: !3158, line: 93, baseType: !448, size: 8, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3231, file: !3158, line: 94, baseType: !448, size: 8, offset: 904)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3231, file: !3158, line: 95, baseType: !3248, size: 64, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3250, line: 11, size: 128, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3249, file: !3250, line: 12, baseType: !526, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3249, file: !3250, line: 13, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3256, line: 103, size: 1344, elements: !3257)
!3256 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3286, !3287, !3288}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3255, file: !3256, line: 109, baseType: !540, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3255, file: !3256, line: 110, baseType: !540, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3255, file: !3256, line: 111, baseType: !540, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3255, file: !3256, line: 112, baseType: !540, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3255, file: !3256, line: 113, baseType: !540, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3255, file: !3256, line: 114, baseType: !540, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3255, file: !3256, line: 117, baseType: !540, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3255, file: !3256, line: 118, baseType: !540, size: 64, offset: 448)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3255, file: !3256, line: 119, baseType: !540, size: 64, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3255, file: !3256, line: 120, baseType: !540, size: 64, offset: 576)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3255, file: !3256, line: 121, baseType: !540, size: 64, offset: 640)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3255, file: !3256, line: 122, baseType: !540, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3255, file: !3256, line: 123, baseType: !540, size: 64, offset: 768)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3255, file: !3256, line: 124, baseType: !540, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3255, file: !3256, line: 125, baseType: !540, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3255, file: !3256, line: 139, baseType: !540, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3255, file: !3256, line: 142, baseType: !540, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !3256, line: 144, baseType: !3276, size: 64, offset: 1088)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !3256, line: 144, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3276, file: !3256, line: 146, baseType: !458, size: 16)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3276, file: !3256, line: 148, baseType: !643, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3276, file: !3256, line: 150, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3256, line: 59, size: 64, elements: !3282)
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3281, file: !3256, line: 61, baseType: !643, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3281, file: !3256, line: 63, baseType: !643, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3281, file: !3256, line: 65, baseType: !643, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3255, file: !3256, line: 153, baseType: !540, size: 64, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3255, file: !3256, line: 154, baseType: !540, size: 64, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !3256, line: 156, baseType: !3289, size: 64, offset: 1280)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3255, file: !3256, line: 156, size: 64, elements: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3289, file: !3256, line: 158, baseType: !458, size: 16)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3289, file: !3256, line: 160, baseType: !643, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3289, file: !3256, line: 162, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3256, line: 69, size: 64, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3294, file: !3256, line: 71, baseType: !643, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3294, file: !3256, line: 73, baseType: !643, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3294, file: !3256, line: 75, baseType: !643, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3294, file: !3256, line: 77, baseType: !643, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3294, file: !3256, line: 80, baseType: !643, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !3256, line: 83, baseType: !643, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3294, file: !3256, line: 86, baseType: !643, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3294, file: !3256, line: 88, baseType: !643, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3294, file: !3256, line: 93, baseType: !643, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3294, file: !3256, line: 100, baseType: !643, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3231, file: !3158, line: 96, baseType: !639, size: 32, offset: 1024)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3176, file: !3158, line: 352, baseType: !3308, size: 4608, align: 512)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3158, line: 333, size: 4608, align: 512, elements: !3309)
!3309 = !{!3310, !3311, !3318}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3308, file: !3158, line: 334, baseType: !3194, size: 4096, align: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3308, file: !3158, line: 335, baseType: !3312, size: 512, offset: 4096)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3158, line: 312, size: 512, elements: !3313)
!3313 = !{!3314, !3315, !3316}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3312, file: !3158, line: 313, baseType: !643, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3312, file: !3158, line: 314, baseType: !643, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3312, file: !3158, line: 315, baseType: !3317, size: 384, offset: 128)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 384, elements: !1677)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3308, file: !3158, line: 336, baseType: !3319, offset: 4608)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, elements: !1591)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3176, file: !3158, line: 353, baseType: !3321, size: 32768)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 32768, elements: !3322)
!3322 = !{!3323}
!3323 = !DISubrange(count: 4096)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3157, file: !3158, line: 484, baseType: !3163, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3157, file: !3158, line: 491, baseType: !3326, size: 128, offset: 256)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3158, line: 404, size: 128, elements: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3326, file: !3158, line: 424, baseType: !643, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3326, file: !3158, line: 432, baseType: !7, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3326, file: !3158, line: 440, baseType: !7, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3157, file: !3158, line: 498, baseType: !3326, size: 128, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3157, file: !3158, line: 508, baseType: !3164, size: 33280, align: 512, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1166, file: !1167, line: 16, baseType: !1176, size: 192, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1166, file: !1167, line: 17, baseType: !440, size: 32, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !722, file: !28, line: 1240, baseType: !384, size: 64, offset: 6912)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !722, file: !28, line: 1243, baseType: !639, size: 32, offset: 6976)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !722, file: !28, line: 1245, baseType: !923, size: 64, offset: 7040)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !722, file: !28, line: 1246, baseType: !923, size: 64, offset: 7104)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !722, file: !28, line: 1248, baseType: !640, size: 32, offset: 7168)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !722, file: !28, line: 1249, baseType: !3341, size: 64, offset: 7232)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !722, file: !28, line: 1252, baseType: !3344, size: 256, offset: 7296)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !652)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !722, file: !28, line: 1253, baseType: !3346, size: 128, offset: 7552)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3347, line: 21, baseType: !3348)
!3347 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3347, line: 19, size: 128, elements: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3348, file: !3347, line: 20, baseType: !3351, size: 128)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 128, elements: !2564)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !722, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !722, file: !28, line: 1261, baseType: !870, size: 256, offset: 7744)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !722, file: !28, line: 1267, baseType: !409, size: 64, offset: 8000)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !722, file: !28, line: 1269, baseType: !668, size: 64, offset: 8064)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !722, file: !28, line: 1271, baseType: !3357, size: 448, offset: 8128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !932, line: 63, size: 448, elements: !3358)
!3358 = !{!3359, !3364, !3365, !3366, !3367, !3368, !3369}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3357, file: !932, line: 64, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!540, !3363, !930}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3357, file: !932, line: 66, baseType: !3360, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3357, file: !932, line: 69, baseType: !526, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3357, file: !932, line: 70, baseType: !109, size: 32, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !932, line: 71, baseType: !7, size: 32, offset: 224)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3357, file: !932, line: 74, baseType: !390, size: 128, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3357, file: !932, line: 85, baseType: !3370, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !722, file: !28, line: 1274, baseType: !874, size: 64, offset: 8576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !722, file: !28, line: 1280, baseType: !874, size: 64, offset: 8640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !722, file: !28, line: 1283, baseType: !109, size: 32, offset: 8704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !722, file: !28, line: 1286, baseType: !2278, size: 32, offset: 8736)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !722, file: !28, line: 1289, baseType: !3376, size: 64, offset: 8768)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2407, line: 18, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !722, file: !28, line: 1290, baseType: !762, size: 64, offset: 8832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !722, file: !28, line: 1297, baseType: !1773, size: 64, offset: 8896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !722, file: !28, line: 1304, baseType: !3381, size: 64, offset: 8960)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3382, line: 49, size: 64, elements: !3383)
!3382 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3381, file: !3382, line: 50, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3382, line: 41, size: 512, align: 512, elements: !3387)
!3387 = !{!3388, !3389, !3394}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3386, file: !3382, line: 43, baseType: !420, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3386, file: !3382, line: 45, baseType: !3390, size: 192, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3382, line: 29, size: 192, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3390, file: !3382, line: 30, baseType: !390, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3390, file: !3382, line: 32, baseType: !526, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3386, file: !3382, line: 46, baseType: !526, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !722, file: !28, line: 1305, baseType: !3381, size: 64, offset: 9024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !722, file: !28, line: 1306, baseType: !1183, size: 128, align: 64, offset: 9088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !722, file: !28, line: 1307, baseType: !2406, size: 256, offset: 9216)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !722, file: !28, line: 1309, baseType: !870, size: 256, offset: 9472)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !722, file: !28, line: 1314, baseType: !109, size: 32, offset: 9728)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !722, file: !28, line: 1317, baseType: !420, size: 32, align: 512, offset: 10240)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !722, file: !28, line: 1318, baseType: !390, size: 128, offset: 10304)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !722, file: !28, line: 1320, baseType: !420, size: 32, offset: 10432)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !722, file: !28, line: 1321, baseType: !390, size: 128, offset: 10496)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !716, file: !717, line: 73, baseType: !109, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !716, file: !717, line: 74, baseType: !3406, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1615, line: 42, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !670, file: !607, line: 141, baseType: !3410, size: 64, offset: 704)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!109, !993, !1690}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !670, file: !607, line: 142, baseType: !3414, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!605, !605, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !606, file: !607, line: 96, baseType: !721, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !606, file: !607, line: 97, baseType: !540, size: 64, offset: 896)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !606, file: !607, line: 98, baseType: !384, size: 64, offset: 960)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !607, line: 100, baseType: !3423, size: 128, offset: 1024)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !607, line: 100, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3423, file: !607, line: 101, baseType: !390, size: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3423, file: !607, line: 102, baseType: !1885, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !606, file: !607, line: 104, baseType: !390, size: 128, offset: 1152)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !606, file: !607, line: 105, baseType: !390, size: 128, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !606, file: !607, line: 113, baseType: !3430, size: 128, offset: 1408)
!3430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !607, line: 109, size: 128, elements: !3431)
!3431 = !{!3432, !3433, !3434}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3430, file: !607, line: 110, baseType: !766, size: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3430, file: !607, line: 111, baseType: !621, size: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3430, file: !607, line: 112, baseType: !1183, size: 128, align: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !599, file: !28, line: 1968, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!409, !605, !570, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3441, line: 10, size: 128, elements: !3442)
!3441 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3442 = !{!3443, !3447}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3440, file: !3441, line: 11, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !384}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3440, file: !3441, line: 12, baseType: !384, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !599, file: !28, line: 1969, baseType: !3449, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!109, !3406, !570, !109}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !599, file: !28, line: 1970, baseType: !3453, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!593, !570, !109, !1690}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !599, file: !28, line: 1972, baseType: !3457, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!109, !605, !490, !109}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !599, file: !28, line: 1974, baseType: !3461, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!109, !3406, !570, !605, !532, !1690}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !599, file: !28, line: 1976, baseType: !3465, size: 64, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!109, !605, !570, !605}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !599, file: !28, line: 1977, baseType: !3469, size: 64, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!109, !570, !605}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !599, file: !28, line: 1978, baseType: !3473, size: 64, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!109, !3406, !570, !605, !409}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !599, file: !28, line: 1980, baseType: !3477, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!109, !3406, !570, !605, !532}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !599, file: !28, line: 1982, baseType: !3469, size: 64, offset: 640)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !599, file: !28, line: 1983, baseType: !3482, size: 64, offset: 704)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!109, !3406, !570, !605, !532, !726}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !599, file: !28, line: 1985, baseType: !3486, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!109, !3406, !570, !605, !570, !605, !7}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !599, file: !28, line: 1987, baseType: !3490, size: 64, offset: 832)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!109, !3406, !605, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3508, !3517, !3518, !3523, !3524, !3525}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3494, file: !28, line: 227, baseType: !7, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3494, file: !28, line: 228, baseType: !532, size: 16, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !28, line: 241, baseType: !3499, size: 32, offset: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !28, line: 241, size: 32, elements: !3500)
!3500 = !{!3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3499, file: !28, line: 242, baseType: !576, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3499, file: !28, line: 243, baseType: !3503, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3504, line: 16, baseType: !3505)
!3504 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3504, line: 14, size: 32, elements: !3506)
!3506 = !{!3507}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3505, file: !3504, line: 15, baseType: !581, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !28, line: 245, baseType: !3509, size: 32, offset: 96)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !28, line: 245, size: 32, elements: !3510)
!3510 = !{!3511, !3512}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3509, file: !28, line: 246, baseType: !585, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3509, file: !28, line: 247, baseType: !3513, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3504, line: 20, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3504, line: 18, size: 32, elements: !3515)
!3515 = !{!3516}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3514, file: !3504, line: 19, baseType: !589, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3494, file: !28, line: 249, baseType: !731, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3494, file: !28, line: 250, baseType: !3519, size: 128, offset: 192)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !924, line: 13, size: 128, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3519, file: !924, line: 14, baseType: !923, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3519, file: !924, line: 15, baseType: !526, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3494, file: !28, line: 251, baseType: !3519, size: 128, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3494, file: !28, line: 252, baseType: !3519, size: 128, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3494, file: !28, line: 259, baseType: !1529, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !599, file: !28, line: 1988, baseType: !3527, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!109, !3406, !993, !3530, !639, !7}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3532, line: 22, size: 1280, elements: !3533)
!3532 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3531, file: !3532, line: 23, baseType: !639, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3531, file: !3532, line: 24, baseType: !532, size: 16, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3531, file: !3532, line: 25, baseType: !7, size: 32, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3531, file: !3532, line: 26, baseType: !1655, size: 32, offset: 96)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3531, file: !3532, line: 27, baseType: !643, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3531, file: !3532, line: 28, baseType: !643, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3531, file: !3532, line: 41, baseType: !643, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3531, file: !3532, line: 42, baseType: !726, size: 32, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3531, file: !3532, line: 43, baseType: !726, size: 32, offset: 352)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3531, file: !3532, line: 44, baseType: !576, size: 32, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3531, file: !3532, line: 45, baseType: !585, size: 32, offset: 416)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3531, file: !3532, line: 46, baseType: !731, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3531, file: !3532, line: 47, baseType: !3519, size: 128, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3531, file: !3532, line: 48, baseType: !3519, size: 128, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3531, file: !3532, line: 49, baseType: !3519, size: 128, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3531, file: !3532, line: 50, baseType: !3519, size: 128, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3531, file: !3532, line: 51, baseType: !643, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3531, file: !3532, line: 52, baseType: !643, size: 64, offset: 1088)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3531, file: !3532, line: 53, baseType: !639, size: 32, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3531, file: !3532, line: 54, baseType: !639, size: 32, offset: 1184)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3531, file: !3532, line: 55, baseType: !643, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !599, file: !28, line: 1990, baseType: !3556, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!522, !605, !490, !537}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !599, file: !28, line: 1991, baseType: !3560, size: 64, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!109, !570, !3563, !643, !643}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !599, file: !28, line: 1993, baseType: !3566, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!109, !570, !109}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !599, file: !28, line: 1994, baseType: !3570, size: 64, offset: 1152)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!109, !570, !605, !1529, !7, !532}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !599, file: !28, line: 1997, baseType: !3574, size: 64, offset: 1216)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!109, !3406, !570, !1529, !532}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !599, file: !28, line: 1999, baseType: !3578, size: 64, offset: 1280)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!593, !3406, !605, !109}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !599, file: !28, line: 2001, baseType: !3582, size: 64, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!109, !3406, !605, !593, !109}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !599, file: !28, line: 2003, baseType: !3586, size: 64, offset: 1408)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!109, !3406, !605, !3589}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !599, file: !28, line: 2005, baseType: !3592, size: 64, offset: 1472)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!109, !605, !3589}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !599, file: !28, line: 2006, baseType: !3596, size: 64, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!3599, !570}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3601)
!3601 = !{!3602, !3609}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3600, file: !28, line: 3193, baseType: !3603, size: 128)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3604, line: 296, size: 128, elements: !3605)
!3604 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3603, file: !3604, line: 297, baseType: !420, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3603, file: !3604, line: 299, baseType: !935, size: 32, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3603, file: !3604, line: 300, baseType: !384, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3600, file: !28, line: 3194, baseType: !639, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !571, file: !28, line: 655, baseType: !721, size: 64, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !571, file: !28, line: 656, baseType: !566, size: 64, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !571, file: !28, line: 659, baseType: !384, size: 64, offset: 576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !571, file: !28, line: 663, baseType: !540, size: 64, offset: 640)
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !28, line: 671, baseType: !3615, size: 32, offset: 704)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !28, line: 671, size: 32, elements: !3616)
!3616 = !{!3617, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3615, file: !28, line: 672, baseType: !3618, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3615, file: !28, line: 673, baseType: !7, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !571, file: !28, line: 675, baseType: !726, size: 32, offset: 736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !571, file: !28, line: 676, baseType: !731, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !571, file: !28, line: 677, baseType: !3519, size: 128, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !571, file: !28, line: 678, baseType: !3519, size: 128, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !571, file: !28, line: 679, baseType: !3519, size: 128, offset: 1088)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !571, file: !28, line: 680, baseType: !420, size: 32, offset: 1216)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !571, file: !28, line: 681, baseType: !460, size: 16, offset: 1248)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !571, file: !28, line: 682, baseType: !448, size: 8, offset: 1264)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !571, file: !28, line: 683, baseType: !448, size: 8, offset: 1272)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !571, file: !28, line: 684, baseType: !1071, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !571, file: !28, line: 691, baseType: !540, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !571, file: !28, line: 692, baseType: !1083, size: 320, offset: 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !571, file: !28, line: 694, baseType: !540, size: 64, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !571, file: !28, line: 695, baseType: !540, size: 64, offset: 1792)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !571, file: !28, line: 697, baseType: !766, size: 128, offset: 1856)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !571, file: !28, line: 698, baseType: !390, size: 128, offset: 1984)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !571, file: !28, line: 707, baseType: !390, size: 128, offset: 2112)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !571, file: !28, line: 708, baseType: !390, size: 128, offset: 2240)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !28, line: 709, baseType: !3639, size: 128, offset: 2368)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !28, line: 709, size: 128, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3639, file: !28, line: 710, baseType: !762, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3639, file: !28, line: 711, baseType: !1183, size: 128, align: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !571, file: !28, line: 713, baseType: !876, size: 64, offset: 2496)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !571, file: !28, line: 714, baseType: !876, size: 64, offset: 2560)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !571, file: !28, line: 715, baseType: !440, size: 32, offset: 2624)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !571, file: !28, line: 716, baseType: !440, size: 32, offset: 2656)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !571, file: !28, line: 717, baseType: !440, size: 32, offset: 2688)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !571, file: !28, line: 719, baseType: !440, size: 32, offset: 2720)
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !28, line: 721, baseType: !3650, size: 64, offset: 2752)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !28, line: 721, size: 64, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3650, file: !28, line: 722, baseType: !1804, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3650, file: !28, line: 723, baseType: !793, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !571, file: !28, line: 725, baseType: !3655, size: 64, offset: 2816)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !571, file: !28, line: 726, baseType: !567, size: 1536, align: 64, offset: 2880)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !571, file: !28, line: 727, baseType: !390, size: 128, offset: 4416)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !28, line: 728, baseType: !3660, size: 64, offset: 4544)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !28, line: 728, size: 64, elements: !3661)
!3661 = !{!3662, !3663, !3666, !3667}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3660, file: !28, line: 729, baseType: !2228, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3660, file: !28, line: 730, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3660, file: !28, line: 731, baseType: !490, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3660, file: !28, line: 732, baseType: !7, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !571, file: !28, line: 735, baseType: !640, size: 32, offset: 4608)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !571, file: !28, line: 738, baseType: !640, size: 32, offset: 4640)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !571, file: !28, line: 739, baseType: !3341, size: 64, offset: 4672)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !571, file: !28, line: 750, baseType: !384, size: 64, offset: 4736)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !567, file: !28, line: 474, baseType: !3603, size: 128, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !567, file: !28, line: 475, baseType: !1083, size: 320, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !567, file: !28, line: 476, baseType: !935, size: 32, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !567, file: !28, line: 477, baseType: !440, size: 32, offset: 544)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !567, file: !28, line: 482, baseType: !1385, size: 128, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !567, file: !28, line: 483, baseType: !540, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !567, file: !28, line: 484, baseType: !540, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !567, file: !28, line: 485, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3683)
!3683 = !{!3684, !3688, !3758, !3762, !3766, !3772, !3777, !3781, !3786, !3790, !3794, !3798, !3799, !3803, !3807, !3811, !3816, !3820, !3827, !3828}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3682, file: !28, line: 405, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!109, !2005, !805}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3682, file: !28, line: 406, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!109, !1529, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3694)
!3694 = !{!3695, !3725, !3739}
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3693, file: !65, line: 295, baseType: !3696, size: 512)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3693, file: !65, line: 295, size: 512, elements: !3697)
!3697 = !{!3698, !3724}
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !65, line: 296, baseType: !3699, size: 448)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3696, file: !65, line: 296, size: 448, elements: !3700)
!3700 = !{!3701, !3702, !3711, !3712, !3713, !3722, !3723}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3699, file: !65, line: 298, baseType: !540, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !65, line: 299, baseType: !3703, size: 128, offset: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !65, line: 299, size: 128, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3703, file: !65, line: 300, baseType: !390, size: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !65, line: 302, baseType: !3707, size: 128)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3703, file: !65, line: 302, size: 128, elements: !3708)
!3708 = !{!3709, !3710}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3707, file: !65, line: 303, baseType: !384, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3707, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3699, file: !65, line: 310, baseType: !566, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3699, file: !65, line: 311, baseType: !540, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3699, file: !65, line: 312, baseType: !3714, size: 64, offset: 320)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3699, file: !65, line: 312, size: 64, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3714, file: !65, line: 313, baseType: !384, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3714, file: !65, line: 314, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3720)
!3720 = !{!3721}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3719, file: !65, line: 256, baseType: !540, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3699, file: !65, line: 316, baseType: !440, size: 32, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3699, file: !65, line: 317, baseType: !440, size: 32, offset: 416)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3696, file: !65, line: 323, baseType: !2006, size: 512, align: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, scope: !3693, file: !65, line: 325, baseType: !3726, size: 512, offset: 512)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3693, file: !65, line: 325, size: 512, elements: !3727)
!3727 = !{!3728, !3738}
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3726, file: !65, line: 326, baseType: !3729, size: 320)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3726, file: !65, line: 326, size: 320, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3729, file: !65, line: 327, baseType: !540, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3729, file: !65, line: 328, baseType: !540, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3729, file: !65, line: 329, baseType: !540, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3729, file: !65, line: 331, baseType: !440, size: 32, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3729, file: !65, line: 332, baseType: !440, size: 32, offset: 224)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3729, file: !65, line: 333, baseType: !440, size: 32, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3729, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3726, file: !65, line: 339, baseType: !2006, size: 512, align: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3693, file: !65, line: 341, baseType: !3740, size: 512, offset: 1024)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3693, file: !65, line: 341, size: 512, elements: !3741)
!3741 = !{!3742, !3751, !3757}
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !3740, file: !65, line: 342, baseType: !3743, size: 384)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !65, line: 342, size: 384, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3743, file: !65, line: 343, baseType: !540, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3743, file: !65, line: 344, baseType: !540, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3743, file: !65, line: 346, baseType: !384, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3743, file: !65, line: 347, baseType: !384, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3743, file: !65, line: 348, baseType: !384, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3743, file: !65, line: 349, baseType: !384, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3740, file: !65, line: 352, baseType: !3752, size: 256)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !65, line: 352, size: 256, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3752, file: !65, line: 353, baseType: !540, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3752, file: !65, line: 354, baseType: !540, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3752, file: !65, line: 356, baseType: !390, size: 128, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3740, file: !65, line: 359, baseType: !2006, size: 512, align: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3682, file: !28, line: 409, baseType: !3759, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!109, !566, !805}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3682, file: !28, line: 412, baseType: !3763, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!1690, !566, !3692}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3682, file: !28, line: 414, baseType: !3767, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3682, file: !28, line: 416, baseType: !3773, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!109, !1529, !566, !731, !7, !3776, !2243}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3682, file: !28, line: 419, baseType: !3778, size: 64, offset: 384)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!109, !1529, !566, !731, !7, !7, !2005, !384}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3682, file: !28, line: 424, baseType: !3782, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3785, !566, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !391, line: 131, baseType: !643)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3682, file: !28, line: 425, baseType: !3787, size: 64, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3692, !537, !537}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3682, file: !28, line: 426, baseType: !3791, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!1690, !3692, !935}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3682, file: !28, line: 427, baseType: !3795, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !3692}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3682, file: !28, line: 428, baseType: !1823, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3682, file: !28, line: 433, baseType: !3800, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!109, !566, !3692, !3692, !49}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3682, file: !28, line: 435, baseType: !3804, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!109, !3692}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3682, file: !28, line: 436, baseType: !3808, size: 64, offset: 896)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!1690, !3692, !537, !537}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3682, file: !28, line: 438, baseType: !3812, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3692, !3815, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3682, file: !28, line: 439, baseType: !3817, size: 64, offset: 1024)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !566, !2005}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3682, file: !28, line: 442, baseType: !3821, size: 64, offset: 1088)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!109, !3824, !1529, !3826}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3682, file: !28, line: 444, baseType: !2235, size: 64, offset: 1152)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3682, file: !28, line: 445, baseType: !3829, size: 64, offset: 1216)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!109, !1826, !1848}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !28, line: 486, baseType: !540, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !567, file: !28, line: 487, baseType: !1083, size: 320, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !567, file: !28, line: 488, baseType: !2278, size: 32, offset: 1280)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !567, file: !28, line: 489, baseType: !420, size: 32, offset: 1312)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !567, file: !28, line: 490, baseType: !390, size: 128, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !567, file: !28, line: 491, baseType: !384, size: 64, offset: 1472)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !557, file: !516, line: 180, baseType: !3839, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!522, !1529, !413, !556, !490, !731, !537}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !557, file: !516, line: 182, baseType: !3839, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !557, file: !516, line: 184, baseType: !3844, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!109, !1529, !413, !556, !1896}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !545, file: !516, line: 90, baseType: !3848, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !545, file: !516, line: 91, baseType: !3850, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !506, file: !406, line: 120, baseType: !3852, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!3855, !473}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3858)
!3858 = !{!3859, !3860, !3864, !3868, !3874, !3878}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3857, file: !6, line: 40, baseType: !5, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3857, file: !6, line: 41, baseType: !3861, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!1690}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3857, file: !6, line: 42, baseType: !3865, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!384}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3857, file: !6, line: 43, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!2367, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3857, file: !6, line: 44, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!2367}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3857, file: !6, line: 45, baseType: !3444, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !506, file: !406, line: 121, baseType: !3880, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!2367, !473}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !506, file: !406, line: 122, baseType: !3884, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !473, !3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !405, file: !406, line: 70, baseType: !3890, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !746, line: 190, size: 1152, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3984, !3985, !3986, !3987, !3988, !3991}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3891, file: !746, line: 191, baseType: !440, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3891, file: !746, line: 192, baseType: !440, size: 32, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3891, file: !746, line: 202, baseType: !3890, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3891, file: !746, line: 203, baseType: !409, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3891, file: !746, line: 205, baseType: !1256, size: 192, align: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3891, file: !746, line: 207, baseType: !2367, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3891, file: !746, line: 208, baseType: !7, size: 32, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, scope: !3891, file: !746, line: 209, baseType: !3901, size: 256, offset: 512)
!3901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3891, file: !746, line: 209, size: 256, elements: !3902)
!3902 = !{!3903, !3912, !3916}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3901, file: !746, line: 210, baseType: !3904, size: 256)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !746, line: 153, size: 256, elements: !3905)
!3905 = !{!3906, !3907, !3908, !3911}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3904, file: !746, line: 154, baseType: !540, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3904, file: !746, line: 156, baseType: !1388, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3904, file: !746, line: 162, baseType: !3909, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !746, line: 162, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3904, file: !746, line: 167, baseType: !540, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3901, file: !746, line: 211, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !746, line: 170, size: 64, elements: !3914)
!3914 = !{!3915}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3913, file: !746, line: 171, baseType: !3890, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3901, file: !746, line: 212, baseType: !3917, size: 256)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !746, line: 174, size: 256, elements: !3918)
!3918 = !{!3919, !3979, !3982, !3983}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3917, file: !746, line: 175, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3922)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !746, line: 271, size: 768, elements: !3923)
!3923 = !{!3924, !3944, !3948, !3952, !3956, !3960, !3964, !3968, !3969, !3970, !3971, !3975}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3922, file: !746, line: 276, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!109, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !746, line: 251, size: 1216, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3929, file: !746, line: 253, baseType: !3890, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3929, file: !746, line: 254, baseType: !1529, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3929, file: !746, line: 255, baseType: !843, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3929, file: !746, line: 256, baseType: !384, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3929, file: !746, line: 259, baseType: !870, size: 256, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3929, file: !746, line: 260, baseType: !870, size: 256, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3929, file: !746, line: 261, baseType: !109, size: 32, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3929, file: !746, line: 262, baseType: !390, size: 128, offset: 832)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3929, file: !746, line: 263, baseType: !490, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3929, file: !746, line: 265, baseType: !537, size: 64, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3929, file: !746, line: 266, baseType: !1690, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3929, file: !746, line: 267, baseType: !1690, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3929, file: !746, line: 268, baseType: !1941, size: 64, offset: 1152)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3922, file: !746, line: 277, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3928}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3922, file: !746, line: 290, baseType: !3949, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!109, !843, !384}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3922, file: !746, line: 292, baseType: !3953, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!384, !843, !1817}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3922, file: !746, line: 293, baseType: !3957, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!384, !843, !384, !1817}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3922, file: !746, line: 294, baseType: !3961, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !843, !384}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3922, file: !746, line: 296, baseType: !3965, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!522, !3928, !490, !537, !731}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3922, file: !746, line: 306, baseType: !537, size: 64, offset: 448)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3922, file: !746, line: 313, baseType: !1690, size: 8, offset: 512)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3922, file: !746, line: 314, baseType: !3965, size: 64, offset: 576)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3922, file: !746, line: 317, baseType: !3972, size: 64, offset: 640)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!1874, !3928, !1876}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3922, file: !746, line: 320, baseType: !3976, size: 64, offset: 704)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!109, !3928, !1896}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3917, file: !746, line: 176, baseType: !3980, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !746, line: 35, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3917, file: !746, line: 177, baseType: !731, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3917, file: !746, line: 178, baseType: !3890, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3891, file: !746, line: 215, baseType: !384, size: 64, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3891, file: !746, line: 221, baseType: !643, size: 64, offset: 832)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3891, file: !746, line: 223, baseType: !460, size: 16, offset: 896)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3891, file: !746, line: 224, baseType: !532, size: 16, offset: 912)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3891, file: !746, line: 225, baseType: !3989, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !746, line: 36, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3891, file: !746, line: 227, baseType: !1183, size: 128, align: 64, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !405, file: !406, line: 71, baseType: !3993, size: 32, offset: 448)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3994, line: 19, size: 32, elements: !3995)
!3994 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3995 = !{!3996}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3993, file: !3994, line: 20, baseType: !1212, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !405, file: !406, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !405, file: !406, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !405, file: !406, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !405, file: !406, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !405, file: !406, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !402, file: !21, line: 47, baseType: !385, size: 64, offset: 512)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !402, file: !21, line: 48, baseType: !413, size: 64, offset: 576)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !402, file: !21, line: 49, baseType: !4005, size: 64, offset: 640)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !402, file: !21, line: 50, baseType: !2521, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !386, file: !21, line: 418, baseType: !4009, size: 64, offset: 1408)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !4011)
!4011 = !{!4012, !4013, !4018, !4022, !4026, !4030}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4010, file: !21, line: 54, baseType: !528, size: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4010, file: !21, line: 55, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!522, !4009, !4017, !490}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4010, file: !21, line: 57, baseType: !4019, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!522, !4009, !4017, !409, !537}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4010, file: !21, line: 59, baseType: !4023, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !385, !409}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4010, file: !21, line: 60, baseType: !4027, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!109, !385}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4010, file: !21, line: 61, baseType: !4031, size: 64, offset: 384)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{null, !385}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !386, file: !21, line: 419, baseType: !409, size: 64, offset: 1472)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !386, file: !21, line: 420, baseType: !409, size: 64, offset: 1536)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !386, file: !21, line: 421, baseType: !413, size: 64, offset: 1600)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !386, file: !21, line: 424, baseType: !4038, size: 64, offset: 1664)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4040)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !386, file: !21, line: 425, baseType: !4042, size: 64, offset: 1728)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !386, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !386, file: !21, line: 435, baseType: !870, size: 256, offset: 1856)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !386, file: !21, line: 437, baseType: !4047, size: 64, offset: 2112)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4049, line: 69, size: 320, elements: !4050)
!4049 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4050 = !{!4051, !4052, !4053, !4070, !4072, !4076, !4077}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4048, file: !4049, line: 70, baseType: !409, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4048, file: !4049, line: 71, baseType: !385, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4048, file: !4049, line: 72, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4056)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4049, line: 47, size: 256, elements: !4057)
!4057 = !{!4058, !4059, !4065, !4069}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !4049, line: 49, baseType: !7, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4056, file: !4049, line: 51, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!109, !409, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4056, file: !4049, line: 53, baseType: !4066, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!109, !490, !4063}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4056, file: !4049, line: 55, baseType: !3444, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4048, file: !4049, line: 73, baseType: !4071, size: 16, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4048, file: !4049, line: 74, baseType: !4073, size: 8, offset: 208)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !449, line: 16, baseType: !4074)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !451, line: 20, baseType: !4075)
!4075 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4048, file: !4049, line: 75, baseType: !448, size: 8, offset: 216)
!4077 = !DIDerivedType(tag: DW_TAG_member, scope: !4048, file: !4049, line: 76, baseType: !4078, size: 64, offset: 256)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4048, file: !4049, line: 76, size: 64, elements: !4079)
!4079 = !{!4080, !4081, !4088}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4078, file: !4049, line: 77, baseType: !384, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4078, file: !4049, line: 78, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4049, line: 86, size: 128, elements: !4085)
!4085 = !{!4086, !4087}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4084, file: !4049, line: 87, baseType: !7, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4084, file: !4049, line: 88, baseType: !490, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4078, file: !4049, line: 79, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4049, line: 92, size: 256, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4091, file: !4049, line: 94, baseType: !7, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4091, file: !4049, line: 95, baseType: !7, size: 32, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4091, file: !4049, line: 96, baseType: !1192, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4091, file: !4049, line: 97, baseType: !4054, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4091, file: !4049, line: 98, baseType: !384, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !386, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !386, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !386, file: !21, line: 442, baseType: !4038, size: 64, offset: 2240)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !386, file: !21, line: 443, baseType: !4042, size: 64, offset: 2304)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !386, file: !21, line: 444, baseType: !1690, size: 8, offset: 2368)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !386, file: !21, line: 451, baseType: !1690, size: 8, offset: 2376)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !386, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !386, file: !21, line: 455, baseType: !4106, size: 64, offset: 2432)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4108, line: 23, size: 96, elements: !4109)
!4108 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4109 = !{!4110, !4111, !4112}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4107, file: !4108, line: 24, baseType: !109, size: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4107, file: !4108, line: 24, baseType: !109, size: 32, offset: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4107, file: !4108, line: 24, baseType: !109, size: 32, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !386, file: !21, line: 458, baseType: !4114, size: 64, offset: 2496)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!109}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !386, file: !21, line: 460, baseType: !4118, size: 4032, align: 512, offset: 2560)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4119, size: 4032, elements: !4133)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !4120)
!4120 = !{!4121, !4122, !4123}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4119, file: !21, line: 363, baseType: !384, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4119, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4119, file: !21, line: 367, baseType: !4124, size: 448, offset: 128)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4124, file: !21, line: 320, baseType: !385, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4124, file: !21, line: 321, baseType: !4128, size: 384, offset: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4129, line: 40, size: 384, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4128, file: !4129, line: 41, baseType: !4132, size: 384, align: 64)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1256, size: 384, align: 64, elements: !2646)
!4133 = !{!4134}
!4134 = !DISubrange(count: 7)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !386, file: !21, line: 463, baseType: !4136, size: 192, offset: 6592)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4137, line: 8, size: 192, elements: !4138)
!4137 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4138 = !{!4139, !4140, !4141}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4136, file: !4137, line: 10, baseType: !7, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4136, file: !4137, line: 11, baseType: !837, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4136, file: !4137, line: 12, baseType: !4142, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4144, line: 59, size: 48, elements: !4145)
!4144 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4143, file: !4144, line: 60, baseType: !2384, size: 16)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4143, file: !4144, line: 61, baseType: !2384, size: 16, offset: 16)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4143, file: !4144, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4143, file: !4144, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4143, file: !4144, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4143, file: !4144, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !386, file: !21, line: 465, baseType: !540, size: 64, offset: 6784)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !386, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !386, file: !21, line: 470, baseType: !390, size: 128, offset: 6912)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !386, file: !21, line: 471, baseType: !4156, size: 64, offset: 7040)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4158, line: 33, size: 96, elements: !4159)
!4158 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4159 = !{!4160, !4161, !4162, !4163}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4157, file: !4158, line: 37, baseType: !109, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4157, file: !4158, line: 43, baseType: !109, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4157, file: !4158, line: 45, baseType: !460, size: 16, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4157, file: !4158, line: 47, baseType: !460, size: 16, offset: 80)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !386, file: !21, line: 476, baseType: !4165, size: 64, offset: 7104)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !4167)
!4167 = !{!4168, !4184, !4185, !4186}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4166, file: !21, line: 379, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4171, line: 204, baseType: !4172)
!4171 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4171, line: 197, size: 192, elements: !4173)
!4173 = !{!4174, !4176, !4177, !4178, !4180, !4182}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4172, file: !4171, line: 198, baseType: !4175, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4171, line: 21, baseType: !640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4172, file: !4171, line: 199, baseType: !452, size: 8, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4172, file: !4171, line: 200, baseType: !452, size: 8, offset: 40)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4172, file: !4171, line: 201, baseType: !4179, size: 16, offset: 48)
!4179 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4171, line: 17, baseType: !459)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4172, file: !4171, line: 202, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4171, line: 16, baseType: !644)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4172, file: !4171, line: 203, baseType: !4183, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4171, line: 22, baseType: !644)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4166, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4166, file: !21, line: 381, baseType: !490, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4166, file: !21, line: 382, baseType: !490, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !386, file: !21, line: 477, baseType: !4166, size: 256, offset: 7168)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !386, file: !21, line: 480, baseType: !4189, size: 64, offset: 7424)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !386, file: !21, line: 483, baseType: !4192, size: 64, offset: 7488)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !386, file: !21, line: 488, baseType: !490, size: 64, offset: 7552)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !386, file: !21, line: 492, baseType: !384, size: 64, offset: 7616)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !386, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !386, file: !21, line: 495, baseType: !384, size: 64, offset: 7744)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !386, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !386, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !386, file: !21, line: 500, baseType: !4201, size: 64, offset: 7872)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4203, line: 45, baseType: !4204)
!4203 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !386, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !386, file: !21, line: 504, baseType: !4207, size: 64, offset: 8000)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4210, line: 96, size: 192, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4211 = !{!4212, !4213, !4256, !4258}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4209, file: !4210, line: 97, baseType: !7, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4209, file: !4210, line: 98, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4210, line: 24, size: 3072, elements: !4216)
!4216 = !{!4217, !4219, !4220, !4221, !4222, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4253, !4254, !4255}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4215, file: !4210, line: 26, baseType: !4218, size: 128)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 128, elements: !2646)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4215, file: !4210, line: 27, baseType: !4218, size: 128, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4215, file: !4210, line: 28, baseType: !109, size: 32, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4215, file: !4210, line: 31, baseType: !420, size: 32, align: 512, offset: 512)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4215, file: !4210, line: 32, baseType: !4223, size: 960, offset: 576)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4224, line: 206, size: 960, elements: !4225)
!4224 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4225 = !{!4226, !4227, !4230, !4232, !4233, !4235}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4223, file: !4224, line: 207, baseType: !1186, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4223, file: !4224, line: 208, baseType: !4228, size: 256, offset: 64)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4229, size: 256, elements: !1578)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4223, file: !4224, line: 209, baseType: !4231, size: 256, offset: 320)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 256, elements: !1578)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4223, file: !4224, line: 213, baseType: !526, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4223, file: !4224, line: 215, baseType: !4234, size: 256, offset: 640)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 256, elements: !1578)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4223, file: !4224, line: 216, baseType: !448, size: 8, offset: 896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4215, file: !4210, line: 33, baseType: !540, size: 64, offset: 1536)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4215, file: !4210, line: 34, baseType: !540, size: 64, offset: 1600)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4215, file: !4210, line: 35, baseType: !1690, size: 8, offset: 1664)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4215, file: !4210, line: 36, baseType: !3082, size: 320, offset: 1728)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4215, file: !4210, line: 37, baseType: !2406, size: 256, offset: 2048)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4215, file: !4210, line: 38, baseType: !1183, size: 128, align: 64, offset: 2304)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4215, file: !4210, line: 39, baseType: !4243, size: 64, offset: 2432)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4210, line: 49, size: 768, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4244, file: !4210, line: 50, baseType: !420, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4244, file: !4210, line: 51, baseType: !4231, size: 256, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4244, file: !4210, line: 53, baseType: !4231, size: 256, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4244, file: !4210, line: 54, baseType: !540, size: 64, offset: 576)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4244, file: !4210, line: 55, baseType: !4243, size: 64, offset: 640)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4244, file: !4210, line: 56, baseType: !109, size: 32, offset: 704)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4244, file: !4210, line: 57, baseType: !109, size: 32, offset: 736)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4215, file: !4210, line: 40, baseType: !540, size: 64, offset: 2496)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4215, file: !4210, line: 42, baseType: !109, size: 32, offset: 2560)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4215, file: !4210, line: 43, baseType: !4208, size: 64, offset: 2624)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4209, file: !4210, line: 99, baseType: !4257, offset: 128)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !773, line: 211, elements: !774)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4209, file: !4210, line: 100, baseType: !4259, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4210, line: 63, size: 3008, elements: !4261)
!4261 = !{!4262, !4263, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4291}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4260, file: !4210, line: 64, baseType: !4243, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4260, file: !4210, line: 65, baseType: !4264, size: 192, offset: 64)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4243, size: 192, elements: !491)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4260, file: !4210, line: 67, baseType: !109, size: 32, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4260, file: !4210, line: 68, baseType: !870, size: 256, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4260, file: !4210, line: 69, baseType: !420, size: 32, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4260, file: !4210, line: 70, baseType: !870, size: 256, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4260, file: !4210, line: 71, baseType: !540, size: 64, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4260, file: !4210, line: 72, baseType: !540, size: 64, offset: 960)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4260, file: !4210, line: 73, baseType: !540, size: 64, offset: 1024)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4260, file: !4210, line: 74, baseType: !540, size: 64, offset: 1088)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4260, file: !4210, line: 75, baseType: !540, size: 64, offset: 1152)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4260, file: !4210, line: 76, baseType: !540, size: 64, offset: 1216)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4260, file: !4210, line: 77, baseType: !540, size: 64, offset: 1280)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4260, file: !4210, line: 78, baseType: !540, size: 64, offset: 1344)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4260, file: !4210, line: 79, baseType: !1690, size: 8, offset: 1408)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4260, file: !4210, line: 80, baseType: !540, size: 64, offset: 1472)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4260, file: !4210, line: 81, baseType: !870, size: 256, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4260, file: !4210, line: 82, baseType: !2090, size: 256, offset: 1792)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4260, file: !4210, line: 84, baseType: !440, size: 32, offset: 2048)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4260, file: !4210, line: 87, baseType: !540, size: 64, offset: 2112)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4260, file: !4210, line: 88, baseType: !540, size: 64, offset: 2176)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4260, file: !4210, line: 89, baseType: !4285, size: 704, offset: 2240)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2407, line: 111, size: 704, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4285, file: !2407, line: 112, baseType: !2406, size: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4285, file: !2407, line: 113, baseType: !3082, size: 320, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4285, file: !2407, line: 116, baseType: !3376, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4285, file: !2407, line: 117, baseType: !109, size: 32, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4260, file: !4210, line: 90, baseType: !4208, size: 64, offset: 2944)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !386, file: !21, line: 515, baseType: !4293, size: 64, offset: 8064)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4295, line: 117, size: 128, elements: !4296)
!4295 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4296 = !{!4297, !4298, !4299}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4294, file: !4295, line: 118, baseType: !1633, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4294, file: !4295, line: 119, baseType: !1633, size: 32, offset: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4294, file: !4295, line: 120, baseType: !526, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !386, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !386, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !386, file: !21, line: 520, baseType: !4303, size: 64, offset: 8192)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !386, file: !21, line: 523, baseType: !4305, size: 64, offset: 8256)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !386, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !386, file: !21, line: 525, baseType: !4310, size: 64, offset: 8384)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !386, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !386, file: !21, line: 533, baseType: !384, size: 64, offset: 8512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !386, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !386, file: !21, line: 535, baseType: !4317, size: 64, offset: 8640)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !386, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !386, file: !21, line: 539, baseType: !109, size: 32, offset: 8736)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !386, file: !21, line: 540, baseType: !4321, size: 64, offset: 8768)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4323, line: 32, size: 64, elements: !4324)
!4323 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4324 = !{!4325, !4326}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4322, file: !4323, line: 33, baseType: !1633, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4322, file: !4323, line: 34, baseType: !1633, size: 32, offset: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !386, file: !21, line: 563, baseType: !390, size: 128, offset: 8832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !386, file: !21, line: 565, baseType: !390, size: 128, offset: 8960)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !386, file: !21, line: 568, baseType: !4330, size: 64, offset: 9088)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !386, file: !21, line: 570, baseType: !440, size: 32, offset: 9152)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !3114, line: 83, size: 2368, elements: !4337)
!4337 = !{!4338, !4349, !4350, !4351, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4369, !4370, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4338 = !DIDerivedType(tag: DW_TAG_member, scope: !4336, file: !3114, line: 84, baseType: !4339, size: 32)
!4339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4336, file: !3114, line: 84, size: 32, elements: !4340)
!4340 = !{!4341, !4348}
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !4339, file: !3114, line: 90, baseType: !4342, size: 32)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4339, file: !3114, line: 90, size: 32, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !4342, file: !3114, line: 91, baseType: !450, size: 8)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !4342, file: !3114, line: 93, baseType: !450, size: 8, offset: 8)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !4342, file: !3114, line: 95, baseType: !450, size: 8, offset: 16)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !4342, file: !3114, line: 96, baseType: !450, size: 8, offset: 24)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !4339, file: !3114, line: 99, baseType: !640, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !4336, file: !3114, line: 101, baseType: !450, size: 8, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !4336, file: !3114, line: 104, baseType: !109, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !4336, file: !3114, line: 107, baseType: !4352, size: 160, offset: 96)
!4352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 160, elements: !4353)
!4353 = !{!4354}
!4354 = !DISubrange(count: 5)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !4336, file: !3114, line: 109, baseType: !450, size: 8, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !4336, file: !3114, line: 110, baseType: !450, size: 8, offset: 264)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !4336, file: !3114, line: 112, baseType: !450, size: 8, offset: 272)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !4336, file: !3114, line: 113, baseType: !450, size: 8, offset: 280)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !4336, file: !3114, line: 115, baseType: !640, size: 32, offset: 288)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !4336, file: !3114, line: 117, baseType: !109, size: 32, offset: 320)
!4361 = !DIDerivedType(tag: DW_TAG_member, scope: !4336, file: !3114, line: 123, baseType: !4362, size: 768, offset: 384)
!4362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4336, file: !3114, line: 123, size: 768, elements: !4363)
!4363 = !{!4364, !4368}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !4362, file: !3114, line: 124, baseType: !4365, size: 768)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 768, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 24)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !4362, file: !3114, line: 125, baseType: !540, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !4336, file: !3114, line: 127, baseType: !2563, size: 128, offset: 1152)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !4336, file: !3114, line: 128, baseType: !4371, size: 512, offset: 1280)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 512, elements: !495)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !4336, file: !3114, line: 130, baseType: !7, size: 32, offset: 1792)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !4336, file: !3114, line: 131, baseType: !109, size: 32, offset: 1824)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !4336, file: !3114, line: 133, baseType: !109, size: 32, offset: 1856)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !4336, file: !3114, line: 134, baseType: !109, size: 32, offset: 1888)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !4336, file: !3114, line: 135, baseType: !109, size: 32, offset: 1920)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !4336, file: !3114, line: 136, baseType: !109, size: 32, offset: 1952)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !4336, file: !3114, line: 137, baseType: !540, size: 64, offset: 1984)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !4336, file: !3114, line: 139, baseType: !643, size: 64, offset: 2048)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !4336, file: !3114, line: 141, baseType: !458, size: 16, offset: 2112)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !4336, file: !3114, line: 142, baseType: !458, size: 16, offset: 2128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !4336, file: !3114, line: 143, baseType: !458, size: 16, offset: 2144)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !4336, file: !3114, line: 144, baseType: !458, size: 16, offset: 2160)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !4336, file: !3114, line: 146, baseType: !458, size: 16, offset: 2176)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !4336, file: !3114, line: 148, baseType: !458, size: 16, offset: 2192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !4336, file: !3114, line: 150, baseType: !458, size: 16, offset: 2208)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !4336, file: !3114, line: 152, baseType: !458, size: 16, offset: 2224)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !4336, file: !3114, line: 153, baseType: !458, size: 16, offset: 2240)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !4336, file: !3114, line: 154, baseType: !458, size: 16, offset: 2256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !4336, file: !3114, line: 156, baseType: !458, size: 16, offset: 2272)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !4336, file: !3114, line: 158, baseType: !1690, size: 8, offset: 2288)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4336, file: !3114, line: 159, baseType: !639, size: 32, offset: 2304)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !4336, file: !3114, line: 161, baseType: !448, size: 8, offset: 2336)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4336, file: !3114, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!4397 = !{!0, !4398, !4400, !4404, !4406, !4411, !4416, !4421, !4424, !4426, !4429, !4434, !4436, !4442, !4449, !4454, !4456, !4461, !4463, !4465, !4468, !4819, !4824, !4829, !4831, !4834, !4836, !4838}
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !2890, isLocal: true, isDefinition: true)
!4400 = !DIGlobalVariableExpression(var: !4401, expr: !DIExpression())
!4401 = distinct !DIGlobalVariable(name: "__exitcall_msr_exit", scope: !2, file: !3, line: 295, type: !4402, isLocal: true, isDefinition: true)
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4403, line: 120, baseType: !4330)
!4403 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "__param_allow_writes", scope: !2, file: !3, line: 330, type: !4064, isLocal: true, isDefinition: true, align: 64)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author291", scope: !2, file: !3, line: 332, type: !4408, isLocal: true, isDefinition: true, align: 8)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 336, elements: !4409)
!4409 = !{!4410}
!4410 = !DISubrange(count: 42)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description292", scope: !2, file: !3, line: 333, type: !4413, isLocal: true, isDefinition: true, align: 8)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 312, elements: !4414)
!4414 = !{!4415}
!4415 = !DISubrange(count: 39)
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file293", scope: !2, file: !3, line: 334, type: !4418, isLocal: true, isDefinition: true, align: 8)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 232, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 29)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license294", scope: !2, file: !3, line: 334, type: !4423, isLocal: true, isDefinition: true, align: 8)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !2564)
!4424 = !DIGlobalVariableExpression(var: !4425, expr: !DIExpression())
!4425 = distinct !DIGlobalVariable(name: "cpuhp_msr_state", scope: !2, file: !3, line: 42, type: !141, isLocal: true, isDefinition: true)
!4426 = !DIGlobalVariableExpression(var: !4427, expr: !DIExpression())
!4427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !4428, isLocal: true, isDefinition: true)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 312, elements: !4414)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !4431, isLocal: true, isDefinition: true)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 120, elements: !4432)
!4432 = !{!4433}
!4433 = !DISubrange(count: 15)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "msr_fops", scope: !2, file: !3, line: 227, type: !1805, isLocal: true, isDefinition: true)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(scope: null, file: !4438, line: 249, type: !4439, isLocal: true, isDefinition: true)
!4438 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 224, elements: !4440)
!4440 = !{!4441}
!4441 = !DISubrange(count: 28)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(name: "fw_rs", scope: !4444, file: !3, line: 90, type: !1762, isLocal: true, isDefinition: true)
!4444 = distinct !DISubprogram(name: "filter_write", scope: !3, file: !3, line: 80, type: !4445, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!109, !639}
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "reg", arg: 1, scope: !4444, file: !3, line: 80, type: !639)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !4451, isLocal: true, isDefinition: true)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 104, elements: !4452)
!4452 = !{!4453}
!4453 = !DISubrange(count: 13)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !397, isLocal: true, isDefinition: true)
!4456 = !DIGlobalVariableExpression(var: !4457, expr: !DIExpression())
!4457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !4458, isLocal: true, isDefinition: true)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 728, elements: !4459)
!4459 = !{!4460}
!4460 = !DISubrange(count: 91)
!4461 = !DIGlobalVariableExpression(var: !4462, expr: !DIExpression())
!4462 = distinct !DIGlobalVariable(name: "allow_writes", scope: !2, file: !3, line: 50, type: !378, isLocal: true, isDefinition: true)
!4463 = !DIGlobalVariableExpression(var: !4464, expr: !DIExpression())
!4464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !1676, isLocal: true, isDefinition: true)
!4465 = !DIGlobalVariableExpression(var: !4466, expr: !DIExpression())
!4466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !4467, isLocal: true, isDefinition: true)
!4467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 32, elements: !1578)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "msr_class", scope: !2, file: !3, line: 242, type: !4470, isLocal: true, isDefinition: true)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4472, line: 52, size: 768, elements: !4473)
!4472 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4473 = !{!4474, !4475, !4476, !4477, !4799, !4803, !4807, !4808, !4809, !4810, !4814, !4818}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4471, file: !4472, line: 53, baseType: !409, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4471, file: !4472, line: 55, baseType: !542, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4471, file: !4472, line: 56, baseType: !542, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4471, file: !4472, line: 58, baseType: !4478, size: 64, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!109, !4481, !485}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4484)
!4484 = !{!4485, !4486, !4488, !4491, !4492, !4540, !4610, !4611, !4612, !4613, !4614, !4621, !4713, !4726, !4736, !4740, !4742, !4743, !4744, !4748, !4755, !4756, !4759, !4762, !4766, !4769, !4770, !4771, !4772, !4773, !4774, !4776, !4777, !4778, !4781, !4784, !4793, !4794, !4795, !4796, !4797, !4798}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4483, file: !94, line: 706, baseType: !405, size: 512)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4483, file: !94, line: 707, baseType: !4487, size: 64, offset: 512)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4483, file: !94, line: 709, baseType: !4489, size: 64, offset: 576)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4483, file: !94, line: 711, baseType: !409, size: 64, offset: 640)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4483, file: !94, line: 712, baseType: !4493, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4495)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4505, !4509}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4495, file: !94, line: 90, baseType: !409, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4495, file: !94, line: 91, baseType: !542, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4495, file: !94, line: 92, baseType: !4478, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4495, file: !94, line: 93, baseType: !4501, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!490, !4481, !4504, !3887, !3888}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4495, file: !94, line: 95, baseType: !4506, size: 64, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4487}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4495, file: !94, line: 97, baseType: !4510, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4512)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4513)
!4513 = !{!4514, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4512, file: !101, line: 287, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!109, !4487}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4512, file: !101, line: 288, baseType: !4506, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4512, file: !101, line: 289, baseType: !4515, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4512, file: !101, line: 290, baseType: !4515, size: 64, offset: 192)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4512, file: !101, line: 291, baseType: !4515, size: 64, offset: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4512, file: !101, line: 292, baseType: !4515, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4512, file: !101, line: 293, baseType: !4515, size: 64, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4512, file: !101, line: 294, baseType: !4515, size: 64, offset: 448)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4512, file: !101, line: 295, baseType: !4515, size: 64, offset: 512)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4512, file: !101, line: 296, baseType: !4515, size: 64, offset: 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4512, file: !101, line: 297, baseType: !4515, size: 64, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4512, file: !101, line: 298, baseType: !4515, size: 64, offset: 704)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4512, file: !101, line: 299, baseType: !4515, size: 64, offset: 768)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4512, file: !101, line: 300, baseType: !4515, size: 64, offset: 832)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4512, file: !101, line: 301, baseType: !4515, size: 64, offset: 896)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4512, file: !101, line: 302, baseType: !4515, size: 64, offset: 960)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4512, file: !101, line: 303, baseType: !4515, size: 64, offset: 1024)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4512, file: !101, line: 304, baseType: !4515, size: 64, offset: 1088)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4512, file: !101, line: 305, baseType: !4515, size: 64, offset: 1152)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4512, file: !101, line: 306, baseType: !4515, size: 64, offset: 1216)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4512, file: !101, line: 307, baseType: !4515, size: 64, offset: 1280)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4512, file: !101, line: 308, baseType: !4515, size: 64, offset: 1344)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4512, file: !101, line: 309, baseType: !4515, size: 64, offset: 1408)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4483, file: !94, line: 714, baseType: !4541, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4544, line: 80, size: 1344, elements: !4545)
!4544 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4545 = !{!4546, !4547, !4548, !4549, !4550, !4551, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4609}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4543, file: !4544, line: 81, baseType: !409, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4543, file: !4544, line: 82, baseType: !409, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4543, file: !4544, line: 83, baseType: !542, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4543, file: !4544, line: 84, baseType: !542, size: 64, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4543, file: !4544, line: 85, baseType: !542, size: 64, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4543, file: !4544, line: 87, baseType: !4552, size: 64, offset: 320)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!109, !4487, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4563, !4564, !4568, !4572, !4573, !4574, !4575, !4576, !4584, !4585, !4586, !4587, !4588, !4589}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4556, file: !88, line: 97, baseType: !409, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4556, file: !88, line: 98, baseType: !4541, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4556, file: !88, line: 100, baseType: !385, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4556, file: !88, line: 101, baseType: !409, size: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4556, file: !88, line: 103, baseType: !1690, size: 8, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4556, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4556, file: !88, line: 106, baseType: !4565, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4567)
!4567 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4556, file: !88, line: 107, baseType: !4569, size: 64, offset: 384)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4571 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4556, file: !88, line: 109, baseType: !4515, size: 64, offset: 448)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4556, file: !88, line: 110, baseType: !4506, size: 64, offset: 512)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4556, file: !88, line: 111, baseType: !4515, size: 64, offset: 576)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4556, file: !88, line: 112, baseType: !4506, size: 64, offset: 640)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4556, file: !88, line: 113, baseType: !4577, size: 64, offset: 704)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!109, !4487, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4581)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4582)
!4582 = !{!4583}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4581, file: !101, line: 59, baseType: !109, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4556, file: !88, line: 114, baseType: !4515, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4556, file: !88, line: 115, baseType: !542, size: 64, offset: 832)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4556, file: !88, line: 116, baseType: !542, size: 64, offset: 896)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4556, file: !88, line: 118, baseType: !4510, size: 64, offset: 960)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4556, file: !88, line: 119, baseType: !4506, size: 64, offset: 1024)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4556, file: !88, line: 121, baseType: !4590, size: 64, offset: 1088)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4543, file: !4544, line: 88, baseType: !4478, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4543, file: !4544, line: 89, baseType: !4515, size: 64, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4543, file: !4544, line: 90, baseType: !4506, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4543, file: !4544, line: 91, baseType: !4506, size: 64, offset: 576)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4543, file: !4544, line: 92, baseType: !4506, size: 64, offset: 640)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4543, file: !4544, line: 94, baseType: !4515, size: 64, offset: 704)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4543, file: !4544, line: 95, baseType: !4515, size: 64, offset: 768)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4543, file: !4544, line: 97, baseType: !4577, size: 64, offset: 832)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4543, file: !4544, line: 98, baseType: !4515, size: 64, offset: 896)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4543, file: !4544, line: 100, baseType: !4515, size: 64, offset: 960)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4543, file: !4544, line: 102, baseType: !4515, size: 64, offset: 1024)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4543, file: !4544, line: 103, baseType: !4506, size: 64, offset: 1088)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4543, file: !4544, line: 105, baseType: !4510, size: 64, offset: 1152)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4543, file: !4544, line: 107, baseType: !4606, size: 64, offset: 1216)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4608)
!4608 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4544, line: 107, flags: DIFlagFwdDecl)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4543, file: !4544, line: 109, baseType: !1690, size: 8, offset: 1280)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4483, file: !94, line: 715, baseType: !4555, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4483, file: !94, line: 717, baseType: !384, size: 64, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4483, file: !94, line: 719, baseType: !384, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4483, file: !94, line: 721, baseType: !870, size: 256, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4483, file: !94, line: 725, baseType: !4615, size: 448, offset: 1280)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4615, file: !94, line: 518, baseType: !390, size: 128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4615, file: !94, line: 519, baseType: !390, size: 128, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4615, file: !94, line: 520, baseType: !390, size: 128, offset: 256)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4615, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4483, file: !94, line: 726, baseType: !4622, size: 2496, offset: 1728)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4623)
!4623 = !{!4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4706, !4710}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4622, file: !101, line: 664, baseType: !4580, size: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4622, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4622, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4622, file: !101, line: 667, baseType: !1690, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4622, file: !101, line: 668, baseType: !1690, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4622, file: !101, line: 669, baseType: !1690, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4622, file: !101, line: 670, baseType: !1690, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4622, file: !101, line: 671, baseType: !1690, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4622, file: !101, line: 672, baseType: !1690, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4622, file: !101, line: 673, baseType: !1690, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4622, file: !101, line: 674, baseType: !1690, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4622, file: !101, line: 675, baseType: !639, size: 32, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4622, file: !101, line: 676, baseType: !420, size: 32, offset: 96)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4622, file: !101, line: 678, baseType: !390, size: 128, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4622, file: !101, line: 679, baseType: !2090, size: 256, offset: 256)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4622, file: !101, line: 680, baseType: !4640, size: 64, offset: 512)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4642, line: 43, size: 1536, elements: !4643)
!4642 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4643 = !{!4644, !4645, !4646, !4647, !4648, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4641, file: !4642, line: 44, baseType: !409, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4641, file: !4642, line: 45, baseType: !109, size: 32, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4641, file: !4642, line: 46, baseType: !390, size: 128, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4641, file: !4642, line: 47, baseType: !420, size: 32, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4641, file: !4642, line: 48, baseType: !4649, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4641, file: !4642, line: 49, baseType: !3082, size: 320, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4641, file: !4642, line: 50, baseType: !540, size: 64, offset: 704)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4641, file: !4642, line: 51, baseType: !1334, size: 64, offset: 768)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4641, file: !4642, line: 52, baseType: !1334, size: 64, offset: 832)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4641, file: !4642, line: 53, baseType: !1334, size: 64, offset: 896)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4641, file: !4642, line: 54, baseType: !1334, size: 64, offset: 960)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4641, file: !4642, line: 55, baseType: !1334, size: 64, offset: 1024)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4641, file: !4642, line: 56, baseType: !540, size: 64, offset: 1088)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4641, file: !4642, line: 57, baseType: !540, size: 64, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4641, file: !4642, line: 58, baseType: !540, size: 64, offset: 1216)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4641, file: !4642, line: 59, baseType: !540, size: 64, offset: 1280)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4641, file: !4642, line: 60, baseType: !540, size: 64, offset: 1344)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4641, file: !4642, line: 61, baseType: !4487, size: 64, offset: 1408)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4641, file: !4642, line: 62, baseType: !1690, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4641, file: !4642, line: 63, baseType: !1690, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4622, file: !101, line: 681, baseType: !1690, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4622, file: !101, line: 682, baseType: !1690, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4622, file: !101, line: 683, baseType: !1690, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4622, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4622, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4622, file: !101, line: 690, baseType: !1326, size: 512, offset: 640)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4622, file: !101, line: 691, baseType: !643, size: 64, offset: 1152)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4622, file: !101, line: 692, baseType: !2406, size: 256, offset: 1216)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4622, file: !101, line: 693, baseType: !1176, size: 192, offset: 1472)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4622, file: !101, line: 694, baseType: !4649, size: 64, offset: 1664)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4622, file: !101, line: 695, baseType: !440, size: 32, offset: 1728)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4622, file: !101, line: 696, baseType: !440, size: 32, offset: 1760)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4622, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4622, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4622, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4622, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4622, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4622, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4622, file: !101, line: 703, baseType: !1690, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4622, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4622, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4622, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4622, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4622, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4622, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4622, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4622, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4622, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4622, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4622, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4622, file: !101, line: 715, baseType: !643, size: 64, offset: 2048)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4622, file: !101, line: 716, baseType: !643, size: 64, offset: 2112)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4622, file: !101, line: 717, baseType: !643, size: 64, offset: 2176)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4622, file: !101, line: 718, baseType: !643, size: 64, offset: 2240)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4622, file: !101, line: 720, baseType: !4701, size: 64, offset: 2304)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4703)
!4703 = !{!4704, !4705}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4702, file: !101, line: 633, baseType: !420, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4702, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4622, file: !101, line: 721, baseType: !4707, size: 64, offset: 2368)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{null, !4487, !1633}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4622, file: !101, line: 722, baseType: !4711, size: 64, offset: 2432)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4483, file: !94, line: 727, baseType: !4714, size: 64, offset: 4224)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4716)
!4716 = !{!4717, !4718, !4719, !4723, !4724, !4725}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4715, file: !101, line: 743, baseType: !4512, size: 1472)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4715, file: !101, line: 744, baseType: !4515, size: 64, offset: 1472)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4715, file: !101, line: 745, baseType: !4720, size: 64, offset: 1536)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !4487, !1690}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4715, file: !101, line: 746, baseType: !4515, size: 64, offset: 1600)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4715, file: !101, line: 747, baseType: !4506, size: 64, offset: 1664)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4715, file: !101, line: 748, baseType: !4506, size: 64, offset: 1728)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4483, file: !94, line: 736, baseType: !4727, size: 128, offset: 4288)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4728)
!4728 = !{!4729, !4733}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4727, file: !94, line: 531, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4732, line: 13, flags: DIFlagFwdDecl)
!4732 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4727, file: !94, line: 532, baseType: !4734, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4483, file: !94, line: 738, baseType: !4737, size: 64, offset: 4416)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4739)
!4739 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4483, file: !94, line: 740, baseType: !4741, size: 64, offset: 4480)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4483, file: !94, line: 741, baseType: !643, size: 64, offset: 4544)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4483, file: !94, line: 746, baseType: !643, size: 64, offset: 4608)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4483, file: !94, line: 747, baseType: !4745, size: 64, offset: 4672)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4747)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4483, file: !94, line: 749, baseType: !4749, size: 64, offset: 4736)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4751)
!4751 = !{!4752, !4753, !4754}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4750, file: !94, line: 433, baseType: !7, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4750, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4750, file: !94, line: 435, baseType: !540, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4483, file: !94, line: 751, baseType: !390, size: 128, offset: 4800)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4483, file: !94, line: 762, baseType: !4757, size: 64, offset: 4928)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4483, file: !94, line: 770, baseType: !4760, offset: 4992)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4761, line: 5, elements: !774)
!4761 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4483, file: !94, line: 772, baseType: !4763, size: 64, offset: 4992)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4765, line: 18, flags: DIFlagFwdDecl)
!4765 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4483, file: !94, line: 773, baseType: !4767, size: 64, offset: 5056)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4544, line: 22, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4483, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4483, file: !94, line: 778, baseType: !726, size: 32, offset: 5152)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4483, file: !94, line: 779, baseType: !639, size: 32, offset: 5184)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4483, file: !94, line: 781, baseType: !420, size: 32, offset: 5216)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4483, file: !94, line: 782, baseType: !390, size: 128, offset: 5248)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4483, file: !94, line: 784, baseType: !4775, size: 64, offset: 5376)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4483, file: !94, line: 785, baseType: !542, size: 64, offset: 5440)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4483, file: !94, line: 787, baseType: !4506, size: 64, offset: 5504)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4483, file: !94, line: 788, baseType: !4779, size: 64, offset: 5568)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4483, file: !94, line: 789, baseType: !4782, size: 64, offset: 5632)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4483, file: !94, line: 791, baseType: !4785, size: 64, offset: 5696)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4786, file: !94, line: 598, baseType: !116, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4786, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4786, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4786, file: !94, line: 601, baseType: !1690, size: 8, offset: 96)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4786, file: !94, line: 602, baseType: !1690, size: 8, offset: 104)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4483, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4483, file: !94, line: 795, baseType: !1690, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4483, file: !94, line: 796, baseType: !1690, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4483, file: !94, line: 797, baseType: !1690, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4483, file: !94, line: 798, baseType: !1690, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4483, file: !94, line: 799, baseType: !1690, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4471, file: !4472, line: 59, baseType: !4800, size: 64, offset: 256)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!490, !4481, !4504}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4471, file: !4472, line: 61, baseType: !4804, size: 64, offset: 320)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4775}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4471, file: !4472, line: 62, baseType: !4506, size: 64, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4471, file: !4472, line: 64, baseType: !4515, size: 64, offset: 448)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4471, file: !4472, line: 66, baseType: !3855, size: 64, offset: 512)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4471, file: !4472, line: 67, baseType: !4811, size: 64, offset: 576)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!2367, !4481}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4471, file: !4472, line: 69, baseType: !4815, size: 64, offset: 640)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !4481, !3887, !3888}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4471, file: !4472, line: 71, baseType: !4510, size: 64, offset: 704)
!4819 = !DIGlobalVariableExpression(var: !4820, expr: !DIExpression())
!4820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !4821, isLocal: true, isDefinition: true)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 88, elements: !4822)
!4822 = !{!4823}
!4823 = !DISubrange(count: 11)
!4824 = !DIGlobalVariableExpression(var: !4825, expr: !DIExpression())
!4825 = distinct !DIGlobalVariable(name: "__param_str_allow_writes", scope: !2, file: !3, line: 330, type: !4826, isLocal: true, isDefinition: true)
!4826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 136, elements: !4827)
!4827 = !{!4828}
!4828 = !DISubrange(count: 17)
!4829 = !DIGlobalVariableExpression(var: !4830, expr: !DIExpression())
!4830 = distinct !DIGlobalVariable(name: "allow_writes_ops", scope: !2, file: !3, line: 325, type: !4055, isLocal: true, isDefinition: true)
!4831 = !DIGlobalVariableExpression(var: !4832, expr: !DIExpression())
!4832 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !4833, isLocal: true, isDefinition: true)
!4833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 24, elements: !491)
!4834 = !DIGlobalVariableExpression(var: !4835, expr: !DIExpression())
!4835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !4467, isLocal: true, isDefinition: true)
!4836 = !DIGlobalVariableExpression(var: !4837, expr: !DIExpression())
!4837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !2890, isLocal: true, isDefinition: true)
!4838 = !DIGlobalVariableExpression(var: !4839, expr: !DIExpression())
!4839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !4467, isLocal: true, isDefinition: true)
!4840 = !{i32 7, !"Dwarf Version", i32 5}
!4841 = !{i32 2, !"Debug Info Version", i32 3}
!4842 = !{i32 1, !"wchar_size", i32 2}
!4843 = !{i32 8, !"cf-protection-branch", i32 1}
!4844 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4845 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4846 = !{i32 1, !"Code Model", i32 2}
!4847 = !{i32 1, !"override-stack-alignment", i32 8}
!4848 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4849 = distinct !DISubprogram(name: "__initstub__kmod_msr__289_287_msr_init6", scope: !3, file: !3, line: 287, type: !4115, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4850 = !DILocation(line: 287, column: 1, scope: !4849)
!4851 = distinct !DISubprogram(name: "msr_init", scope: !3, file: !3, line: 262, type: !4115, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4852)
!4852 = !{!4853, !4854, !4855}
!4853 = !DILocalVariable(name: "err", scope: !4851, file: !3, line: 264, type: !109)
!4854 = !DILabel(scope: !4851, name: "out_class", file: !3, line: 281)
!4855 = !DILabel(scope: !4851, name: "out_chrdev", file: !3, line: 283)
!4856 = !DILocation(line: 264, column: 2, scope: !4851)
!4857 = !DILocation(line: 264, column: 6, scope: !4851)
!4858 = !DILocation(line: 266, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 266, column: 6)
!4860 = !DILocation(line: 266, column: 6, scope: !4851)
!4861 = !DILocation(line: 267, column: 3, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 267, column: 3)
!4863 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 266, column: 70)
!4864 = !DILocation(line: 267, column: 3, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 267, column: 3)
!4866 = !DILocation(line: 268, column: 3, scope: !4863)
!4867 = !DILocation(line: 270, column: 8, scope: !4851)
!4868 = !DILocation(line: 270, column: 6, scope: !4851)
!4869 = !DILocation(line: 271, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 271, column: 6)
!4871 = !DILocation(line: 271, column: 6, scope: !4851)
!4872 = !DILocation(line: 272, column: 3, scope: !4870)
!4873 = !DILocation(line: 274, column: 9, scope: !4851)
!4874 = !DILocation(line: 274, column: 7, scope: !4851)
!4875 = !DILocation(line: 276, column: 6, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 276, column: 6)
!4877 = !DILocation(line: 276, column: 10, scope: !4876)
!4878 = !DILocation(line: 276, column: 6, scope: !4851)
!4879 = !DILocation(line: 277, column: 3, scope: !4876)
!4880 = !DILocation(line: 278, column: 20, scope: !4851)
!4881 = !DILocation(line: 278, column: 18, scope: !4851)
!4882 = !DILocation(line: 279, column: 2, scope: !4851)
!4883 = !DILocation(line: 281, column: 1, scope: !4851)
!4884 = !DILocation(line: 282, column: 2, scope: !4851)
!4885 = !DILocation(line: 283, column: 1, scope: !4851)
!4886 = !DILocation(line: 284, column: 2, scope: !4851)
!4887 = !DILocation(line: 285, column: 9, scope: !4851)
!4888 = !DILocation(line: 285, column: 2, scope: !4851)
!4889 = !DILocation(line: 286, column: 1, scope: !4851)
!4890 = distinct !DISubprogram(name: "msr_exit", scope: !3, file: !3, line: 289, type: !2760, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4891 = !DILocation(line: 291, column: 21, scope: !4890)
!4892 = !DILocation(line: 291, column: 2, scope: !4890)
!4893 = !DILocation(line: 292, column: 2, scope: !4890)
!4894 = !DILocation(line: 293, column: 2, scope: !4890)
!4895 = !DILocation(line: 294, column: 1, scope: !4890)
!4896 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !142, file: !142, line: 444, type: !4897, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{null, !141}
!4899 = !{!4900}
!4900 = !DILocalVariable(name: "state", arg: 1, scope: !4896, file: !142, line: 444, type: !141)
!4901 = !DILocation(line: 444, column: 56, scope: !4896)
!4902 = !DILocation(line: 446, column: 23, scope: !4896)
!4903 = !DILocation(line: 446, column: 2, scope: !4896)
!4904 = !DILocation(line: 447, column: 1, scope: !4896)
!4905 = !DISubprogram(name: "class_unregister", scope: !4472, file: !4472, line: 81, type: !4805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4906 = !DISubprogram(name: "__unregister_chrdev", scope: !28, file: !28, line: 2597, type: !4907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !7, !7, !7, !409}
!4909 = !DISubprogram(name: "__register_chrdev", scope: !28, file: !28, line: 2594, type: !4910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!109, !7, !7, !7, !409, !1804}
!4912 = !DISubprogram(name: "_printk", scope: !4913, file: !4913, line: 153, type: !4914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4913 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!109, !409, null}
!4916 = !DISubprogram(name: "class_register", scope: !4472, file: !4472, line: 80, type: !4917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!109, !4775}
!4919 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !142, file: !142, line: 283, type: !4920, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4925)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!109, !141, !409, !4922, !4922}
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!109, !7}
!4925 = !{!4926, !4927, !4928, !4929}
!4926 = !DILocalVariable(name: "state", arg: 1, scope: !4919, file: !142, line: 283, type: !141)
!4927 = !DILocalVariable(name: "name", arg: 2, scope: !4919, file: !142, line: 284, type: !409)
!4928 = !DILocalVariable(name: "startup", arg: 3, scope: !4919, file: !142, line: 285, type: !4922)
!4929 = !DILocalVariable(name: "teardown", arg: 4, scope: !4919, file: !142, line: 286, type: !4922)
!4930 = !DILocation(line: 283, column: 54, scope: !4919)
!4931 = !DILocation(line: 284, column: 21, scope: !4919)
!4932 = !DILocation(line: 285, column: 15, scope: !4919)
!4933 = !DILocation(line: 286, column: 15, scope: !4919)
!4934 = !DILocation(line: 288, column: 29, scope: !4919)
!4935 = !DILocation(line: 288, column: 36, scope: !4919)
!4936 = !DILocation(line: 288, column: 48, scope: !4919)
!4937 = !DILocation(line: 288, column: 57, scope: !4919)
!4938 = !DILocation(line: 288, column: 9, scope: !4919)
!4939 = !DILocation(line: 288, column: 2, scope: !4919)
!4940 = distinct !DISubprogram(name: "msr_device_create", scope: !3, file: !3, line: 247, type: !4923, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4941)
!4941 = !{!4942, !4943}
!4942 = !DILocalVariable(name: "cpu", arg: 1, scope: !4940, file: !3, line: 247, type: !7)
!4943 = !DILocalVariable(name: "dev", scope: !4940, file: !3, line: 249, type: !4487)
!4944 = !DILocation(line: 247, column: 43, scope: !4940)
!4945 = !DILocation(line: 249, column: 2, scope: !4940)
!4946 = !DILocation(line: 249, column: 17, scope: !4940)
!4947 = !DILocation(line: 251, column: 40, scope: !4940)
!4948 = !DILocation(line: 252, column: 17, scope: !4940)
!4949 = !DILocation(line: 251, column: 8, scope: !4940)
!4950 = !DILocation(line: 251, column: 6, scope: !4940)
!4951 = !DILocation(line: 253, column: 25, scope: !4940)
!4952 = !DILocation(line: 253, column: 9, scope: !4940)
!4953 = !DILocation(line: 254, column: 1, scope: !4940)
!4954 = !DILocation(line: 253, column: 2, scope: !4940)
!4955 = distinct !DISubprogram(name: "msr_device_destroy", scope: !3, file: !3, line: 256, type: !4923, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4956)
!4956 = !{!4957}
!4957 = !DILocalVariable(name: "cpu", arg: 1, scope: !4955, file: !3, line: 256, type: !7)
!4958 = !DILocation(line: 256, column: 44, scope: !4955)
!4959 = !DILocation(line: 258, column: 29, scope: !4955)
!4960 = !DILocation(line: 258, column: 2, scope: !4955)
!4961 = !DILocation(line: 259, column: 2, scope: !4955)
!4962 = distinct !DISubprogram(name: "msr_read", scope: !3, file: !3, line: 52, type: !1815, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4963)
!4963 = !{!4964, !4965, !4966, !4967, !4968, !4969, !4971, !4972, !4973, !4974}
!4964 = !DILocalVariable(name: "file", arg: 1, scope: !4962, file: !3, line: 52, type: !1529)
!4965 = !DILocalVariable(name: "buf", arg: 2, scope: !4962, file: !3, line: 52, type: !490)
!4966 = !DILocalVariable(name: "count", arg: 3, scope: !4962, file: !3, line: 53, type: !537)
!4967 = !DILocalVariable(name: "ppos", arg: 4, scope: !4962, file: !3, line: 53, type: !1817)
!4968 = !DILocalVariable(name: "tmp", scope: !4962, file: !3, line: 55, type: !2457)
!4969 = !DILocalVariable(name: "data", scope: !4962, file: !3, line: 56, type: !4970)
!4970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 64, elements: !2646)
!4971 = !DILocalVariable(name: "reg", scope: !4962, file: !3, line: 57, type: !639)
!4972 = !DILocalVariable(name: "cpu", scope: !4962, file: !3, line: 58, type: !109)
!4973 = !DILocalVariable(name: "err", scope: !4962, file: !3, line: 59, type: !109)
!4974 = !DILocalVariable(name: "bytes", scope: !4962, file: !3, line: 60, type: !522)
!4975 = !DILocation(line: 52, column: 38, scope: !4962)
!4976 = !DILocation(line: 52, column: 57, scope: !4962)
!4977 = !DILocation(line: 53, column: 11, scope: !4962)
!4978 = !DILocation(line: 53, column: 26, scope: !4962)
!4979 = !DILocation(line: 55, column: 2, scope: !4962)
!4980 = !DILocation(line: 55, column: 14, scope: !4962)
!4981 = !DILocation(line: 55, column: 35, scope: !4962)
!4982 = !DILocation(line: 56, column: 2, scope: !4962)
!4983 = !DILocation(line: 56, column: 6, scope: !4962)
!4984 = !DILocation(line: 57, column: 2, scope: !4962)
!4985 = !DILocation(line: 57, column: 6, scope: !4962)
!4986 = !DILocation(line: 57, column: 13, scope: !4962)
!4987 = !DILocation(line: 57, column: 12, scope: !4962)
!4988 = !DILocation(line: 58, column: 2, scope: !4962)
!4989 = !DILocation(line: 58, column: 6, scope: !4962)
!4990 = !DILocation(line: 58, column: 30, scope: !4962)
!4991 = !DILocation(line: 58, column: 19, scope: !4962)
!4992 = !DILocation(line: 58, column: 12, scope: !4962)
!4993 = !DILocation(line: 59, column: 2, scope: !4962)
!4994 = !DILocation(line: 59, column: 6, scope: !4962)
!4995 = !DILocation(line: 60, column: 2, scope: !4962)
!4996 = !DILocation(line: 60, column: 10, scope: !4962)
!4997 = !DILocation(line: 62, column: 6, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 62, column: 6)
!4999 = !DILocation(line: 62, column: 12, scope: !4998)
!5000 = !DILocation(line: 62, column: 6, scope: !4962)
!5001 = !DILocation(line: 63, column: 3, scope: !4998)
!5002 = !DILocation(line: 65, column: 2, scope: !4962)
!5003 = !DILocation(line: 65, column: 9, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 65, column: 2)
!5005 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 65, column: 2)
!5006 = !DILocation(line: 65, column: 2, scope: !5005)
!5007 = !DILocation(line: 66, column: 27, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 65, column: 28)
!5009 = !DILocation(line: 66, column: 32, scope: !5008)
!5010 = !DILocation(line: 66, column: 38, scope: !5008)
!5011 = !DILocation(line: 66, column: 48, scope: !5008)
!5012 = !DILocation(line: 66, column: 9, scope: !5008)
!5013 = !DILocation(line: 66, column: 7, scope: !5008)
!5014 = !DILocation(line: 67, column: 7, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 67, column: 7)
!5016 = !DILocation(line: 67, column: 7, scope: !5008)
!5017 = !DILocation(line: 68, column: 4, scope: !5015)
!5018 = !DILocation(line: 69, column: 20, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 69, column: 7)
!5020 = !DILocation(line: 69, column: 7, scope: !5019)
!5021 = !DILocation(line: 69, column: 7, scope: !5008)
!5022 = !DILocation(line: 70, column: 8, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 69, column: 36)
!5024 = !DILocation(line: 71, column: 4, scope: !5023)
!5025 = !DILocation(line: 73, column: 7, scope: !5008)
!5026 = !DILocation(line: 74, column: 9, scope: !5008)
!5027 = !DILocation(line: 75, column: 2, scope: !5008)
!5028 = !DILocation(line: 65, column: 22, scope: !5004)
!5029 = !DILocation(line: 65, column: 2, scope: !5004)
!5030 = distinct !{!5030, !5006, !5031, !5032, !5033}
!5031 = !DILocation(line: 75, column: 2, scope: !5005)
!5032 = !{!"llvm.loop.mustprogress"}
!5033 = !{!"llvm.loop.unroll.disable"}
!5034 = !DILocation(line: 77, column: 9, scope: !4962)
!5035 = !DILocation(line: 77, column: 17, scope: !4962)
!5036 = !DILocation(line: 77, column: 25, scope: !4962)
!5037 = !DILocation(line: 77, column: 2, scope: !4962)
!5038 = !DILocation(line: 78, column: 1, scope: !4962)
!5039 = distinct !DISubprogram(name: "msr_write", scope: !3, file: !3, line: 108, type: !1820, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5040 = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050}
!5041 = !DILocalVariable(name: "file", arg: 1, scope: !5039, file: !3, line: 108, type: !1529)
!5042 = !DILocalVariable(name: "buf", arg: 2, scope: !5039, file: !3, line: 108, type: !409)
!5043 = !DILocalVariable(name: "count", arg: 3, scope: !5039, file: !3, line: 109, type: !537)
!5044 = !DILocalVariable(name: "ppos", arg: 4, scope: !5039, file: !3, line: 109, type: !1817)
!5045 = !DILocalVariable(name: "tmp", scope: !5039, file: !3, line: 111, type: !4332)
!5046 = !DILocalVariable(name: "data", scope: !5039, file: !3, line: 112, type: !4970)
!5047 = !DILocalVariable(name: "reg", scope: !5039, file: !3, line: 113, type: !639)
!5048 = !DILocalVariable(name: "cpu", scope: !5039, file: !3, line: 114, type: !109)
!5049 = !DILocalVariable(name: "err", scope: !5039, file: !3, line: 115, type: !109)
!5050 = !DILocalVariable(name: "bytes", scope: !5039, file: !3, line: 116, type: !522)
!5051 = !DILocation(line: 108, column: 39, scope: !5039)
!5052 = !DILocation(line: 108, column: 64, scope: !5039)
!5053 = !DILocation(line: 109, column: 12, scope: !5039)
!5054 = !DILocation(line: 109, column: 27, scope: !5039)
!5055 = !DILocation(line: 111, column: 2, scope: !5039)
!5056 = !DILocation(line: 111, column: 20, scope: !5039)
!5057 = !DILocation(line: 111, column: 46, scope: !5039)
!5058 = !DILocation(line: 112, column: 2, scope: !5039)
!5059 = !DILocation(line: 112, column: 6, scope: !5039)
!5060 = !DILocation(line: 113, column: 2, scope: !5039)
!5061 = !DILocation(line: 113, column: 6, scope: !5039)
!5062 = !DILocation(line: 113, column: 13, scope: !5039)
!5063 = !DILocation(line: 113, column: 12, scope: !5039)
!5064 = !DILocation(line: 114, column: 2, scope: !5039)
!5065 = !DILocation(line: 114, column: 6, scope: !5039)
!5066 = !DILocation(line: 114, column: 30, scope: !5039)
!5067 = !DILocation(line: 114, column: 19, scope: !5039)
!5068 = !DILocation(line: 114, column: 12, scope: !5039)
!5069 = !DILocation(line: 115, column: 2, scope: !5039)
!5070 = !DILocation(line: 115, column: 6, scope: !5039)
!5071 = !DILocation(line: 116, column: 2, scope: !5039)
!5072 = !DILocation(line: 116, column: 10, scope: !5039)
!5073 = !DILocation(line: 118, column: 8, scope: !5039)
!5074 = !DILocation(line: 118, column: 6, scope: !5039)
!5075 = !DILocation(line: 119, column: 6, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 119, column: 6)
!5077 = !DILocation(line: 119, column: 6, scope: !5039)
!5078 = !DILocation(line: 120, column: 10, scope: !5076)
!5079 = !DILocation(line: 120, column: 3, scope: !5076)
!5080 = !DILocation(line: 122, column: 21, scope: !5039)
!5081 = !DILocation(line: 122, column: 8, scope: !5039)
!5082 = !DILocation(line: 122, column: 6, scope: !5039)
!5083 = !DILocation(line: 123, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 123, column: 6)
!5085 = !DILocation(line: 123, column: 6, scope: !5039)
!5086 = !DILocation(line: 124, column: 10, scope: !5084)
!5087 = !DILocation(line: 124, column: 3, scope: !5084)
!5088 = !DILocation(line: 126, column: 6, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 126, column: 6)
!5090 = !DILocation(line: 126, column: 12, scope: !5089)
!5091 = !DILocation(line: 126, column: 6, scope: !5039)
!5092 = !DILocation(line: 127, column: 3, scope: !5089)
!5093 = !DILocation(line: 129, column: 2, scope: !5039)
!5094 = !DILocation(line: 129, column: 9, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 129, column: 2)
!5096 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 129, column: 2)
!5097 = !DILocation(line: 129, column: 2, scope: !5096)
!5098 = !DILocation(line: 130, column: 29, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 130, column: 7)
!5100 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 129, column: 28)
!5101 = !DILocation(line: 130, column: 7, scope: !5099)
!5102 = !DILocation(line: 130, column: 7, scope: !5100)
!5103 = !DILocation(line: 131, column: 8, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 130, column: 38)
!5105 = !DILocation(line: 132, column: 4, scope: !5104)
!5106 = !DILocation(line: 135, column: 3, scope: !5100)
!5107 = !DILocation(line: 137, column: 27, scope: !5100)
!5108 = !DILocation(line: 137, column: 32, scope: !5100)
!5109 = !DILocation(line: 137, column: 37, scope: !5100)
!5110 = !DILocation(line: 137, column: 46, scope: !5100)
!5111 = !DILocation(line: 137, column: 9, scope: !5100)
!5112 = !DILocation(line: 137, column: 7, scope: !5100)
!5113 = !DILocation(line: 138, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 138, column: 7)
!5115 = !DILocation(line: 138, column: 7, scope: !5100)
!5116 = !DILocation(line: 139, column: 4, scope: !5114)
!5117 = !DILocation(line: 141, column: 7, scope: !5100)
!5118 = !DILocation(line: 142, column: 9, scope: !5100)
!5119 = !DILocation(line: 143, column: 2, scope: !5100)
!5120 = !DILocation(line: 129, column: 22, scope: !5095)
!5121 = !DILocation(line: 129, column: 2, scope: !5095)
!5122 = distinct !{!5122, !5097, !5123, !5032, !5033}
!5123 = !DILocation(line: 143, column: 2, scope: !5096)
!5124 = !DILocation(line: 145, column: 9, scope: !5039)
!5125 = !DILocation(line: 145, column: 17, scope: !5039)
!5126 = !DILocation(line: 145, column: 25, scope: !5039)
!5127 = !DILocation(line: 145, column: 2, scope: !5039)
!5128 = !DILocation(line: 146, column: 1, scope: !5039)
!5129 = distinct !DISubprogram(name: "msr_ioctl", scope: !3, file: !3, line: 148, type: !1889, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5130)
!5130 = !{!5131, !5132, !5133, !5134, !5135, !5137, !5138}
!5131 = !DILocalVariable(name: "file", arg: 1, scope: !5129, file: !3, line: 148, type: !1529)
!5132 = !DILocalVariable(name: "ioc", arg: 2, scope: !5129, file: !3, line: 148, type: !7)
!5133 = !DILocalVariable(name: "arg", arg: 3, scope: !5129, file: !3, line: 148, type: !540)
!5134 = !DILocalVariable(name: "uregs", scope: !5129, file: !3, line: 150, type: !2457)
!5135 = !DILocalVariable(name: "regs", scope: !5129, file: !3, line: 151, type: !5136)
!5136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !1369)
!5137 = !DILocalVariable(name: "cpu", scope: !5129, file: !3, line: 152, type: !109)
!5138 = !DILocalVariable(name: "err", scope: !5129, file: !3, line: 153, type: !109)
!5139 = !DILocation(line: 148, column: 36, scope: !5129)
!5140 = !DILocation(line: 148, column: 55, scope: !5129)
!5141 = !DILocation(line: 148, column: 74, scope: !5129)
!5142 = !DILocation(line: 150, column: 2, scope: !5129)
!5143 = !DILocation(line: 150, column: 14, scope: !5129)
!5144 = !DILocation(line: 150, column: 36, scope: !5129)
!5145 = !DILocation(line: 150, column: 22, scope: !5129)
!5146 = !DILocation(line: 151, column: 2, scope: !5129)
!5147 = !DILocation(line: 151, column: 6, scope: !5129)
!5148 = !DILocation(line: 152, column: 2, scope: !5129)
!5149 = !DILocation(line: 152, column: 6, scope: !5129)
!5150 = !DILocation(line: 152, column: 30, scope: !5129)
!5151 = !DILocation(line: 152, column: 19, scope: !5129)
!5152 = !DILocation(line: 152, column: 12, scope: !5129)
!5153 = !DILocation(line: 153, column: 2, scope: !5129)
!5154 = !DILocation(line: 153, column: 6, scope: !5129)
!5155 = !DILocation(line: 155, column: 10, scope: !5129)
!5156 = !DILocation(line: 155, column: 2, scope: !5129)
!5157 = !DILocation(line: 157, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 157, column: 7)
!5159 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 155, column: 15)
!5160 = !DILocation(line: 157, column: 15, scope: !5158)
!5161 = !DILocation(line: 157, column: 22, scope: !5158)
!5162 = !DILocation(line: 157, column: 7, scope: !5159)
!5163 = !DILocation(line: 158, column: 8, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 157, column: 37)
!5165 = !DILocation(line: 159, column: 4, scope: !5164)
!5166 = !DILocation(line: 161, column: 29, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 161, column: 7)
!5168 = !DILocation(line: 161, column: 7, scope: !5167)
!5169 = !DILocation(line: 161, column: 7, scope: !5159)
!5170 = !DILocation(line: 162, column: 8, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 161, column: 51)
!5172 = !DILocation(line: 163, column: 4, scope: !5171)
!5173 = !DILocation(line: 165, column: 32, scope: !5159)
!5174 = !DILocation(line: 165, column: 37, scope: !5159)
!5175 = !DILocation(line: 165, column: 9, scope: !5159)
!5176 = !DILocation(line: 165, column: 7, scope: !5159)
!5177 = !DILocation(line: 166, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 166, column: 7)
!5179 = !DILocation(line: 166, column: 7, scope: !5159)
!5180 = !DILocation(line: 167, column: 4, scope: !5178)
!5181 = !DILocation(line: 168, column: 20, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 168, column: 7)
!5183 = !DILocation(line: 168, column: 7, scope: !5182)
!5184 = !DILocation(line: 168, column: 7, scope: !5159)
!5185 = !DILocation(line: 169, column: 8, scope: !5182)
!5186 = !DILocation(line: 169, column: 4, scope: !5182)
!5187 = !DILocation(line: 170, column: 3, scope: !5159)
!5188 = !DILocation(line: 173, column: 9, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 173, column: 7)
!5190 = !DILocation(line: 173, column: 15, scope: !5189)
!5191 = !DILocation(line: 173, column: 22, scope: !5189)
!5192 = !DILocation(line: 173, column: 7, scope: !5159)
!5193 = !DILocation(line: 174, column: 8, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 173, column: 38)
!5195 = !DILocation(line: 175, column: 4, scope: !5194)
!5196 = !DILocation(line: 177, column: 29, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 177, column: 7)
!5198 = !DILocation(line: 177, column: 7, scope: !5197)
!5199 = !DILocation(line: 177, column: 7, scope: !5159)
!5200 = !DILocation(line: 178, column: 8, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 177, column: 51)
!5202 = !DILocation(line: 179, column: 4, scope: !5201)
!5203 = !DILocation(line: 181, column: 9, scope: !5159)
!5204 = !DILocation(line: 181, column: 7, scope: !5159)
!5205 = !DILocation(line: 182, column: 7, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 182, column: 7)
!5207 = !DILocation(line: 182, column: 7, scope: !5159)
!5208 = !DILocation(line: 183, column: 4, scope: !5206)
!5209 = !DILocation(line: 185, column: 22, scope: !5159)
!5210 = !DILocation(line: 185, column: 9, scope: !5159)
!5211 = !DILocation(line: 185, column: 7, scope: !5159)
!5212 = !DILocation(line: 186, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 186, column: 7)
!5214 = !DILocation(line: 186, column: 7, scope: !5159)
!5215 = !DILocation(line: 187, column: 11, scope: !5213)
!5216 = !DILocation(line: 187, column: 4, scope: !5213)
!5217 = !DILocation(line: 189, column: 3, scope: !5159)
!5218 = !DILocation(line: 191, column: 32, scope: !5159)
!5219 = !DILocation(line: 191, column: 37, scope: !5159)
!5220 = !DILocation(line: 191, column: 9, scope: !5159)
!5221 = !DILocation(line: 191, column: 7, scope: !5159)
!5222 = !DILocation(line: 192, column: 7, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 192, column: 7)
!5224 = !DILocation(line: 192, column: 7, scope: !5159)
!5225 = !DILocation(line: 193, column: 4, scope: !5223)
!5226 = !DILocation(line: 194, column: 20, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 194, column: 7)
!5228 = !DILocation(line: 194, column: 7, scope: !5227)
!5229 = !DILocation(line: 194, column: 7, scope: !5159)
!5230 = !DILocation(line: 195, column: 8, scope: !5227)
!5231 = !DILocation(line: 195, column: 4, scope: !5227)
!5232 = !DILocation(line: 196, column: 3, scope: !5159)
!5233 = !DILocation(line: 199, column: 7, scope: !5159)
!5234 = !DILocation(line: 200, column: 3, scope: !5159)
!5235 = !DILocation(line: 203, column: 9, scope: !5129)
!5236 = !DILocation(line: 203, column: 2, scope: !5129)
!5237 = !DILocation(line: 204, column: 1, scope: !5129)
!5238 = distinct !DISubprogram(name: "msr_open", scope: !3, file: !3, line: 206, type: !2196, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5239)
!5239 = !{!5240, !5241, !5242, !5243, !5244, !5247}
!5240 = !DILocalVariable(name: "inode", arg: 1, scope: !5238, file: !3, line: 206, type: !570)
!5241 = !DILocalVariable(name: "file", arg: 2, scope: !5238, file: !3, line: 206, type: !1529)
!5242 = !DILocalVariable(name: "cpu", scope: !5238, file: !3, line: 208, type: !7)
!5243 = !DILocalVariable(name: "c", scope: !5238, file: !3, line: 209, type: !4335)
!5244 = !DILocalVariable(name: "__vpp_verify", scope: !5245, file: !3, line: 217, type: !2367)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 217, column: 7)
!5246 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 217, column: 7)
!5247 = !DILocalVariable(name: "__ptr", scope: !5248, file: !3, line: 217, type: !540)
!5248 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 217, column: 7)
!5249 = !DILocation(line: 206, column: 35, scope: !5238)
!5250 = !DILocation(line: 206, column: 55, scope: !5238)
!5251 = !DILocation(line: 208, column: 2, scope: !5238)
!5252 = !DILocation(line: 208, column: 15, scope: !5238)
!5253 = !DILocation(line: 208, column: 39, scope: !5238)
!5254 = !DILocation(line: 208, column: 28, scope: !5238)
!5255 = !DILocation(line: 208, column: 21, scope: !5238)
!5256 = !DILocation(line: 209, column: 2, scope: !5238)
!5257 = !DILocation(line: 209, column: 22, scope: !5238)
!5258 = !DILocation(line: 211, column: 7, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 211, column: 6)
!5260 = !DILocation(line: 211, column: 6, scope: !5238)
!5261 = !DILocation(line: 212, column: 3, scope: !5259)
!5262 = !DILocation(line: 214, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 214, column: 6)
!5264 = !DILocation(line: 214, column: 13, scope: !5263)
!5265 = !DILocation(line: 214, column: 10, scope: !5263)
!5266 = !DILocation(line: 214, column: 24, scope: !5263)
!5267 = !DILocation(line: 214, column: 39, scope: !5263)
!5268 = !DILocation(line: 214, column: 28, scope: !5263)
!5269 = !DILocation(line: 214, column: 6, scope: !5238)
!5270 = !DILocation(line: 215, column: 3, scope: !5263)
!5271 = !DILocation(line: 217, column: 7, scope: !5246)
!5272 = !DILocation(line: 217, column: 7, scope: !5245)
!5273 = !DILocation(line: 217, column: 7, scope: !5248)
!5274 = !DILocation(line: 217, column: 4, scope: !5238)
!5275 = !DILocation(line: 221, column: 2, scope: !5238)
!5276 = !DILocation(line: 222, column: 1, scope: !5238)
!5277 = distinct !DISubprogram(name: "iminor", scope: !28, file: !28, line: 938, type: !5278, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!7, !3417}
!5280 = !{!5281}
!5281 = !DILocalVariable(name: "inode", arg: 1, scope: !5277, file: !28, line: 938, type: !3417)
!5282 = !DILocation(line: 938, column: 51, scope: !5277)
!5283 = !DILocation(line: 940, column: 9, scope: !5277)
!5284 = !DILocation(line: 940, column: 2, scope: !5277)
!5285 = distinct !DISubprogram(name: "file_inode", scope: !28, file: !28, line: 1073, type: !5286, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!570, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!5290 = !{!5291}
!5291 = !DILocalVariable(name: "f", arg: 1, scope: !5285, file: !28, line: 1073, type: !5288)
!5292 = !DILocation(line: 1073, column: 59, scope: !5285)
!5293 = !DILocation(line: 1075, column: 9, scope: !5285)
!5294 = !DILocation(line: 1075, column: 12, scope: !5285)
!5295 = !DILocation(line: 1075, column: 2, scope: !5285)
!5296 = !DISubprogram(name: "rdmsr_safe_on_cpu", scope: !5297, file: !5297, line: 320, type: !5298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5297 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!109, !7, !639, !2457, !2457}
!5300 = distinct !DISubprogram(name: "copy_to_user", scope: !5301, file: !5301, line: 188, type: !5302, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5301 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!540, !384, !2367, !540}
!5304 = !{!5305, !5306, !5307}
!5305 = !DILocalVariable(name: "to", arg: 1, scope: !5300, file: !5301, line: 188, type: !384)
!5306 = !DILocalVariable(name: "from", arg: 2, scope: !5300, file: !5301, line: 188, type: !2367)
!5307 = !DILocalVariable(name: "n", arg: 3, scope: !5300, file: !5301, line: 188, type: !540)
!5308 = !DILocation(line: 188, column: 27, scope: !5300)
!5309 = !DILocation(line: 188, column: 43, scope: !5300)
!5310 = !DILocation(line: 188, column: 63, scope: !5300)
!5311 = !DILocation(line: 190, column: 22, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5300, file: !5301, line: 190, column: 6)
!5313 = !DILocation(line: 190, column: 28, scope: !5312)
!5314 = !DILocation(line: 190, column: 6, scope: !5312)
!5315 = !DILocation(line: 190, column: 6, scope: !5300)
!5316 = !DILocation(line: 191, column: 21, scope: !5312)
!5317 = !DILocation(line: 191, column: 25, scope: !5312)
!5318 = !DILocation(line: 191, column: 31, scope: !5312)
!5319 = !DILocation(line: 191, column: 7, scope: !5312)
!5320 = !DILocation(line: 191, column: 5, scope: !5312)
!5321 = !DILocation(line: 191, column: 3, scope: !5312)
!5322 = !DILocation(line: 192, column: 9, scope: !5300)
!5323 = !DILocation(line: 192, column: 2, scope: !5300)
!5324 = distinct !DISubprogram(name: "check_copy_size", scope: !4438, file: !4438, line: 237, type: !5325, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5327)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!1690, !2367, !537, !1690}
!5327 = !{!5328, !5329, !5330, !5331, !5332, !5335}
!5328 = !DILocalVariable(name: "addr", arg: 1, scope: !5324, file: !4438, line: 237, type: !2367)
!5329 = !DILocalVariable(name: "bytes", arg: 2, scope: !5324, file: !4438, line: 237, type: !537)
!5330 = !DILocalVariable(name: "is_source", arg: 3, scope: !5324, file: !4438, line: 237, type: !1690)
!5331 = !DILocalVariable(name: "sz", scope: !5324, file: !4438, line: 239, type: !109)
!5332 = !DILocalVariable(name: "__ret_warn_on", scope: !5333, file: !4438, line: 249, type: !109)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !4438, line: 249, column: 6)
!5334 = distinct !DILexicalBlock(scope: !5324, file: !4438, line: 249, column: 6)
!5335 = !DILocalVariable(name: "__flags", scope: !5336, file: !4438, line: 249, type: !109)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !4438, line: 249, column: 6)
!5337 = distinct !DILexicalBlock(scope: !5333, file: !4438, line: 249, column: 6)
!5338 = !DILocation(line: 237, column: 29, scope: !5324)
!5339 = !DILocation(line: 237, column: 42, scope: !5324)
!5340 = !DILocation(line: 237, column: 54, scope: !5324)
!5341 = !DILocation(line: 239, column: 2, scope: !5324)
!5342 = !DILocation(line: 239, column: 6, scope: !5324)
!5343 = !DILocation(line: 239, column: 33, scope: !5324)
!5344 = !DILocation(line: 239, column: 11, scope: !5324)
!5345 = !DILocation(line: 240, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5324, file: !4438, line: 240, column: 6)
!5347 = !DILocation(line: 0, scope: !5346)
!5348 = !DILocation(line: 240, column: 6, scope: !5324)
!5349 = !DILocation(line: 241, column: 29, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !4438, line: 241, column: 7)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !4438, line: 240, column: 39)
!5352 = !DILocation(line: 241, column: 8, scope: !5350)
!5353 = !DILocation(line: 241, column: 7, scope: !5351)
!5354 = !DILocation(line: 242, column: 18, scope: !5350)
!5355 = !DILocation(line: 242, column: 22, scope: !5350)
!5356 = !DILocation(line: 242, column: 4, scope: !5350)
!5357 = !DILocation(line: 243, column: 12, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5350, file: !4438, line: 243, column: 12)
!5359 = !{i8 0, i8 2}
!5360 = !DILocation(line: 243, column: 12, scope: !5350)
!5361 = !DILocation(line: 244, column: 4, scope: !5358)
!5362 = !{i32 2112354}
!5363 = !DILocation(line: 246, column: 4, scope: !5358)
!5364 = !{i32 2112383}
!5365 = !DILocation(line: 247, column: 3, scope: !5351)
!5366 = !DILocation(line: 249, column: 6, scope: !5333)
!5367 = !DILocation(line: 249, column: 6, scope: !5337)
!5368 = !DILocation(line: 249, column: 6, scope: !5336)
!5369 = !DILocation(line: 249, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5336, file: !4438, line: 249, column: 6)
!5371 = !DILocation(line: 249, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5336, file: !4438, line: 249, column: 6)
!5373 = !{i64 2149612816, i64 2149612845, i64 2149612891, i64 2149612949, i64 2149613003, i64 2149613057, i64 2149613112, i64 2149613143, i64 2149613451, i64 2149613457, i64 2149613504, i64 2149613527, i64 2149613553}
!5374 = !DILocation(line: 249, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5336, file: !4438, line: 249, column: 6)
!5376 = !DILocation(line: 249, column: 6, scope: !5334)
!5377 = !DILocation(line: 249, column: 6, scope: !5324)
!5378 = !DILocation(line: 250, column: 3, scope: !5334)
!5379 = !DILocation(line: 251, column: 20, scope: !5324)
!5380 = !DILocation(line: 251, column: 26, scope: !5324)
!5381 = !DILocation(line: 251, column: 33, scope: !5324)
!5382 = !DILocation(line: 251, column: 2, scope: !5324)
!5383 = !DILocation(line: 252, column: 2, scope: !5324)
!5384 = !DILocation(line: 253, column: 1, scope: !5324)
!5385 = !DISubprogram(name: "_copy_to_user", scope: !5301, file: !5301, line: 176, type: !5302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5386 = distinct !DISubprogram(name: "copy_overflow", scope: !4438, file: !4438, line: 230, type: !5387, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !109, !540}
!5389 = !{!5390, !5391}
!5390 = !DILocalVariable(name: "size", arg: 1, scope: !5386, file: !4438, line: 230, type: !109)
!5391 = !DILocalVariable(name: "count", arg: 2, scope: !5386, file: !4438, line: 230, type: !540)
!5392 = !DILocation(line: 230, column: 38, scope: !5386)
!5393 = !DILocation(line: 230, column: 58, scope: !5386)
!5394 = !DILocation(line: 233, column: 19, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5386, file: !4438, line: 232, column: 6)
!5396 = !DILocation(line: 233, column: 25, scope: !5395)
!5397 = !DILocation(line: 233, column: 3, scope: !5395)
!5398 = !DILocation(line: 234, column: 1, scope: !5386)
!5399 = !DISubprogram(name: "__bad_copy_from", scope: !4438, file: !4438, line: 224, type: !2760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5400 = !DISubprogram(name: "__bad_copy_to", scope: !4438, file: !4438, line: 226, type: !2760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = distinct !DISubprogram(name: "check_object_size", scope: !4438, file: !4438, line: 218, type: !5402, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !2367, !540, !1690}
!5404 = !{!5405, !5406, !5407}
!5405 = !DILocalVariable(name: "ptr", arg: 1, scope: !5401, file: !4438, line: 218, type: !2367)
!5406 = !DILocalVariable(name: "n", arg: 2, scope: !5401, file: !4438, line: 218, type: !540)
!5407 = !DILocalVariable(name: "to_user", arg: 3, scope: !5401, file: !4438, line: 219, type: !1690)
!5408 = !DILocation(line: 218, column: 50, scope: !5401)
!5409 = !DILocation(line: 218, column: 69, scope: !5401)
!5410 = !DILocation(line: 219, column: 15, scope: !5401)
!5411 = !DILocation(line: 220, column: 3, scope: !5401)
!5412 = !DISubprogram(name: "__copy_overflow", scope: !4438, file: !4438, line: 228, type: !5387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5413 = !DISubprogram(name: "security_locked_down", scope: !341, file: !341, line: 488, type: !5414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!109, !340}
!5416 = !DILocation(line: 80, column: 29, scope: !4444)
!5417 = !DILocation(line: 92, column: 10, scope: !4444)
!5418 = !DILocation(line: 92, column: 2, scope: !4444)
!5419 = !DILocation(line: 93, column: 23, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 92, column: 24)
!5421 = !DILocation(line: 94, column: 23, scope: !5420)
!5422 = !DILocation(line: 95, column: 11, scope: !5420)
!5423 = !DILocation(line: 98, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 98, column: 6)
!5425 = !DILocation(line: 98, column: 6, scope: !4444)
!5426 = !DILocation(line: 99, column: 3, scope: !5424)
!5427 = !DILocation(line: 101, column: 2, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 101, column: 2)
!5429 = !DILocation(line: 101, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 101, column: 2)
!5431 = !DILocation(line: 103, column: 2, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 103, column: 2)
!5433 = !DILocation(line: 103, column: 2, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 103, column: 2)
!5435 = !DILocation(line: 105, column: 2, scope: !4444)
!5436 = !DILocation(line: 106, column: 1, scope: !4444)
!5437 = distinct !DISubprogram(name: "copy_from_user", scope: !5301, file: !5301, line: 180, type: !5302, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5438)
!5438 = !{!5439, !5440, !5441}
!5439 = !DILocalVariable(name: "to", arg: 1, scope: !5437, file: !5301, line: 180, type: !384)
!5440 = !DILocalVariable(name: "from", arg: 2, scope: !5437, file: !5301, line: 180, type: !2367)
!5441 = !DILocalVariable(name: "n", arg: 3, scope: !5437, file: !5301, line: 180, type: !540)
!5442 = !DILocation(line: 180, column: 22, scope: !5437)
!5443 = !DILocation(line: 180, column: 45, scope: !5437)
!5444 = !DILocation(line: 180, column: 65, scope: !5437)
!5445 = !DILocation(line: 182, column: 22, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5437, file: !5301, line: 182, column: 6)
!5447 = !DILocation(line: 182, column: 26, scope: !5446)
!5448 = !DILocation(line: 182, column: 6, scope: !5446)
!5449 = !DILocation(line: 182, column: 6, scope: !5437)
!5450 = !DILocation(line: 183, column: 23, scope: !5446)
!5451 = !DILocation(line: 183, column: 27, scope: !5446)
!5452 = !DILocation(line: 183, column: 33, scope: !5446)
!5453 = !DILocation(line: 183, column: 7, scope: !5446)
!5454 = !DILocation(line: 183, column: 5, scope: !5446)
!5455 = !DILocation(line: 183, column: 3, scope: !5446)
!5456 = !DILocation(line: 184, column: 9, scope: !5437)
!5457 = !DILocation(line: 184, column: 2, scope: !5437)
!5458 = !DISubprogram(name: "add_taint", scope: !374, file: !374, line: 93, type: !5459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !7, !373}
!5461 = !DISubprogram(name: "wrmsr_safe_on_cpu", scope: !5297, file: !5297, line: 321, type: !5462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!109, !7, !639, !639, !639}
!5464 = !DISubprogram(name: "___ratelimit", scope: !1763, file: !1763, line: 44, type: !5465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!109, !5467, !409}
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!5468 = distinct !DISubprogram(name: "get_current", scope: !5469, file: !5469, line: 39, type: !5470, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5472)
!5469 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!1198}
!5472 = !{!5473, !5475, !5477}
!5473 = !DILocalVariable(name: "pscr_ret__", scope: !5474, file: !5469, line: 41, type: !1198)
!5474 = distinct !DILexicalBlock(scope: !5468, file: !5469, line: 41, column: 9)
!5475 = !DILocalVariable(name: "__vpp_verify", scope: !5476, file: !5469, line: 41, type: !2367)
!5476 = distinct !DILexicalBlock(scope: !5474, file: !5469, line: 41, column: 9)
!5477 = !DILocalVariable(name: "pfo_val__", scope: !5478, file: !5469, line: 41, type: !643)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !5469, line: 41, column: 9)
!5479 = !DILocation(line: 41, column: 9, scope: !5474)
!5480 = !DILocation(line: 41, column: 9, scope: !5476)
!5481 = !DILocation(line: 41, column: 9, scope: !5478)
!5482 = !{i64 2148538175}
!5483 = !DILocation(line: 41, column: 9, scope: !5468)
!5484 = !DILocation(line: 41, column: 2, scope: !5468)
!5485 = !DISubprogram(name: "_copy_from_user", scope: !5301, file: !5301, line: 158, type: !5302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5486 = !DISubprogram(name: "rdmsr_safe_regs_on_cpu", scope: !5297, file: !5297, line: 324, type: !5487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!109, !7, !2457}
!5489 = !DISubprogram(name: "wrmsr_safe_regs_on_cpu", scope: !5297, file: !5297, line: 325, type: !5487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5490 = !DISubprogram(name: "capable", scope: !1615, file: !1615, line: 148, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!1690, !109}
!5493 = distinct !DISubprogram(name: "cpu_online", scope: !1449, file: !1449, line: 1080, type: !5494, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!1690, !7}
!5496 = !{!5497}
!5497 = !DILocalVariable(name: "cpu", arg: 1, scope: !5493, file: !1449, line: 1080, type: !7)
!5498 = !DILocation(line: 1080, column: 44, scope: !5493)
!5499 = !DILocation(line: 1082, column: 26, scope: !5493)
!5500 = !DILocation(line: 1082, column: 9, scope: !5493)
!5501 = !DILocation(line: 1082, column: 2, scope: !5493)
!5502 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1449, file: !1449, line: 502, type: !5503, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5505)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!1690, !109, !4395}
!5505 = !{!5506, !5507}
!5506 = !DILocalVariable(name: "cpu", arg: 1, scope: !5502, file: !1449, line: 502, type: !109)
!5507 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5502, file: !1449, line: 502, type: !4395)
!5508 = !DILocation(line: 502, column: 50, scope: !5502)
!5509 = !DILocation(line: 502, column: 77, scope: !5502)
!5510 = !DILocation(line: 504, column: 9, scope: !5502)
!5511 = !DILocation(line: 504, column: 2, scope: !5502)
!5512 = distinct !DISubprogram(name: "_test_bit", scope: !5513, file: !5513, line: 139, type: !5514, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5513 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!1690, !540, !5516}
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5518)
!5518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !540)
!5519 = !{!5520, !5521}
!5520 = !DILocalVariable(name: "nr", arg: 1, scope: !5512, file: !5513, line: 139, type: !540)
!5521 = !DILocalVariable(name: "addr", arg: 2, scope: !5512, file: !5513, line: 139, type: !5516)
!5522 = !DILocation(line: 139, column: 25, scope: !5512)
!5523 = !DILocation(line: 139, column: 59, scope: !5512)
!5524 = !DILocation(line: 141, column: 25, scope: !5512)
!5525 = !DILocation(line: 141, column: 32, scope: !5512)
!5526 = !DILocation(line: 141, column: 30, scope: !5512)
!5527 = !DILocation(line: 141, column: 2, scope: !5512)
!5528 = !DILocation(line: 142, column: 23, scope: !5512)
!5529 = !DILocation(line: 142, column: 27, scope: !5512)
!5530 = !DILocation(line: 142, column: 9, scope: !5512)
!5531 = !DILocation(line: 142, column: 2, scope: !5512)
!5532 = distinct !DISubprogram(name: "cpumask_check", scope: !1449, file: !1449, line: 148, type: !5533, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5535)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!7, !7}
!5535 = !{!5536}
!5536 = !DILocalVariable(name: "cpu", arg: 1, scope: !5532, file: !1449, line: 148, type: !7)
!5537 = !DILocation(line: 148, column: 64, scope: !5532)
!5538 = !DILocation(line: 150, column: 20, scope: !5532)
!5539 = !DILocation(line: 150, column: 2, scope: !5532)
!5540 = !DILocation(line: 151, column: 9, scope: !5532)
!5541 = !DILocation(line: 151, column: 2, scope: !5532)
!5542 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5543, file: !5543, line: 66, type: !5544, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5543 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5544 = !DISubroutineType(types: !5545)
!5545 = !{null, !5546, !537}
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5548)
!5548 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5549 = !{!5550, !5551}
!5550 = !DILocalVariable(name: "v", arg: 1, scope: !5542, file: !5543, line: 66, type: !5546)
!5551 = !DILocalVariable(name: "size", arg: 2, scope: !5542, file: !5543, line: 66, type: !537)
!5552 = !DILocation(line: 66, column: 73, scope: !5542)
!5553 = !DILocation(line: 66, column: 83, scope: !5542)
!5554 = !DILocation(line: 68, column: 19, scope: !5542)
!5555 = !DILocation(line: 68, column: 22, scope: !5542)
!5556 = !DILocation(line: 68, column: 2, scope: !5542)
!5557 = !DILocation(line: 69, column: 2, scope: !5542)
!5558 = !DILocation(line: 70, column: 1, scope: !5542)
!5559 = distinct !DISubprogram(name: "arch_test_bit", scope: !5560, file: !5560, line: 237, type: !5514, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5560 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5561 = !{!5562, !5563}
!5562 = !DILocalVariable(name: "nr", arg: 1, scope: !5559, file: !5560, line: 237, type: !540)
!5563 = !DILocalVariable(name: "addr", arg: 2, scope: !5559, file: !5560, line: 237, type: !5516)
!5564 = !DILocation(line: 237, column: 29, scope: !5559)
!5565 = !DILocation(line: 237, column: 63, scope: !5559)
!5566 = !DILocation(line: 239, column: 30, scope: !5559)
!5567 = !DILocation(line: 239, column: 9, scope: !5559)
!5568 = !DILocation(line: 239, column: 54, scope: !5559)
!5569 = !DILocation(line: 239, column: 58, scope: !5559)
!5570 = !DILocation(line: 239, column: 36, scope: !5559)
!5571 = !DILocation(line: 240, column: 26, scope: !5559)
!5572 = !DILocation(line: 240, column: 30, scope: !5559)
!5573 = !DILocation(line: 240, column: 8, scope: !5559)
!5574 = !DILocation(line: 239, column: 2, scope: !5559)
!5575 = distinct !DISubprogram(name: "kasan_check_read", scope: !5576, file: !5576, line: 40, type: !5577, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5579)
!5576 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!1690, !5546, !7}
!5579 = !{!5580, !5581}
!5580 = !DILocalVariable(name: "p", arg: 1, scope: !5575, file: !5576, line: 40, type: !5546)
!5581 = !DILocalVariable(name: "size", arg: 2, scope: !5575, file: !5576, line: 40, type: !7)
!5582 = !DILocation(line: 40, column: 58, scope: !5575)
!5583 = !DILocation(line: 40, column: 74, scope: !5575)
!5584 = !DILocation(line: 42, column: 2, scope: !5575)
!5585 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5586, file: !5586, line: 229, type: !5587, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5586 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !5546, !537, !109}
!5589 = !{!5590, !5591, !5592}
!5590 = !DILocalVariable(name: "ptr", arg: 1, scope: !5585, file: !5586, line: 229, type: !5546)
!5591 = !DILocalVariable(name: "size", arg: 2, scope: !5585, file: !5586, line: 229, type: !537)
!5592 = !DILocalVariable(name: "type", arg: 3, scope: !5585, file: !5586, line: 230, type: !109)
!5593 = !DILocation(line: 229, column: 60, scope: !5585)
!5594 = !DILocation(line: 229, column: 72, scope: !5585)
!5595 = !DILocation(line: 230, column: 15, scope: !5585)
!5596 = !DILocation(line: 230, column: 23, scope: !5585)
!5597 = distinct !DISubprogram(name: "constant_test_bit", scope: !5560, file: !5560, line: 204, type: !5598, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!1690, !526, !5516}
!5600 = !{!5601, !5602}
!5601 = !DILocalVariable(name: "nr", arg: 1, scope: !5597, file: !5560, line: 204, type: !526)
!5602 = !DILocalVariable(name: "addr", arg: 2, scope: !5597, file: !5560, line: 204, type: !5516)
!5603 = !DILocation(line: 204, column: 52, scope: !5597)
!5604 = !DILocation(line: 204, column: 86, scope: !5597)
!5605 = !DILocation(line: 206, column: 19, scope: !5597)
!5606 = !DILocation(line: 206, column: 22, scope: !5597)
!5607 = !DILocation(line: 206, column: 15, scope: !5597)
!5608 = !DILocation(line: 207, column: 4, scope: !5597)
!5609 = !DILocation(line: 207, column: 9, scope: !5597)
!5610 = !DILocation(line: 207, column: 12, scope: !5597)
!5611 = !DILocation(line: 206, column: 44, scope: !5597)
!5612 = !DILocation(line: 207, column: 37, scope: !5597)
!5613 = !DILocation(line: 206, column: 2, scope: !5597)
!5614 = distinct !DISubprogram(name: "variable_test_bit", scope: !5560, file: !5560, line: 224, type: !5598, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5615)
!5615 = !{!5616, !5617, !5618}
!5616 = !DILocalVariable(name: "nr", arg: 1, scope: !5614, file: !5560, line: 224, type: !526)
!5617 = !DILocalVariable(name: "addr", arg: 2, scope: !5614, file: !5560, line: 224, type: !5516)
!5618 = !DILocalVariable(name: "oldbit", scope: !5614, file: !5560, line: 226, type: !1690)
!5619 = !DILocation(line: 224, column: 52, scope: !5614)
!5620 = !DILocation(line: 224, column: 86, scope: !5614)
!5621 = !DILocation(line: 226, column: 2, scope: !5614)
!5622 = !DILocation(line: 226, column: 7, scope: !5614)
!5623 = !DILocation(line: 231, column: 33, scope: !5614)
!5624 = !DILocation(line: 231, column: 46, scope: !5614)
!5625 = !DILocation(line: 228, column: 2, scope: !5614)
!5626 = !{i64 2148347762, i64 2148347836}
!5627 = !DILocation(line: 233, column: 9, scope: !5614)
!5628 = !DILocation(line: 234, column: 1, scope: !5614)
!5629 = !DILocation(line: 233, column: 2, scope: !5614)
!5630 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1449, file: !1449, line: 140, type: !5631, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5633)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !7, !7}
!5633 = !{!5634, !5635}
!5634 = !DILocalVariable(name: "cpu", arg: 1, scope: !5630, file: !1449, line: 140, type: !7)
!5635 = !DILocalVariable(name: "bits", arg: 2, scope: !5630, file: !1449, line: 140, type: !7)
!5636 = !DILocation(line: 140, column: 60, scope: !5630)
!5637 = !DILocation(line: 140, column: 78, scope: !5630)
!5638 = !DILocation(line: 145, column: 1, scope: !5630)
!5639 = !DISubprogram(name: "__cpuhp_setup_state", scope: !142, file: !142, line: 263, type: !5640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!109, !141, !409, !1690, !4922, !4922, !1690}
!5642 = !DISubprogram(name: "device_create", scope: !94, file: !94, line: 1181, type: !5643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!4487, !4775, !4487, !726, !384, !409, null}
!5645 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !5646, file: !5646, line: 105, type: !5647, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5646 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!109, !2367}
!5649 = !{!5650}
!5650 = !DILocalVariable(name: "ptr", arg: 1, scope: !5645, file: !5646, line: 105, type: !2367)
!5651 = !DILocation(line: 105, column: 68, scope: !5645)
!5652 = !DILocation(line: 107, column: 13, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5645, file: !5646, line: 107, column: 6)
!5654 = !DILocation(line: 107, column: 6, scope: !5653)
!5655 = !DILocation(line: 107, column: 6, scope: !5645)
!5656 = !DILocation(line: 108, column: 18, scope: !5653)
!5657 = !DILocation(line: 108, column: 10, scope: !5653)
!5658 = !DILocation(line: 108, column: 3, scope: !5653)
!5659 = !DILocation(line: 110, column: 3, scope: !5653)
!5660 = !DILocation(line: 111, column: 1, scope: !5645)
!5661 = distinct !DISubprogram(name: "IS_ERR", scope: !5646, file: !5646, line: 59, type: !5662, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5664)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!1690, !2367}
!5664 = !{!5665}
!5665 = !DILocalVariable(name: "ptr", arg: 1, scope: !5661, file: !5646, line: 59, type: !2367)
!5666 = !DILocation(line: 59, column: 60, scope: !5661)
!5667 = !DILocation(line: 61, column: 9, scope: !5661)
!5668 = !DILocation(line: 61, column: 2, scope: !5661)
!5669 = distinct !DISubprogram(name: "PTR_ERR", scope: !5646, file: !5646, line: 49, type: !5670, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!526, !2367}
!5672 = !{!5673}
!5673 = !DILocalVariable(name: "ptr", arg: 1, scope: !5669, file: !5646, line: 49, type: !2367)
!5674 = !DILocation(line: 49, column: 61, scope: !5669)
!5675 = !DILocation(line: 51, column: 16, scope: !5669)
!5676 = !DILocation(line: 51, column: 9, scope: !5669)
!5677 = !DILocation(line: 51, column: 2, scope: !5669)
!5678 = !DISubprogram(name: "device_destroy", scope: !94, file: !94, line: 1187, type: !5679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{null, !4775, !726}
!5681 = !DISubprogram(name: "__cpuhp_remove_state", scope: !142, file: !142, line: 434, type: !5682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{null, !141, !1690}
!5684 = distinct !DISubprogram(name: "msr_devnode", scope: !3, file: !3, line: 237, type: !4801, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5685 = !{!5686, !5687}
!5686 = !DILocalVariable(name: "dev", arg: 1, scope: !5684, file: !3, line: 237, type: !4481)
!5687 = !DILocalVariable(name: "mode", arg: 2, scope: !5684, file: !3, line: 237, type: !4504)
!5688 = !DILocation(line: 237, column: 47, scope: !5684)
!5689 = !DILocation(line: 237, column: 61, scope: !5684)
!5690 = !DILocation(line: 239, column: 45, scope: !5684)
!5691 = !DILocation(line: 239, column: 9, scope: !5684)
!5692 = !DILocation(line: 239, column: 2, scope: !5684)
!5693 = !DISubprogram(name: "kasprintf", scope: !5694, file: !5694, line: 16, type: !5695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5694 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!490, !935, !409, null}
!5697 = distinct !DISubprogram(name: "set_allow_writes", scope: !3, file: !3, line: 297, type: !4061, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5698)
!5698 = !{!5699, !5700, !5701}
!5699 = !DILocalVariable(name: "val", arg: 1, scope: !5697, file: !3, line: 297, type: !409)
!5700 = !DILocalVariable(name: "cp", arg: 2, scope: !5697, file: !3, line: 297, type: !4063)
!5701 = !DILocalVariable(name: "s", scope: !5697, file: !3, line: 300, type: !490)
!5702 = !DILocation(line: 297, column: 41, scope: !5697)
!5703 = !DILocation(line: 297, column: 73, scope: !5697)
!5704 = !DILocation(line: 300, column: 2, scope: !5697)
!5705 = !DILocation(line: 300, column: 8, scope: !5697)
!5706 = !DILocation(line: 300, column: 29, scope: !5697)
!5707 = !DILocation(line: 300, column: 12, scope: !5697)
!5708 = !DILocation(line: 302, column: 14, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 302, column: 6)
!5710 = !DILocation(line: 302, column: 7, scope: !5709)
!5711 = !DILocation(line: 302, column: 6, scope: !5697)
!5712 = !DILocation(line: 303, column: 16, scope: !5709)
!5713 = !DILocation(line: 303, column: 3, scope: !5709)
!5714 = !DILocation(line: 304, column: 19, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 304, column: 11)
!5716 = !DILocation(line: 304, column: 12, scope: !5715)
!5717 = !DILocation(line: 304, column: 11, scope: !5709)
!5718 = !DILocation(line: 305, column: 16, scope: !5715)
!5719 = !DILocation(line: 305, column: 3, scope: !5715)
!5720 = !DILocation(line: 307, column: 16, scope: !5715)
!5721 = !DILocation(line: 310, column: 1, scope: !5697)
!5722 = !DILocation(line: 309, column: 2, scope: !5697)
!5723 = distinct !DISubprogram(name: "get_allow_writes", scope: !3, file: !3, line: 312, type: !4067, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5724)
!5724 = !{!5725, !5726, !5727}
!5725 = !DILocalVariable(name: "buf", arg: 1, scope: !5723, file: !3, line: 312, type: !490)
!5726 = !DILocalVariable(name: "kp", arg: 2, scope: !5723, file: !3, line: 312, type: !4063)
!5727 = !DILocalVariable(name: "res", scope: !5723, file: !3, line: 314, type: !409)
!5728 = !DILocation(line: 312, column: 35, scope: !5723)
!5729 = !DILocation(line: 312, column: 67, scope: !5723)
!5730 = !DILocation(line: 314, column: 2, scope: !5723)
!5731 = !DILocation(line: 314, column: 14, scope: !5723)
!5732 = !DILocation(line: 316, column: 10, scope: !5723)
!5733 = !DILocation(line: 316, column: 2, scope: !5723)
!5734 = !DILocation(line: 317, column: 27, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 316, column: 24)
!5736 = !DILocation(line: 317, column: 35, scope: !5735)
!5737 = !DILocation(line: 318, column: 27, scope: !5735)
!5738 = !DILocation(line: 318, column: 36, scope: !5735)
!5739 = !DILocation(line: 319, column: 15, scope: !5735)
!5740 = !DILocation(line: 319, column: 28, scope: !5735)
!5741 = !DILocation(line: 322, column: 17, scope: !5723)
!5742 = !DILocation(line: 322, column: 30, scope: !5723)
!5743 = !DILocation(line: 322, column: 9, scope: !5723)
!5744 = !DILocation(line: 323, column: 1, scope: !5723)
!5745 = !DILocation(line: 322, column: 2, scope: !5723)
!5746 = distinct !DISubprogram(name: "strstrip", scope: !5747, file: !5747, line: 116, type: !5748, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5747 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!490, !490}
!5750 = !{!5751}
!5751 = !DILocalVariable(name: "str", arg: 1, scope: !5746, file: !5747, line: 116, type: !490)
!5752 = !DILocation(line: 116, column: 49, scope: !5746)
!5753 = !DILocation(line: 118, column: 15, scope: !5746)
!5754 = !DILocation(line: 118, column: 9, scope: !5746)
!5755 = !DILocation(line: 118, column: 2, scope: !5746)
!5756 = !DISubprogram(name: "strcmp", scope: !5747, file: !5747, line: 88, type: !5757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!109, !409, !409}
!5759 = !DISubprogram(name: "strim", scope: !5747, file: !5747, line: 114, type: !5748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5760 = !DISubprogram(name: "sprintf", scope: !5694, file: !5694, line: 10, type: !5761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!109, !490, !409, null}
